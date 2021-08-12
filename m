Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.23702.1628781856011108470
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 08:24:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iq7cY7Vz;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: ashutosh.naik@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id k65so12426850yba.13
        for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 08:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X0dd1tvprzgFwZ8tWVWZYy1PQNBMzq52SRuBiuYUfZs=;
        b=Iq7cY7VzFY35bS3lcgp4TJ4YzM3OHafrwIAjqYxDi5pBz03je7Sbwvy9UNF1G8fE0v
         jLmR5YqRGLSId7UUbunzRMYEW6mhxPkNS12oe+WTL3pae29AJlNhbPzDQE+tS/+8J/ml
         pednQ7YdBwOVyzoFqgltxC7mdExchyvwqe6W7Iixf2BbJm1fn5kFHQ0k70C1Bwol2iQC
         Lat87ZAoVFiAU2yEZnVoZn2yPbfeQSo5HRjf3I1fNeOeCBohIPCIT1qqO+HdyXt7b9K2
         rVfdH6p5xR6DvLtucn4kzcwRkh77k692flVOjtz1PekBZBhI0wzs/m+PDX0ZKIwOPZGd
         hFOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X0dd1tvprzgFwZ8tWVWZYy1PQNBMzq52SRuBiuYUfZs=;
        b=VjJ/sR4qDIw68vlvXOgAbJSzv8YfBX7ubgx81xMpqMg9lUrUfEuMh94rUOf3UzfMIJ
         nUG9UpVUis+sDZ7Jd/m+3jjXEaau68ZBsLQ9MwKyveOPmWSr7CcFI/kleZ1XK/LlcnGq
         SakuAiBPdp4eqMRgrHYYNGSNonY5U0GT363BDwLy97mEZUjY2DvWfi2aKEXkmcCIJfuH
         +qD89WRjBBbCkYSLJ23UvrOzNMsdPH/vAvamoNYucxtSMYxsVpvsA+pausGOE9AOSisQ
         U7tg1JBk7/0+zBaqnfk99rshA7woEwue3O0avw6k15m1DOYYSGLueapvSKGeVRCSou0r
         9LuQ==
X-Gm-Message-State: AOAM530qwU8c8dCWWzITFgirkotzVr9RqHuOgt1o2bk2RT6bB4MfCmZd
	ttHMYrrOBnqp3e9G8Sx6nU4CrPowZn/9EsDdEQg=
X-Google-Smtp-Source: ABdhPJzUut/X7ZYqpe/JKg5QFtSF6b/XgD5nFIY9Xpe9wlFHChoTPDyqCk290Hl2Js83BO/ZgYZzBOPw50Ssaurd1QE=
X-Received: by 2002:a25:48c7:: with SMTP id v190mr4923254yba.312.1628781855029;
 Thu, 12 Aug 2021 08:24:15 -0700 (PDT)
MIME-Version: 1.0
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org> <CANNYZj9ZwQoUhvm20TeArJATQSFUr_v96FzRDyczuViOPHFyLA@mail.gmail.com>
In-Reply-To: <CANNYZj9ZwQoUhvm20TeArJATQSFUr_v96FzRDyczuViOPHFyLA@mail.gmail.com>
From: ashutosh.naik@gmail.com
Date: Thu, 12 Aug 2021 16:24:01 +0100
Message-ID: <CAAJeOA-kry75kNMxxm=fOv3qaK_xL+ZDVrN4K5pwdK0UZZsEPg@mail.gmail.com>
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e2bddb05c95e537e"

--000000000000e2bddb05c95e537e
Content-Type: text/plain; charset="UTF-8"

HI Alexander,

Thanks for your email.

The  'bitbake gdb' runs through successfully. However, I still get the
error for gdbserver when running 'bitbake machine-image'

Thanks
Ash

On Thu, Aug 12, 2021 at 3:54 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> What happens when you 'bitbake gdb'?
>
> Alex
>
> On Thu, 12 Aug 2021 at 16:28, <ashutosh.naik@gmail.com> wrote:
>
>>
>> I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,
>>
>>
>> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-debug"
>> PACKAGECONFIG_remove_pn-gdb = "readline"
>>
>>
>> I also tried to add the gdbserver package explicitly by adding this to
>> conf/local.conf:
>>
>>
>> IMAGE_INSTALL_append = " gdbserver"
>>
>>
>> However, the build failed with the following error:
>>
>>
>> Collected errors:
>>  * Solver encountered 1 problem(s):
>>  * Problem 1/1:
>>  *   - nothing provides gdbserver needed by
>> packagegroup-core-tools-debug-1.0-r3.all
>>  *
>>  * Solution 1:
>>  *   - do not ask to install a package providing
>> packagegroup-core-tools-debug
>>
>>
>> Would appreciate any help, as I am struggling with this issue for over a
>> day
>>
>> Thanks
>> Ash
>>
>> 
>>
>>

--000000000000e2bddb05c95e537e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI Alexander,<div><br></div><div>Thanks for your email.</d=
iv><div><br></div><div>The=C2=A0 &#39;bitbake gdb&#39; runs through success=
fully. However, I still get the error for gdbserver when running &#39;bitba=
ke machine-image&#39;</div><div><br></div><div>Thanks</div><div>Ash</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Aug 12, 2021 at 3:54 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.=
kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>What happens when you &#39;bitbake gdb&#39;?</div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 12 Aug 2021 at 16:28, &lt;<a href=3D"mailto:ashutos=
h.naik@gmail.com" target=3D"_blank">ashutosh.naik@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0</div=
>
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

--000000000000e2bddb05c95e537e--
