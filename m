Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B22DE00C62; Wed, 27 Apr 2016 13:10:28 -0700 (PDT)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D26E00C46
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 13:10:24 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id n1so27112581pfn.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 13:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=1Miv9Kf2/tuFRjyyXaCPKwI8kTvLKQ7fRi69xDMUF38=;
	b=kpVHSJdRyXfXLb8OINvsLf1GS1/H81c1n+k9NfG/YDUqWsNPPFRVzTWWx2mFTrJ3h7
	EbuhXCJYlRWAckbF6rY90Qm/Ri/Cv5q9e1mPAvUjr6E7sxm+3mUt7DhYaAQxEk1j1YOG
	m9RWNPKTExMXbUaPsr44Dx3yMfbVGTwnlxKjMkLE+jO0p3IjVfX+GKU4tPkYMbHJNHXX
	+SsXXw28TBgZpgBvbHOOuzAtl1gP0UlglCt5fKWI0VMo2GzJKQBqcwINke2jEDFtfMjc
	5leJd3/F0ieDy4YQ8tgjhRZEX5P+wY8CvSQ3laFWVPbVhbYV68M9oC0yPipGmztY2JNp
	BW9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=1Miv9Kf2/tuFRjyyXaCPKwI8kTvLKQ7fRi69xDMUF38=;
	b=Rsm3E3huR6Ilez9SAF+OAB5wG7cXISByk5cjVcqw7081LbV1yuDwxrW58ZWqOA0hwl
	eXoKWQnEb4LaXrV2kDyS9Pzqsh4yZ5fIYc1PANuvNmu/wXhVSETWLlpc4HJjWnpLJfcO
	Ihq8LX7dcOY2ysbSRHLU0v+JttXgqT2q5TOF25FEVAgfn2wS2BeWTExxvUh78msz4CZ0
	nAOHPa/Pm4ly9rG1LAkN601J+wTH/1klp0yIzeUuWhwlLI8KrbtEcLlh98rNZAPyRLNP
	lslEefv88P+jjYZyx5myg7n3WQfzly9VUvGMeAprphOCU6mat7IB7GynUgZJ510SLIWI
	69Pw==
X-Gm-Message-State: AOPr4FWTqJ7mCwWPhEyDiCld6D4rz9ftvRCsdp/q7EI4/wMqa/38QU5SSF+IIvw3gRhd4g==
X-Received: by 10.98.2.16 with SMTP id 16mr14794715pfc.148.1461787824182;
	Wed, 27 Apr 2016 13:10:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4c01:b37d:54b2:1e01:90bd:b340?
	([2601:647:4c01:b37d:54b2:1e01:90bd:b340])
	by smtp.gmail.com with ESMTPSA id y3sm15776649par.2.2016.04.27.13.10.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2016 13:10:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640@CY1PR0701MB1600.namprd07.prod.outlook.com>
Date: Wed, 27 Apr 2016 13:10:18 -0700
Message-Id: <9CA17DAE-D975-463A-910F-6C79132647D8@gmail.com>
References: <BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0Laus7estW8kY9vRqW5qa_0hQmVtkRs7W3YXvvoDi1ewvQ@mail.gmail.com>
	<CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640@CY1PR0701MB1600.namprd07.prod.outlook.com>
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build support for arm64/aarch64 in oe-rootfs.
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
X-List-Received-Date: Wed, 27 Apr 2016 20:10:28 -0000
X-Groupsio-MsgNum: 29688
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DE9736CB-18FB-4CD7-AB78-7AA4885F7B25";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DE9736CB-18FB-4CD7-AB78-7AA4885F7B25
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6F89E5C4-8661-4302-9113-2E1917FC2127"

--Apple-Mail=_6F89E5C4-8661-4302-9113-2E1917FC2127
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

you could use multilib add something like this below to local.conf

require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7at-neon=E2=80=9D

> On Apr 26, 2016, at 10:53 PM, Jaggi, Manish =
<Manish.Jaggi@caviumnetworks.com> wrote:
>=20
> It worked, thanks!!
>=20
> But I couldnt find support to include multilibs say for 32bit and =
64bit gcc.
> There is a MULTILIB macro but I am not sure how to use it?
> I think multilib recipes (bbfiles) are required, how to get them?
>=20
>=20
> Regards,
> Manish Jaggi
> From: Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>>
> Sent: Tuesday, April 26, 2016 2:27:12 PM
> To: Jaggi, Manish
> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: Re: [yocto] aarch64-oe-linux/bin/ld: cannot find -lgcc . =
Adding native build support for arm64/aarch64 in oe-rootfs.
>=20
>=20
> On 26 April 2016 at 09:37, Jaggi, Manish =
<Manish.Jaggi@caviumnetworks.com =
<mailto:Manish.Jaggi@caviumnetworks.com>> wrote:
> IMAGE_INSTALL_append =3D "gcc"
> IMAGE_INSTALL_append +=3D " glibc"
> IMAGE_INSTALL_append +=3D " libgcc"
> IMAGE_INSTALL_append +=3D " binutils"
> IMAGE_INSTALL_append +=3D " gccmakedep"
>=20
> You left out the development headers and libraries required to =
actually link.
>=20
> IMAGE_FEATURES is a more efficient way of doing this.  =
EXTRA_IMAGE_FEATURES +=3D "tools-sdk" will add gcc/cpp/make/etc, and =
"dev-pkgs" will ensure that all of the -dev packages are installed on =
your image, so you can link against anything you've installed.
>=20
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_6F89E5C4-8661-4302-9113-2E1917FC2127
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">you could use multilib add something like this below to =
local.conf<div class=3D""><br class=3D""><div class=3D""><div =
class=3D"">require conf/multilib.conf</div><div class=3D"">MULTILIBS =3D =
"multilib:lib32"</div><div class=3D"">DEFAULTTUNE_virtclass-multilib-lib32=
 =3D "armv7at-neon=E2=80=9D</div><div class=3D""><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 26, 2016, at 10:53 PM, Jaggi, Manish &lt;<a =
href=3D"mailto:Manish.Jaggi@caviumnetworks.com" =
class=3D"">Manish.Jaggi@caviumnetworks.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 10pt; background-color: =
rgb(255, 255, 255); font-family: Candara, sans-serif;" class=3D""><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">It worked, =
thanks!!</div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">But I couldnt find support to include =
multilibs say for 32bit and 64bit gcc.</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D"">There is a MULTILIB macro but I am =
not sure how to use it?</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">I think multilib&nbsp;recipes (bbfiles) =
are required, how to get them?</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div id=3D"Signature" class=3D""><div =
name=3D"divtagdefaultwrapper" style=3D"font-family: Calibri, Arial, =
Helvetica, sans-serif; margin: 0px;" class=3D""><font face=3D"Cordia =
New, sans-serif" size=3D"2" class=3D"">Regards,</font><div =
class=3D""><font face=3D"Cordia New, sans-serif" size=3D"2" =
class=3D"">Manish Jaggi</font></div></div></div></div><hr tabindex=3D"-1" =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; display: inline-block; width: =
1041.734375px;" class=3D""><span style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D""></span><div =
id=3D"divRplyFwdMsg" dir=3D"ltr" style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><font face=3D"Calibri, sans-serif" style=3D"font-size: 11pt;" =
class=3D""><b class=3D"">From:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt;<br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Tuesday, April 26, 2016 =
2:27:12 PM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Jaggi, Manish<br =
class=3D""><b class=3D"">Cc:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] =
aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build support =
for arm64/aarch64 in oe-rootfs.</font><div =
class=3D"">&nbsp;</div></div><div style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On 26 April 2016 at 09:37, Jaggi, =
Manish<span class=3D"Apple-converted-space">&nbsp;</span><span dir=3D"ltr"=
 class=3D"">&lt;<a href=3D"mailto:Manish.Jaggi@caviumnetworks.com" =
target=3D"_blank" =
class=3D"">Manish.Jaggi@caviumnetworks.com</a>&gt;</span><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px =
0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, =
204); border-left-style: solid; padding-left: 1ex;"><div =
class=3D"">IMAGE_INSTALL_append =3D "gcc"</div><div =
class=3D"">IMAGE_INSTALL_append +=3D " glibc"</div><div =
class=3D"">IMAGE_INSTALL_append +=3D " libgcc"</div><div =
class=3D"">IMAGE_INSTALL_append +=3D " binutils"</div><div =
class=3D"">IMAGE_INSTALL_append +=3D " =
gccmakedep"</div></blockquote></div><br class=3D"">You left out the =
development headers and libraries required to actually link.</div><div =
class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">IMAGE_FEATURES is a more efficient way of doing =
this.&nbsp; EXTRA_IMAGE_FEATURES +=3D "tools-sdk" will add =
gcc/cpp/make/etc, and "dev-pkgs" will ensure that all of the -dev =
packages are installed on your image, so you can link against anything =
you've installed.</div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">Ross</div></div></div><span =
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
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></div></body></html>=

--Apple-Mail=_6F89E5C4-8661-4302-9113-2E1917FC2127--

--Apple-Mail=_DE9736CB-18FB-4CD7-AB78-7AA4885F7B25
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlchHK4ACgkQuwUzVZGdMxRKAwCfaQF6xQ2lNEGfDza2kIONTCou
71wAmwcA+N+cPI7RsRF6nw0ZkrHk5kwq
=lxgj
-----END PGP SIGNATURE-----

--Apple-Mail=_DE9736CB-18FB-4CD7-AB78-7AA4885F7B25--
