Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2F5FE00CA3; Sat,  2 Apr 2016 01:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B3FAE00872
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 01:02:44 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id fe3so107549996pab.1
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 01:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=r/CQYbEi5JAQrrlhv524T85MgFZLpvq1giWZiEZlgEs=;
	b=dko9tZaZJ/j3/jn0RD+OGcZkB2yNhUQQO1W+BwPEO+uHaPQgV15szb9v3VwBvjPgOX
	IUIU8PFa4fzkCrTDOH3dKjm9Nagg6QCOwIYNUc9HETRG/Dp7iRizqG868OWarxKSR77P
	izwhq/uKubu6gVXAE+yy5etoLTGQYGnajZr3Tn1fHpfW1gW5R/jM4KgM3K5k8JPB35F4
	XpxG5zoQ2urHTHkTtxGLYtACV2VeLV3nyKc53WI4aaOSKAn/sR+6YiglEqidmONzqGdz
	tt4A4D7jBPmoYwTF3NRWVc+JwF02HGdAtNnQCnaYk7cWWqN+uayqiJJzHKqFU90Wv6LL
	sHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=r/CQYbEi5JAQrrlhv524T85MgFZLpvq1giWZiEZlgEs=;
	b=EWwgTUva/6KpEpOv0OqPD0a/adictliitUq1clTM0hOkFAwM68+hidhVaP9slS5Mwv
	wM9ZvtLmZIerC8lymQri+xW3t/xREPdRVlaV5Ea6ddYRpsz8SC33kNUA6YdsPq6iAvdw
	LJux/GZu4RKt4YWZkJPNITwcmVXBZ8Q7E0iw8y6ywOW4W8EhxS57o9ymc+7ek/RfIIED
	ZKuksIYcNQB7pf8T6O7JODthpQqFIhlM308v0/L685ou6zU45RzpZvq0uxJpxpHyQ25/
	seMdc0GSzXsj7EetPrJ1246AR/HdTP/DFD3yp0Xjgrxgn94/N89KMyRHGvFEeLjqZ/+2
	0rOw==
X-Gm-Message-State: AD7BkJLF31YtLM4V10iGpo0nPEeW2dOe1QYpYZFaau+iSYHP4cB5fGSUHzIM+q42teMBdQ==
X-Received: by 10.66.63.7 with SMTP id c7mr36941554pas.104.1459584164364;
	Sat, 02 Apr 2016 01:02:44 -0700 (PDT)
Received: from [192.168.0.76] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	x18sm24819019pfi.42.2016.04.02.01.02.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 02 Apr 2016 01:02:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0@SN1PR0101MB1485.prod.exchangelabs.com>
Date: Sat, 2 Apr 2016 01:02:38 -0700
Message-Id: <6F9748C6-B673-4E74-A6C2-7B1077FA02BF@gmail.com>
References: <SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0@SN1PR0101MB1485.prod.exchangelabs.com>
To: Paul DeMetrotion <pdemetrotion@winsystems.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot Build gstreamer1.0-plugins-imx
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
X-List-Received-Date: Sat, 02 Apr 2016 08:02:47 -0000
X-Groupsio-MsgNum: 29249
Content-Type: multipart/signed;
	boundary="Apple-Mail=_283BBD71-2017-410E-BB1B-1B100496506E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_283BBD71-2017-410E-BB1B-1B100496506E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C0F0FC0F-95D0-49F7-B551-1F30B1E03EE0"

--Apple-Mail=_C0F0FC0F-95D0-49F7-B551-1F30B1E03EE0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 1, 2016, at 6:28 AM, Paul DeMetrotion =
<pdemetrotion@winsystems.com> wrote:
>=20
> Trying to build gstreamer1.0-plugins-imx but get the following errors. =
Have not been able to resolve the issue so would appreciate some =
guidance. Thanks.
>=20
> ERROR: Multiple .bb files are due to be built which each provide =
virtual/libg2d =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb =
/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fs=
l-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p4.4-hfp.bb).
> This usually means one provides something the other doesn't and =
should.
> WARNING: =
/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm-extra/recipes-kerne=
l/linux/linux-c420_3.14.28.bb.do_compile is tainted from a forced run
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: The recipe gpu-viv-g2d is trying to install files into a shared =
area when those files already exist. Those files and their manifest =
location are:
>    =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/pkgda=
ta/runtime-reverse/libg2d0.8
> Matched in manifest-imx6dlc420-imx-gpu-viv.packagedata

it seems you have two packages namely imx6dlc420-imx-gpu-viv and =
gpu-viv-g2d pulling into your image dependency chain and these are =
coming from
different recipes and both seem to provide libg2d

Now, you need to determine why both are being pulled, from name it looks =
like both are providing same set of files for target more or less
so you should investigate that part. bitbake -g <image> can generate =
dependency files which can help in establishing the depchain.

> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break =
things, if not now, possibly in the future (we've seen builds fail =
several months later). If the system knew how to recover from this =
automatically it would however there are several different scenarios =
which can result in this and we don't know which one this is. It may be =
you have switched providers of something like virtual/kernel (e.g. from =
linux-yocto to linux-yocto-dev), in that case you need to execute the =
clean task for both recipes and it will resolve this error. It may be =
you changed DISTRO_FEATURES from systemd to udev or vice versa. Cleaning =
those recipes should again resolve this error however switching =
DISTRO_FEATURES on an existing build directory is not supported, you =
should really clean out tmp and rebuild (reusing sstate should be safe). =
It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your build is including two different conflicting versions of =
things (e.g. bluez 4 and bluez 5 and the correct solution for that would =
be to resolve the conflict. If in doubt, please ask on the mailing list, =
sharing the error and filelist above.
> ERROR: If the above message is too much, the simpler version is you're =
advised to wipe out tmp and rebuild (reusing sstate is fine). That will =
likely fix things in most (but not all) cases.
> ERROR: Function failed: sstate_task_postfunc
> ERROR: Logfile of failure stored in: =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/gpu-viv-g2d/1_3.10.17-1.0.2-r0/temp/log.do_packagedata.=
25685
> ERROR: Task 106 =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_packagedata) failed with =
exit code '1'
> ERROR: The recipe gpu-viv-g2d is trying to install files into a shared =
area when those files already exist. Those files and their manifest =
location are:
>    =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/sysro=
ot-providers/virtual_libg2d
> Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
> =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/l=
ib/libg2d-viv.so
> Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
> =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/l=
ib/libg2d.so
> Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
> =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/i=
nclude/g2d.h
> Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break =
things, if not now, possibly in the future (we've seen builds fail =
several months later). If the system knew how to recover from this =
automatically it would however there are several different scenarios =
which can result in this and we don't know which one this is. It may be =
you have switched providers of something like virtual/kernel (e.g. from =
linux-yocto to linux-yocto-dev), in that case you need to execute the =
clean task for both recipes and it will resolve this error. It may be =
you changed DISTRO_FEATURES from systemd to udev or vice versa. Cleaning =
those recipes should again resolve this error however switching =
DISTRO_FEATURES on an existing build directory is not supported, you =
should really clean out tmp and rebuild (reusing sstate should be safe). =
It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your build is including two different conflicting versions of =
things (e.g. bluez 4 and bluez 5 and the correct solution for that would =
be to resolve the conflict. If in doubt, please ask on the mailing list, =
sharing the error and filelist above.
> ERROR: If the above message is too much, the simpler version is you're =
advised to wipe out tmp and rebuild (reusing sstate is fine). That will =
likely fix things in most (but not all) cases.
> ERROR: Function failed: sstate_task_postfunc
> ERROR: Logfile of failure stored in: =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/gpu-viv-g2d/1_3.10.17-1.0.2-r0/temp/log.do_populate_sys=
root.25684
> ERROR: Task 102 =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_populate_sysroot) failed =
with exit code '1'
>=20
>=20
> Paul DeMetrotion
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_C0F0FC0F-95D0-49F7-B551-1F30B1E03EE0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 1, 2016, at 6:28 AM, Paul DeMetrotion &lt;<a =
href=3D"mailto:pdemetrotion@winsystems.com" =
class=3D"">pdemetrotion@winsystems.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Trying to build =
gstreamer1.0-plugins-imx but get the following errors. Have not been =
able to resolve the issue so would appreciate some guidance. Thanks.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: Multiple .bb files are due to be built which =
each provide virtual/libg2d =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb =
/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fs=
l-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p4.4-hfp.bb).<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">This usually means one provides something the other =
doesn't and should.<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">WARNING: =
/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm-extra/recipes-kerne=
l/linux/linux-c420_3.14.28.bb.do_compile is tainted from a forced =
run<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">NOTE: Executing SetScene Tasks<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">NOTE: Executing RunQueue Tasks<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: The recipe gpu-viv-g2d is trying to install =
files into a shared area when those files already exist. Those files and =
their manifest location are:<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">&nbsp;&nbsp; =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/pkgda=
ta/runtime-reverse/libg2d0.8<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">Matched in =
manifest-imx6dlc420-imx-gpu-viv.packagedata</span></div></div></div></bloc=
kquote><div><br class=3D""></div><div>it seems you have two packages =
namely&nbsp;<span style=3D"font-family: Consolas; font-size: 9.5pt; =
background-color: white;" class=3D"">imx6dlc420-imx-gpu-viv =
and&nbsp;</span><span style=3D"background-color: white;" class=3D""><font =
face=3D"Consolas" class=3D""><span style=3D"font-size: 9.5pt;" =
class=3D"">gpu-viv-g2d&nbsp;</span></font><font face=3D"Consolas" =
size=3D"2" class=3D"">pulling</font><font face=3D"Consolas" =
class=3D""><span style=3D"font-size: 9.5pt;" class=3D"">&nbsp;into =
your&nbsp;</span><font size=3D"2" class=3D"">image</font><span =
style=3D"font-size: 9.5pt;" class=3D"">&nbsp;dependency chain and these =
are coming from</span></font></span></div><div><span =
style=3D"background-color: white;" class=3D""><font face=3D"Consolas" =
class=3D""><span style=3D"font-size: 9.5pt;" class=3D"">different =
recipes and both seem to provide&nbsp;</span></font></span><span =
style=3D"font-family: Consolas; font-size: 9.5pt; background-color: =
white;" class=3D"">libg2d</span></div><div><span style=3D"font-family: =
Consolas; font-size: 9.5pt; background-color: white;" class=3D""><br =
class=3D""></span></div><div><span style=3D"font-family: Consolas; =
font-size: 9.5pt; background-color: white;" class=3D"">Now, you need to =
determine why both are being pulled, from name it looks like both are =
providing same set of files for target more or =
less</span></div><div><span style=3D"background-color: white;" =
class=3D""><font face=3D"Consolas" class=3D""><span style=3D"font-size: =
9.5pt;" class=3D"">so you should investigate that part. bitbake -g =
&lt;image&gt; can generate dependency files&nbsp;</span></font><font =
face=3D"Consolas" size=3D"2" class=3D"">which</font><font =
face=3D"Consolas" class=3D""><span style=3D"font-size: 9.5pt;" =
class=3D"">&nbsp;can help in establishing the =
depchain.</span></font></span></div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">Please verify which recipe should provide the above =
files.<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">The build has stopped as continuing =
in this scenario WILL break things, if not now, possibly in the future =
(we've seen builds fail several months later). If the system knew how to =
recover from this automatically it would however there are several =
different scenarios which can result in this and we don't know which one =
this is. It may be you have switched providers of something like =
virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in that case =
you need to execute the clean task for both recipes and it will resolve =
this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error =
however switching DISTRO_FEATURES on an existing build directory is not =
supported, you should really clean out tmp and rebuild (reusing sstate =
should be safe). It could be the overlapping files detected are harmless =
in which case adding them to SSTATE_DUPWHITELIST may be the correct =
solution. It could also be your build is including two different =
conflicting versions of things (e.g. bluez 4 and bluez 5 and the correct =
solution for that would be to resolve the conflict. If in doubt, please =
ask on the mailing list, sharing the error and filelist above.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: If the above message is too much, the simpler =
version is you're advised to wipe out tmp and rebuild (reusing sstate is =
fine). That will likely fix things in most (but not all) cases.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: Function failed: sstate_task_postfunc<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: Logfile of failure stored in: =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/gpu-viv-g2d/1_3.10.17-1.0.2-r0/temp/log.do_packagedata.=
25685<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">ERROR: Task 106 =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_packagedata) failed with =
exit code '1'<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">ERROR: The recipe gpu-viv-g2d is =
trying to install files into a shared area when those files already =
exist. Those files and their manifest location are:<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">&nbsp;&nbsp; =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/sysro=
ot-providers/virtual_libg2d<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">Matched in =
manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" =
class=3D"">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6d=
lc420/usr/lib/libg2d-viv.so<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">Matched in =
manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" =
class=3D"">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6d=
lc420/usr/lib/libg2d.so<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">Matched in =
manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" =
class=3D"">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6d=
lc420/usr/include/g2d.h<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 9.5pt; =
font-family: Consolas; background-color: white;" class=3D"">Matched in =
manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">Please verify which recipe should provide the above =
files.<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">The build has stopped as continuing =
in this scenario WILL break things, if not now, possibly in the future =
(we've seen builds fail several months later). If the system knew how to =
recover from this automatically it would however there are several =
different scenarios which can result in this and we don't know which one =
this is. It may be you have switched providers of something like =
virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in that case =
you need to execute the clean task for both recipes and it will resolve =
this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error =
however switching DISTRO_FEATURES on an existing build directory is not =
supported, you should really clean out tmp and rebuild (reusing sstate =
should be safe). It could be the overlapping files detected are harmless =
in which case adding them to SSTATE_DUPWHITELIST may be the correct =
solution. It could also be your build is including two different =
conflicting versions of things (e.g. bluez 4 and bluez 5 and the correct =
solution for that would be to resolve the conflict. If in doubt, please =
ask on the mailing list, sharing the error and filelist above.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: If the above message is too much, the simpler =
version is you're advised to wipe out tmp and rebuild (reusing sstate is =
fine). That will likely fix things in most (but not all) cases.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: Function failed: sstate_task_postfunc<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 9.5pt; font-family: Consolas; background-color: =
white;" class=3D"">ERROR: Logfile of failure stored in: =
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/gpu-viv-g2d/1_3.10.17-1.0.2-r0/temp/log.do_populate_sys=
root.25684<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D"">ERROR: Task 102 =
(/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphics/g=
pu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_populate_sysroot) failed =
with exit code '1'<o:p class=3D""></o:p></span></div><div style=3D"margin:=
 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 9.5pt; font-family: Consolas; =
background-color: white;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">Paul =
DeMetrotion<o:p class=3D""></o:p></span></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><span =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"color: purple; text-decoration: underline; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_C0F0FC0F-95D0-49F7-B551-1F30B1E03EE0--

--Apple-Mail=_283BBD71-2017-410E-BB1B-1B100496506E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb/fKIACgkQuwUzVZGdMxTl1QCeM05VZSXkM1F8bXhMNx39EmNc
lkQAoIrNRH9h1AmO7zDd5PzKTP6g3xNv
=35Rh
-----END PGP SIGNATURE-----

--Apple-Mail=_283BBD71-2017-410E-BB1B-1B100496506E--
