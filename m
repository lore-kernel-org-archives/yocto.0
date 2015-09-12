Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79F09E00BDA; Sat, 12 Sep 2015 06:12:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.35 listed in list.dnswl.org]
Received: from nm28-vm1.bullet.mail.ne1.yahoo.com
	(nm28-vm1.bullet.mail.ne1.yahoo.com [98.138.91.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF04E00B66
	for <yocto@yoctoproject.org>; Sat, 12 Sep 2015 06:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1442063547; bh=aklLsZD/fUs3MZA2I0Fp3pozI5pLE81BW25OPYGhEyA=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=adeoDLOJ2cqMgt9IyLtQK9vZ9qefjlLdJ4Egap0v14tpLQtF8GvB23qNAbiKZCOw3J1RkGL/EsjMKn0PQjMZhitVFIOGj5qRgZ/f1vsJPC88B8Bvt8VCD4WtNZRxxmjC6f6B11zcKeafkXCik3hNkXFE6tCqvtaqJsobOlF6tOOMr7bJMOIhzUcl7cMtUbx6E7ivGaX3Zv6n3dzgTqQpPDbHekRmrGeNLusZ19Zxp1GfTwbNZZjj6sB/Scct5/6GlsuDQyf9dPaUPrV/hKrxAFSROu88OLv1O+BEsBu8z+5OhCeCTl8KbdcU5lVxLCLQgtIX/KY6+Jan9JYunX+U+w==
Received: from [98.138.226.177] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Sep 2015 13:12:27 -0000
Received: from [98.138.89.198] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Sep 2015 13:12:27 -0000
Received: from [127.0.0.1] by omp1056.mail.ne1.yahoo.com with NNFMP;
	12 Sep 2015 13:12:27 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 15484.16422.bm@omp1056.mail.ne1.yahoo.com
X-YMail-OSG: YR93K_kVM1nluQ8.egYfBbnvgUU.OhyHDO_chDq.n6kWTgCmFHrnZ1oNY7YMEqM
	FBu04TdVgu77WdE_R_SWgxlIIyAax6LAeAJK0dREpFdMjdDEUSN2TY0.YZyWxjv9k55kFI.nebBf
	fauBUfurdZ0qUthvLK9Sg6ggGZRW0gOTiebG0RzenC8afAxO28ILgdDk.NqTsP5Hac.X0RVEKP1k
	4TPhaLqxaSEeztDWSSraAdJve1G_BgroxPuCBNHDX12dNKJjY.b_qLo6bnGWimzvp8__J.Nb1gai
	SHmljoUY7Eii_Aj5OVVOssHnTSk9MtRdc3N5hNIAofx04LQL_fJMxjl1Q8NyEOKFsZLzlBiXpc6W
	WjrKwfHMKwHykUvNID4ZUHC7LC_.WX82aqIL_DK4S9t.FNQRY5o9cDISEWGbgB12FrvGF0sFDix_
	pYBIB_0BwC.URxsomDugOlmpG_HrMpqBaKindFOGclXk96TahgB3h7X8FuzudUxM8nI7LnliF0Hr
	S.0dEmSn9t47al1nyVcpLXJ_SGWYAeFEStqxiVUyjwpmIDzDWKmESS6trevN9q2M-
Received: by 98.138.101.169; Sat, 12 Sep 2015 13:12:26 +0000 
Date: Sat, 12 Sep 2015 13:12:25 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <998678350.1550167.1442063545537.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Re: [meta-raspberrypi] rootfs fails
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Sep 2015 13:12:31 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1550166_2099787901.1442063545535"

------=_Part_1550166_2099787901.1442063545535
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,Thanks after doing "bitbake core-image-sato -c cleansstate"follow=
ed by=C2=A0 "bitbake core-image-sato" was able to get the image.During the =
core-image-sato with no IMAGE_INSTALL_append =3D=C2=A0 I did see a few warn=
ings that I have not seen before (see below).
=C2=A0=C2=A0=C2=A0 WARNING: QA Issue: gstreamer1.0-plugins-bad: configure w=
as passed
=C2=A0=C2=A0=C2=A0 unrecognised options: --with-egl-window-system [unknown-=
configure-option]
=C2=A0=C2=A0=C2=A0=20
=C2=A0=C2=A0=C2=A0 WARNING: QA Issue: /home/vidal/wkg/yocto/RaspberryPi2/po=
ky/build/
=C2=A0=C2=A0=C2=A0 tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/pe=
rl/
=C2=A0=C2=A0=C2=A0 5.22.0-r0/packages-split/perl-ptest/usr/lib/perl/ptest/h=
ints/
=C2=A0=C2=A0=C2=A0 epix.sh is owned by uid 1000, which is the same as the u=
ser running bitbake.
=C2=A0=C2=A0=C2=A0=C2=A0 This may be due to host contamination [host-user-c=
ontaminated]
Another strange happening is python is missing items to do "python setup.py=
 install" on package
=C2=A0=C2=A0=C2=A0 both repo072015 & repo091015 are using python 2.7.9-r1
=C2=A0=C2=A0=C2=A0 -python-distribute-0.6.32 is missing and 2 new RPMs are =
installed
=C2=A0=C2=A0=C2=A0 +python-pip-7.1.0 is now being using instead of python-p=
ip-1.5.6
=C2=A0=C2=A0=C2=A0 +python-setuptools-18.2 is now being used.Could this be =
related to rootfs failing at times?Regards,




Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1550166_2099787901.1442063545535
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1442056363476_9196"><span>Hello All,<=
/span></div><div id=3D"yui_3_16_0_1_1442056363476_9247"><span id=3D"yui_3_1=
6_0_1_1442056363476_9246">Thanks after doing "bitbake core-image-sato -c cl=
eansstate"</span></div><div id=3D"yui_3_16_0_1_1442056363476_9249"><div dir=
=3D"ltr">followed by&nbsp; <span class=3D"" id=3D"yui_3_16_0_1_144205636347=
6_9246">"bitbake core-image-sato" was able to get the image.</span></div><d=
iv id=3D"yui_3_16_0_1_1442056363476_9305" dir=3D"ltr"><span class=3D"" id=
=3D"yui_3_16_0_1_1442056363476_9246">During the core-image-sato with no IMA=
GE_INSTALL_append =3D&nbsp; I did see a few warnings that I have not seen b=
efore (see below).</span></div><div dir=3D"ltr"><span class=3D"" id=3D"yui_=
3_16_0_1_1442056363476_9246"><br></span></div><div id=3D"yui_3_16_0_1_14420=
56363476_9346" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_144205636347=
6_9246">&nbsp;&nbsp;&nbsp; WARNING: QA Issue: gstreamer1.0-plugins-bad: con=
figure was passed<br class=3D"">&nbsp;&nbsp;&nbsp; unrecognised options: --=
with-egl-window-system [unknown-configure-option]<br class=3D"">&nbsp;&nbsp=
;&nbsp; <br class=3D"">&nbsp;&nbsp;&nbsp; WARNING: QA Issue: /home/vidal/wk=
g/yocto/RaspberryPi2/poky/build/<br class=3D"">&nbsp;&nbsp;&nbsp; tmp/work/=
cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/perl/<br class=3D"">&nbsp;&nbs=
p;&nbsp; 5.22.0-r0/packages-split/perl-ptest/usr/lib/perl/ptest/hints/<br c=
lass=3D"">&nbsp;&nbsp;&nbsp; epix.sh is owned by uid 1000, which is the sam=
e as the user running bitbake.<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp; This =
may be due to host contamination [host-user-contaminated]</span></div><div =
id=3D"yui_3_16_0_1_1442056363476_9401" dir=3D"ltr"><br></div><div id=3D"yui=
_3_16_0_1_1442056363476_9512" dir=3D"ltr">Another strange happening is pyth=
on is missing items to do "python setup.py install" on package<br class=3D"=
">&nbsp;&nbsp;&nbsp; both repo072015 &amp; repo091015 are using python 2.7.=
9-r1<br class=3D"">&nbsp;&nbsp;&nbsp; -python-distribute-0.6.32 is missing =
and 2 new RPMs are installed<br class=3D"">&nbsp;&nbsp;&nbsp; +python-pip-7=
.1.0 is now being using instead of python-pip-1.5.6<br class=3D"">&nbsp;&nb=
sp;&nbsp; +python-setuptools-18.2 is now being used.</div><div id=3D"yui_3_=
16_0_1_1442056363476_9482" dir=3D"ltr">Could this be related to rootfs fail=
ing at times?</div><div dir=3D"ltr">Regards,</div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr"><br><span class=3D"" id=3D"yui_3_16_0_1_1442056363476_92=
46"></span></div><div dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_14420=
56363476_9246"><br></span></div><div dir=3D"ltr"><br><span class=3D"" id=3D=
"yui_3_16_0_1_1442056363476_9246"></span></div><div dir=3D"ltr"><span class=
=3D"" id=3D"yui_3_16_0_1_1442056363476_9246"><br></span></div></div><div cl=
ass=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-16=
13</div></div></body></html>

------=_Part_1550166_2099787901.1442063545535--
