Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web11.23974.1628783083893967396
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 08:44:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U3i05WBU;
 spf=pass (domain: gmail.com, ip: 209.85.222.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id x19so3050415uat.2
        for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 08:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HgHjEwDOf5UxudVuxDr2o/nTQh4Y0hR0ZB+wSkF8USg=;
        b=U3i05WBUjRU3XTBFXymsPF7EhvJ5+im2Eqf0omqui77t4gXbSMSnZvl70I308GGoK6
         DqFq16G1y4jwW15996EAMA8S/KNS5i4uLNMnuLK07U5gc3LOCKHc8HN7Wf/pGVkbXVDQ
         qUJGHXuA7CtVp4lmuvHxGk7So3QsRps9ZJSSLRi42gLqdWKgmGXeipzuy+ygLT5mSr8k
         FYlQjLjAFOahC5LaEPvUcroTiimwte978gs7UYafmyeZBwYE1JQV3OczpPaDSkLk8KVg
         pfzPLizYDBg0RUs7w7DX+cz7vmLQlCj4eRgNYvLnmvR1yCV0vSZjcdGEeq0nCMesOf9K
         AMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HgHjEwDOf5UxudVuxDr2o/nTQh4Y0hR0ZB+wSkF8USg=;
        b=NdO2nLqi50UDP1oO1MiRJezOcS/FkbhaBFFOkaa4hYv8U6pGNRA3D2d2XVfSE4JnTd
         YgHNvS07JRHE304ApplNyun4J1O+shQDFYwvAZMYz7FaocEa+11sjmYcGp+Sm8P5Gy1r
         rkzjOM4UdvmFjvLB+CXnsTsJbjbdVPmOxwdXX1lKYVrnsQoWS3fZDuMGGgFS8xWzRppG
         su9rWLgu8sqyZuGU5kIDysHq3PTzy9LoqGfhg43CRKNkMhgPCKapV4jMSVLVMFKWDFga
         41MN4HgXy7G0C26xmqV5ewIMqJMRmu7ZOIUMOgyLJGH3nkzQNKtyYtbJko63jy3JV3tj
         gDvQ==
X-Gm-Message-State: AOAM533o64ycktR3vIBcOeOHS3awpvkssNHccYPmjV0YLcvzT04H0gvi
	9/5UKa4DeqUQBilGKKniUQLrDtfjqJeStPR8Q4Y=
X-Google-Smtp-Source: ABdhPJyNFb/sVlEUSbMq0uhJhGJ2yXyzFgWdETt6hbKhlPfRDyv3dtBFDKGu2SIfTAuVsLa6a2SpTGsoK13uq0pS9Rs=
X-Received: by 2002:ab0:1669:: with SMTP id l38mr2958736uae.22.1628783083086;
 Thu, 12 Aug 2021 08:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
 <CANNYZj9ZwQoUhvm20TeArJATQSFUr_v96FzRDyczuViOPHFyLA@mail.gmail.com> <CAAJeOA-kry75kNMxxm=fOv3qaK_xL+ZDVrN4K5pwdK0UZZsEPg@mail.gmail.com>
In-Reply-To: <CAAJeOA-kry75kNMxxm=fOv3qaK_xL+ZDVrN4K5pwdK0UZZsEPg@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 12 Aug 2021 17:44:31 +0200
Message-ID: <CANNYZj8R6UTqX5A7Y+d3y8mUGiLHajjBr0xsyrf1AZ99t9XSgQ@mail.gmail.com>
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: Ashutosh Naik <ashutosh.naik@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000156e2c05c95e9d03"

--000000000000156e2c05c95e9d03
Content-Type: text/plain; charset="UTF-8"

Can you check whether the gdbserver package is in
tmp/work/.../gdb/deploy-*/ (the gdb WORKDIR), and whether it is in
tmp/deploy/... (packages deploy dir), and then whether it is in
tmp/work/..../machine-image/ (image-specific package repo)? Seems like it
gets lost at some point.

Alex

On Thu, 12 Aug 2021 at 17:24, Ashutosh Naik <ashutosh.naik@gmail.com> wrote:

> HI Alexander,
>
> Thanks for your email.
>
> The  'bitbake gdb' runs through successfully. However, I still get the
> error for gdbserver when running 'bitbake machine-image'
>
> Thanks
> Ash
>
> On Thu, Aug 12, 2021 at 3:54 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> What happens when you 'bitbake gdb'?
>>
>> Alex
>>
>> On Thu, 12 Aug 2021 at 16:28, <ashutosh.naik@gmail.com> wrote:
>>
>>>
>>> I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,
>>>
>>>
>>> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-debug"
>>> PACKAGECONFIG_remove_pn-gdb = "readline"
>>>
>>>
>>> I also tried to add the gdbserver package explicitly by adding this to
>>> conf/local.conf:
>>>
>>>
>>> IMAGE_INSTALL_append = " gdbserver"
>>>
>>>
>>> However, the build failed with the following error:
>>>
>>>
>>> Collected errors:
>>>  * Solver encountered 1 problem(s):
>>>  * Problem 1/1:
>>>  *   - nothing provides gdbserver needed by
>>> packagegroup-core-tools-debug-1.0-r3.all
>>>  *
>>>  * Solution 1:
>>>  *   - do not ask to install a package providing
>>> packagegroup-core-tools-debug
>>>
>>>
>>> Would appreciate any help, as I am struggling with this issue for over a
>>> day
>>>
>>> Thanks
>>> Ash
>>>
>>> 
>>>
>>>

--000000000000156e2c05c95e9d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you check whether the gdbserver package is in tmp=
/work/.../gdb/deploy-*/ (the gdb WORKDIR), and whether it is in tmp/deploy/=
... (packages deploy dir), and then whether it is in tmp/work/..../machine-=
image/ (image-specific package repo)? Seems like it gets lost at some point=
.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 12 Aug 2021 at 17:24, Ashu=
tosh Naik &lt;<a href=3D"mailto:ashutosh.naik@gmail.com">ashutosh.naik@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">HI Alexander,<div><br></div><div>Thanks for your emai=
l.</div><div><br></div><div>The=C2=A0 &#39;bitbake gdb&#39; runs through su=
ccessfully. However, I still get the error for gdbserver when running &#39;=
bitbake machine-image&#39;</div><div><br></div><div>Thanks</div><div>Ash</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Aug 12, 2021 at 3:54 PM Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>What happens when you &#39;bitbake gdb&#39;?</div><div><br></div=
><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, 12 Aug 2021 at 16:28, &lt;<a href=3D"mailto:ash=
utosh.naik@gmail.com" target=3D"_blank">ashutosh.naik@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0<=
/div>
<div>I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,=C2=
=A0</div>
<div>=C2=A0</div>
<blockquote>
<div>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug&quot;</div>
<div>PACKAGECONFIG_remove_pn-gdb =3D &quot;readline&quot;</div>
</blockquote>
<div>=C2=A0</div>
<div>I also tried to add the gdbserver package explicitly by adding this to=
 conf/local.conf:</div>
<div>=C2=A0</div>
<blockquote>
<div>IMAGE_INSTALL_append =3D &quot; gdbserver&quot;</div>
</blockquote>
<div>=C2=A0</div>
<div>However, the build failed with the following error:</div>
<div>=C2=A0</div>
<blockquote>
<div>Collected errors:</div>
<div>=C2=A0* Solver encountered 1 problem(s):</div>
<div>=C2=A0* Problem 1/1:</div>
<div>=C2=A0*=C2=A0 =C2=A0- nothing provides gdbserver needed by packagegrou=
p-core-tools-debug-1.0-r3.all</div>
<div>=C2=A0*=C2=A0</div>
<div>=C2=A0* Solution 1:</div>
<div>=C2=A0*=C2=A0 =C2=A0- do not ask to install a package providing packag=
egroup-core-tools-debug</div>
</blockquote>
<div>=C2=A0</div>
<div>Would appreciate any help, as I am struggling with this issue for over=
 a day</div>
<div>=C2=A0</div>
<div>Thanks</div>
<div>Ash</div>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000156e2c05c95e9d03--
