Return-Path: <r.schwarz@sotec.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB0EE00B30; Tue, 24 Nov 2015 01:57:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE326E00B2C
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 01:57:41 -0800 (PST)
Received: by igcto18 with SMTP id to18so10301270igc.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 01:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sotec-eu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tXUNH8jRuJQFmUNQbPTONqkLD2Xuoxm9T3i6ISfMn0E=;
	b=Qb7ZhxQzGVgN8kFO/dKBmklk+1G6QRjaPgel2Ee6kWpBWbmpReri3aNfJ/+SyrL7DM
	+bS4zp8hwO+m05SJHJBvRfZ1bgRUGtYCi9Yyh5BhOe6abzEze/RIjj/3/wdIcE/sWXtg
	SkL8srdix51y/j9iNaJQlh1sxb7uZfcn8LXjPcc+Y4lOsU1nu4s0SUXwSkbdthiaMcxz
	rflAXaNE4hIo/67eW/e/qeF5TvKxPTNFxbDSP8WYnZHi904y2iIMQrET88XOF6PHQ4wH
	botyzwy4gFji8L3vqnvc19AEXxQlvUqyeHz+vBYMdJn1XeR6ITvlZvxRXBA8YEkyoOZr
	GpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=tXUNH8jRuJQFmUNQbPTONqkLD2Xuoxm9T3i6ISfMn0E=;
	b=Fx8rUjmTNLvADjKvbukM+Y4swDEmsRTdf/faniIGD4I2q0/GQTj0yYyDkC/Zx+gUDH
	BMonBOKZJe84ji8/LAs2x87gP9CxOUyOf3HlW314VxI0zKfd73mNrc7ec0tM0VK/zD3r
	eLsZ7JPUxbGjD5K2krQmH1KwMgVYmqTQwXL3ceDJC/19hYQ/ePYwnR+U3hnXCw6SHduB
	ZAlDjiaYzq3jfbgR4lS2MzCP1sky4ATHJcNX+a8jfIe3sZBwsNKI5PbK/JYckJla5zYM
	B6i2BtZgKh/EFaNxTPX9Dw+P0WC+wndAO3DtLfng+1SQq8hQsLAuZob7gMf1VKsiZZRv
	Pksg==
X-Gm-Message-State: ALoCoQknu4skR6BcOutZFs1LnH4m/3jzXxLxs1sAz17UTvM0zLia0/ISBYCx9dz023B4w//gsvqT5V2UaEdC8UdAt+QaiKPcUpzdwVOVS/4ArlWkSe61dyXioD54gWFwdzipMwwog2uy
MIME-Version: 1.0
X-Received: by 10.50.50.102 with SMTP id b6mr17494852igo.0.1448359059745; Tue,
	24 Nov 2015 01:57:39 -0800 (PST)
Received: by 10.107.169.228 with HTTP; Tue, 24 Nov 2015 01:57:39 -0800 (PST)
Date: Tue, 24 Nov 2015 10:57:39 +0100
Message-ID: <CAEMorpjAtwbSRqPeozr2zGdqiPJ_3bbThExaWyAC+dTiz2+37g@mail.gmail.com>
From: Ruben Schwarz <r.schwarz@sotec.eu>
To: yocto@yoctoproject.org
Subject: Read-only rootfs update
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
X-List-Received-Date: Tue, 24 Nov 2015 09:57:44 -0000
Content-Type: multipart/alternative; boundary=089e0122f56e438fc70525465f0f

--089e0122f56e438fc70525465f0f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

We are using yocto to build a custom linux image for our BeagleBoneBlack
based hardware. We are using a read-only root file system to prevent data
lost if power supply is lost.
Now we wan't to be able to update our device. If it is possiple we wan't to
use apt/dpkg to do this update. We set up an update server and everything
works so far.

Following steps are done to do an update:

mount -o remount,rw /
apt-get update
apt-get upgrade

Everything works fine, new package versions are installed. After rebooting
the device and executing "dpkg -l" the old package version is listed.
Output of mount shows that there is tmpfs on /var/lib which hides the
/var/lib/dpkg folder.


root@device:~# mount
rootfs on / type rootfs (rw)
/dev/root on / type ext4 (ro,relatime,data=3Dordered)
devtmpfs on /dev type devtmpfs
(rw,relatime,size=3D243140k,nr_inodes=3D60785,mode=3D755)
proc on /proc type proc (rw,relatime)
sysfs on /sys type sysfs (rw,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)
tmpfs on /var/volatile type tmpfs (rw,relatime)
tmpfs on /var/lib type tmpfs (rw,relatime)
devpts on /dev/pts type devpts (rw,relatime,gid=3D5,mode=3D620)




Is there an standard way how to update devices with read-only root file
systems? Anybody here who did something similar?

Best regards
Ruben

--=20
Ruben Schwarz | SOTEC | r.schwarz@sotec.eu | T +49 7033 5458 34 | F +49
7033 5458 95

--=20


Besuchen Sie uns auf der SPS IPC Drives vom 24. - 26.11. in N=C3=BCrnberg=
=20
<http://sps-messe.de/eintrittskarten>
Ihr kostenloser Gutscheincode: 1551219857

Sichern Sie sich heute noch einen Platz bei Google's Online Event =C3=BCber=
 den=20
Arbeitsplatz der Zukunft <https://goo.gl/qn0dep>

www.sotec.eu | www.cloudwuerdig.com=20
--=20
SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG=20
Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=20
Sitz Ostelsheim, Amtsgericht Stuttgart HRA 330821/HRB 330664,=20
Gesch=C3=A4ftsf=C3=BChrer: Florian Holz=20
Cloudw=C3=BCrdig=C2=AE ist eine eingetragene Marke der SOTEC Software Entwi=
cklungs=20
GmbH + Co Mikrocomputertechnik KG

Der Inhalt dieser e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichneten =
Adressaten=20
bestimmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Mail oder dessen=
=20
Vertreter sein sollten, so beachten Sie bitte, dass jede Form der=20
Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weitergabe=
 des=20
Inhalts dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich in diesem F=
all=20
mit dem Absender der e-Mail in Verbindung zu setzen.

The content of this e-mail is meant exclusively for the person to whom it=
=20
is addressed. If you are not the person to whom this e-mail is addressed or=
=20
his/her representative, please be informed, that any form of knowledge,=20
publication, duplication or distribution of the content of this e-mail is=
=20
inadmissible. We ask you, therefore, in such a case to please contact the=
=20
sender of this e-mail.


--089e0122f56e438fc70525465f0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We are using yocto to build a custo=
m linux image for our BeagleBoneBlack based hardware. We are using a read-o=
nly root file system to prevent data lost if power supply is lost.</div><di=
v>Now we wan&#39;t to be able to update our device. If it is possiple we wa=
n&#39;t to use apt/dpkg to do this update. We set up an update server and e=
verything works so far.</div><div><br></div><div>Following steps are done t=
o do an update:</div><div><br></div><div>mount -o remount,rw /</div><div>ap=
t-get update</div><div>apt-get upgrade</div><div><br></div><div>Everything =
works fine, new package versions are installed. After rebooting the device =
and executing &quot;dpkg -l&quot; the old package version is listed.</div><=
div>Output of mount shows that there is tmpfs on /var/lib which hides the /=
var/lib/dpkg folder.</div><div><br></div><div><br></div><div><div>root@devi=
ce:~# mount<br></div><div>rootfs on / type rootfs (rw)</div><div>/dev/root =
on / type ext4 (ro,relatime,data=3Dordered)</div><div>devtmpfs on /dev type=
 devtmpfs (rw,relatime,size=3D243140k,nr_inodes=3D60785,mode=3D755)</div><d=
iv>proc on /proc type proc (rw,relatime)</div><div>sysfs on /sys type sysfs=
 (rw,relatime)</div><div>debugfs on /sys/kernel/debug type debugfs (rw,rela=
time)</div><div>tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)</div>=
<div>tmpfs on /var/volatile type tmpfs (rw,relatime)</div><div>tmpfs on /va=
r/lib type tmpfs (rw,relatime)</div><div>devpts on /dev/pts type devpts (rw=
,relatime,gid=3D5,mode=3D620)</div><div><br></div></div><div><br></div><div=
><br></div><div><br></div><div>Is there an standard way how to update devic=
es with read-only root file systems? Anybody here who did something similar=
?</div><div><br></div><div>Best regards</div><div>Ruben</div><div><div><br>=
</div>-- <br><div class=3D"gmail_signature"><span style=3D"font-family:&#39=
;Times New Roman&#39;;font-size:medium"><span style=3D"font-weight:bold;fon=
t-size:11px;font-family:Arial;vertical-align:baseline;white-space:pre-wrap"=
>Ruben Schwarz | SOTEC | </span><span style=3D"font-size:11px;font-family:A=
rial;vertical-align:baseline;white-space:pre-wrap"><a href=3D"mailto:r.schw=
arz@sotec.eu" target=3D"_blank">r.schwarz@sotec.eu</a></span><span style=3D=
"font-size:11px;font-family:Arial;vertical-align:baseline;white-space:pre-w=
rap"> | </span><span style=3D"font-size:11px;font-family:Arial;vertical-ali=
gn:baseline;white-space:pre-wrap">T +49 7033 5458 34 |  F +49 7033 5458 95<=
/span></span>
</div>
</div></div>

<br>
<p style=3D"font-family:Arial;font-size:11px;vertical-align:baseline"></p><=
p style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em;vertical-=
align:baseline"></p><p style=3D"vertical-align:baseline"><font face=3D"Aria=
l"><span style=3D"font-size:11px"><a href=3D"http://sps-messe.de/eintrittsk=
arten" target=3D"_blank">Besuchen Sie uns auf der SPS IPC Drives vom 24. - =
26.11. in N=C3=BCrnberg</a></span><br><span style=3D"font-size:11px">Ihr ko=
stenloser Gutscheincode: 1551219857</span><br><br><span style=3D"font-size:=
11px"><a href=3D"https://goo.gl/qn0dep" target=3D"_blank">Sichern Sie sich =
heute noch einen Platz bei Google&#39;s Online Event =C3=BCber den Arbeitsp=
latz der Zukunft</a></span></font></p><p style=3D"font-family:Arial;font-si=
ze:11px;vertical-align:baseline"><span style=3D"font-weight:bold;vertical-a=
lign:baseline"><a href=3D"http://www.sotec.eu/" style=3D"text-decoration:no=
ne;color:rgb(0,0,0)" target=3D"_blank">www.sotec.eu</a>=C2=A0|=C2=A0<a href=
=3D"http://www.cloudwuerdig.com/" style=3D"text-decoration:none;color:rgb(0=
,0,0)" target=3D"_blank">www.<wbr>cloudwuerdig.com</a>=C2=A0</span><br>--=
=C2=A0<br>SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG=C2=
=A0<br>Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=C2=A0<br>Sitz Ostelsheim, =
Amtsgericht Stuttgart HRA 330821/HRB 330664, Gesch=C3=A4ftsf=C3=BChrer: Flo=
rian Holz=C2=A0<br>Cloudw=C3=BCrdig=C2=AE ist eine eingetragene Marke der S=
OTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG</p><p style=3D=
"font-family:Arial;font-size:11px;vertical-align:baseline">Der Inhalt diese=
r e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichneten Adressaten besti=
mmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Mail oder dessen Vert=
reter sein sollten, so beachten Sie bitte, dass jede Form der Kenntnisnahme=
, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weitergabe des Inhalts =
dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich in diesem Fall mit =
dem Absender der e-Mail in Verbindung zu setzen.</p><p style=3D"font-family=
:Arial;font-size:11px;vertical-align:baseline">The content of this e-mail i=
s meant exclusively for the person to whom it is addressed. If you are not =
the person to whom this e-mail is addressed or his/her representative, plea=
se be informed, that any form of knowledge, publication, duplication or dis=
tribution of the content of this e-mail is inadmissible. We ask you, theref=
ore, in such a case to please contact the sender of this e-mail.</p><p styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em"></p><p style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em"></p>

--089e0122f56e438fc70525465f0f--
