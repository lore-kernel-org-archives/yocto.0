Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B5F3E008A2; Mon,  9 Nov 2015 12:15:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B9EE007C9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 12:15:48 -0800 (PST)
Received: by pacdm15 with SMTP id dm15so185000163pac.3
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 12:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=UNBjPsFRplQC3uRhrgFZVb+MaP79xQq0FIJyBCpoHj0=;
	b=MYMbcFT3WRl0qq3uBXuPEGkuBTqbj0R/KMNzumh47gW2i1Fcx/KF3j/wV55lohegLk
	XCgTiztqPoEiIWF1b3Phh7iwqXfRt8tRrtxQ4Zi2fOAJ71fz3Z5n4dKNw3wY2nllit8N
	diZ5YSTM0wwvGfTCGI/m64RZ96kCp/5yCJmISAAakOZZL73cPZM9ZhnO9vqAbkTvFCer
	xwyI0tEcu6YQdEMlY0m9Oe74nz96mg9w2K+n7fW/JeJUEg5zfdjD/Si44dZCNE+PTEVU
	ABOaeb5htIvJTP/lIYwEQDyqwzufjIwmoyWajH2E5hQSKbjwsoGRJItnuFQc4Agu94kZ
	eO4Q==
X-Received: by 10.68.249.68 with SMTP id ys4mr43417042pbc.124.1447100147639;
	Mon, 09 Nov 2015 12:15:47 -0800 (PST)
Received: from [10.230.6.119] ([50.141.32.255])
	by smtp.gmail.com with ESMTPSA id
	v17sm15033664pbs.69.2015.11.09.12.15.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Nov 2015 12:15:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3108\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABatt_yn1RkC9j490mUwm=GzzBEb1WXxrR_BOwJJgMD+68SKrg@mail.gmail.com>
Date: Mon, 9 Nov 2015 12:15:40 -0800
Message-Id: <C91162B3-9E8D-46B6-A1BF-93B3D0E90AA7@gmail.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<CAMKF1squtQKgLmwTQNBykLx5LK=2dwsnWO594yJ+V2b1GjErXg@mail.gmail.com>
	<CABatt_yn1RkC9j490mUwm=GzzBEb1WXxrR_BOwJJgMD+68SKrg@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
X-Mailer: Apple Mail (2.3108)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 20:15:53 -0000
X-Groupsio-MsgNum: 27232
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F75FBCE5-4D02-4DB6-9F53-12AE609340BA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F75FBCE5-4D02-4DB6-9F53-12AE609340BA
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DCFFF783-0030-4CA6-ABF1-FD42288DC9B2"

--Apple-Mail=_DCFFF783-0030-4CA6-ABF1-FD42288DC9B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

No it should be well supported. So now I wonder why no one else sees it


> On Nov 9, 2015, at 11:22 AM, Martin Townsend <mtownsend1973@gmail.com> =
wrote:
>=20
> Hi,
>=20
> I'm running Ubuntu 14.04 LTS.
>=20
> Could this be the problem?
>=20
> Cheers,
> Martin.
>=20
>=20
> On Mon, Nov 9, 2015 at 5:56 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend =
<mtownsend1973@gmail.com <mailto:mtownsend1973@gmail.com>> wrote:
> > Hi,
> >
> > binutils is failing to compile.  I'm using tip of fido branch.  =
Error
> > message is:
> >
> > |
> > =
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9=
hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibh=
eap.c:
> > In function 'fibheap_replace_key_data':
> > |
> > =
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9=
hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibh=
eap.c:38:24:
> > error: 'LONG_MIN' undeclared (first use in this function)
> > |  #define FIBHEAPKEY_MIN LONG_MIN
> >
> > I've tracked it down to the fact that libiberty is the only =
component that
> > doesn't define HAVE_LIMITS in config.h, so I assume this part of the
> > configure is failing for some reason.
> >
> > Anyone else seen this, or have an idea on how to fix this?
>=20
> whats your host distro ?
>=20
> >
> > Cheers,
> > Martin.
> >
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >
>=20


--Apple-Mail=_DCFFF783-0030-4CA6-ABF1-FD42288DC9B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">No it should be well supported. So now I wonder why no one =
else sees it<div class=3D""><br class=3D""><div class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Nov 9, 2015, at 11:22 AM, Martin Townsend &lt;<a =
href=3D"mailto:mtownsend1973@gmail.com" =
class=3D"">mtownsend1973@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D"">Hi,<br =
class=3D""><br class=3D"">I'm running Ubuntu 14.04 LTS.<br class=3D""><br =
class=3D""></div>Could this be the problem?<br class=3D""><br =
class=3D""></div>Cheers,<br class=3D""></div>Martin.&nbsp; <br =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><br =
class=3D""></div></div></div></div></div></div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Mon, =
Nov 9, 2015 at 5:56 PM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend &lt;<a =
href=3D"mailto:mtownsend1973@gmail.com" =
class=3D"">mtownsend1973@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; Hi,<br class=3D"">
&gt;<br class=3D"">
&gt; binutils is failing to compile.&nbsp; I'm using tip of fido =
branch.&nbsp; Error<br class=3D"">
&gt; message is:<br class=3D"">
&gt;<br class=3D"">
&gt; |<br class=3D"">
&gt; =
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9=
hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibh=
eap.c:<br class=3D"">
&gt; In function 'fibheap_replace_key_data':<br class=3D"">
&gt; |<br class=3D"">
&gt; =
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9=
hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibh=
eap.c:38:24:<br class=3D"">
&gt; error: 'LONG_MIN' undeclared (first use in this function)<br =
class=3D"">
&gt; |&nbsp; #define FIBHEAPKEY_MIN LONG_MIN<br class=3D"">
&gt;<br class=3D"">
&gt; I've tracked it down to the fact that libiberty is the only =
component that<br class=3D"">
&gt; doesn't define HAVE_LIMITS in config.h, so I assume this part of =
the<br class=3D"">
&gt; configure is failing for some reason.<br class=3D"">
&gt;<br class=3D"">
&gt; Anyone else seen this, or have an idea on how to fix this?<br =
class=3D"">
<br class=3D"">
</span>whats your host distro ?<br class=3D"">
<br class=3D"">
&gt;<br class=3D"">
&gt; Cheers,<br class=3D"">
&gt; Martin.<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
<span class=3D"HOEnZb"><font color=3D"#888888" class=3D"">&gt;<br =
class=3D"">
&gt; --<br class=3D"">
&gt; _______________________________________________<br class=3D"">
&gt; yocto mailing list<br class=3D"">
&gt; <a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
&gt;<br class=3D"">
</font></span></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></div></div></body></html>=

--Apple-Mail=_DCFFF783-0030-4CA6-ABF1-FD42288DC9B2--

--Apple-Mail=_F75FBCE5-4D02-4DB6-9F53-12AE609340BA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZA/vAACgkQuwUzVZGdMxSKOACeMphxaeV/0aaIPSlEl1OOR5vI
x9YAnioj2R+pgyr1e4wkR39O7w5EIXMu
=P8xs
-----END PGP SIGNATURE-----

--Apple-Mail=_F75FBCE5-4D02-4DB6-9F53-12AE609340BA--
