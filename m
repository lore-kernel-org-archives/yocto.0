Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F4C6E00E2F; Wed, 13 Nov 2019 16:09:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E602E00BF7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 16:09:36 -0800 (PST)
Received: by mail-qk1-f182.google.com with SMTP id 15so3482848qkh.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 16:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EoriUgO9ux77fE9bFUMgziQ/bEMX6wdtfAuRd2loWL4=;
	b=rDLjVKRuBULKClqdOdpOjFOc15D9dyszloocVSlbMXeYIaWKyb1CCieQtErxJMDSR9
	c2Jf7V9JL4BMhsBTLIn8cfQhG93PjzK/210oQTR0zq63u0DLgfbDA1ZFsjrt7pSNJRqe
	8csLJFKk0JcaBaC277Pslr9rSb/OYKn/sMHZ7BH3R2FA6aUUi8+66/wlB6qIoslWd6s8
	Ic/9dRtCNNbXtx2oxBXbFsWJu8J5UaGvU0vgxZOI6CQAxIkW50a/E20nJiCiIZfiQwPQ
	wJvOV/lUd0iKP/pV6IFiG57N9ONf1bvNexhp21LvtrNlPhFcjIHnBxFm2kD/TPRZNk+5
	oMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EoriUgO9ux77fE9bFUMgziQ/bEMX6wdtfAuRd2loWL4=;
	b=WoJL4N/SIH3c9K5m9oXNp2Gz4gvGB0ml63auGTiskMSs5qB4sD1SZmFHwIchY50dmy
	EQYVNsHqK0d8Sm31CZa+SgaDy3Zqj+Yv0VEGqDlS3/vjsbf45/XepTVFQ3l8P7i+E2rJ
	SvNhtUtsbncpvI83/E3wFw26Kjexty3MQXnMA9nSHrfroXdsgVXheVyGl9i8Z6qeQWy/
	Yze7plirdsEWUjCuJp07B2B4phdoTNwbA9IFNqrE4eNKTet8e6xDMem0uaxAqdc54zSK
	JxM9nudC1p2kKnXY52TxjoOJHkGjWVNFNHN+DK2+riR4LOknMeGt8Pu4sTMkOHLlPH1g
	a5WQ==
X-Gm-Message-State: APjAAAXJUkvvUyjQwkNPk+6CrvceFL/CjENm0Lwb7WAmRA6oWdZFRulH
	pYcXGNlrdJ4drxULPgZwcvzou30Ox4Pz5B5vrmM=
X-Google-Smtp-Source: APXvYqzdVrUl87QJ0jWu1008zFUu+mNiqiXZucrbVY4QM2fk+6UaGKj566/ClAMopc8t1ZHrmpoUwSigKRqeTxfCnhE=
X-Received: by 2002:a37:4bc2:: with SMTP id y185mr5275966qka.474.1573690175554;
	Wed, 13 Nov 2019 16:09:35 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
	<7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
	<CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
	<CAMKF1srbgzwxZmQiHhKSnPSdUxNKZEDtE_MfYyOHBwaNGvSAQg@mail.gmail.com>
	<CAE2LOAwsSwEebW1UcJgxqG79cv3De6cbTvqRw66zUeAwTGHpzQ@mail.gmail.com>
In-Reply-To: <CAE2LOAwsSwEebW1UcJgxqG79cv3De6cbTvqRw66zUeAwTGHpzQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Nov 2019 16:09:24 -0800
Message-ID: <CAMKF1sr6RbqCK2oMM7f34ZJe9_DjxdDMXN-a4wqQK4KrYnwEmg@mail.gmail.com>
To: Vladimir Molokov <vladimir.molokov@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Thu, 14 Nov 2019 00:09:37 -0000
Content-Type: multipart/alternative; boundary="000000000000e689c60597434b6d"

--000000000000e689c60597434b6d
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 13, 2019 at 3:42 PM Vladimir Molokov <vladimir.molokov@gmail.com>
wrote:

> thank you for your answer!
>
> when I comment out DEPENDS = "attr" line in "example" recipe
> then there is no "bad-example" dependency:
> https://gitlab.com/morokov/build/raw/master/task-depends-without-attr.dot
>
> > Alright, so you have initramfs enabled it seems. Which means kernel
> > will first try to build designated
> > initramfs image which in your case is
> >
> > "linux-yocto.do_bundle_initramfs" ->
> "core-image-minimal.do_image_complete"
> >
> > and then core-image-minimal includes bad-example
> >
> > "core-image-minimal.do_image_complete" ->
> "bad-example.do_populate_sysroot"
> >
> > and example does ask kernel to be deployed
> >
> > "example.do_build" -> "linux-yocto.do_deploy"
> >
> >
> > so that completes the chain.
>
> "example" is just a simple recipe, it doesn't inherit image class
> it doesn't even belong to any image, just standalone recipe.
> I don't quite get the logic around initramfs


Initramfs is an image that is bundled into kernel binary so you are
essentially building an image before you can create kernel binary
thereafter you build full image and your build is choking on this small
image which infact is a regular image and will respect image depends

>
> why does it add those dependencies to "example" recipe?
> it doesn't if "attr" is commented out.


Possible that attr dependencies traverse down to kernel

>
>

--000000000000e689c60597434b6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Nov 13, 2019 at 3:42 PM Vladimir Molokov &lt;<a hre=
f=3D"mailto:vladimir.molokov@gmail.com">vladimir.molokov@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">thank you for your answer!<b=
r>
<br>
when I comment out DEPENDS =3D &quot;attr&quot; line in &quot;example&quot;=
 recipe<br>
then there is no &quot;bad-example&quot; dependency:<br>
<a href=3D"https://gitlab.com/morokov/build/raw/master/task-depends-without=
-attr.dot" rel=3D"noreferrer" target=3D"_blank">https://gitlab.com/morokov/=
build/raw/master/task-depends-without-attr.dot</a><br>
<br>
&gt; Alright, so you have initramfs enabled it seems. Which means kernel<br=
>
&gt; will first try to build designated<br>
&gt; initramfs image which in your case is<br>
&gt;<br>
&gt; &quot;linux-yocto.do_bundle_initramfs&quot; -&gt; &quot;core-image-min=
imal.do_image_complete&quot;<br>
&gt;<br>
&gt; and then core-image-minimal includes bad-example<br>
&gt;<br>
&gt; &quot;core-image-minimal.do_image_complete&quot; -&gt; &quot;bad-examp=
le.do_populate_sysroot&quot;<br>
&gt;<br>
&gt; and example does ask kernel to be deployed<br>
&gt;<br>
&gt; &quot;example.do_build&quot; -&gt; &quot;linux-yocto.do_deploy&quot;<b=
r>
&gt;<br>
&gt;<br>
&gt; so that completes the chain.<br>
<br>
&quot;example&quot; is just a simple recipe, it doesn&#39;t inherit image c=
lass<br>
it doesn&#39;t even belong to any image, just standalone recipe.<br>
I don&#39;t quite get the logic around initramfs</blockquote><div dir=3D"au=
to"><br></div><div dir=3D"auto">Initramfs is an image that is bundled into =
kernel binary so you are essentially building an image before you can creat=
e kernel binary thereafter you build full image and your build is choking o=
n this small image which infact is a regular image and will respect image d=
epends=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
why does it add those dependencies to &quot;example&quot; recipe?<br>
it doesn&#39;t if &quot;attr&quot; is commented out.</blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">Possible that attr dependencies trave=
rse down to kernel=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
</blockquote></div></div>

--000000000000e689c60597434b6d--
