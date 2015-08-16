Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EC46E00A84; Sun, 16 Aug 2015 00:57:01 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91412E006BC
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:56:58 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so86771683pac.2
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=cUCB3bV2mh82mT26t2jPTGfb3gblPP3E5hm1bIVW2Bw=;
	b=llxUSmo9D/DDARiXCD3V4keB+/XTj2GYsn6VlnYhV0J6eBOciof1h1/oW8s+hK/DHK
	DPIx17HKEvN+ZKEsYD1HSIOr/hEFCuxRfAg+A2rkisavTR5D+uZ9FuUPhjx0QoqYRMDr
	d0dygmCaS57QYKt50z11cLmGTLRsSakHT650wfemRzhWreOqImyfhGgthKj5aBE8OXJw
	D3LohHsYbcNJEqBn3JdVcYxHzZpRjHZZRJvAZBWceIu9gRl1XfIrh3KqubKMzUJJfmWN
	JB0ZHuTj7fySU+WHccPI/6D5w6A/SLYIsHi9pQDzfnwOVg/X15znoXyzxH4tiuruPL20
	RuxA==
X-Received: by 10.66.158.65 with SMTP id ws1mr105485323pab.18.1439711817950;
	Sun, 16 Aug 2015 00:56:57 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:f5b7:823c:7f00:1ba7?
	([2601:646:8601:4580:f5b7:823c:7f00:1ba7])
	by smtp.gmail.com with ESMTPSA id et8sm704876pbd.4.2015.08.16.00.56.56
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 16 Aug 2015 00:56:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <8F90F944E50427428C60E12A34A309D2459F124C56@carmd-exchmb01.sierrawireless.local>
Date: Sun, 16 Aug 2015 00:56:47 -0700
Message-Id: <8D540B7A-1FB2-4651-8227-EE730C7826BA@gmail.com>
References: <8F90F944E50427428C60E12A34A309D2459F124C56@carmd-exchmb01.sierrawireless.local>
To: Darcy Watkins <dwatkins@sierrawireless.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel driver backports
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
X-List-Received-Date: Sun, 16 Aug 2015 07:57:01 -0000
X-Groupsio-MsgNum: 26136
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4E89C1DB-D80E-4BE1-9409-03EF31077A43";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4E89C1DB-D80E-4BE1-9409-03EF31077A43
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1BBB20DA-3238-4A10-BC41-C63626BFBF42"

--Apple-Mail=_1BBB20DA-3238-4A10-BC41-C63626BFBF42
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 23, 2015, at 4:00 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>=20
> Hello,
>=20
> I am attempting to build kernel driver backports 3.18.1-1 to backport =
newer drivers into older kernels (3.4 for i586 and 3.12 for armv7).  =
This is in poky 1.6 (daisy).
>=20
> I have everything building OK, and they seem to work OK on the target, =
BUT the tasks that split the packages up will name the kernel-module-XXX =
sub-packages the same as those originally built in the kernel.  Even =
though the package version from backports has the backports version =
(different from the kernel version), this still results in a QA warning =
=E2=80=93 attempt to install files into a shared area when they already =
exist (which I believe is a QA fatal error in newer version of yocto).

this does mean that there are some package conflicts between kernel and =
back ported module recipes. You need to figure the conflicting files and =
may be delete them from one or the other. If the .ko with same name is =
going into a different directory thats totally fine and packager will =
not flag that. Its a valid case. But your problems are arising elsewhere
so look at the image/ directory of both kernel and back port modules =
built trees after the build is done for both and see where he conflict =
lies. You can also try to use build history
for helping out here.

>=20
> The modules as shipped from kernel wind up under =
/lib/modules/=E2=80=A6/kernel/drivers/=E2=80=A6
>=20
> The modules as shipped from backports wind up under =
/lib/modules/=E2=80=A6/updates/drivers/=E2=80=A6
>=20
> So there is actually no real issue present.  They can both be =
installed on the target.
>=20
> I think that the solution would be to override the sub-package naming =
such that instead of=E2=80=A6
>=20
> kernel-module-ath9k-hw-3.12=E2=80=A6 .rpm  =E2=80=A6and=E2=80=A6
> kernel-module-ath9k-hw-3.18.1-1=E2=80=A6 .rpm
>=20
> =E2=80=A6have something like=E2=80=A6
>=20
> kernel-module-ath9k-hw-3.12=E2=80=A6 .rpm  =E2=80=A6and=E2=80=A6
> backports-kernel-module-ath9k-hw-3.18.1-1=E2=80=A6 .rpm
>=20
> Then there should be no QA issue and since the files are at different =
locations on the target system, there shouldn=E2=80=99t be any conflict =
there either.
>=20
> Anyone know how to override the package splitter for kernel modules to =
use a different prefix? =E2=80=A6 or do I need to derive a new bbclass?
>=20
> I tried setting KERNEL_MODULES_META_PACKAGE to something different, =
but that seems to have no effect.
>=20
>=20
>=20
> Regards,
>=20
> Darcy
>=20
> Darcy Watkins ::  Staff Engineer, Firmware
>=20
> SIERRA WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 =
231 1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P2]
> dwatkins@sierrawireless.com <mailto:dwatkins@sierrawireless.com> :: =
www.sierrawireless.com <http://www.sierrawireless.com/> :: =
www.inmotiontechnology.com <http://www.inmotiontechnology.com/>
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_1BBB20DA-3238-4A10-BC41-C63626BFBF42
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 23, 2015, at 4:00 PM, Darcy Watkins &lt;<a =
href=3D"mailto:dwatkins@sierrawireless.com" =
class=3D"">dwatkins@sierrawireless.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hello,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I am =
attempting to build kernel driver backports 3.18.1-1 to backport newer =
drivers into older kernels (3.4 for i586 and 3.12 for armv7).&nbsp; This =
is in poky 1.6 (daisy).<o:p class=3D""></o:p></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">I have everything building OK, and they seem to work OK on =
the target, BUT the tasks that split the packages up will name the =
kernel-module-XXX sub-packages the same as those originally built in the =
kernel.&nbsp; Even though the package version from backports has the =
backports version (different from the kernel version), this still =
results in a QA warning =E2=80=93 attempt to install files into a shared =
area when they already exist (which I believe is a QA fatal error in =
newer version of yocto).</div></div></div></blockquote><div><br =
class=3D""></div><div>this does mean that there are some package =
conflicts between kernel and back ported module recipes. You need to =
figure the conflicting files and may be delete them from one or the =
other. If the .ko with same name is going into a different directory =
thats totally fine and packager will not flag that. Its a valid case. =
But your problems are arising elsewhere</div><div>so look at the image/ =
directory of both kernel and back port modules built trees after the =
build is done for both and see where he conflict lies. You can also try =
to use build history</div><div>for helping out here.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">The =
modules as shipped from kernel wind up under =
/lib/modules/=E2=80=A6/kernel/drivers/=E2=80=A6<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">The =
modules as shipped from backports wind up under =
/lib/modules/=E2=80=A6/updates/drivers/=E2=80=A6<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">So there =
is actually no real issue present.&nbsp; They can both be installed on =
the target.<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">I think that the solution would be to override the =
sub-package naming such that instead of=E2=80=A6<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">kernel-module-ath9k-hw-3.12=E2=80=A6 .rpm&nbsp; =E2=80=A6and=E2=
=80=A6<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">kernel-module-ath9k-hw-3.18.1-1=E2=80=A6 .rpm<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">=E2=80=A6ha=
ve something like=E2=80=A6<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">kernel-module-ath9k-hw-3.12=E2=80=A6 =
.rpm&nbsp; =E2=80=A6and=E2=80=A6<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" =
class=3D"">backports-kernel-module-ath9k-hw-3.18.1-1=E2=80=A6 .rpm<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Then =
there should be no QA issue and since the files are at different =
locations on the target system, there shouldn=E2=80=99t be any conflict =
there either.<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Anyone know how to override the package splitter for kernel =
modules to use a different prefix? =E2=80=A6 or do I need to derive a =
new bbclass?<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">I tried setting KERNEL_MODULES_META_PACKAGE to something =
different, but that seems to have no effect.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><b =
class=3D""><span lang=3D"EN-US" style=3D"font-size: 10pt; font-family: =
Arial, sans-serif; color: rgb(101, 101, 101);" =
class=3D"">&nbsp;</span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 10pt; =
font-family: Arial, sans-serif; color: rgb(101, 101, 101);" =
class=3D"">Regards,<o:p class=3D""></o:p></span></b></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><b class=3D""><span lang=3D"EN-US" =
style=3D"font-size: 10pt; font-family: Arial, sans-serif; color: =
rgb(101, 101, 101);" class=3D"">&nbsp;</span></b></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><b class=3D""><span lang=3D"EN-US" =
style=3D"font-size: 10pt; font-family: Arial, sans-serif; color: =
rgb(101, 101, 101);" class=3D"">Darcy<o:p =
class=3D""></o:p></span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 10pt; =
font-family: Arial, sans-serif; color: rgb(101, 101, 101);" =
class=3D"">&nbsp;</span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 7.5pt; =
font-family: Arial, sans-serif; color: rgb(101, 101, 101);" =
class=3D"">Darcy Watkins ::&nbsp;&nbsp;Staff Engineer, Firmware<o:p =
class=3D""></o:p></span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 7.5pt; =
font-family: Arial, sans-serif; color: rgb(227, 58, 47);" =
class=3D"">&nbsp;</span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 7.5pt; =
font-family: Arial, sans-serif; color: rgb(227, 58, 47);" =
class=3D"">SIERRA WIRELESS<o:p class=3D""></o:p></span></b></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: =
7.5pt; font-family: Arial, sans-serif; color: rgb(227, 58, 47);" =
class=3D"">Direct</span><span lang=3D"EN-US" style=3D"font-size: 7.5pt; =
font-family: Arial, sans-serif; color: rgb(101, 101, 101);" =
class=3D"">&nbsp; +1 604 233 7989&nbsp; &nbsp;::&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span lang=3D"EN-US" =
style=3D"font-size: 7.5pt; font-family: Arial, sans-serif; color: =
rgb(227, 58, 47);" class=3D"">Fax&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span lang=3D"EN-US" =
style=3D"font-size: 7.5pt; font-family: Arial, sans-serif; color: =
rgb(101, 101, 101);" class=3D"">+1 604 231 1109&nbsp; ::&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span lang=3D"EN-US" =
style=3D"font-size: 7.5pt; font-family: Arial, sans-serif; color: =
rgb(192, 0, 0);" class=3D"">Main</span><span lang=3D"EN-US" =
style=3D"font-size: 7.5pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;<span class=3D"Apple-converted-space">&nbsp;</span><span =
style=3D"color: rgb(101, 101, 101);" class=3D"">+1 604 231 =
1100</span><o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span lang=3D"EN-US" style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif; color: rgb(101, 101, 101);" class=3D"">13811 Wireless =
Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" style=3D"font-size: 7.5pt; font-family: Arial, =
sans-serif; color: rgb(101, 101, 101);" class=3D"">[P2]<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><u =
class=3D""><span lang=3D"EN-US" style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif; color: blue;" class=3D""><a =
href=3D"mailto:dwatkins@sierrawireless.com" style=3D"color: rgb(149, 79, =
114); text-decoration: underline;" class=3D""><span style=3D"color: =
blue;" class=3D"">dwatkins@sierrawireless.com</span></a></span></u><span =
lang=3D"EN-US" style=3D"font-size: 7.5pt; font-family: Arial, =
sans-serif; color: rgb(228, 59, 48);" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>::<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://www.sierrawireless.com/" style=3D"color: rgb(149, 79, =
114); text-decoration: underline;" class=3D""><span style=3D"color: =
blue;" class=3D"">www.sierrawireless.com</span></a><span =
class=3D"Apple-converted-space">&nbsp;</span>::<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://www.inmotiontechnology.com/" style=3D"color: rgb(149, 79, =
114); text-decoration: underline;" class=3D""><span style=3D"color: =
blue;" class=3D"">www.inmotiontechnology.com</span></a><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><span style=3D"font-family: =
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
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Helvetica; font-size: =
13px; font-style: normal; font-variant: normal; font-weight: normal; =
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
rgb(149, 79, 114); text-decoration: underline; font-family: Helvetica; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_1BBB20DA-3238-4A10-BC41-C63626BFBF42--

--Apple-Mail=_4E89C1DB-D80E-4BE1-9409-03EF31077A43
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXQQkcACgkQuwUzVZGdMxTCtgCfdeUs/OKSH/Shwq1+2rbJkAJY
ouwAnA+dW5sHqi5AWF24gy1PRpZvx15S
=tn9F
-----END PGP SIGNATURE-----

--Apple-Mail=_4E89C1DB-D80E-4BE1-9409-03EF31077A43--
