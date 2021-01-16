Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web08.4565.1610806456921332764
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 06:14:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c2nVGMXT;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: vijayrakeshmunganda@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id n7so7963114pgg.2
        for <yocto@lists.yoctoproject.org>; Sat, 16 Jan 2021 06:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=lzF1YKSErAZc1FrxpPtsGgdlplL8VbOQEL887xYbBOE=;
        b=c2nVGMXTMfhxm8Ow4vQ5Da/2NoXdWKuPmjnrm26qiIaJb+3v98wJH4jE+BR1SzcVNf
         daxdpGux+cqwA0907gc2XW/WL9xANPadRmcRZkylnFB4hnSNMLC0yY0NV64X/LmDQQUU
         bm7LyvitczwYNMXLJLfQnXnKlSrnLuOOie0DdZpwC4It/e7LWcgnj7fX7rRbg1SPGUO5
         zro8qjeT40fgWmVY7yJWd4FiNci5ugZSN9CUoxHqh/lZ6YVu+d4n83a6qZXbqjjDmHzW
         HqqaMZ9dTgZ2ML1GCmOiRP8eHGhPzsS5hOlHhAjNiO/QMUDFbNMRby9CkvRp1Jz9YoSJ
         ca4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=lzF1YKSErAZc1FrxpPtsGgdlplL8VbOQEL887xYbBOE=;
        b=HP/hW7DYJHwxaNtVLTGq9P5iljAycPJ2Rb+gRRVm87/YIrN6962p4l1brEwtRKAexl
         55q09eZUi1GzV1iBcJO8iIkkrzT6lyvgnW27wH1qqfpp/KH9Rq3i7nudI51slOoY5E5C
         g4N/PovLdoR0u7VlCdaLHbsYrzPzPRaId6Cw2EdCn+6D6JNfWljxzX+tfWmXxJ84vVN/
         vTpocRh4GHWSOFpISQ1rUURdRkr1GvBZquX6tpH5LvvVkJKwmH1yoq8ynSv36GIo+nkF
         MtePyHmk/wftJT+BDUbK2mvcGFeB2o4o9H85ajs4wAo0Fp07GRhHi0pTZc6bRLhzlMPX
         /snA==
X-Gm-Message-State: AOAM531/Jk4W7V8LR+Cmk51Kl00K95MtP33t7dVkGfbs4a4w2ZRJsjoe
	+gKFUk7Bh+qdVK1+1xhWGnk=
X-Google-Smtp-Source: ABdhPJxFm1W0R8eLrERc3fy6wbxk/pYpPo2AzchJkWVbLOeChJy3nDF2Lu8dkRvic6bWH+ZSOiYzOg==
X-Received: by 2002:a65:450d:: with SMTP id n13mr17830614pgq.208.1610806456378;
        Sat, 16 Jan 2021 06:14:16 -0800 (PST)
Return-Path: <vijayrakeshmunganda@gmail.com>
Received: from ?IPv6:2405:201:c015:f064:3950:9881:e099:fa1b? ([2405:201:c015:f064:3950:9881:e099:fa1b])
        by smtp.gmail.com with ESMTPSA id d4sm11079829pfo.127.2021.01.16.06.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 06:14:15 -0800 (PST)
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] requesting help
Date: Sat, 16 Jan 2021 19:44:13 +0530
Message-Id: <93F23664-B4BF-4961-8B03-7915C55FE75D@gmail.com>
References: <CACX=-dVMngUfGYMpw0ysc0kO8emMHy8v9X+i8RZwbUhST+gRsQ@mail.gmail.com>
Cc: Paul Barker <pbarker@konsulko.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
In-Reply-To: <CACX=-dVMngUfGYMpw0ysc0kO8emMHy8v9X+i8RZwbUhST+gRsQ@mail.gmail.com>
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
X-Mailer: iPhone Mail (18C66)
Content-Type: multipart/alternative; boundary=Apple-Mail-9E3D30CF-2665-43E3-AC5E-64E5DB3298D0
Content-Transfer-Encoding: 7bit

--Apple-Mail-9E3D30CF-2665-43E3-AC5E-64E5DB3298D0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I apologise, thanks for the correction.=20

Thanks & Regards,
Vijay Rakesh

> On 16-Jan-2021, at 19:41, U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>=20
> =EF=BB=BF
>       I will check the live coding videos.Thanks paul.
> Thanks & Regards
> RAVI_UPPADA
>=20
>> On Sat, Jan 16, 2021 at 7:04 PM Paul Barker <pbarker@konsulko.com> wrote:=

>> On Sat, 16 Jan 2021 at 04:12, Vijay Rakesh Munganda
>> <vijayrakeshmunganda@gmail.com> wrote:
>> >
>> > Hi Ravi,
>> >
>> > Below links might help you, choose one of the them you need. Download a=
nd add this recipe into the your build and recipe name to IMAGE_INSTALL_appe=
nd in local.conf file.
>> >
>> > https://layers.openembedded.org/layerindex/recipe/67001/
>> >
>> > https://layers.openembedded.org/layerindex/recipe/61209/
>>=20
>> Hi Vijay,
>>=20
>> I hate to be rude but this is terrible advice. That recipe likely has
>> dependencies on other recipes and before you know it you'd be
>> assembling a completely untested mess of copy & pasted recipes with no
>> clean upgrade path.
>>=20
>> I recommend looking at the project documentation, watch Josef's
>> excellent live coding videos
>> (https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsf=
yj),
>> maybe check out a book or work through a tutorial. Once you understand
>> the layer system you'll see that it's easy to add the required layers
>> properly.
>>=20
>> Thanks,
>>=20
>> --=20
>> Paul Barker
>> Konsulko Group

--Apple-Mail-9E3D30CF-2665-43E3-AC5E-64E5DB3298D0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hi Paul,<div><br></div><div>I apologise, th=
anks for the correction.&nbsp;<br><br><div dir=3D"ltr">Thanks &amp; Regards,=
<div>Vijay Rakesh</div></div><div dir=3D"ltr"><br><blockquote type=3D"cite">=
On 16-Jan-2021, at 19:41, U RAVI KUMAR &lt;uppadaravi2511@gmail.com&gt; wrot=
e:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I will check the liv=
e coding videos.Thanks paul.<br></div><div>Thanks &amp; Regards</div><div>RA=
VI_UPPADA<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, Jan 16, 2021 at 7:04 PM Paul Barker &lt;<a href=3D=
"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On Sat, 16 Jan 2021 at 04:12=
, Vijay Rakesh Munganda<br>
&lt;<a href=3D"mailto:vijayrakeshmunganda@gmail.com" target=3D"_blank">vijay=
rakeshmunganda@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Ravi,<br>
&gt;<br>
&gt; Below links might help you, choose one of the them you need. Download a=
nd add this recipe into the your build and recipe name to IMAGE_INSTALL_appe=
nd in local.conf file.<br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/67001/" re=
l=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerinde=
x/recipe/67001/</a><br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/61209/" re=
l=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerinde=
x/recipe/61209/</a><br>
<br>
Hi Vijay,<br>
<br>
I hate to be rude but this is terrible advice. That recipe likely has<br>
dependencies on other recipes and before you know it you'd be<br>
assembling a completely untested mess of copy &amp; pasted recipes with no<b=
r>
clean upgrade path.<br>
<br>
I recommend looking at the project documentation, watch Josef's<br>
excellent live coding videos<br>
(<a href=3D"https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_=
GLY25Qsfyj" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.com/pla=
ylist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a>),<br>
maybe check out a book or work through a tutorial. Once you understand<br>
the layer system you'll see that it's easy to add the required layers<br>
properly.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-9E3D30CF-2665-43E3-AC5E-64E5DB3298D0--
