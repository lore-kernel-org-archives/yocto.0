Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7918DE01519
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 12:49:41 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id m1so747355ves.36
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 12:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=mlF9E1AUlTCcj+mUK62CTBbwkDa3KmBWHXZVGNIek2w=;
	b=MuQvdafXZuZczK2nt921KOb5kjRYcX6MLzD6sS8qcaSFVOHdcHPY8ye5fnIjW1Z18B
	0HYjWHCW93qbk6QXd4Bj0uGM0U2a2/ZPn69Fgx4jeZUHykuww9z4jQ8TUAXBanh7FG2p
	OzdD4Sden6ij+S+GePcF7sLpV9E6V5HvMXws0UNxwakeTokd/KO/cCslmti81THzfIP1
	uV6neWaINqLpnNicSqbOChKA9SWfl6vksYNGH1mcbVREt4ckmhQezvvyvGN/hFBVUeUe
	JcncQNCFnAcvPOkoVELFp5Ogo0yQp7Prg1E7axMjpYkSUJiDpr7dzueJxLGkF6O1jJT3
	ooXA==
MIME-Version: 1.0
X-Received: by 10.52.71.235 with SMTP id y11mr11575590vdu.43.1362689380243;
	Thu, 07 Mar 2013 12:49:40 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Thu, 7 Mar 2013 12:49:40 -0800 (PST)
Date: Thu, 7 Mar 2013 21:49:40 +0100
Message-ID: <CABTzgQ5nZSRSxnmUMjUVfT1B6UijNTrU-zc5MRHBNmGPMuhUPA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>, 
	=?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Subject: Problem with Xserver freezing
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
X-List-Received-Date: Thu, 07 Mar 2013 20:49:41 -0000
Content-Type: multipart/alternative; boundary=20cf3071cd6272e30204d75bd81f

--20cf3071cd6272e30204d75bd81f
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I created a X11 image and I found that the init is freezing. Advice
regarding configuring Xorg is very much appreciated. If I remove
Xinitialization from init then its properly starting. my board is a
specialized version of Nvidia Tegra Harmony board.

Current version of pixman: 0.29.2
        Before reporting problems, check http://wiki.x.org
        to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
        (++) from command line, (!!) notice, (II) informational,
        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Thu Mar  7 19:36:27 2013
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
Initializing built-in extension Generic Event Extension
Initializing built-in extension SHAPE
Initializing built-in extension MIT-SHM
Initializing built-in extension XInputExtension
Initializing built-in extension XTEST
Initializing built-in extension BIG-REQUESTS
Initializing built-in extension SYNC
Initializing built-in extension XKEYBOARD
Initializing built-in extension XC-MISC
Initializing built-in extension XFIXES
Initializing built-in extension RENDER
Initializing built-in extension RANDR
Initializing built-in extension COMPOSITE
Initializing built-in extension DAMAGE
Initializing built-in extension MIT-SCREEN-SAVER
Initializing built-in extension DOUBLE-BUFFER
Initializing built-in extension DPMS
Initializing built-in extension X-Resource
Initializing built-in extension XVideo
Initializing built-in extension XVideo-MotionCompensation
Initializing built-in extension XFree86-VidModeExtension
Initializing built-in extension XFree86-DGA
Initializing built-in extension XFree86-DRI
Initializing built-in extension DRI2

Cheers,
Satya

--20cf3071cd6272e30204d75bd81f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div style>I created a X11 image an=
d I found that the init is freezing. Advice regarding configuring Xorg is v=
ery much appreciated. If I remove Xinitialization from init then its proper=
ly starting. my board is a specialized version of Nvidia Tegra Harmony boar=
d.=A0</div>
<div style><br></div><div style><div>Current version of pixman: 0.29.2</div=
><div>=A0 =A0 =A0 =A0 Before reporting problems, check <a href=3D"http://wi=
ki.x.org">http://wiki.x.org</a></div><div>=A0 =A0 =A0 =A0 to make sure that=
 you have the latest version.</div>
<div>Markers: (--) probed, (**) from config file, (=3D=3D) default setting,=
</div><div>=A0 =A0 =A0 =A0 (++) from command line, (!!) notice, (II) inform=
ational,</div><div>=A0 =A0 =A0 =A0 (WW) warning, (EE) error, (NI) not imple=
mented, (??) unknown.</div>
<div>(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Mar =A07=
 19:36:27 2013</div><div>(=3D=3D) Using system config directory &quot;/usr/=
share/X11/xorg.conf.d&quot;</div><div>Initializing built-in extension Gener=
ic Event Extension</div>
<div>Initializing built-in extension SHAPE</div><div>Initializing built-in =
extension MIT-SHM</div><div>Initializing built-in extension XInputExtension=
</div><div>Initializing built-in extension XTEST</div><div>Initializing bui=
lt-in extension BIG-REQUESTS</div>
<div>Initializing built-in extension SYNC</div><div>Initializing built-in e=
xtension XKEYBOARD</div><div>Initializing built-in extension XC-MISC</div><=
div>Initializing built-in extension XFIXES</div><div>Initializing built-in =
extension RENDER</div>
<div>Initializing built-in extension RANDR</div><div>Initializing built-in =
extension COMPOSITE</div><div>Initializing built-in extension DAMAGE</div><=
div>Initializing built-in extension MIT-SCREEN-SAVER</div><div>Initializing=
 built-in extension DOUBLE-BUFFER</div>
<div>Initializing built-in extension DPMS</div><div>Initializing built-in e=
xtension X-Resource</div><div>Initializing built-in extension XVideo</div><=
div>Initializing built-in extension XVideo-MotionCompensation</div><div>
Initializing built-in extension XFree86-VidModeExtension</div><div>Initiali=
zing built-in extension XFree86-DGA</div><div>Initializing built-in extensi=
on XFree86-DRI</div><div>Initializing built-in extension DRI2</div><div>
<br></div><div style>Cheers,</div><div style>Satya</div></div></div>

--20cf3071cd6272e30204d75bd81f--
