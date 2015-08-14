Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38F27E00A71; Thu, 13 Aug 2015 23:33:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6951E009B8
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:33:28 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so53485515pab.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=4sLn6HQNGQV/aVovBhJDO1CiTBrWHVJKErcweB9Xk0U=;
	b=M8zY9GR7chSC1JPjqDDK6cyyOsrvNrPlPkeN2hweDZzwf0IbU+gh2DhM5/4kUUqv8V
	F4OoGxqyFJGbHQjsqma4mKWzYeyLvvdmDjmr4nBQscv5MgH5/b2IOitrPTkDGUf0MWAE
	geX3PMLVEyexaL+QHTIRwmQgB1NEIDlNysMFUh0WsgugAS3mD2vTR6bozFxNhOxAtapU
	XWgm1jPzFRwY0ALofshjwfw1IZ9lnQ2Um1kKkMBX9gfqJ1rNxp9AOBukq7afcXbC4Q+M
	bn4G1yCdzzg9i6cpAxysyMUYaWEZO/000av/KhXHDfhbdgMkvqIHO3YbqnsyjzDlCax5
	TSDg==
X-Received: by 10.66.158.65 with SMTP id ws1mr84975907pab.18.1439534008257;
	Thu, 13 Aug 2015 23:33:28 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:7d4a:3993:27b2:859?
	([2601:646:8601:4580:7d4a:3993:27b2:859])
	by smtp.gmail.com with ESMTPSA id
	t15sm4748368pbs.10.2015.08.13.23.33.27
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 23:33:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162D2974@SJEXCHMB12.corp.ad.broadcom.com>
Date: Thu, 13 Aug 2015 23:33:26 -0700
Message-Id: <3B9D298F-AFE4-4082-A14E-6C227B7E2F9F@gmail.com>
References: <9F136EE5FB53D64397ED1089A0E760E0162D2974@SJEXCHMB12.corp.ad.broadcom.com>
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multi recipes for different defconfig on the same kernel source
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
X-List-Received-Date: Fri, 14 Aug 2015 06:33:32 -0000
X-Groupsio-MsgNum: 26111
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1689F129-DB19-449B-9695-93F2622E9BD9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1689F129-DB19-449B-9695-93F2622E9BD9
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C0F8C79B-013E-47ED-A460-97B7F071D87D"

--Apple-Mail=_C0F8C79B-013E-47ED-A460-97B7F071D87D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jun 1, 2015, at 7:48 AM, Joel (Xi Zhou) Zhou =
<joel.zhou@broadcom.com> wrote:
>=20
> Hi all,
>=20
> I need to create multiple recipes for different kernel config based on =
the same kernel source.
> In my experiment, I create a new recipe linux-brcm-nand based on =
linux-brcm, the only different is the kernel defconfig file.
> =46rom the following error message, it looks like the idea of =
multi-kernel providers.
>=20
> What is the correct way to different kernel config on the same kernel =
source?

look at multi-kernel options e.g.  =
https://github.com/Angstrom-distribution/meta-ti/blob/master/recipes-kerne=
l/linux/multi-kernel.inc =
<https://github.com/Angstrom-distribution/meta-ti/blob/master/recipes-kern=
el/linux/multi-kernel.inc>
that might help here.

>=20
> Thanks,
> Joel
> ----------------------------------
> ERROR: The recipe linux-brcm-nand is trying to install files into a =
shared area when those files already exist. Those files and their =
manifest location are:
>    /projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel
> Matched in manifest-brcm-linux-brcm.packagedata
> =
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel.packaged
> Matched in manifest-brcm-linux-brcm.packagedata
> ...
> =
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/kernel-depmod/System.map-=
3.14.29
> Matched in manifest-brcm-linux-brcm.packagedata
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
/projects/poky/build64/tmp/work/brcm =
-poky-linux/linux-brcm-nand/3.14.29-r6/temp/log.do_packagedata.40045
> NOTE: recipe linux-brcm-nand-3.14.29-r6: task do_packagedata: Failed
> ERROR: Task 11 =
(/projects/poky/build64../meta-brcm/meta/recipes-kernel/linux/linux-brcm-n=
and_3.14.29.bb, do_packagedata) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 447 tasks of which 445 didn't need to =
be rerun and 2 failed.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_C0F8C79B-013E-47ED-A460-97B7F071D87D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 1, 2015, at 7:48 AM, Joel (Xi Zhou) Zhou &lt;<a =
href=3D"mailto:joel.zhou@broadcom.com" =
class=3D"">joel.zhou@broadcom.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hi =
all,<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I need to =
create multiple recipes for different kernel config based on the same =
kernel source.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">In my experiment, I create a new recipe linux-brcm-nand based =
on linux-brcm, the only different is the kernel defconfig file.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">=46rom =
the following error message, it looks like the idea of multi-kernel =
providers.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">What is the correct way to different kernel config on the =
same kernel source?</div></div></div></blockquote><div><br =
class=3D""></div><div>look at multi-kernel options e.g. &nbsp;<a =
href=3D"https://github.com/Angstrom-distribution/meta-ti/blob/master/recip=
es-kernel/linux/multi-kernel.inc" =
class=3D"">https://github.com/Angstrom-distribution/meta-ti/blob/master/re=
cipes-kernel/linux/multi-kernel.inc</a></div><div>that might help =
here.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks,<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Joel<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">----------------------------------<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
The recipe linux-brcm-nand is trying to install files into a shared area =
when those files already exist. Those files and their manifest location =
are:<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">&nbsp;&nbsp; =
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Matched =
in manifest-brcm-linux-brcm.packagedata<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" =
class=3D"">/projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel=
.packaged<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Matched in manifest-brcm-linux-brcm.packagedata<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">...<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">/projects/poky/build64/tmp/sysroots/brcm/pkgdata/kernel-depmod/=
System.map-3.14.29<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Matched in manifest-brcm-linux-brcm.packagedata<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Please =
verify which recipe should provide the above files.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">The build =
has stopped as continuing in this scenario WILL break things, if not =
now, possibly in the future (we've seen builds fail several months =
later). If the system knew how to recover from this automatically it =
would however there are several different scenarios which can result in =
this and we don't know which one this is. It may be you have switched =
providers of something like virtual/kernel (e.g. from linux-yocto to =
linux-yocto-dev), in that case you need to execute the clean task for =
both recipes and it will resolve this error. It may be you changed =
DISTRO_FEATURES from systemd to udev or vice versa. Cleaning those =
recipes should again resolve this error however switching =
DISTRO_FEATURES on an existing build directory is not supported, you =
should really clean out tmp and rebuild (reusing sstate should be safe). =
It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your build is including two different conflicting versions of =
things (e.g. bluez 4 and bluez 5 and the correct solution for that would =
be to resolve the conflict. If in doubt, please ask on the mailing list, =
sharing the error and filelist above.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">ERROR: If the above message is too =
much, the simpler version is you're advised to wipe out tmp and rebuild =
(reusing sstate is fine). That will likely fix things in most (but not =
all) cases.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">ERROR: Function failed: sstate_task_postfunc<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
Logfile of failure stored in: /projects/poky/build64/tmp/work/brcm =
-poky-linux/linux-brcm-nand/3.14.29-r6/temp/log.do_packagedata.40045<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">NOTE: =
recipe linux-brcm-nand-3.14.29-r6: task do_packagedata: Failed<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
Task 11 =
(/projects/poky/build64../meta-brcm/meta/recipes-kernel/linux/linux-brcm-n=
and_3.14.29.bb, do_packagedata) failed with exit code '1'<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">NOTE: =
Tasks Summary: Attempted 447 tasks of which 445 didn't need to be rerun =
and 2 failed.<o:p class=3D""></o:p></div></div><span style=3D"font-family:=
 Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Helvetica; font-size: 13px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: Helvetica; font-size: =
13px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_C0F8C79B-013E-47ED-A460-97B7F071D87D--

--Apple-Mail=_1689F129-DB19-449B-9695-93F2622E9BD9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXNi7YACgkQuwUzVZGdMxRSBgCePD3649THclqFbPf3eqXGe6oS
AUsAmQHVQfC+XkiYa4yZOHpMzEzQrI4l
=ZWaQ
-----END PGP SIGNATURE-----

--Apple-Mail=_1689F129-DB19-449B-9695-93F2622E9BD9--
