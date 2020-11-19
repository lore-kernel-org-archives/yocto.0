Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.10046.1605797103745980645
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 06:45:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h6FNA+nv;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id u24so3136614vsl.9
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 06:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yPnluGVA0AcN50XNU67glriURBmogQtjUxDEs2OI0So=;
        b=h6FNA+nvq7ani1xnNmgVf6hyX/Q/KCm3MNJi2TaoM+v3L0T59Q1CwcfCXGA3ZASUC0
         xpfwCfirrtWx/gd6MvYlGBGLDICApQO97QqG7xgmwdzkDdJIN6Bddf3G2QEj+zJarQge
         GKbYnKgj2HdWdrWWJFPwGb/z5JCb4SUujwQXz/unvrrJUg9z7zjzZ+TLECE+AOFW4ux3
         tk03YpLMRZM5ERy7ukOhyW2hWJ8TUemc9+5Ie08rfqLGTZFUPR16s/G59fmF3asVOPmR
         1i4tXUkNbEUoPge9miaKxtXdpoY0tQIKJ7TvgsOu2EPowqz85JR5mgNHh0MKpAhMGmUo
         o3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yPnluGVA0AcN50XNU67glriURBmogQtjUxDEs2OI0So=;
        b=lMk2Wqbekjms6a9W/tkjTspQ79F4hQgUfHA9I5bN/qB0OIDNquVsKFlEU3AiUTCsw6
         PlB827qzdaDLfhRKTe41qznD5NkIT5J9yGr/R6ZCWrJ0L17gMYbWQkRq1u/Jn0Ddf0Th
         ah56V2KjEnug1hbhHIU3Cj9JscodgYKtwxK/E83JAyNJI95KGJEC8Ox7F1xAZu3sUSDs
         t6OhVmBpoVDhdBdk7f8IcuU7KYLHwVn/e+2iAzV3cczSscLxVssGDlaMMwF1Y47sOuHT
         1gE5vRvkyZ+aWrSdGwBuDK2aVOLwOvurZCSjmycAGAy0y78UsJXaf6nliPuROl6G57mA
         aF1g==
X-Gm-Message-State: AOAM5332Va8uytYCYeeHLMwkCsZkvW9bu3BAXN/ORHY184ETDW1mFJ1D
	jO073Mf1FnBhc/2/hZWAR+SNb1mRKp+PqWuBBUM=
X-Google-Smtp-Source: ABdhPJy71aGCkWuOpI9FVmuQf7wPGblfq1L4x3sr/bUCflmwSTFMRT76YkjFQpyL1zxffzojdSHlpAlOpL1BtGEvXaM=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr7770996vso.23.1605797102802;
 Thu, 19 Nov 2020 06:45:02 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
 <20201119091631.riqm2r2gtnou2cie@qschulz> <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
 <20201119111831.agmgsv577robrg5p@qschulz> <1648EA3F963FB36F.4882@lists.yoctoproject.org>
In-Reply-To: <1648EA3F963FB36F.4882@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 20:14:51 +0530
Message-ID: <CAJw=dJ-svQSy+K5-t6Gk0495hxbdX7sXQfY4iCoix-RDtVnHBw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e4d81005b476c579"

--000000000000e4d81005b476c579
Content-Type: text/plain; charset="UTF-8"

Hi ,
  for these issue we got solution ,
   obexpushd binary interpreter is on /lib64  folder ,   but in our
custom image /lib64 support is not there .
   so we are trying to add lib64 support for our custom image .

   For sato image by default it is taking lib64 support , so it work there.


On Thu, Nov 19, 2020 at 6:30 PM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:

> Hi ,
>    Thank You very much , we are able to copy obexpushd to /usr/bin using
> .bb file.
>
>   I have one more dout ;
> 1)  We created our own custom image (*bitbake core-image-xxxx*) , after
> flashing image to board . when we run *obexpushd binary  *it shows as
> follows :-
>
> root@intel-corei7-64:~#
> root@intel-corei7-64:~# obexpushd
> -sh: /usr/bin/obexpushd: No such file or directory
> root@intel-corei7-64:~# cd /usr/bin
> root@intel-corei7-64:/usr/bin# ls | grep obexpush
> obexpushd
> root@intel-corei7-64:/usr/bin#
>
> Even though binary is there it shows no such file or directory.
>
> 2) But when we are flashing a sato image (*bitbake* *core-image-sato-sdk *)
> , that time *obexpushd* binary is working fine .
>
>     Why it is happening like these ?
>     Is there any permission related issue with custom image and sato image
> ?
>
>
> On Thu, Nov 19, 2020 at 4:48 PM Quentin Schulz <
> quentin.schulz@streamunlimited.com> wrote:
>
>> Hi,
>>
>> On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:
>> > Hi ,
>> >      Yours correct only , but the thing is we are taking*
>> binary(obexpushd)*
>> > from other source and only need to copy that binary into* /usr/bin* of
>> our
>> > platform(*intel board*).
>> >
>> >      Hence how we can achieve these using .bb file ? is there any sample
>> > example .
>> >
>>
>> I gave you what you have to do in the previous mail. Remove the last two
>> lines of your bb file.
>>
>> If it does not work, give the full error logs and what you're trying to
>> achieve and what you have.
>>
>> Quentin
>>
>
> 
>
>

--000000000000e4d81005b476c579
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,=C2=A0<div>=C2=A0 for these issue we got solution ,</d=
iv><div>=C2=A0 =C2=A0obexpushd binary interpreter is on /lib64=C2=A0 folder=
 ,=C2=A0 =C2=A0but in our custom=C2=A0image /lib64 support is not there=C2=
=A0.</div><div>=C2=A0 =C2=A0so we are trying to add lib64 support for our =
custom=C2=A0image .</div><div><br></div><div>=C2=A0 =C2=A0For sato image by=
 default it is taking lib64 support , so it work there.</div><div>=C2=A0 =
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Nov 19, 2020 at 6:30 PM NIKHIL PATIL via <a href=3D"ht=
tp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;nikhilvp29=3D<a=
 href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0Thank You very much , we are =
able to copy obexpushd to /usr/bin using .bb file.=C2=A0=C2=A0</div><div><b=
r></div><div>=C2=A0 I have one more dout=C2=A0;</div><div>1)=C2=A0 We creat=
ed our own custom=C2=A0image (<b>bitbake core-image-xxxx</b>) , after flash=
ing image to board . when we run <b>obexpushd binary=C2=A0 </b>it shows as =
follows :-</div><div>=C2=A0 =C2=A0=C2=A0</div>root@intel-corei7-64:~# <br>r=
oot@intel-corei7-64:~# obexpushd<br>-sh: /usr/bin/obexpushd: No such file o=
r directory<br>root@intel-corei7-64:~# cd /usr/bin =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 <br>root@intel-corei7-64:/usr/bin# ls | grep obexpush<br>obexpu=
shd<br>root@intel-corei7-64:/usr/bin# <br><br><div>Even though binary is th=
ere it shows no such file or directory.</div><div><br></div><div>2) But whe=
n we are flashing a sato image (<b>bitbake</b>=C2=A0<b>core-image-sato-sdk =
</b>) , that time <b>obexpushd</b> binary is working fine .</div><div>=C2=
=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Why it is happening like these ?<=
/div><div>=C2=A0 =C2=A0 Is there any permission related issue with custom=
=C2=A0image and sato image ?</div><div>=C2=A0</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 19, 2020 at=
 4:48 PM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimite=
d.com" target=3D"_blank">quentin.schulz@streamunlimited.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:<br>
&gt; Hi ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Yours correct only , but the thing is we are taki=
ng* binary(obexpushd)*<br>
&gt; from other source and only need to copy that binary into* /usr/bin* o=
f our<br>
&gt; platform(*intel board*).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Hence how we can achieve these using .bb file ? i=
s there any sample<br>
&gt; example .<br>
&gt; <br>
<br>
I gave you what you have to do in the previous mail. Remove the last two<b=
r>
lines of your bb file.<br>
<br>
If it does not work, give the full error logs and what you&#39;re trying t=
o<br>
achieve and what you have.<br>
<br>
Quentin<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000e4d81005b476c579--
