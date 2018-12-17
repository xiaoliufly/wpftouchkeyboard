using System;
using System.Windows;
using System.Windows.Interop;
using System.Runtime.InteropServices;
using System.Windows.Input;
using System.Windows.Controls;
namespace keyboard
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private const int WS_EX_NOACTIVATE = 0x08000000;
        private const int GWL_EXSTYLE = -20;
        private bool ShiftFlag = false;
        private bool CapsFlag = false;
        private bool AltFlag = false;
        private bool CtrlFlag = false;
        public MainWindow()
        {
            InitializeComponent();
            this.Topmost = true;
            SourceInitialized += OnSourceInitialized;
        }
        private void OnSourceInitialized(object sender, EventArgs e)
        {
            var handle = new WindowInteropHelper(this).Handle;
            var exstyle = GetWindowLong(handle, GWL_EXSTYLE);
            SetWindowLong(handle, GWL_EXSTYLE, new IntPtr(exstyle.ToInt32() | WS_EX_NOACTIVATE));
        }

        private void SendKey(object sender, RoutedEventArgs e)
        {
            string[] str = ((Button)sender).Content.ToString().Split('\n');
            string ch = "";
            string prefix = String.Empty;
            if (ShiftFlag)
                prefix += "+";
            if (AltFlag)
                prefix += "%";
            if (CtrlFlag)
                prefix += "^";
            if (str.Length == 1)
            {
                if(!CapsFlag)
                    ch = "{" + str[0].ToLower() + "}";
                else
                    ch = "{" + str[0] + "}";
            }
            if (str.Length == 2)
            {
                if (!ShiftFlag)
                    ch = "{" + str[1] + "}";
                else
                    ch = "{" + str[0] + "}";
            }
            ch = prefix + ch;
            System.Windows.Forms.SendKeys.SendWait(ch);
        }

        private void EscKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{ESC}");
        }

        private void TabKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{TAB}");
        }

        private void CtrlKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("^");
        }

        private void AltKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("%");
        }

        private void WinKey(object sender, RoutedEventArgs e)
        {
            //System.Windows.Forms.SendKeys.SendWait("{START}");
        }

        private void SpaceKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait(" ");
        }

        private void BackSpaceKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{BKSP}");
        }

        private void DelKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{DEL}");
        }

        private void EnterKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("~");
        }

        private void UpKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{Up}");
        }

        private void LeftKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{LEFT}");
        }

        private void DownKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{DOWN}");
        }

        private void RightKey(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.SendKeys.SendWait("{RIGHT}");
        }

        public void MoveWindow(object sender, System.Windows.Input.MouseEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
                this.DragMove();
        }

        private void ExitApp(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void MiniApp(object sender,RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
        
        private void CapsKey(object sender, RoutedEventArgs e)
        {
            CapsFlag = !CapsFlag;
            System.Windows.Forms.SendKeys.SendWait("{CAPSLOCK}");           
        }

        private void ShiftKey(object sender, RoutedEventArgs e)
        {

            System.Windows.Forms.SendKeys.SendWait("+");
        }

        private void ShiftGroup(object sender, RoutedEventArgs e)
        {
            ShiftFlag = !ShiftFlag;
        }

        private void CtrlGroup(object sender, RoutedEventArgs e)
        {
            CtrlFlag = !CtrlFlag;
        }

        private void AltGroup(object sender, RoutedEventArgs e)
        {
            AltFlag = !AltFlag;
        }

        public bool CapsLockState()
        {
            byte[] bs = new byte[256];
            GetKeyboardState(bs);
            return (bs[0x14] == 1);
        }

        public static IntPtr GetWindowLong(IntPtr hWnd, int nIndex)
        {
            return Environment.Is64BitProcess ? GetWindowLong64(hWnd, nIndex) : GetWindowLong32(hWnd, nIndex);
        }

        public static IntPtr SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong)
        {
            return Environment.Is64BitProcess ? SetWindowLong64(hWnd, nIndex, dwNewLong) : SetWindowLong32(hWnd, nIndex, dwNewLong);
        }

        [DllImport("user32.dll", EntryPoint = "GetWindowLong")]
        private static extern IntPtr GetWindowLong32(IntPtr hWnd, int nIndex);

        [DllImport("user32.dll", EntryPoint = "GetWindowLongPtr")]
        private static extern IntPtr GetWindowLong64(IntPtr hWnd, int nIndex);

        [DllImport("user32.dll", EntryPoint = "SetWindowLong")]
        private static extern IntPtr SetWindowLong32(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

        [DllImport("user32.dll", EntryPoint = "SetWindowLongPtr")]
        private static extern IntPtr SetWindowLong64(IntPtr hWnd, int nIndex, IntPtr dwNewLong);
        [DllImport("user32.dll", EntryPoint = "GetKeyboardState")]
        public static extern int GetKeyboardState(byte[] pbKeyState);      
    }
}
