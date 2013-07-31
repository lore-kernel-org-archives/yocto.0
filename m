Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14B2E0158A
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 16:05:19 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so1304819pdi.41
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 16:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=6HfLQQyKQ8EXkmO61LTCU8dvOn6c6VTU6CfDwGlve/M=;
	b=SlEzT9KXRCfKl+QWtUbatMq1iSzb+mMV0s04Gez86H09txYkISm9MpBhpq/7NKGoOu
	vC4qPeqMP118D9ipe9nPU7rwElcFwiEJFIFAgERgXivw2Z+On9TaJMNIfnBZg8YYCV0V
	9OkrOmo9oSQ+KdtWd5/+4KysfVn7sU7cCGe6FOG1L3gqjrHhP0AWF98WOeWjTyBIb4rD
	RZ7KtYYwvcrz3qiSwBAmUdGqCIZsrdEYQ7+kDOdCVcvhCgO2IbIigCnR4hh2ZhS1JCG9
	gGq0mXvvj41gF7K0yqE4MsvcXvgYIJaUrT8NXPg3Jlk6o3p06TqFDjQWGC9gtFo8lUQo
	jlGg==
X-Received: by 10.68.143.199 with SMTP id sg7mr83094449pbb.13.1375311918906;
	Wed, 31 Jul 2013 16:05:18 -0700 (PDT)
Received: from sa-nc-spg-213.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id z14sm54689pbt.0.2013.07.31.16.05.17
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 31 Jul 2013 16:05:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
Date: Wed, 31 Jul 2013 16:05:16 -0700
Message-Id: <7B7D6E03-F812-4C76-B482-205D42D00DA1@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
	<CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Cleaning dependent package
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
X-List-Received-Date: Wed, 31 Jul 2013 23:05:21 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E4C98C38-D18D-42C5-BB6F-D22C1ED16101"

--Apple-Mail=_E4C98C38-D18D-42C5-BB6F-D22C1ED16101
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Jul 29, 2013, at 6:54 AM, Navani Srivastava =
<navani.srivastava@gmail.com> wrote:

> Is it possible to clean any dependent package from some other recipe?
>=20
> As an example-
>=20
> =93bitbake core-image-minimal.bb=94 will build u-boot and linux =
package as a part of dependent package. Is it possible to clean u-boot =
and linux by making changes in core-image-minimal.bb recipe?
>=20
>=20

vice versa is possible where you make changes to one of u-boot and it =
rebuilds core-image-minimal. any package will not interfere cleaning =
another
one, it could be rebuild as part of another dependency=

--Apple-Mail=_E4C98C38-D18D-42C5-BB6F-D22C1ED16101
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jul 29, 2013, at 6:54 AM, Navani Srivastava &lt;<a =
href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><p style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">Is it possible to clean any dependent =
package from some other recipe?</p><p style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; ">As an =
example-</p><p style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">=93bitbake<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://core-image-minimal.bb/">core-image-minimal.bb</a>=94 will =
build u-boot and linux package as a part of dependent package. Is it =
possible to clean u-boot and linux by making changes in<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://core-image-minimal.bb/">core-image-minimal.bb</a><span =
class=3D"Apple-converted-space">&nbsp;</span>recipe?</p><br =
class=3D"Apple-interchange-newline"></blockquote></div><br><div>vice =
versa is possible where you make changes to one of u-boot and it =
rebuilds core-image-minimal. any package will not interfere cleaning =
another</div><div>one, it could be rebuild as part of another =
dependency</div></body></html>=

--Apple-Mail=_E4C98C38-D18D-42C5-BB6F-D22C1ED16101--
