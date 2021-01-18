Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web12.31938.1610968259942738961
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jan 2021 03:11:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TG5qxHfj;
 spf=pass (domain: gmail.com, ip: 209.85.166.46, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id n2so14843557iom.7
        for <yocto@lists.yoctoproject.org>; Mon, 18 Jan 2021 03:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ha8W370QQM+wBHpdJ6xXyRGaICZRCygogU7uk2tu5dc=;
        b=TG5qxHfj1SBISsyI7ocltQr0w7bZ74D/wa2MHSLmIi3Kx8dv8H5gNh03PrNjVdNTCf
         fei48P+QChPM8x0rVZBWPyUVqLsT56CKGRH0HGGJtZPE7mHHFOENxSKva4bCMCiZ207K
         O/qENKFZh0FQAsST0G6wKKCtlguBs13GPLfSqrRM6dq0NoSXzOBv7MqP+oRa7/qaafZl
         FU8si/w9CserMi63h26bH3Jj0WFu3NjkDDwcqzHurfFKDnfZUsifJ66V130GimUUuSAG
         0jSgZIY5aezOyeDblQyoNhOwCbu91I8VeL0SeoQZZmLLlefX3+vlvYLZ9K2mA7Sojzz8
         +0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ha8W370QQM+wBHpdJ6xXyRGaICZRCygogU7uk2tu5dc=;
        b=BIY1d3B2feH9k9cYBEtYOZYC9Npynz6E68JhlAHif+BFYJ5/eOE2JvdNuTSZl5eRpR
         jv/Y3XfZ4MTloqwxrGtKkwQh0hmht72nw26KPEdm31OjTUUEXOP2P/0HCxZ4NG0DGQNC
         h+pqdfyjG5+bmAwsm+rO9FayXBaapH/0ASAJJKhQ02q/PjJUZZjVwnXWCnUrdgFkR/4F
         HEEGi+8n+jQ0H6fedZnF/YlfAP/0t+bKo6L1RQZCxD49pzogFFZab0jvWudHozOgiKLR
         kmnWN90r/0sgaBb6ShyjhGqd8d0f3/WFH75g7pNKfKdBqrWrn6BQjpiUTit61OEKYoSO
         ks8Q==
X-Gm-Message-State: AOAM531t89bDtFbsWI3VfS0DtdyeSKLiWwyAKAObhowcCN/Swp2gHYcf
	ASnbrLIpzJbDiQEQs/R4NlAJtugRKglDZt/PexU=
X-Google-Smtp-Source: ABdhPJx+pyTMaPX/xxUjQTQlJlKzeuGXAXAa50euh4xAuiXSHv8CFZ0g6/k5h0qbR8kOL5gy019i6Fqmqbz2i/2Fvbo=
X-Received: by 2002:a02:c043:: with SMTP id u3mr1549607jam.137.1610968259154;
 Mon, 18 Jan 2021 03:10:59 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dVMngUfGYMpw0ysc0kO8emMHy8v9X+i8RZwbUhST+gRsQ@mail.gmail.com>
 <93F23664-B4BF-4961-8B03-7915C55FE75D@gmail.com>
In-Reply-To: <93F23664-B4BF-4961-8B03-7915C55FE75D@gmail.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Mon, 18 Jan 2021 16:40:47 +0530
Message-ID: <CACX=-dV=uHX8moZ5k2zYN4eyz3r0kthp5hGCJMzQiSm0RdswSA@mail.gmail.com>
Subject: Re: [yocto] requesting help
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d4d4ed05b92ac6df"

--000000000000d4d4ed05b92ac6df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

                  I have added the qtbrowser in the local.conf file and
included meta-arago-extras and compiled the build using bitbake but
qtwebbrowser is not showing up. And the problem is the display is not
showing up after one time boot(i.e only display i coming for the first time
and from the second time display is not being shown up). A blank screen is
being displayed. Can u pls help me out.

Thanks and regards
RAVI UPPADA

On Sat, Jan 16, 2021 at 7:44 PM Vijay Rakesh Munganda <
vijayrakeshmunganda@gmail.com> wrote:

> Hi Paul,
>
> I apologise, thanks for the correction.
>
> Thanks & Regards,
> Vijay Rakesh
>
> On 16-Jan-2021, at 19:41, U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>
> =EF=BB=BF
>       I will check the live coding videos.Thanks paul.
> Thanks & Regards
> RAVI_UPPADA
>
> On Sat, Jan 16, 2021 at 7:04 PM Paul Barker <pbarker@konsulko.com> wrote:
>
>> On Sat, 16 Jan 2021 at 04:12, Vijay Rakesh Munganda
>> <vijayrakeshmunganda@gmail.com> wrote:
>> >
>> > Hi Ravi,
>> >
>> > Below links might help you, choose one of the them you need. Download
>> and add this recipe into the your build and recipe name to
>> IMAGE_INSTALL_append in local.conf file.
>> >
>> > https://layers.openembedded.org/layerindex/recipe/67001/
>> >
>> > https://layers.openembedded.org/layerindex/recipe/61209/
>>
>> Hi Vijay,
>>
>> I hate to be rude but this is terrible advice. That recipe likely has
>> dependencies on other recipes and before you know it you'd be
>> assembling a completely untested mess of copy & pasted recipes with no
>> clean upgrade path.
>>
>> I recommend looking at the project documentation, watch Josef's
>> excellent live coding videos
>> (https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qs=
fyj
>> ),
>> maybe check out a book or work through a tutorial. Once you understand
>> the layer system you'll see that it's easy to add the required layers
>> properly.
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Konsulko Group
>>
>

--000000000000d4d4ed05b92ac6df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 I have added the qtbrowser in the local.conf file and inclu=
ded meta-arago-extras and compiled the build using bitbake but qtwebbrowser=
 is not showing up. And the problem is the display is not showing up after =
one time boot(i.e only display i coming for the first time and from the sec=
ond time display is not being shown up). A blank screen is being displayed.=
 Can u pls help me out.</div><div><br></div><div>Thanks and regards</div><d=
iv>RAVI UPPADA<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, Jan 16, 2021 at 7:44 PM Vijay Rakesh Mungan=
da &lt;<a href=3D"mailto:vijayrakeshmunganda@gmail.com">vijayrakeshmunganda=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Hi Paul,<div><br></div><div>I apologise, thank=
s for the correction.=C2=A0<br><br><div dir=3D"ltr">Thanks &amp; Regards,<d=
iv>Vijay Rakesh</div></div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n 16-Jan-2021, at 19:41, U RAVI KUMAR &lt;<a href=3D"mailto:uppadaravi2511@=
gmail.com" target=3D"_blank">uppadaravi2511@gmail.com</a>&gt; wrote:<br><br=
></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<di=
v dir=3D"ltr"><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I will check the live cod=
ing videos.Thanks paul.<br></div><div>Thanks &amp; Regards</div><div>RAVI_U=
PPADA<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Jan 16, 2021 at 7:04 PM Paul Barker &lt;<a href=3D"=
mailto:pbarker@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sat, =
16 Jan 2021 at 04:12, Vijay Rakesh Munganda<br>
&lt;<a href=3D"mailto:vijayrakeshmunganda@gmail.com" target=3D"_blank">vija=
yrakeshmunganda@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Ravi,<br>
&gt;<br>
&gt; Below links might help you, choose one of the them you need. Download =
and add this recipe into the your build and recipe name to IMAGE_INSTALL_ap=
pend in local.conf file.<br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/67001/" r=
el=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerin=
dex/recipe/67001/</a><br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/61209/" r=
el=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerin=
dex/recipe/61209/</a><br>
<br>
Hi Vijay,<br>
<br>
I hate to be rude but this is terrible advice. That recipe likely has<br>
dependencies on other recipes and before you know it you&#39;d be<br>
assembling a completely untested mess of copy &amp; pasted recipes with no<=
br>
clean upgrade path.<br>
<br>
I recommend looking at the project documentation, watch Josef&#39;s<br>
excellent live coding videos<br>
(<a href=3D"https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS=
_GLY25Qsfyj" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.com/p=
laylist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a>),<br>
maybe check out a book or work through a tutorial. Once you understand<br>
the layer system you&#39;ll see that it&#39;s easy to add the required laye=
rs<br>
properly.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000d4d4ed05b92ac6df--
