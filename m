Return-Path: <p.patat@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DB7E016B6
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 02:12:53 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id ey11so6999048wid.12
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=A4H8Otz5Cme77VxcSk930/exvxtEUa8O+EIPHs3Uefo=;
	b=raElEkoFEISNVC3LGU9O7/R70FmhiqCC9EMdliknM6NAsSYkru6Ayf7vuYwKBKAYai
	BTH2IpQOk6nUfKxc7RsWbi2oJeLpWwPMnr84FOTuwvz08OpMsRNNy9N8K5fmmI/Vaxwv
	y13NtQR6XfrDvWeG73XGmAhWZoEaKckROtARA8sdiLPxeo3cPG0WqbIc2gxInoic4xiK
	CgDjTvxkoaV8DW4v3ia+w3RJ/60e7amq3wEoxfY7sa2fDq7WL+F3V5oNbuGRj9smy49E
	CTJWD0cql8zm0XgVHFYRQ/04W6uDakdqsJD4FyLSt8uK7puNFAe4h5tcftqaNYJJf+El
	j1Ow==
X-Received: by 10.180.108.131 with SMTP id hk3mr1190072wib.10.1382519572324;
	Wed, 23 Oct 2013 02:12:52 -0700 (PDT)
MIME-Version: 1.0
Sender: p.patat@gmail.com
Received: by 10.194.19.225 with HTTP; Wed, 23 Oct 2013 02:12:32 -0700 (PDT)
In-Reply-To: <CAF+NyK5UinxiRecimtV3fpFrGuKsu9jQ60nyskfgR60tTYdJ_A@mail.gmail.com>
References: <CAF+NyK5UinxiRecimtV3fpFrGuKsu9jQ60nyskfgR60tTYdJ_A@mail.gmail.com>
From: patrick patat <patrick.patat@innotis.org>
Date: Wed, 23 Oct 2013 11:12:32 +0200
X-Google-Sender-Auth: 9dEg4GGAbu6P_RcgPpEJfBFrSOI
Message-ID: <CAF+NyK4AwYazpXtYHYjeb99HMkJ_FRpozStLYVQ4OwY-TZkhDA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: perl module Crypt-OpenSSL-RSA
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
X-List-Received-Date: Wed, 23 Oct 2013 09:12:54 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba34b00ea2804e964ec18

--e89a8f3ba34b00ea2804e964ec18
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I found that the problem could be related to libcrypto path which is in
${base_libdir} instead of ${libdir}.
So if I use this EXTRA_CPANFLAGS = "LIBS='
-L${STAGING_DIR_TARGET}${base_libdir} -lssl -lcrypto'"
instead of my ugly sed it's compiling with libcrypto but then I have the
following error:
QA Issue: package Crypt-OpenSSL-RSA contains bad RPATH pathtosysroot/lib in
file
pathtobuilddir/Crypt-OpenSSL-RSA/0.28-r0/packages-split/Crypt-OpenSSL-RSA/usr/lib/perl/vendor_perl/5.14.3/auto/Crypt/OpenSSL/RSA/RSA.so

How can I fix this rpath issue?

Thanks,

Pat



On Tue, Oct 22, 2013 at 3:48 PM, patrick patat <patrick.patat@innotis.org>wrote:

> Hello,
>
> I'm trying to create a recipe for perl module Crypt-OpenSSL-RSA, I'm using
> inherit cpan to do it. Build and install is working but at run time I have
> the following error:
>
> Can't load
> '/usr/lib/perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so' for
> module Crypt::OpenSSL::RSA:
> /usr/lib/perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so: undefined
> symbol: RSA_public_encrypt at /usr/lib/perl/5.14.3//.
>
> After some research I found this in configure log :
> Note (probably harmless): No library found for -lcrypto
>
> Because of this -lcrypto as been remove in Makefile, if I manually edit
> Makefile to add -lcrypto and rebuild I don't have undefined symbol error.
>
> Does anybody know if there is a better way than a sed in Makefile to fix
> the problem?
>
> you can find the recipe here http://pastebin.com/u2fd9MJq
>
> Thanks,
>
> Pat
>

--e89a8f3ba34b00ea2804e964ec18
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I found that the problem could b=
e related to libcrypto path which is in ${base_libdir} instead of ${libdir}=
.</div><div>So if I use this EXTRA_CPANFLAGS =3D &quot;LIBS=3D&#39; -L${STA=
GING_DIR_TARGET}${base_libdir} -lssl -lcrypto&#39;&quot;</div>

<div>instead of my ugly sed it&#39;s compiling with libcrypto but then I ha=
ve the following error:</div><div>QA Issue: package Crypt-OpenSSL-RSA conta=
ins bad RPATH pathtosysroot/lib in file pathtobuilddir/Crypt-OpenSSL-RSA/0.=
28-r0/packages-split/Crypt-OpenSSL-RSA/usr/lib/perl/vendor_perl/5.14.3/auto=
/Crypt/OpenSSL/RSA/RSA.so</div>

<div><br></div><div>How can I fix this rpath issue?</div><div><br></div><di=
v>Thanks,</div><div><br></div><div>Pat</div><div><br></div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Oct 22, 2013 at=
 3:48 PM, patrick patat <span dir=3D"ltr">&lt;<a href=3D"mailto:patrick.pat=
at@innotis.org" target=3D"_blank">patrick.patat@innotis.org</a>&gt;</span> =
wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span style=3D"font-family:=
arial,sans-serif;font-size:13px">Hello,</span><div style=3D"font-family:ari=
al,sans-serif;font-size:13px">

<br><div>I&#39;m trying to create a recipe for perl module=A0Crypt-OpenSSL-=
RSA, I&#39;m using inherit cpan to do it. Build and install is working but =
at run time I have the following error:</div>
<div><br></div><div>Can&#39;t load &#39;/usr/lib/perl/vendor_perl/5.14.3//a=
uto/Crypt/OpenSSL/RSA/RSA.so&#39; for module Crypt::OpenSSL::RSA: /usr/lib/=
perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so: undefined symbol: R=
SA_public_encrypt at /usr/lib/perl/5.14.3//.<br>


</div><div><br></div><div>After some research I found this in configure log=
 :=A0</div><div>Note (probably harmless): No library found for -lcrypto<br>=
</div><div><br></div><div>Because of this -lcrypto as been remove in Makefi=
le, if I manually edit Makefile to add -lcrypto and rebuild I don&#39;t hav=
e undefined symbol error.</div>


<div><br></div><div>Does anybody know if there is a better way than a sed i=
n Makefile to fix the problem?</div><div><br></div><div>you can find the re=
cipe here=A0<a href=3D"http://pastebin.com/u2fd9MJq" target=3D"_blank">http=
://pastebin.com/u2fd9MJq</a></div>


<div><br></div><div>Thanks,</div><div><br></div><div>Pat</div></div></div>
</blockquote></div><br></div>

--e89a8f3ba34b00ea2804e964ec18--
