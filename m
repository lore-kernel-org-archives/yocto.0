Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3156BE007AD; Tue, 26 Aug 2014 06:51:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_WEB, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [115.248.23.130 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.0 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101ABE00655
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 06:51:20 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XMH9W-0001oy-9U
	for yocto@yoctoproject.org; Tue, 26 Aug 2014 15:51:14 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 15:51:14 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 15:51:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Tue, 26 Aug 2014 13:51:01 +0000 (UTC)
Message-ID: <loom.20140826T154727-654@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143
	Safari/537.36)
Subject: Yocto Bitbake Failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Aug 2014 13:51:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi 

I'm facing the following error. Not able to figure out what is the failure 
cause I'm I missing any specific steps. Please support do_rootfs
Host OS and architecture  - -Ubuntu SMP i686/ i386 GNU/Linux
Target architecture/BSP - iMX6 Sabre / meta-fsl-arm
The build image  - tizen-common-core-image-minimal-dev

Below is the log

DEBUG: Executing python function rootfs_process_ignore
DEBUG: Python function rootfs_process_ignore finished
DEBUG: Executing python function rootfs_runtime_mapping
DEBUG: Python function rootfs_runtime_mapping finished
DEBUG: Executing python function do_rootfs
NOTE: configuring RPM platform settings
NOTE: configuring RPM system provides
NOTE: configuring RPM DB settings
NOTE: configuring Smart settings
NOTE: Note: adding Smart channel imx6qsabreauto (65)
NOTE: Note: adding Smart channel cortexa9hf_vfp_neon_mx6 (60)
NOTE: Note: adding Smart channel cortexa9hf_vfp_neon (55)
NOTE: Note: adding Smart channel all (50)
NOTE: adding Smart RPM DB channel
NOTE: Note: configuring RPM cross-install scriptlet_wrapper
NOTE: ###### Generate rootfs #######
NOTE: Executing '/home/sfm/YOCTO/build/tmp/sysroots/i686-
linux/usr/bin/createrepo --update -q 
/home/sfm/YOCTO/build/tmp/deploy/rpm/cortexa9hf_vfp_neon_mx6' ...
NOTE: Executing '/home/sfm/YOCTO/build/tmp/sysroots/i686-
linux/usr/bin/createrepo --update -q 
/home/sfm/YOCTO/build/tmp/deploy/rpm/cortexa9hf_vfp_neon' ...
NOTE: Executing '/home/sfm/YOCTO/build/tmp/sysroots/i686-
linux/usr/bin/createrepo --update -q 
/home/sfm/YOCTO/build/tmp/deploy/rpm/imx6qsabreauto' ...
NOTE: Executing '/home/sfm/YOCTO/build/tmp/sysroots/i686-
linux/usr/bin/createrepo --update -q 
/home/sfm/YOCTO/build/tmp/deploy/rpm/all' ...
NOTE: Installing the following packages: packagegroup-core-ssh-dropbear rpm-
security-plugin user-session-units less default-ac-domains psplash weston 
rpm weston-common-config meta-common connman smartpm kernel-modules 
coreutils weston-init weston-examples pam packagegroup-core-boot mesa-
megadriver libgbm weston-common-tz-launcher clutter-1.0-examples bash 
weston-common desktop-skin psmisc config-image packagegroup-base-extended 
procps locale-base-en-us locale-base-en-gb
NOTE: to be installed: packagegroup-core-ssh-dropbear@all rpm-security-
plugin@cortexa9hf_vfp_neon user-session-units@cortexa9hf_vfp_neon 
less@cortexa9hf_vfp_neon default-ac-domains@cortexa9hf_vfp_neon 
psplash@cortexa9hf_vfp_neon weston@cortexa9hf_vfp_neon_mx6 
rpm@cortexa9hf_vfp_neon weston-common-config@cortexa9hf_vfp_neon meta-
common@cortexa9hf_vfp_neon connman@cortexa9hf_vfp_neon 
smartpm@cortexa9hf_vfp_neon kernel-modules@imx6qsabreauto 
coreutils@cortexa9hf_vfp_neon weston-init@all weston-
examples@cortexa9hf_vfp_neon_mx6 pam@cortexa9hf_vfp_neon packagegroup-core-
boot@imx6qsabreauto mesa-megadriver@cortexa9hf_vfp_neon_mx6 
libgbm@cortexa9hf_vfp_neon_mx6 weston-common-tz-launcher@cortexa9hf_vfp_neon 
clutter-1.0-examples@cortexa9hf_vfp_neon_mx6 bash@cortexa9hf_vfp_neon 
weston-common@cortexa9hf_vfp_neon desktop-skin@cortexa9hf_vfp_neon 
psmisc@cortexa9hf_vfp_neon config-image@cortexa9hf_vfp_neon packagegroup-
base-extended@imx6qsabreauto procps@cortexa9hf_vfp_neon locale-base-en-
us@cortexa9hf_vfp_neon locale-base-en-gb@cortexa9hf_vfp_neon
NOTE: /home/sfm/YOCTO/build/tmp/sysroots/i686-linux/usr/bin/smart --data-
dir=/home/sfm/YOCTO/build/tmp/work/imx6qsabreauto-poky-linux-gnueabi/tizen-
common-core-image-minimal/1.0-r0/rootfs/var/lib/smart install -y 
packagegroup-core-ssh-dropbear@all rpm-security-plugin@cortexa9hf_vfp_neon 
user-session-units@cortexa9hf_vfp_neon less@cortexa9hf_vfp_neon default-ac-
domains@cortexa9hf_vfp_neon psplash@cortexa9hf_vfp_neon 
weston@cortexa9hf_vfp_neon_mx6 rpm@cortexa9hf_vfp_neon weston-common-
config@cortexa9hf_vfp_neon meta-common@cortexa9hf_vfp_neon 
connman@cortexa9hf_vfp_neon smartpm@cortexa9hf_vfp_neon kernel-
modules@imx6qsabreauto coreutils@cortexa9hf_vfp_neon weston-init@all weston-
examples@cortexa9hf_vfp_neon_mx6 pam@cortexa9hf_vfp_neon packagegroup-core-
boot@imx6qsabreauto mesa-megadriver@cortexa9hf_vfp_neon_mx6 
libgbm@cortexa9hf_vfp_neon_mx6 weston-common-tz-launcher@cortexa9hf_vfp_neon 
clutter-1.0-examples@cortexa9hf_vfp_neon_mx6 bash@cortexa9hf_vfp_neon 
weston-common@cortexa9hf_vfp_neon desktop-skin@cortexa9hf_vfp_neon 
psmisc@cortexa9hf_vfp_neon config-image@cortexa9hf_vfp_neon packagegroup-
base-extended@imx6qsabreauto procps@cortexa9hf_vfp_neon locale-base-en-
us@cortexa9hf_vfp_neon locale-base-en-gb@cortexa9hf_vfp_neon
ERROR: Unable to install packages. Command 
'/home/sfm/YOCTO/build/tmp/sysroots/i686-linux/usr/bin/smart --data-
dir=/home/sfm/YOCTO/build/tmp/work/imx6qsabreauto-poky-linux-gnueabi/tizen-
common-core-image-minimal/1.0-r0/rootfs/var/lib/smart install -y 
packagegroup-core-ssh-dropbear@all rpm-security-plugin@cortexa9hf_vfp_neon 
user-session-units@cortexa9hf_vfp_neon less@cortexa9hf_vfp_neon default-ac-
domains@cortexa9hf_vfp_neon psplash@cortexa9hf_vfp_neon 
weston@cortexa9hf_vfp_neon_mx6 rpm@cortexa9hf_vfp_neon weston-common-
config@cortexa9hf_vfp_neon meta-common@cortexa9hf_vfp_neon 
connman@cortexa9hf_vfp_neon smartpm@cortexa9hf_vfp_neon kernel-
modules@imx6qsabreauto coreutils@cortexa9hf_vfp_neon weston-init@all weston-
examples@cortexa9hf_vfp_neon_mx6 pam@cortexa9hf_vfp_neon packagegroup-core-
boot@imx6qsabreauto mesa-megadriver@cortexa9hf_vfp_neon_mx6 
libgbm@cortexa9hf_vfp_neon_mx6 weston-common-tz-launcher@cortexa9hf_vfp_neon 
clutter-1.0-examples@cortexa9hf_vfp_neon_mx6 bash@cortexa9hf_vfp_neon 
weston-common@cortexa9hf_vfp_neon desktop-skin@cortexa9hf_vfp_neon 
psmisc@cortexa9hf_vfp_neon config-image@cortexa9hf_vfp_neon packagegroup-
base-extended@imx6qsabreauto procps@cortexa9hf_vfp_neon locale-base-en-
us@cortexa9hf_vfp_neon locale-base-en-gb@cortexa9hf_vfp_neon' returned 1:
Loading cache...
Updating cache...               ######################################## 
[100%]

Computing transaction...

Installing packages (274):
  alsa-conf-base                                                                
  alsa-state                                                                    
  alsa-utils-alsactl                                                            
  alsa-utils-alsamixer                                                          
  apm                                                                           
  apmd                                                                          
  atk                                                                           
  avahi-daemon                                                                  
  base-files                                                                    
  base-passwd                                                                   
  bash                                                                          
  binutils                                                                      
  bluez4                                                                        
  busybox                                                                       
  busybox-hwclock                                                               
  bzip2                                                                         
  cairo                                                                         
  cairo-gobject                                                                 
  clutter-1.0                                                                   
  clutter-1.0-examples                                                          
  config-image                                                                  
  connman                                                                       
  coreutils                                                                     
  dbus                                                                          
  dbus-glib                                                                     
  dbus-lib                                                                      
  default-ac-domains                                                            
  desktop-skin                                                                  
  dropbear                                                                      
  eglibc                                                                        
  eglibc-binary-localedata-en-gb                                                
  eglibc-binary-localedata-en-us                                                
  expat                                                                         
  file                                                                          
  findutils                                                                     
  flex                                                                          
  fontconfig                                                                    
  freetype                                                                      
  fuser                                                                         
  gawk                                                                          
  gcc                                                                           
  gdk-pixbuf                                                                    
  glib-2.0                                                                      
  gmp                                                                           
  gnutls                                                                        
  gzip                                                                          
  harfbuzz                                                                      
  hostap-utils                                                                  
  hwdata                                                                        
  init-ifupdown                                                                 
  initscripts                                                                   
  initscripts-functions                                                         
  iptables                                                                      
  json-glib                                                                     
  kbd                                                                           
  kernel-3.10.17-1.0.0-ga+g2a69800                                              
  kernel-image-3.10.17-1.0.0-ga+g2a69800                                        
  kernel-module-adv7180-tvin                                                    
  kernel-module-ath6kl-core                                                     
  kernel-module-ath6kl-sdio                                                     
  kernel-module-binfmt-misc                                                     
  kernel-module-configfs                                                        
  kernel-module-crc-ccitt                                                       
  kernel-module-crc-itu-t                                                       
  kernel-module-crc7                                                            
  kernel-module-csi-v4l2-capture                                                
  kernel-module-evbug                                                           
  kernel-module-fsl-csi                                                         
  kernel-module-g-ether                                                         
  kernel-module-g-mass-storage                                                  
  kernel-module-g-serial                                                        
  kernel-module-g-zero                                                          
  kernel-module-gspca-main                                                      
  kernel-module-i2c-algo-pca                                                    
  kernel-module-i2c-algo-pcf                                                    
  kernel-module-ipu-bg-overlay-sdc                                              
  kernel-module-ipu-csi-enc                                                     
  kernel-module-ipu-fg-overlay-sdc                                              
  kernel-module-ipu-prp-enc                                                     
  kernel-module-ipu-still                                                       
  kernel-module-isofs                                                           
  kernel-module-libcomposite                                                    
  kernel-module-libcrc32c                                                       
  kernel-module-msdos                                                           
  kernel-module-mxc-mlb150                                                      
  kernel-module-mxc-v4l2-capture                                                
  kernel-module-nls-iso8859-15                                                  
  kernel-module-ov5640-camera                                                   
  kernel-module-ov5640-camera-mipi                                              
  kernel-module-ov5642-camera                                                   
  kernel-module-psmouse                                                         
  kernel-module-serport                                                         
  kernel-module-snd-hwdep                                                       
  kernel-module-snd-rawmidi                                                     
  kernel-module-snd-usb-audio                                                   
  kernel-module-snd-usbmidi-lib                                                 
  kernel-module-tcrypt                                                          
  kernel-module-u-serial                                                        
  kernel-module-udf                                                             
  kernel-module-usb-f-acm                                                       
  kernel-module-usb-f-obex                                                      
  kernel-module-usb-f-serial                                                    
  kernel-module-usb-f-ss-lb                                                     
  kernel-module-uvcvideo                                                        
  kernel-module-videobuf2-vmalloc                                               
  kernel-modules                                                                
  killall                                                                       
  kmod                                                                          
  less                                                                          
  libacl                                                                        
  libapm                                                                        
  libasound                                                                     
  libasound-module-bluez                                                        
  libattr                                                                       
  libavahi-common                                                               
  libavahi-core                                                                 
  libbz2                                                                        
  libcap                                                                        
  libcogl                                                                       
  libcogl-pango                                                                 
  libcrypto                                                                     
  libdaemon                                                                     
  libdrm                                                                        
  libdrm-radeon                                                                 
  libegl-mx6                                                                    
  libelf                                                                        
  libffi                                                                        
  libgal-mx6                                                                    
  libgbm                                                                        
  libgc-wayland-protocol-mx6                                                    
  libgcc                                                                        
  libgcrypt                                                                     
  libglapi                                                                      
  libgles2-mx6                                                                  
  libglslc-mx6                                                                  
  libgpg-error                                                                  
  libjpeg-turbo                                                                 
  libkmod                                                                       
  liblua                                                                        
  liblzma                                                                       
  libmpc                                                                        
  libnl                                                                         
  libnl-cli                                                                     
  libnl-genl                                                                    
  libnl-nf                                                                      
  libnl-route                                                                   
  libnss-mdns                                                                   
  libpci                                                                        
  libpng                                                                        
  libpython2                                                                    
  libsmack                                                                      
  libsqlite3                                                                    
  libssl                                                                        
  libstdc++                                                                     
  libsysfs                                                                      
  libsystemd                                                                    
  libtirpc                                                                      
  libusb-compat                                                                 
  libusb1                                                                       
  libwrap                                                                       
  libxkbcommon                                                                  
  libxml2                                                                       
  locale-base-en-gb                                                             
  locale-base-en-us                                                             
  m4                                                                            
  make                                                                          
  mesa-megadriver                                                               
  meta-common                                                                   
  modutils-initscripts                                                          
  mpfr                                                                          
  mtdev                                                                         
  ncurses-libformw                                                              
  ncurses-libmenuw                                                              
  ncurses-libncurses                                                            
  ncurses-libncursesw                                                           
  ncurses-libpanelw                                                             
  ncurses-libtinfo                                                              
  neard                                                                         
  netbase                                                                       
  nettle                                                                        
  nspr                                                                          
  nss                                                                           
  ofono                                                                         
  packagegroup-base                                                             
  packagegroup-base-3g                                                          
  packagegroup-base-alsa                                                        
  packagegroup-base-apm                                                         
  packagegroup-base-bluetooth                                                   
  packagegroup-base-extended                                                    
  packagegroup-base-ipv6                                                        
  packagegroup-base-nfc                                                         
  packagegroup-base-nfs                                                         
  packagegroup-base-pci                                                         
  packagegroup-base-usbgadget                                                   
  packagegroup-base-usbhost                                                     
  packagegroup-base-wifi                                                        
  packagegroup-base-zeroconf                                                    
  packagegroup-core-boot                                                        
  packagegroup-core-ssh-dropbear                                                
  packagegroup-distro-base                                                      
  packagegroup-machine-base                                                     
  pam                                                                           
  pam-modules-extra                                                             
  pango                                                                         
  patch                                                                         
  pciutils                                                                      
  perl                                                                          
  perl-lib                                                                      
  pixman                                                                        
  popt                                                                          
  procps                                                                        
  psmisc                                                                        
  psplash                                                                       
  pstree                                                                        
  python-codecs                                                                 
  python-compression                                                            
  python-core                                                                   
  python-crypt                                                                  
  python-datetime                                                               
  python-dbus                                                                   
  python-elementtree                                                            
  python-fcntl                                                                  
  python-io                                                                     
  python-lang                                                                   
  python-logging                                                                
  python-math                                                                   
  python-mime                                                                   
  python-netclient                                                              
  python-pickle                                                                 
  python-pprint                                                                 
  python-pygobject                                                              
  python-pygobject-lib                                                          
  python-re                                                                     
  python-resource                                                               
  python-rpm                                                                    
  python-shell                                                                  
  python-smartpm                                                                
  python-smartpm-backend-rpm                                                    
  python-stringold                                                              
  python-textutils                                                              
  python-threading                                                              
  python-unixadmin                                                              
  python-xml                                                                    
  python-zlib                                                                   
  readline                                                                      
  rpcbind                                                                       
  rpm                                                                           
  rpm-build                                                                     
  rpm-security-plugin                                                           
  shadow                                                                        
  shadow-securetty                                                              
  smack                                                                         
  smartpm                                                                                                             
Committing transaction...
Preparing...                    ######################################## [  
0%]
error: package eglibc-binary-localedata-en-gb-2.19-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package weston-common-config-git-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package packagegroup-base-usbgadget-1.0-r83.imx6qsabreauto is 
intended for a different operating system
error: package shadow-securetty-4.2.1-r3.imx6qsabreauto is intended for a 
different operating system
error: package packagegroup-base-ipv6-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package usbutils-ids-007-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package netbase-1:5.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package default-ac-domains-git-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package eglibc-binary-localedata-en-us-2.19-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package meta-common-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-machine-base-1.0-r83.imx6qsabreauto is intended 
for a different operating system
error: package alsa-conf-base-1.0.27.2-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libasound-module-bluez-5.21-r1.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package update-alternatives-opkg-0.1.8+git0+d14458499a-
r0.cortexa9hf_vfp_neon is intended for a different operating system
error: package base-files-3.0.14-r89.imx6qsabreauto is intended for a 
different operating system
error: package xkeyboard-config-2.11-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package hwdata-git-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package locale-base-en-gb-2.19-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package locale-base-en-us-2.19-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package busybox-1.22.1-r32.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package eglibc-2.19-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package make-4.0-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package wireless-tools-1:30.pre9-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package hostap-utils-0.4.7-r4.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package m4-1.4.17-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package bash-4.3-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package libelf-0.148-r11.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package modutils-initscripts-1.0-r7.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package base-passwd-3.5.29-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libgcc-4.8.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libwrap-7.6-r10.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libjpeg-turbo-8d+1.3.1-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package libdrm-2.4.54-r0.cortexa9hf_vfp_neon_mx6 is intended for a 
different operating system
error: package libbz2-1.0.6-r5.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package util-linux-libuuid-2.24.2-r1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libxkbcommon-0.4.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package zlib-1.2.8-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package flex-2.5.39-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libtirpc-0.2.4-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package init-ifupdown-1.0-r7.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package psplash-0.1+git0+afd4e228c6-r15.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package libattr-2.4.47-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libnl-1:3.2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libasound-1.0.27.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libusb1-1.0.19-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package findutils-4.4.2-r6.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libsysfs-2.1.0-r5.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libsmack-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package popt-1.16-r3.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package nspr-4.10.3-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package gawk-4.1.1-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package ncurses-libtinfo-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libapm-3.2.2+14-r2.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package iptables-1.4.21-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package killall-22.21-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package pixman-1:0.32.4-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package liblua-git-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package libsqlite3-3:3.8.5.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libcrypto-1.0.1h-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libglapi-2:10.1.3-r0.cortexa9hf_vfp_neon_mx6 is intended for 
a different operating system
error: package perl-lib-5.20.0-r1.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package kernel-image-3.10.17-1.0.0-ga+g2a69800-3.10.17-
r0.imx6qsabreauto is intended for a different operating system
error: package mtdev-1.1.5-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package freetype-2.5.3-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package gmp-5.1.1-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package liblzma-5.1.3alpha-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libgpg-error-1.12-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libdaemon-0.14-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package fuser-22.21-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package config-image-1.0-r1.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libavahi-common-0.6.31-r11.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package kbd-2.0.2-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package desktop-skin-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libpython2-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package initscripts-functions-1.0-r155.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package gzip-1.6-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package busybox-hwclock-1.22.1-r32.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libffi-3.1-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package expat-2.1.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libstdc++-4.8.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libdrm-radeon-2.4.54-r0.cortexa9hf_vfp_neon_mx6 is intended 
for a different operating system
error: package bzip2-1.0.6-r5.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package util-linux-libblkid-2.24.2-r1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libxml2-2.9.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package kmod-18+git0+ae58de0fcb-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libkmod-18+git0+ae58de0fcb-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libpci-3.2.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libpng-1.6.10-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package file-5.18-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package binutils-2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package patch-2.7.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libacl-2.2.52-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libcap-2.22-r6.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libnl-genl-1:3.2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libnl-route-1:3.2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package alsa-utils-alsactl-1.0.27.2-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package usbutils-007-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libusb-compat-1:0.1.5-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package sysfsutils-2.1.0-r5.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package smack-git-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package pstree-22.21-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package ncurses-libncursesw-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package readline-6.3-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package less-458-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package ncurses-libncurses-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package apm-3.2.2+14-r2.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libssl-1.0.1h-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package perl-5.20.0-r1.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package kernel-3.10.17-1.0.0-ga+g2a69800-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package nettle-2.7.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package mpfr-3.1.2-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package xz-5.1.3alpha-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libavahi-core-0.6.31-r11.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-core-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package initscripts-1.0-r155.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package apmd-3.2.2+14-r2.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package wayland-1.5.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package glib-2.0-1:2.40.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package fontconfig-2.11.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package dbus-lib-1.6.18-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package mesa-megadriver-2:10.1.3-r0.cortexa9hf_vfp_neon_mx6 is 
intended for a different operating system
error: package pciutils-3.2.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libgcrypt-1.6.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package coreutils-8.22-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libnl-nf-1:3.2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package alsa-state-0.2.0-r5.imx6qsabreauto is intended for a 
different operating system
error: package packagegroup-base-usbhost-1.0-r83.imx6qsabreauto is intended 
for a different operating system
error: package psmisc-22.21-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package ncurses-libmenuw-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package ncurses-libpanelw-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package ncurses-libformw-5.9-r15.1.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package procps-3.2.8-r12.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package nss-3.15.1-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package kernel-module-i2c-algo-pca-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-gspca-main-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-videobuf2-vmalloc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-mxc-mlb150-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-configfs-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-evbug-3.10.17-r0.imx6qsabreauto is intended for 
a different operating system
error: package kernel-module-ov5640-camera-mipi-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-nls-iso8859-15-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-psmouse-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-crc7-3.10.17-r0.imx6qsabreauto is intended for 
a different operating system
error: package kernel-module-ov5642-camera-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-serport-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-ipu-bg-overlay-sdc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-msdos-3.10.17-r0.imx6qsabreauto is intended for 
a different operating system
error: package kernel-module-crc-itu-t-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-ipu-fg-overlay-sdc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-u-serial-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-ov5640-camera-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-snd-hwdep-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-ipu-prp-enc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-ipu-csi-enc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-tcrypt-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-fsl-csi-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-adv7180-tvin-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-snd-rawmidi-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-libcrc32c-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-ath6kl-core-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-ipu-still-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-crc-ccitt-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-binfmt-misc-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-i2c-algo-pcf-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-isofs-3.10.17-r0.imx6qsabreauto is intended for 
a different operating system
error: package gnutls-3.3.5-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libmpc-1.0.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-elementtree-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-fcntl-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-unixadmin-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-lang-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-zlib-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-resource-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-re-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-crypt-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-base-apm-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package libgal-mx6-1:3.10.17+1.0.0+hfp-r0.cortexa9hf_vfp_neon_mx6 is 
intended for a different operating system
error: package gdk-pixbuf-2.30.7-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package harfbuzz-0.9.29-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package json-glib-1.0.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package atk-2.12.0-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package python-pygobject-lib-2.28.3-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package dbus-glib-0.100.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package bluez4-4.101-r11.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-base-pci-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package pam-git-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package libnl-cli-1:3.2.24-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package alsa-utils-alsamixer-1.0.27.2-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package rpm-git-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package kernel-module-uvcvideo-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-libcomposite-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-udf-3.10.17-r0.imx6qsabreauto is intended for a 
different operating system
error: package kernel-module-csi-v4l2-capture-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-snd-usbmidi-lib-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-ath6kl-sdio-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-mxc-v4l2-capture-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package wpa-supplicant-2.2-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package gcc-4.8.2-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package python-threading-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-codecs-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package python-compression-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-xml-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-stringold-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-shell-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-math-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libegl-mx6-1:3.10.17+1.0.0+hfp-r0.cortexa9hf_vfp_neon_mx6 is 
intended for a different operating system
error: package libglslc-mx6-1:3.10.17+1.0.0+hfp-r0.cortexa9hf_vfp_neon_mx6 
is intended for a different operating system
error: package libgc-wayland-protocol-mx6-1:3.10.17+1.0.0+hfp-
r0.cortexa9hf_vfp_neon_mx6 is intended for a different operating system
error: package packagegroup-base-bluetooth-1.0-r83.imx6qsabreauto is 
intended for a different operating system
error: package dropbear-2014.63-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libsystemd-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package pam-modules-extra-git-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package packagegroup-base-alsa-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package python-rpm-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package rpm-security-plugin-git-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package kernel-module-usb-f-obex-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-g-zero-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-g-mass-storage-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-g-ether-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-g-serial-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-usb-f-acm-3.10.17-r0.imx6qsabreauto is intended 
for a different operating system
error: package kernel-module-usb-f-serial-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-usb-f-ss-lb-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package kernel-module-snd-usb-audio-3.10.17-r0.imx6qsabreauto is 
intended for a different operating system
error: package packagegroup-base-wifi-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package rpm-build-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-datetime-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package python-textutils-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package libcogl-1.18.2-r0.cortexa9hf_vfp_neon_mx6 is intended for a 
different operating system
error: package libgles2-mx6-1:3.10.17+1.0.0+hfp-r0.cortexa9hf_vfp_neon_mx6 
is intended for a different operating system
error: package user-session-units-git-r0.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package libgbm-2:10.1.3-r0.cortexa9hf_vfp_neon_mx6 is intended for a 
different operating system
error: package shadow-4.2.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-smartpm-backend-rpm-1.4.1-r9.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package kernel-modules-3.10.17-r0.imx6qsabreauto is intended for a 
different operating system
error: package python-io-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-pygobject-2.28.3-r0.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package cairo-1.12.16-r0.cortexa9hf_vfp_neon_mx6 is intended for a 
different operating system
error: package avahi-daemon-0.6.31-r11.1.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package rpcbind-0.2.1-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package dbus-1.6.18-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-pprint-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package python-pickle-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package python-mime-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package weston-common-tz-launcher-git-r0.cortexa9hf_vfp_neon is 
intended for a different operating system
error: package weston-1.4.0-r4.cortexa9hf_vfp_neon_mx6 is intended for a 
different operating system
error: file /etc/xdg/weston/weston.ini conflicts between attempted installs 
of weston-1.4.0-r4.cortexa9hf_vfp_neon_mx6 and weston-common-config-git-
r0.cortexa9hf_vfp_neon
error: package cairo-gobject-1.12.16-r0.cortexa9hf_vfp_neon_mx6 is intended 
for a different operating system
error: package pango-1.36.3-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libnss-mdns-0.10-r7.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-base-nfs-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package ofono-1.14-r1.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package systemd-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-logging-2.7.3-r0.3.cortexa9hf_vfp_neon is intended for 
a different operating system
error: package weston-common-git-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package libcogl-pango-1.18.2-r0.cortexa9hf_vfp_neon_mx6 is intended 
for a different operating system
error: package weston-examples-1.4.0-r4.cortexa9hf_vfp_neon_mx6 is intended 
for a different operating system
error: package packagegroup-base-zeroconf-1.0-r83.imx6qsabreauto is intended 
for a different operating system
error: package connman-1.24-r1.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-base-3g-1.0-r83.imx6qsabreauto is intended for a 
different operating system
error: package packagegroup-core-boot-1.0-r17.imx6qsabreauto is intended for 
a different operating system
error: package python-dbus-1.2.0-r0.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package python-netclient-2.7.3-r0.3.cortexa9hf_vfp_neon is intended 
for a different operating system
error: package clutter-1.0-1.18.2-r0.cortexa9hf_vfp_neon_mx6 is intended for 
a different operating system
error: package packagegroup-distro-base-1.0-r83.imx6qsabreauto is intended 
for a different operating system
error: package neard-0.14-r0.cortexa9hf_vfp_neon is intended for a different 
operating system
error: package python-smartpm-1.4.1-r9.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package clutter-1.0-examples-1.18.2-r0.cortexa9hf_vfp_neon_mx6 is 
intended for a different operating system
error: package packagegroup-base-1.0-r83.imx6qsabreauto is intended for a 
different operating system
error: package packagegroup-base-nfc-1.0-r83.imx6qsabreauto is intended for 
a different operating system
error: package smartpm-1.4.1-r9.cortexa9hf_vfp_neon is intended for a 
different operating system
error: package packagegroup-base-extended-1.0-r83.imx6qsabreauto is intended 
for a different operating system
                                         
  sysfsutils                                                                    
  systemd                                                                       
  update-alternatives-opkg                                                      
  usbutils                                                                      
  usbutils-ids                                                                  
  user-session-units                                                            
  util-linux-libblkid                                                           
  util-linux-libuuid                                                            
  wayland                                                                       
  weston                                                                        
  weston-common                                                                 
  weston-common-config                                                          
  weston-common-tz-launcher                                                     
  weston-examples                                                               
  weston-init                                                                   
  wireless-tools                                                                
  wpa-supplicant                                                                
  xkeyboard-config                                                              
  xuser-account                                                                 
  xz                                                                            
  zlib                                                                          

75.9MB of package files are needed. 200.4MB will be used.



DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs



