Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web09.30433.1606553442179424006
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Nov 2020 00:50:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHEflmyh;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id y26so2200295uan.5;
        Sat, 28 Nov 2020 00:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9K4C1UaoEtsdd0cMlcy34NCJa3wbHZ4oV+rVByUXOww=;
        b=uHEflmyhLtQzKQGTt55wOuWE6ZtYqYeFOOorT0ksKzEClpncRTaHhkkV7ylVvh6Kcg
         LLeoXr9hvsXJr/tvOj2VBJgoMkE9feaba/hXdouIqrTHtKTp0JuE4AcL2jlQzBo5nX4v
         6wzhcwhOnhEEoM42PwbLeOmTEOU0R8ZqusNE6s4E3b3GOBOfo4bkuVmNRvqVPb1r92QG
         kn4oIzRXNvyT7kAPFzQekNLiolWnOthY71iodaouqhfD4PHG4AktdkPGSYxYLYPaX+Lx
         laDVZnmGYO70UXDicnBlhbiuW6haZErQIs0i0aqRlcFRDOp4U/GjBXO5RbqY2GXrqPTY
         cuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9K4C1UaoEtsdd0cMlcy34NCJa3wbHZ4oV+rVByUXOww=;
        b=fwH13XkG9m4zlc/yT+MZwNO+e46ZK+6yrGwBEsKj6QLUeiisuwlgVQWs0WlWWhPvG0
         cik68u03IViSoVixDVhGuYCSR1DL9WTfyk0rdtdh3OMJtxrK21V6OUDOKnmyuzBJyPvW
         kc3nVNUYcEiGGHz2qmPA4ORbJ3vFFUCBxg5Shf+a3zGKwjFT6KN+xR5vLL+zRpgLvSws
         jtwo44fn/sGS9yt+A5IOWXZ5A+B9ov5waSNbW5Ebgu35vtdFN83K+J9LZEAhO8GPGmig
         7JZ/6QSQdC8Hca7ZxUmX9qffIgx8rSBnM+dqwJSrpEYC8x1rFJZ15unNyaPagWQRCFOA
         tHXQ==
X-Gm-Message-State: AOAM533Qe3jAe5FWISinmhbXaNWs/XKR7ZyXTjyOinkc/lNKH6lL/KrV
	tAbmy/tBJyB/jpnb900H7Bnm0JG91tcNANPF47o=
X-Google-Smtp-Source: ABdhPJwnJdwObXpkRrbfYXsme6+3B/xLcYcuJNUMbzeqhNnc2laR7THd0/midX7pHToLnw1kmup+sE/TCIGll/1Lt2s=
X-Received: by 2002:ab0:2a4c:: with SMTP id p12mr9031937uar.45.1606553441177;
 Sat, 28 Nov 2020 00:50:41 -0800 (PST)
MIME-Version: 1.0
References: <164B71905D05BC3E.30338@lists.yoctoproject.org> <164B97FD21357EC7.21390@lists.yoctoproject.org>
In-Reply-To: <164B97FD21357EC7.21390@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sat, 28 Nov 2020 14:20:29 +0530
Message-ID: <CAJw=dJ9L=mfmQMFD7nf9xMEfgG60bdaSV-AuiAOgJqy=zuYDzw@mail.gmail.com>
Subject: Re: [yocto] patch apply for .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, yocto+help@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002c931105b526df0e"

--0000000000002c931105b526df0e
Content-Type: text/plain; charset="UTF-8"

hi ,
    Is there any way to apply patches from one meta layer to another meta
layer ?

On Sat, Nov 28, 2020 at 11:56 AM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:

> Hi ,
>     If anyone know please help.
>
> On Sat, Nov 28, 2020 at 12:12 AM NIKHIL PATIL via lists.yoctoproject.org
> <nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:
>
>> Hi team ,
>>        We are tring to apply to patch to default .bb file. means in
>> gpsd_3.17.bb file we did some changes but after taking patch we are not
>> able to apply it .
>>
>>     *  steps followd :-*
>>         1) git status
>>         2) git
>> diff yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>> gpsd_3.17.bb >  0001_add_line_in_gpsd.patch
>>         3) git
>> checkout yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>> gpsd_3.17.bb
>>
>>            after these i applied gpsd patch
>> in /yocto_build/meta-intel-leafhill/recipes-kernel/linux/linux-intel/leafhill.scc
>>   file  but after appling getting following errors .
>>
>>       * ERRORS :-*
>>       [INFO]: Context reduced git-am of
>> .kernel-meta//patches//patches/0001_add_line_in_gpsd.patch with "git am"
>> did not work, trying "apply".
>> | error: yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
>> gpsd_3.17.bb: does not exist in index
>> | [ERROR]: Application of
>> .kernel-meta//patches//patches/0001_add_line_in_gpsd.patch failed.
>> |          Patch needs to be refreshed. Sample resolution script:
>> |              .git/rebase-apply/resolve_rejects
>> | ERROR: Could not apply patches for intel-corei7-64.
>> | ERROR: Patch failures can be resolved in the linux source directory
>> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work-shared/intel-corei7-64/kernel-source)
>>
>>      * douts :-*
>>         1) Can we apply a patch to default code means (files in meta  or
>> files( .bb ) in meta-intel  folder, etc) ? because we are able to apply a
>> patch for kernel code (driver file ) , but for .bb file patch appling we
>> are facing issue .
>>
>>         2) how to apply a patch to  default .bb file in meta layers ?
>> can u please tell procedure .
>>
>>      thanks in advance .
>>
>>
>>
>>
>>
> 
>
>

--0000000000002c931105b526df0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi ,<div>=C2=A0 =C2=A0 Is there any way to apply patches f=
rom one meta layer to another meta layer ?</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 28, 2020 at 11:=
56 AM NIKHIL PATIL via <a href=3D"http://lists.yoctoproject.org">lists.yoct=
oproject.org</a> &lt;nikhilvp29=3D<a href=3D"mailto:gmail.com@lists.yoctopr=
oject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi ,<div>=C2=A0=
 =C2=A0 If anyone know please help.</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 28, 2020 at 12:12 AM N=
IKHIL PATIL via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank"=
>lists.yoctoproject.org</a> &lt;nikhilvp29=3D<a href=3D"mailto:gmail.com@li=
sts.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0We are tring to appl=
y to patch to default .bb file. means in <a href=3D"http://gpsd_3.17.bb" ta=
rget=3D"_blank">gpsd_3.17.bb</a> file we did some changes but after taking =
patch we are not able to apply it .</div><div>=C2=A0</div><div>=C2=A0 =C2=
=A0 <b>=C2=A0 steps followd=C2=A0:-</b></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 1) git status</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 2) git diff=C2=A0y=
octo_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/<a href=3D"htt=
p://gpsd_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a> &gt;=C2=A0=C2=A00001_a=
dd_line_in_gpsd.patch</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 3) git checkout=
=
=C2=A0yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/<a hre=
f=3D"http://gpsd_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a></div><div>=C2=
=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0after=
 these i applied gpsd patch in=C2=A0/yocto_build/meta-intel-leafhill/recipe=
s-kernel/linux/linux-intel/leafhill.scc=C2=A0 =C2=A0 file=C2=A0 but after a=
ppling=C2=A0getting following errors .</div><div><br></div><div>=C2=A0 =C2=
=A0 =C2=A0 <b>=C2=A0ERRORS :-</b></div><div>=C2=A0 =C2=A0 =C2=A0 [INFO]: C=
ontext reduced git-am of .kernel-meta//patches//patches/0001_add_line_in_gp=
sd.patch with &quot;git am&quot; did not work, trying &quot;apply&quot;.</d=
iv>| error: yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/<=
a href=3D"http://gpsd_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a>: does not=
 exist in index<br>| [ERROR]: Application of .kernel-meta//patches//patches=
/0001_add_line_in_gpsd.patch failed.<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Patch needs to be refreshed. Sample resolution script:<br>| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.git/rebase-apply/resolve_rejects<br=
>| ERROR: Could not apply patches for intel-corei7-64.<br>| ERROR: Patch fa=
ilures can be resolved in the linux source directory /data/nikhil/inti_dmsv=
/yocto_build/build/tmp/work-shared/intel-corei7-64/kernel-source)<br><div><=
br></div><div>=C2=A0 =C2=A0 =C2=A0<b> douts :-</b></div><div>=C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 1) Can we apply a patch to default code means (files in meta=
=
=C2=A0 or=C2=A0 files( .bb ) in meta-intel=C2=A0 folder, etc) ? because we=
 are able to apply a patch for kernel code (driver file ) , but for .bb fil=
e patch appling we are facing issue .</div><div><br></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 2) how to apply a patch to=C2=A0 default .bb file in met=
a layers ?=C2=A0 can u please tell procedure .</div><div><br></div><div>=C2=
=
=A0 =C2=A0 =C2=A0thanks in advance .</div><div><b>=C2=A0 =C2=A0 =C2=A0=C2=
=A0</b></div></div>
<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000002c931105b526df0e--
