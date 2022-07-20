Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F4167C433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 10:25:15 +0000 (UTC)
Subject: Re: Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: IN (110.76.168.102)
X-Originating-Platform: Linux Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 Jul 2022 03:25:08 -0700
References: 
 <CAGQ3h17vUMB5O1oUzVOcLPg1Pct=ySJhDUXvjAuHcSLSQ=KdAg@mail.gmail.com>
In-Reply-To: 
 <CAGQ3h17vUMB5O1oUzVOcLPg1Pct=ySJhDUXvjAuHcSLSQ=KdAg@mail.gmail.com>
Message-ID: <22536.1658312708486447759@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xcOkxk9vxSEGAHerkNhL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 10:25:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57593

--xcOkxk9vxSEGAHerkNhL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander

Please find the output of 'env' below .

SHELL=3D/bin/bash
SESSION_MANAGER=3Dlocal/Linux:@/tmp/.ICE-unix/1288,unix/Linux:/tmp/.ICE-uni=
x/1288
QT_ACCESSIBILITY=3D1
COLORTERM=3Dtruecolor
XDG_CONFIG_DIRS=3D/etc/xdg/xdg-ubuntu:/etc/xdg
SSH_AGENT_LAUNCHER=3Dgnome-keyring
XDG_MENU_PREFIX=3Dgnome-
GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated
LANGUAGE=3Den_IN:en
GNOME_SHELL_SESSION_MODE=3Dubuntu
SSH_AUTH_SOCK=3D/run/user/1000/keyring/ssh
XMODIFIERS=3D@im=3Dibus
DESKTOP_SESSION=3Dubuntu
GTK_MODULES=3Dgail:atk-bridge
PWD=3D/home/nikita/yoctoproject/poky/build
LOGNAME=3Dnikita
XDG_SESSION_DESKTOP=3Dubuntu
XDG_SESSION_TYPE=3Dx11
GPG_AGENT_INFO=3D/run/user/1000/gnupg/S.gpg-agent:0:1
SYSTEMD_EXEC_PID=3D1439
XAUTHORITY=3D/run/user/1000/gdm/Xauthority
WINDOWPATH=3D2
HOME=3D/home/nikita
USERNAME=3Dnikita
IM_CONFIG_PHASE=3D1
LANG=3Den_IN
LS_COLORS=3Drs=3D0:di=3D01;34:ln=3D01;36:mh=3D00:pi=3D40;33:so=3D01;35:do=
=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:mi=3D00:su=3D37;41:sg=3D=
30;43:ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D01;31:=
*.tgz=3D01;31:*.arc=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lha=3D01;31:*.lz4=
=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31:*.tlz=3D01;31:*.txz=3D01;31:*.tzo=3D0=
1;31:*.t7z=3D01;31:*.zip=3D01;31:*.z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.lr=
z=3D01;31:*.lz=3D01;31:*.lzo=3D01;31:*.xz=3D01;31:*.zst=3D01;31:*.tzst=3D01=
;31:*.bz2=3D01;31:*.bz=3D01;31:*.tbz=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.=
deb=3D01;31:*.rpm=3D01;31:*.jar=3D01;31:*.war=3D01;31:*.ear=3D01;31:*.sar=
=3D01;31:*.rar=3D01;31:*.alz=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D0=
1;31:*.7z=3D01;31:*.rz=3D01;31:*.cab=3D01;31:*.wim=3D01;31:*.swm=3D01;31:*.=
dwm=3D01;31:*.esd=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.mjpg=3D01;35:*.mjp=
eg=3D01;35:*.gif=3D01;35:*.bmp=3D01;35:*.pbm=3D01;35:*.pgm=3D01;35:*.ppm=3D=
01;35:*.tga=3D01;35:*.xbm=3D01;35:*.xpm=3D01;35:*.tif=3D01;35:*.tiff=3D01;3=
5:*.png=3D01;35:*.svg=3D01;35:*.svgz=3D01;35:*.mng=3D01;35:*.pcx=3D01;35:*.=
mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D01;35:*.m2v=3D01;35:*.mkv=3D01;35:*.webm=
=3D01;35:*.webp=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35:*.mp4v=3D=
01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.asf=3D01;35:=
*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D01;35:*.flv=
=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.yuv=3D01;3=
5:*.cgm=3D01;35:*.emf=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=3D00;36:*.a=
u=3D00;36:*.flac=3D00;36:*.m4a=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.mka=
=3D00;36:*.mp3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D00;=
36:*.oga=3D00;36:*.opus=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:
XDG_CURRENT_DESKTOP=3Dubuntu:GNOME
VTE_VERSION=3D6402
GNOME_TERMINAL_SCREEN=3D/org/gnome/Terminal/screen/7cf77da7_bb58_4735_9e5a_=
bfd6073b4d65
BBPATH=3D/home/nikita/yoctoproject/poky/build
BB_ENV_EXTRAWHITE=3DALL_PROXY BBPATH_EXTRA BB_LOGCONFIG BB_NO_NETWORK BB_NU=
MBER_THREADS BB_SETSCENE_ENFORCE BB_SRCREV_POLICY DISTRO FTPS_PROXY FTP_PRO=
XY GIT_PROXY_COMMAND HTTPS_PROXY HTTP_PROXY MACHINE NO_PROXY PARALLEL_MAKE =
SCREENDIR SDKMACHINE SOCKS5_PASSWD SOCKS5_USER SSH_AGENT_PID SSH_AUTH_SOCK =
STAMPS_DIR TCLIBC TCMODE all_proxy ftp_proxy ftps_proxy http_proxy https_pr=
oxy no_proxy
LESSCLOSE=3D/usr/bin/lesspipe %s %s
XDG_SESSION_CLASS=3Duser
TERM=3Dxterm-256color
LESSOPEN=3D| /usr/bin/lesspipe %s
USER=3Dnikita
GNOME_TERMINAL_SERVICE=3D:1.73
DISPLAY=3D:1
SHLVL=3D1
QT_IM_MODULE=3Dibus
XDG_RUNTIME_DIR=3D/run/user/1000
XDG_DATA_DIRS=3D/usr/share/ubuntu:/usr/local/share/:/usr/share/:/var/lib/sn=
apd/desktop
PATH=3D/home/nikita/yoctoproject/poky/scripts:/home/nikita/yoctoproject/pok=
y/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:=
/usr/games:/usr/local/games:/snap/bin:/snap/bin
GDMSESSION=3Dubuntu
DBUS_SESSION_BUS_ADDRESS=3Dunix:path=3D/run/user/1000/bus
BUILDDIR=3D/home/nikita/yoctoproject/poky/build
OLDPWD=3D/home/nikita/yoctoproject/poky
_=3D/usr/bin/env

--xcOkxk9vxSEGAHerkNhL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander<br /><br />Please find the output of 'env' below .<br /><br=
 />
<div>SHELL=3D/bin/bash</div>
<div>SESSION_MANAGER=3Dlocal/Linux:@/tmp/.ICE-unix/1288,unix/Linux:/tmp/.IC=
E-unix/1288</div>
<div>QT_ACCESSIBILITY=3D1</div>
<div>COLORTERM=3Dtruecolor</div>
<div>XDG_CONFIG_DIRS=3D/etc/xdg/xdg-ubuntu:/etc/xdg</div>
<div>SSH_AGENT_LAUNCHER=3Dgnome-keyring</div>
<div>XDG_MENU_PREFIX=3Dgnome-</div>
<div>GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated</div>
<div>LANGUAGE=3Den_IN:en</div>
<div>GNOME_SHELL_SESSION_MODE=3Dubuntu</div>
<div>SSH_AUTH_SOCK=3D/run/user/1000/keyring/ssh</div>
<div>XMODIFIERS=3D@im=3Dibus</div>
<div>DESKTOP_SESSION=3Dubuntu</div>
<div>GTK_MODULES=3Dgail:atk-bridge</div>
<div>PWD=3D/home/nikita/yoctoproject/poky/build</div>
<div>LOGNAME=3Dnikita</div>
<div>XDG_SESSION_DESKTOP=3Dubuntu</div>
<div>XDG_SESSION_TYPE=3Dx11</div>
<div>GPG_AGENT_INFO=3D/run/user/1000/gnupg/S.gpg-agent:0:1</div>
<div>SYSTEMD_EXEC_PID=3D1439</div>
<div>XAUTHORITY=3D/run/user/1000/gdm/Xauthority</div>
<div>WINDOWPATH=3D2</div>
<div>HOME=3D/home/nikita</div>
<div>USERNAME=3Dnikita</div>
<div>IM_CONFIG_PHASE=3D1</div>
<div>LANG=3Den_IN</div>
<div>
<div>LS_COLORS=3Drs=3D0:di=3D01;34:ln=3D01;36:mh=3D00:pi=3D40;33:so=3D01;35=
:do=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:mi=3D00:su=3D37;41:sg=
=3D30;43:ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D01;=
31:*.tgz=3D01;31:*.arc=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lha=3D01;31:*.=
lz4=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31:*.tlz=3D01;31:*.txz=3D01;31:*.tzo=
=3D01;31:*.t7z=3D01;31:*.zip=3D01;31:*.z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:=
*.lrz=3D01;31:*.lz=3D01;31:*.lzo=3D01;31:*.xz=3D01;31:*.zst=3D01;31:*.tzst=
=3D01;31:*.bz2=3D01;31:*.bz=3D01;31:*.tbz=3D01;31:*.tbz2=3D01;31:*.tz=3D01;=
31:*.deb=3D01;31:*.rpm=3D01;31:*.jar=3D01;31:*.war=3D01;31:*.ear=3D01;31:*.=
sar=3D01;31:*.rar=3D01;31:*.alz=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=
=3D01;31:*.7z=3D01;31:*.rz=3D01;31:*.cab=3D01;31:*.wim=3D01;31:*.swm=3D01;3=
1:*.dwm=3D01;31:*.esd=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.mjpg=3D01;35:*=
.mjpeg=3D01;35:*.gif=3D01;35:*.bmp=3D01;35:*.pbm=3D01;35:*.pgm=3D01;35:*.pp=
m=3D01;35:*.tga=3D01;35:*.xbm=3D01;35:*.xpm=3D01;35:*.tif=3D01;35:*.tiff=3D=
01;35:*.png=3D01;35:*.svg=3D01;35:*.svgz=3D01;35:*.mng=3D01;35:*.pcx=3D01;3=
5:*.mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D01;35:*.m2v=3D01;35:*.mkv=3D01;35:*.=
webm=3D01;35:*.webp=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35:*.mp4=
v=3D01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.asf=3D01=
;35:*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D01;35:*=
.flv=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.yuv=3D=
01;35:*.cgm=3D01;35:*.emf=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=3D00;36=
:*.au=3D00;36:*.flac=3D00;36:*.m4a=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.m=
ka=3D00;36:*.mp3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D0=
0;36:*.oga=3D00;36:*.opus=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:</div>
<div>XDG_CURRENT_DESKTOP=3Dubuntu:GNOME</div>
<div>VTE_VERSION=3D6402</div>
</div>
<div>
<div>GNOME_TERMINAL_SCREEN=3D/org/gnome/Terminal/screen/7cf77da7_bb58_4735_=
9e5a_bfd6073b4d65</div>
<div>BBPATH=3D/home/nikita/yoctoproject/poky/build</div>
<div>BB_ENV_EXTRAWHITE=3DALL_PROXY BBPATH_EXTRA BB_LOGCONFIG BB_NO_NETWORK =
BB_NUMBER_THREADS BB_SETSCENE_ENFORCE BB_SRCREV_POLICY DISTRO FTPS_PROXY FT=
P_PROXY GIT_PROXY_COMMAND HTTPS_PROXY HTTP_PROXY MACHINE NO_PROXY PARALLEL_=
MAKE SCREENDIR SDKMACHINE SOCKS5_PASSWD SOCKS5_USER SSH_AGENT_PID SSH_AUTH_=
SOCK STAMPS_DIR TCLIBC TCMODE all_proxy ftp_proxy ftps_proxy http_proxy htt=
ps_proxy no_proxy&nbsp;</div>
<div>LESSCLOSE=3D/usr/bin/lesspipe %s %s</div>
<div>XDG_SESSION_CLASS=3Duser</div>
<div>TERM=3Dxterm-256color</div>
<div>LESSOPEN=3D| /usr/bin/lesspipe %s</div>
<div>USER=3Dnikita</div>
<div>GNOME_TERMINAL_SERVICE=3D:1.73</div>
<div>DISPLAY=3D:1</div>
<div>SHLVL=3D1</div>
<div>QT_IM_MODULE=3Dibus</div>
<div>XDG_RUNTIME_DIR=3D/run/user/1000</div>
<div>XDG_DATA_DIRS=3D/usr/share/ubuntu:/usr/local/share/:/usr/share/:/var/l=
ib/snapd/desktop</div>
<div>PATH=3D/home/nikita/yoctoproject/poky/scripts:/home/nikita/yoctoprojec=
t/poky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:=
/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin</div>
<div>GDMSESSION=3Dubuntu</div>
<div>DBUS_SESSION_BUS_ADDRESS=3Dunix:path=3D/run/user/1000/bus</div>
<div>BUILDDIR=3D/home/nikita/yoctoproject/poky/build</div>
<div>OLDPWD=3D/home/nikita/yoctoproject/poky</div>
<div>_=3D/usr/bin/env</div>
</div>
<div>&nbsp;</div>

--xcOkxk9vxSEGAHerkNhL--

