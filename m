Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.80.1601927969878976625
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 12:59:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=gLDNj1uN;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.43, mailfrom: leon@sidebranch.com)
Received: by mail-qv1-f43.google.com with SMTP id db4so6645184qvb.4
        for <yocto@lists.yoctoproject.org>; Mon, 05 Oct 2020 12:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BvjkhhEgUSUtyhh3mwkPZ62ZeitTFkmub1S+pacp5mM=;
        b=gLDNj1uNYBFMxbApfhAiLeg9ddnnKGE+Fo4IgaM3JZreTPsQWkrgrPiJazZ/Qjb+0+
         LFvILxxFXK6ZHPI0qmFu5hCkoCRIA5rxJQVWqvDIW7E7qJZON3u9yhRGLzZqa2I/mHfa
         a/3OR52pvlxr/1NcHDRz1MEbDwrbZUGHv3MXeatz+Tf+zb31Gx63oDT/8ZqyfY9KakW4
         TjZiOH4RsXvfhIoihyW32JhRFGPVOs7sRvAQJqV3Q6Pzd0w0Jz/JhDL+A/xLV/72rmgV
         X5EwoFtjR4AYx9370BUFcqrIaBqZ6RKsJx0AuJCnuksK7pp/i8F1t9CrujEtMejK9ZJw
         b1pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BvjkhhEgUSUtyhh3mwkPZ62ZeitTFkmub1S+pacp5mM=;
        b=WGR8+F7Lha+SIsIjkiRcrscVhh3rNWDGTpBS5tlZ2gNR71DnfB2SchZPXwUwMH9SOR
         ueP+yleNIEZc9eNCwXtw+f/ihmgFDTo5gFM92QrxjNCXt9sbfI7Aiy9LAPfOgiuO3fFc
         T1Z6qKK4AVEMsVnARaVCHt19A9qahxmimgfMGrp9y0PfOXNOIMHhBbwGF6zXdf3vF9J/
         CEzqPvr43I38cOSVyFq5qge2LY6W2A333iTIv5nZ4IG0Fbmm58aCaM/3AGbm7+DriRIz
         rRB/6uTCclHyjdaqwZS/Cp8yoZW2yqUBbcgCAhlwydMlVv4ViVSe7gjbitLZsO+AOZcZ
         UnYA==
X-Gm-Message-State: AOAM533QI4fghnaIT3437UlfMN30oQPy7SHtm6lFXdoqhHgv904ZMyAq
	XuPmroRfqQYbXIpdCsnlkHR5W9FUwe0053ft76W4Cg==
X-Google-Smtp-Source: ABdhPJyJ1UBXUrPVKBePwoBkY+lRurIjSSDptG3Y3D+JMVPB0OALwIBwgekPzxFyWQ57evaoaYMUqecZkqHE5InvokA=
X-Received: by 2002:a0c:9c87:: with SMTP id i7mr1351219qvf.32.1601927968926;
 Mon, 05 Oct 2020 12:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
 <CAMKF1sp5vcZKJmO474gRvwNaUbtGiSFW-nAYGR5c=ROTbJsCYQ@mail.gmail.com> <AM6PR07MB618112CCAFD0E5531F60E232D20C0@AM6PR07MB6181.eurprd07.prod.outlook.com>
In-Reply-To: <AM6PR07MB618112CCAFD0E5531F60E232D20C0@AM6PR07MB6181.eurprd07.prod.outlook.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Mon, 5 Oct 2020 21:59:19 +0200
Message-ID: <CAMjhiJjnS23a4UJQ-L3_Rqc03NBeWbjfVH_Cs-f-e5EhXkqv5g@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk How to add *-dev packages to sdk installer and not to target rootfs
To: Henrik Haugaard Jensen <hhj@trackman.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008b492e05b0f1eb81"

--0000000000008b492e05b0f1eb81
Content-Type: text/plain; charset="UTF-8"

Hello Henrik,

On Mon, Oct 5, 2020 at 8:18 AM Henrik Haugaard Jensen <hhj@trackman.com>
wrote:

>
> It would be nice if *-dev packages could be specified to included in the
> sdk sysroots only since we do not need them in the taget rootfs.
>
> As far as I known:
- The -dev packages do not end up in target rootfs, unless you specify them
in your target image.
- The -dev packages end up in the standard SDK target sysroot if you have a
DEPENDS on them.

So maybe in your case you do not have a DEPENDS in your image for the
packages you want a -dev for in SDK?
Could it be you specify -dev manually for the target image?

I am not sure what happens if "myapp" mentions a DEPENDS on (say) "libpng"
but not really links against it.
I am not sure if the libpng-dev ends up in the SDK (but I will try this
tomorrow).

Regards,

Leon.

--0000000000008b492e05b0f1eb81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Henrik,</div><div><br></div><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 5, 2020 at 8:18 A=
M Henrik Haugaard Jensen &lt;<a href=3D"mailto:hhj@trackman.com">hhj@trackm=
an.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><br>
It would be nice if *-dev packages could be specified to included in the sd=
k sysroots only since we do not need them in the taget rootfs.<br>
<br></blockquote><div>As far as I known:</div><div>- The -dev packages do n=
ot end up in target rootfs, unless you specify them in your target image.<b=
r></div><div>- The -dev packages end up in the standard SDK target sysroot =
if you have a DEPENDS on them.<br></div><div><br></div><div>So maybe in you=
r case you do not have a DEPENDS in your image for the packages you want a =
-dev for in SDK?</div><div>Could it be you specify -dev manually for the ta=
rget image?</div><div><br></div><div>I am not sure what happens if &quot;my=
app&quot; mentions a DEPENDS on (say) &quot;libpng&quot; but not really lin=
ks against it.</div><div>I am not sure if the libpng-dev ends up in the SDK=
 (but I will try this tomorrow).</div><div><br></div><div>Regards,</div><di=
v><br></div><div>Leon.</div><div><br></div><div><br></div><div>=C2=A0</div>=
</div></div>

--0000000000008b492e05b0f1eb81--
