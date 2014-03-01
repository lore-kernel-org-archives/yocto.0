Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93BBFE009F3
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 09:53:05 -0800 (PST)
Received: by mail-pb0-f41.google.com with SMTP id jt11so2110542pbb.28
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 09:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=DO1mH3S/RcYsMKIo/J1VV8O2hGEHV7RoLQ9HcmTqKq4=;
	b=nanumjbg8vqYYt45SWzuCjivthFbdgkMiemr7FLiwDCC2G+EASfx1TnXinjwGLpjxh
	ySGyiZHeP/Ev3OkmRLT18k/jrXoQQsnDk3IU4ov2ri5y5LK7v9QEhTYRcpTgtsdFv1QX
	EAq4xTdiGzbFPk/lT6TfXpE23OAwMx9n6fCZq09ZgQ9K7gB9AGi9pSGRY4leC+qHGvBz
	e9u/kIMt76NW/+DcG0US1Y5b4o6Pqgy2tMNsDTTMmNODhESmhJ46L1skrmLcjquP+vNu
	HPWUxvQJT+139r0p82tcv4DPV5HcfBtGu9nFcxqPzLt21SKaMEOWixk2GqVTGuSvIrAm
	1DLw==
X-Received: by 10.68.197.66 with SMTP id is2mr10475358pbc.96.1393696384785;
	Sat, 01 Mar 2014 09:53:04 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30])
	by mx.google.com with ESMTPSA id j3sm18350659pbh.38.2014.03.01.09.53.02
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 01 Mar 2014 09:53:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAA7h+Eo3iTu0PXAr976Enea82o+L1_p4q-FGeGxdu1ptEzQ41Q@mail.gmail.com>
Date: Sat, 1 Mar 2014 09:53:00 -0800
Message-Id: <E9DCB20E-1825-4341-8C92-F7800DD87B7E@gmail.com>
References: <CAA7h+Eo3iTu0PXAr976Enea82o+L1_p4q-FGeGxdu1ptEzQ41Q@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
X-Mailer: Apple Mail (2.1874)
Cc: yocto@yoctoproject.org
Subject: Re: Gumstix Overo USBip with Yocto
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
X-List-Received-Date: Sat, 01 Mar 2014 17:53:05 -0000
X-Groupsio-MsgNum: 18280
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BA25F3A6-F728-4163-815E-7CF1DC179FB1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_BA25F3A6-F728-4163-815E-7CF1DC179FB1
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1D4CBFBD-E43F-49DC-9871-9DADE3094B55"

--Apple-Mail=_1D4CBFBD-E43F-49DC-9871-9DADE3094B55
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Mar 1, 2014, at 9:43 AM, Rick Bianchi <bianchirickkutta@gmail.com> =
wrote:

> I have been fighting with the pre-built from Linaro for the last few =
weeks to get the USBip module into the kernel, without any success, and =
I am hoping that switching to the Yocto project will solver our problem.
>=20
> 1. Do the pre-built images have the usbip-core and usbip-host already =
enabled in the kernel?=20
>=20

best to look at BSP layer, https://github.com/gumstix/meta-gumstix=20

> 2. If not, can I add them or do I need to compile poky myself?

yes, you can in defconfig for your machine

>=20
> 3. If I need to compile poky to enable this module, what config(s) =
file do I need to enable this in during the build process?
>=20

you will modify the kernel defconfig and thats pretty much it.

>=20
> Thanks in Advance,
> Rick
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1D4CBFBD-E43F-49DC-9871-9DADE3094B55
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><br><div><div>On Mar 1, 2014, at 9:43 AM, Rick Bianchi &lt;<a href="mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr"><div><div><div><div><div>I have been fighting with the pre-built from Linaro for the last few weeks to get the USBip module into the kernel, without any success, and I am hoping that switching to the Yocto project will solver our problem.<br>
<br></div>1. Do the pre-built images have the usbip-core and usbip-host already enabled in the kernel? <br><br></div></div></div></div></div></blockquote><div><br></div><div>best to look at BSP layer,&nbsp;<a href="https://github.com/gumstix/meta-gumstix">https://github.com/gumstix/meta-gumstix</a>&nbsp;</div><br><blockquote type="cite"><div dir="ltr"><div><div><div>2. If not, can I add them or do I need to compile poky myself?<br></div></div></div></div></blockquote><div><br></div><div>yes, you can in defconfig for your machine</div><br><blockquote type="cite"><div dir="ltr"><div><div><div><br></div>3. If I need to compile poky to enable this module, what config(s) file do I need to enable this in during the build process?<br>
<br></div></div></div></blockquote><div><br></div><div>you will modify the kernel defconfig and thats pretty much it.</div><br><blockquote type="cite"><div dir="ltr"><div><div><br></div>Thanks in Advance,<br></div>Rick<br></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_1D4CBFBD-E43F-49DC-9871-9DADE3094B55--

--Apple-Mail=_BA25F3A6-F728-4163-815E-7CF1DC179FB1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMSHnwACgkQuwUzVZGdMxRjNgCdEZvGc2rREx9g6kHLtp7O47Gv
5bgAoIVcK0KokxjhRGWWQiLt6xRfcx0G
=7J0A
-----END PGP SIGNATURE-----

--Apple-Mail=_BA25F3A6-F728-4163-815E-7CF1DC179FB1--
