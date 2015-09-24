Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF3ADE00C2E; Thu, 24 Sep 2015 07:27:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E4CE00927
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 07:26:54 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so16196939igb.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 07:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type;
	bh=MQ5JHSiJYAqqQKKmbmuIwA/6wbbbxUXQ/oAnRqmvYno=;
	b=P/NCvxGssAU/ljN5XtMZSR+7jhH+So+mswMi44Ub8n5myWnNKPyoqH10z3gAcWikSR
	4Tu0ORdK4vGSbVwhzb+lVk5qMDXQdgkDxjFZ4Z/wbXM7mPi3Fjjj8zYm0ZpSW1e1xcjJ
	jNNywUf0oWDdPlZYkYV4LWBLjPkuof5EkpNLXKVl8WDCzGPUn4msVIP1eWB0ooo5ihem
	pMPfIUEMKNNUrJiLn3bSZomcbaZ5arA3jR2QNrLyf6Wp148amIwFaF+tp53BsEMLJ5Eh
	LZY9Ev8CDodGehYtYO4/IaYuBdfdrXV2MKerXHBxXbqioRbT2doZ14eiQ7rk0lvxdT39
	sxig==
X-Received: by 10.50.43.170 with SMTP id x10mr28790592igl.68.1443104813482;
	Thu, 24 Sep 2015 07:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <01de01d0f6bf$714d6b70$53e84250$@LN-Systems.com>
In-Reply-To: <01de01d0f6bf$714d6b70$53e84250$@LN-Systems.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 24 Sep 2015 14:26:43 +0000
Message-ID: <CABcZANkG+5FgFz2i7UEFfoWQc2h6JSaYTz6KT5tXrqZgr23keA@mail.gmail.com>
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
Subject: Re: am335x-boneblack.dtb 'misnamed'? (Fido/BeagleBoneBlack)
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
X-List-Received-Date: Thu, 24 Sep 2015 14:27:02 -0000
Content-Type: multipart/alternative; boundary=089e01176cadc80b7305207f059c

--089e01176cadc80b7305207f059c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It's installed into /boot on the rootfs with the zImage prefix, and
update-alternatives creates a symlink to the correct path so uboot can find
it. Not sure why this indirection exists, but it does work.
On Thu, Sep 24, 2015 at 4:52 AM Colin Helliwell <
colin.helliwell@ln-systems.com> wrote:

> This may just be =E2=80=98the way it is=E2=80=99, but the stock Fido/Beag=
leBoneBlack BSP
> [core-image-minimal] builds the am335x-boneblack dtb file, and creates in
> build/tmp/deploy/images/beaglebone a symlink named
> =E2=80=98zImage-am335x-boneblack.dtb=E2=80=99. However =E2=80=93 and this=
 is borne out by
> README.hardware =E2=80=93 uboot is set up to look for =E2=80=98am335x-bon=
eblack.dtb=E2=80=99.
>
> I daresay I can do some sort of fixup, but I was curious why it=E2=80=99s=
 like
> this?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01176cadc80b7305207f059c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It&#39;s installed into /boot on the rootfs with the zImage prefix, and upd=
ate-alternatives creates a symlink to the correct path so uboot can find it=
. Not sure why this indirection exists, but it does work.<br><div class=3D"=
gmail_quote"><div dir=3D"ltr">On Thu, Sep 24, 2015 at 4:52 AM Colin Helliwe=
ll &lt;<a href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln=
-systems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div la=
ng=3D"EN-GB" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNormal">Thi=
s may just be =E2=80=98the way it is=E2=80=99, but the stock Fido/BeagleBon=
eBlack BSP [core-image-minimal] builds the am335x-boneblack dtb file, and c=
reates in build/tmp/deploy/images/beaglebone a symlink named =E2=80=98zImag=
e-am335x-boneblack.dtb=E2=80=99. However =E2=80=93 and this is borne out by=
 README.hardware =E2=80=93 uboot is set up to look for =E2=80=98am335x-bone=
black.dtb=E2=80=99.<u></u><u></u></p><p class=3D"MsoNormal">I daresay I can=
 do some sort of fixup, but I was curious why it=E2=80=99s like this?<u></u=
><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>--<b=
r>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e01176cadc80b7305207f059c--
