Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A1BEE57D7
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 07:06:53 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.33933.1694156812698889739
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 00:06:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=rnCHOrZw;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-31f7400cb74so1036080f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 00:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694156811; x=1694761611; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7AfIDu/8wJJNqHskXPBRx2GJX3VMDkNaH68wWV0uePU=;
        b=rnCHOrZwFCeokVU53zqhYOWLA1BW75jzo4L3RPmnFqEyVtpqJdmV6SfEF+aAQWN3YS
         57P+6aJRT2gFu0+Rm/DwG6P3i/GkbDq/6TwTyk4SxkmSU3fkgP73EFDgQuEdgc2yWa5R
         pHykqKxZzRRUZHCTNNgchUOmHy50VONfG1mVQOGZdeCcYGy2ssWWDqE1IXG43ouu9nIV
         7tzd9vYOudzBDZNIBZymna+nx4MeFwmdXVy7H0Bc6XXU0m/s3UNE5OXJDjIq06dpun43
         aNrV1xcEFfboU+J+DPXflh5rSiD0R59LJVjV+LUwFz6yjz2mwtyIV21aV0GEMr8IFXZH
         bN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694156811; x=1694761611;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7AfIDu/8wJJNqHskXPBRx2GJX3VMDkNaH68wWV0uePU=;
        b=qeTAv44ekbGbnalPFY0WRa7LI4yao9YlcIaZ44Y71NcUZiwjWCae7VGkyiAPxsJN2V
         oJNTHiF2s6jDmMoyou5h2u/vC+Y+m5UEGLPU4GGI2rLVqbllYsT/wwN7FiPISmtChtrQ
         LEoWd0A9JSNZPp45OnEp7Z3dpDensomRkmKmHszrFAXaFmqJiIr4eKElEuhixPwD6xf3
         6GI6i2X/zD/Npw62+jc8q0PmCyRjGcUyY9kh1VHRl/l+d/Tj+OSPOmHmuQyNnWgI8qM0
         z5ysqQXWcCdbOo98U7xk+kcTwPfEufQw/G6K1jmzYdE87g8Iyans8xHRGJfg7lJxEBRD
         BbdA==
X-Gm-Message-State: AOJu0YzWpmJxwUtYh2pvidsf0oPPudVLXhAd850Yyuv2xkAOiFRxpyqR
	gqtbQRYjH6XsheaH/90VrdVqtgOkKsPoNCazo1s=
X-Google-Smtp-Source: AGHT+IFmNQzn8HONrnbmS+8ewK9i6i0UFPa2fr4HHg6V/bUmRhid3jN/SOG9ZKOIyMRdXteOO/oxwmgfr1o9LVZWaHc=
X-Received: by 2002:adf:fc12:0:b0:31c:e933:9593 with SMTP id
 i18-20020adffc12000000b0031ce9339593mr1262913wrr.6.1694156810902; Fri, 08 Sep
 2023 00:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org> <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
In-Reply-To: <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 8 Sep 2023 09:06:39 +0200
Message-ID: <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: Yoann Congal <yoann.congal@smile.fr>
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e8644e0604d39e7d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 07:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60945

--000000000000e8644e0604d39e7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 8, 2023 at 8:42=E2=80=AFAM Yoann Congal <yoann.congal@smile.fr>=
 wrote:

> Hi!
> Le ven. 8 sept. 2023 =C3=A0 08:01, MOHAMMED HASSAN <hassanchattarki@gmail=
.com>
> a =C3=A9crit :
>
>> Right, you're not the only one!
>> See
>>
>> https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimu=
m-free-disk-space
>> and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html
>>
>> I can use rm_work and remove all the build related files, however every
>> subsequent build would take a lot more time to build. I want my builds t=
o
>> be as fast as possible. Do you have any suggestions to for faster builds
>> while consuming less memory space.
>>
>
> rm_work does not impact build time.
>

That's not true, if only do_install task checksum changed, then without
rm_work you can reuse existing do_compile and re-run just following tasks,
while with rm_work it will need to rebuild from scratch (because
do_populate_sysroot and do_package sstate archives won't be valid anymore)
adding more wear to those NVME drives.

So it's a compromise.


> Every important piece of built software is kept in the "sstate cache" and
> this cache is not removed by rm_work.
> I usually have rm_work activated globally and reasonable build time : mos=
t
> things are not re-built but taken from the sstate cache.
>

Depends on what kind of changes you're usually doing and how big your
images are. I have it enabled in some builds and disabled in others (and
have 8TB NVMEs just for OE builds which are often out of space - but I
build a lot of different projects with big images and for multiple
different Yocto releases).

Cheers,

--000000000000e8644e0604d39e7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Sep 8, 2023 at 8:42=E2=80=AFAM Yo=
ann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.=
fr</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi!<br></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 8 sept.=
 2023 =C3=A0=C2=A008:01, MOHAMMED HASSAN &lt;<a href=3D"mailto:hassanchatta=
rki@gmail.com" target=3D"_blank">hassanchattarki@gmail.com</a>&gt; a =C3=A9=
crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><blo=
ckquote>Right, you&#39;re not the only one!<br>See <br><a href=3D"https://d=
ocs.yoctoproject.org/ref-manual/system-requirements.html#minimum-free-disk-=
space" rel=3D"noopener" target=3D"_blank">https://docs.yoctoproject.org/ref=
-manual/system-requirements.html#minimum-free-disk-space</a><br>and <a href=
=3D"https://docs.yoctoproject.org/dev/dev-manual/disk-space.html" rel=3D"no=
opener" target=3D"_blank">https://docs.yoctoproject.org/dev/dev-manual/disk=
-space.html</a></blockquote>
I can use rm_work and remove all the build related files, however every sub=
sequent build would take a lot more time to build. I want my builds to be a=
s fast as possible. Do you have any suggestions to for faster builds while =
consuming less memory space.<br clear=3D"all"></blockquote><div><br></div><=
div>rm_work does not impact build time.</div></div></div></blockquote><div>=
<br></div><div>That&#39;s not true, if only do_install task checksum change=
d, then without rm_work you can reuse existing do_compile and re-run just f=
ollowing tasks, while with rm_work it will need to rebuild from scratch (be=
cause do_populate_sysroot and do_package sstate archives won&#39;t be valid=
 anymore) adding more wear to those NVME drives.</div><div><br></div><div>S=
o it&#39;s a compromise.</div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>Ever=
y important piece of built software is kept in the &quot;sstate cache&quot;=
 and this cache is not removed by rm_work.</div><div>I usually have rm_work=
 activated globally and reasonable build time : most things are not re-buil=
t but taken from the sstate cache.<br></div></div></div></blockquote><div><=
br></div><div>Depends on what kind of changes you&#39;re usually doing and =
how big your images are. I have it enabled in some builds and disabled in o=
thers (and have 8TB NVMEs just for OE builds which are often out of space -=
 but I build a lot of different projects with big images and for multiple d=
ifferent Yocto releases).</div><div><br></div><div>Cheers,</div></div></div=
>

--000000000000e8644e0604d39e7d--

