   M S B A M L   `   `   `  ����C  ?keyboard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:keyboardkeyboard  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ButtonFocusVisual  �� Property �� Value �� StrokeDashArray  CloseButtonTemplate �� 
TargetType ��Name �� Color J� SnapsToDevicePixels'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState	   
Storyboard
 �� 
TargetName �� TargetProperty	 �� To g� Duration �� From  MaxButtonTemplate  MinButtonTemplate  KeyboardButtonTemplate  WindowsButtonTemplate  CloseButtonStyle �� 
TargetType  MaxButtonStyle  MinButtonStyle 	 WinButtonStyle 
 KeyboardWordButtonStyle  KeyboardPowerButtonStyle�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5       localclr-namespace:keyboard  5      %�   &	        &	 �     &	     &	 E	    &	 r    &	     &	 0    7   &	 �    7   &	 �    7   &		 D    7   &	
 
    7   &	 I    7   �� 5      .�5   
   ��   � �� 5      �� 5      .R�5      �� ._�5	      �� $��2q�6$   $��1��6/   ���	#60000000$	 1 2R�6V   6n   5
      5      5      5      �� 5      " ��62   .R�5   
   �� $ Border��6E   #��z��6   $��Stretch=�6U   $��Stretch=�6q   ��5      �� 5      $ Transparent��6"   68   ��5      �� 5      $ Transparent��6"   68   ._�5      F�  .  #��z��6/   $��3��6^   +����        � -1 -1�     -1� -1    	$��Center=�6�   $��Center=�6�   6�    5        5      CommonStates��. 5        
Normal��64     5      	MouseOver��.	 5      �� .��5      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5       5!      5"        5#      Pressed��.	 5$      �� .��5%      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5&      5'      5(        5)      Disabled��.	 5*      �� .��5+      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FFCCCCCCX�6�   $ 	#FFCCCCCCX�6�   5,      5-      5.      5/      51      52      �� 55      " ��60   .R�56   
   �� $ Border��6E   #��z��6   $��Stretch=�6U   $��Stretch=�6q   ��57      �� 58      $ Transparent��6"   68   ��5:      �� 5;      $ Transparent��6"   68   ._�5=      F�  .  #��z��6/   $��3��6^   +����        � -1    � -1 -1�     -1	$��Center=�6�   $��Center=�6�   6�    5>        5?      CommonStates��. 5@        
Normal��64     5A      	MouseOver��.	 5B      �� .��5C      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5D      5E      5F        5G      Pressed��.	 5H      �� .��5I      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5J      5K      5L        5M      Disabled��.	 5N      �� .��5O      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FFCCCCCCX�6�   $ 	#FFCCCCCCX�6�   5P      5Q      5R      5S      5U      5V      �� 5Y      " ��60   .R�5Z   
   �� $ Border��6E   #��z��6   $��Stretch=�6U   $��Stretch=�6q   ��5[      �� 5\      $ Transparent��6"   68   ��5^      �� 5_      $ Transparent��6"   68   ._�5a      F�  .  #��z��6/   $��3��6^   ����        � -1    	$��Center=�6�   $��Center=�6�   6�    5b        5c      CommonStates��. 5d        
Normal��64     5e      	MouseOver��.	 5f      �� .��5g      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5h      5i      5j        5k      Pressed��.	 5l      �� .��5m      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5n      5o      5p        5q      Disabled��.	 5r      �� .��5s      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FFCCCCCCX�6�   $ 	#FFCCCCCCX�6�   5t      5u      5v      5w      5y      5z      �� 5}      " ��65   .R�5~   
   �� $ Border��6   $��Stretch=�6!   $��Stretch=�6=   #��z��6[   #��z��6�   ._�5      �� #��z��6   $��Center=�6C   $��Center=�6^   6}    5�        5�      CommonStates��. 5�        
Normal��64     5�      	MouseOver��.	 5�      �� .��5�      �� $
 Border��6-   $1 +(Border.Background).(SolidColorBrush.Color)�6L   $ 	#66FFFFFFX�6�   $ 0:0:0.5D�6�   5�      5�      5�        5�      Pressed��.	 5�      �� .��5�      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5�      5�      5�        5�      Disabled��.	 5�      �� .��5�      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FFCCCCCCX�6�   $ 	#FFCCCCCCX�6�   5�      5�      5�      5�      5�      5�      �� 5�      " ��64   .R�5�   
   �� $ Border��6   $��Stretch=�6!   $��Stretch=�6=   #��z��6[   #��z��6�   ._�5�      F� �����    @KL ���� �%& ���� ��� �    ��� �     $� ����  $� ���� ����    @x}� $� �%& р��    р����� � $� ��� � $�  $� р�� $� р������ $� ���	$��Center=�6�   $��Center=�6�   ���	#FFFFFFFF6�    5�        5�      CommonStates��. 5�        
Normal��64     5�      	MouseOver��.	 5�      �� .��5�      �� $
 Border��6-   $1 +(Border.Background).(SolidColorBrush.Color)�6L   $ 	#66FFFFFFX�6�   $ 0:0:0.5D�6�   5�      5�      5�        5�      Pressed��.	 5�      �� .��5�      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FF990033X�6�   $ 0:0:0.5D�6�    6�   Z� 5�      5�      5�        5�      Disabled��.	 5�      �� .��5�      �� $
 Border��6-   $0 *(Panel.Background).(SolidColorBrush.Color)�6L   $ 	#FFCCCCCCX�6�   $ 	#FFCCCCCCX�6�   5�      5�      5�      5�      5�      5�      �� 5�      " ��6%   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 40��6"   6/   �� 5�   
     � ��$ 40��6#   60   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5�   
     � ��$ Center=�6.   6?   �� 5�   
     � ��$ Center=�60   6A   �� 5�   
     � ��# �  6%   6U   5�      �� 5�      " ��6#   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 40��6"   6/   �� 5�   
     � ��$ 40��6#   60   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5�   
     � ��$ Center=�60   6A   �� 5�   
     � ��$ Center=�6.   6?   �� 5�   
     � ��# �  6%   6S   5�      �� 5�      " ��6#   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 40��6"   6/   �� 5�   
     � ��$ 40��6#   60   �� 5�   
     � ��$ 0q�6#   6/   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5�   
     � ��# �  6%   6S   5�      �� 5�      " ��6#   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 2q�6#   6/   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5�   
     � �� �	#1AFFFFFF6;   �� 5�   
     � ��$ Stretch=�6.   6@   �� 5�   
     � ��$ Stretch=�60   6B   �� 5�   
     � ��# �  6%   6W   5�      �� 5�      " ��6,   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 60��6"   6/   �� 5�   
     � ��$ 60��6#   60   �� 5�   
     � ��$ 2q�6#   6/   �� 5�   
     � ��$ Center=�65   6F   �� 5�   
     � ��$ Center=�67   6H   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5�   
     � �� �	#2FFFFFFF6;   �� 5�   
     � ��$ 16(�6%   62   �� 5�   
     � ��# �  6%   6X   5�      �� 5�      " ��6-   .�5�   
   ��   �@J�SnapsToDevicePixels . 6?   �� 5�   
     �@�OverridesDefaultStyle . 6A   �� 5�   
     �@�FocusVisualStyle8   6Z   �� 5�   
     � ��$ 60��6#   60   �� 5�   
     � ��$ 2q�6#   6/   �� 5�   
     � ��$ Center=�65   6F   �� 5�   
     � ��$ Center=�67   6H   �� 5�   
     � �� �	#FFFFFFFF6;   �� 5   
     � �� �	#1AFFFFFF6;   �� 5  
     � ��$ 16(�6%   62   �� 5  
     � ��# �  6%   6X   5     5     