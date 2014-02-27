Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE23E00865
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 08:30:14 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id ld10so2503973pab.40
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 08:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=DxZqdDHmOqcslV2fbuEAbRwsrIuVksYk5ATHiFjv7Rw=;
	b=pWN66n5ejxi+LDOU3iBOnr/WLnFUXIwoimChxPIvleixl+6r9mYm+8l2mtK7kq4i/A
	cmJd6SO++QEvcDk6iL01XFRFzR/iCXxd6g8RjIvfJDN0hmborhuqyDvKDYVIt44G1SkK
	eXu6ncAlsOo+q14rtgWxTYzMkyLsboCpoa2v/xn/PnJDj0f+3+fYOAlypFRol+neJE12
	UORFcPnGTTBoDvUsFpHKUapofYHKUmrIm9JxGdacGRDd3ru7iXtbFpZkKTYkbF5ctB59
	BTataoftPH//bdqPd//p3sb9DDFIbsC116+91yGNgxsoHSL/9xgx8hUq/y8WwZ8I8Cae
	oFGA==
X-Received: by 10.67.4.169 with SMTP id cf9mr16069624pad.45.1393518613756;
	Thu, 27 Feb 2014 08:30:13 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	yo9sm34496204pab.16.2014.02.27.08.30.11 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 08:30:12 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <530F60C9.7090204@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 08:30:10 -0800
Message-Id: <6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<B124B2C9-2644-4E26-BBD2-D465284C00FE@gmail.com>
	<530F60C9.7090204@dynamicdevices.co.uk>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 16:30:17 -0000
X-Groupsio-MsgNum: 18241
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E0FC3254-4387-456A-A3BA-6494935FA42B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E0FC3254-4387-456A-A3BA-6494935FA42B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BE128B16-16FE-4681-8435-AFB52CB07260"

--Apple-Mail=_BE128B16-16FE-4681-8435-AFB52CB07260
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Feb 27, 2014, at 7:59 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk> wrote:

>=20
> On 27/02/2014 15:50, Khem Raj wrote:
> >
>=20
>       > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
>       <ajlennon@dynamicdevices.co.uk> wrote:
>=20
>       >
>=20
>       >> +PR =3D "r1"
>=20
>       >> +
>=20
>       >
>=20
>       > get rid of that
>=20
> Why is that Khem?
>=20

we have automatic PR server now a days, its enabled by default.=20

--Apple-Mail=_BE128B16-16FE-4681-8435-AFB52CB07260
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><br><div><div>On Feb 27, 2014, at 7:59 AM, Alex J Lennon &lt;<a href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite">
  
    <meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
  
  <div text="#000000" bgcolor="#FFFFFF">
    <br>
    On 27/02/2014 15:50, Khem Raj wrote:<br>
    <span style="white-space: pre;">&gt;<br>
      &gt; On Feb 27, 2014, at 6:16 AM, Alex J Lennon
      <a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> wrote:<br>
      &gt;<br>
      &gt;&gt; +PR = "r1"<br>
      &gt;&gt; +<br>
      &gt;<br>
      &gt; get rid of that</span><br>
    <br>
    Why is that Khem?<br>
    <br>
  </div>

</blockquote></div><br><div>we have automatic PR server now a days, its enabled by default.&nbsp;</div></body></html>

--Apple-Mail=_BE128B16-16FE-4681-8435-AFB52CB07260--

--Apple-Mail=_E0FC3254-4387-456A-A3BA-6494935FA42B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMPaBIACgkQuwUzVZGdMxQUxQCeK86pvoMQDTpvbfm7iO5UiGuW
/bcAnil1S8bJKDnlShWEEryvm9PHNFMG
=/Nv9
-----END PGP SIGNATURE-----

--Apple-Mail=_E0FC3254-4387-456A-A3BA-6494935FA42B--
