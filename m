Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.6208.1619159297401767181
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 23:28:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uZOLl6Zy;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id q136so27773442qka.7
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 23:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hZVAYsyn5KeBlehybDp4WcNACMokBD7sOic94HVO89w=;
        b=uZOLl6Zyks9E0avPaF+hLVP+U/MAf0jcR2qh2RcpqM7k4KSjhop/zBRhcmFiHPg/P4
         M+2/ZXNMaqTfLHtpweBbhzRg5DYPz7DnyoJUNmGQH2aZVRMHPYd3ZMqI50nv0zq4p1Gr
         12bqbx395lqyxsvipW0jZtg0988ZUSQdYCXEmD9QOAc8tIgouyg/WXGFoV0BP4BxCGXe
         9V/MEmDOe8O2en0GIAgTgHeGpQG5DypsOkbRhyYPIu0P/QoD7on6HPSk8bFYt3CGTLtL
         scZ2s3CQQzNhaC57MYdhwtMAYpU8T4a/pYtAlqSiBguyGh/lLrmF7wlQYRtqkwP8rpe2
         5jMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hZVAYsyn5KeBlehybDp4WcNACMokBD7sOic94HVO89w=;
        b=YPAYcGdp+9/duBS5LJdmJW/Vm9pLb7f2LJL/Obn0X4psTLB4LyRd8L8XvQ1uMx9fKF
         vCHlhmYE1hObxMjaG92qiYD6pIQA7oFOG6/Zrfv9bq3K3XNpusFf4X47dL9VEOWOPfL4
         jQ2eNYnByzq8mPFPvJW+Bon8Y5XkEXK6ueL4furQyINdY4u+eXkMTAHtLRpkggVXG6Bs
         Fj6Paljl2pSkkWSLWuCmWqRcKzTW5ui88JJ4giyZX90DXvJEDBEhv0ZjF4fb0tvby5Ck
         aaEKSdTiRRzSHVJlRc1MWK2yJNTREND69bIFJFa/y7wpKNoMx7AoikEna2fdSEtkJtIy
         YhmQ==
X-Gm-Message-State: AOAM530gtdl6ba0luB5p6Ii4YDA0ZDJ2JY0H82lS1MtsFaM5xOa6s3UX
	h5ypPrDirJgEQxQG1KUgNpPn7C0Ou37Attz0a9g=
X-Google-Smtp-Source: ABdhPJzySa2D5KNmo3YJkxi1/+EfqqGA0fwSE4/NpkDgY7MU7AZmpMWgKV0A6rrbzNJQIF9Y5pevPLnXn2O7vIyzUzg=
X-Received: by 2002:a37:a6d2:: with SMTP id p201mr2550172qke.146.1619159296605;
 Thu, 22 Apr 2021 23:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
 <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com>
 <CAMrUZLjApKadn5CcadKmXhrYk2UENEMMFmxvD2ji3-Xf56mNXA@mail.gmail.com>
 <CAMKF1srE3B+9P5WQWaBKx1AfUgqPYGS2WWH=bLgZ-sCvC8DRZQ@mail.gmail.com> <CAMrUZLicdh=eKZcDMMMEy10zevXp7ZQfv4P-qsLH1hEukKqo8Q@mail.gmail.com>
In-Reply-To: <CAMrUZLicdh=eKZcDMMMEy10zevXp7ZQfv4P-qsLH1hEukKqo8Q@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 22 Apr 2021 23:28:05 -0700
Message-ID: <CAMKF1so=TBH=XU3Woqwq_wrboBfgA-UQjz4UM0J42mCWPJvFHQ@mail.gmail.com>
Subject: Re: [yocto] Problems building hardknott for raspberri pi
To: Morten Bruun <morten.bruun@apide.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b5842205c09de6a0"

--000000000000b5842205c09de6a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 22, 2021 at 11:13 PM Morten Bruun <morten.bruun@apide.com>
wrote:

> On Fri, Apr 23, 2021 at 8:03 AM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Thu, Apr 22, 2021 at 10:54 PM Morten Bruun <morten.bruun@apide.com>
>> wrote:
>> >
>> > On Fri, Apr 23, 2021 at 7:30 AM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun <morten.bruun@apide.com=
>
>> wrote:
>> >> >
>> >> > I'm upgrading to hardknott. The meta-raspberry layer does not have =
a
>> hardknott branch, so I'm building with the master branch.
>> >> >
>> >>
>> >> I think meta-raspberrypi should branch before mesa-gl restructuring
>> >> initiated changes in meta-raspberrypi can you try with
>> >> meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97
>> >> and see if it works
>> >>
>> > Thanks for your quick reply. I tried to build with
>> d1f191ed3018e0b130311e443f014e30d2f5ed97 which gives me this error inste=
ad:
>> >
>>
>> never mind, I think we perhaps have is broken on master too. Are you
>> using DISABLE_VC4GRAPHICS =3D "1" ?
>>
>>
> No, I'm not using DISABLE_VC4GRAPHICS - should I?
>

Then it should not be using Mesa-gl so it=E2=80=99s a bit confusing how you=
 end up
needing it

>
>
> /Morten
>

--000000000000b5842205c09de6a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Apr 22, 2021 at 11:13 PM Morten Bruun &lt;<a href=
=3D"mailto:morten.bruun@apide.com">morten.bruun@apide.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-family:arial,helvetica,sans-serif"><span style=3D=
"font-family:Arial,Helvetica,sans-serif">On Fri, Apr 23, 2021 at 8:03 AM Kh=
em Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" style=3D=
"font-family:Arial,Helvetica,sans-serif">raj.khem@gmail.com</a>&gt; wrote:<=
/span><br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On Thu, A=
pr 22, 2021 at 10:54 PM Morten Bruun &lt;<a href=3D"mailto:morten.bruun@api=
de.com" target=3D"_blank">morten.bruun@apide.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Apr 23, 2021 at 7:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun &lt;<a href=3D"mailt=
o:morten.bruun@apide.com" target=3D"_blank">morten.bruun@apide.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m upgrading to hardknott. The meta-raspberry layer does=
 not have a hardknott branch, so I&#39;m building with the master branch.<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; I think meta-raspberrypi should branch before mesa-gl restructurin=
g<br>
&gt;&gt; initiated changes in meta-raspberrypi can you try with<br>
&gt;&gt; meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97<b=
r>
&gt;&gt; and see if it works<br>
&gt;&gt;<br>
&gt; Thanks for your quick reply. I tried to build with d1f191ed3018e0b1303=
11e443f014e30d2f5ed97 which gives me this error instead:<br>
&gt;<br>
<br>
never mind, I think we perhaps have is broken on master too. Are you<br>
using DISABLE_VC4GRAPHICS =3D &quot;1&quot; ?<br>
<br></blockquote><div><br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">No, I&#39;m not using DISABLE_VC4GRAPHIC=
S - should I?</div></div></div></blockquote><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Then it should not be using Mesa-gl so it=E2=80=99s a bit co=
nfusing how you end up needing it=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif" dir=3D"auto"></div></div></div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D=
"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">/Morten</d=
iv></div></div>
</blockquote></div></div>

--000000000000b5842205c09de6a0--
