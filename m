Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web11.14473.1576259755018791726
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 09:55:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CeLjZPqU;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id w13so152007ilo.1
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 09:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=osV9QGxdDbqsgwhpV/MoOqTuHFVdgvlgbZdhdO1CTXU=;
        b=CeLjZPqUb/uEGzoYLSALwXyJ9lQp0UYJgQOTv5I9qY/8UcZnIsnVV1iRMd58q3KnwK
         kzEXnzWwhxMnSv5GI/u4QfrQkTGxoak03FwKdouEYX7wuEteIglYDX08VxxEm+fsR7wC
         eONNVp8bGQQOWV4pdnZI5OOLuTLZDrNXXdST9vaoByMfAs29wkjTooymMj3n3nx/5aIX
         dZpr+3ELxIhXPBqlL36uz09iM2PiENRbRdhgDb5VYohGjDqVcIahS5Ox2qK+CgeLSxvH
         GVlc2qgRksGFb/HknHbi/ZHMiDENnITNTSm+vFItP9fYRKS3AyUeTQoYlUjUbA6pZYU1
         A+7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=osV9QGxdDbqsgwhpV/MoOqTuHFVdgvlgbZdhdO1CTXU=;
        b=KtjO1tTQ1s4k8Qz+ekr62+QeEmXW6FnyeGsypyIwXIS4Ssg8iEbiVQcGY7jaUCZgjV
         Eh1BvDrn2HMxXsiAggFG78PUUH5C3ytH41TMiMd65VoQq8IiaRHn8QoL2QrzZYpT/qrg
         IuIaTsY9OoNVMasv70RKb5Q/1No6iuMqGweBCj8K2lcIJMP98V0764UndY+PhUUaw+X7
         CpLEUJTNe0BcrypJnfJcs8eU5QvCM2lbrgRZpW7z6YiczAPzyhHkolwgh7OYidJVsISD
         iIYvb3Zxp0aThR52NPxYBCm+qg48Hcy4c9c5nvPFNx7kuNCQbJBaz2+TegzAyNW8ncwi
         7vsQ==
X-Gm-Message-State: APjAAAWzfjWi+BeTNnRVaRWe0s4Xb7yVxqcNL0R75dZY4Jta/ui+JEB9
	/lVpyxpVnoMAOCXUHylqtED+3LgdrWI/BJUWlbk=
X-Google-Smtp-Source: APXvYqxtwL4FdVOr2Mru2ySctyzQEBk2mjrDc/g47IVVVZvedFYY1FIJ+1uqWvc1zLAYr4Nw5Bt6ombVAS+jR1kcNdY=
X-Received: by 2002:a92:89c2:: with SMTP id w63mr519537ilk.252.1576259754414;
 Fri, 13 Dec 2019 09:55:54 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CADfgfoZFn--AUG+cKr_wcn5zyyyG4AUbJj6jf1BsUj4HZQzUPA@mail.gmail.com>
In-Reply-To: <CADfgfoZFn--AUG+cKr_wcn5zyyyG4AUbJj6jf1BsUj4HZQzUPA@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 12:55:45 -0500
Message-ID: <CAGhBkzx-AynnVFXjMQv_wySFEWD8KxF0DrLCvQyz6d5C73yK6w@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Armin Kuster <akuster@mvista.com>, yocto@lists.yoctoproject.org, 
	yocto-infrastructure@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bc5abb05999992d1"

--000000000000bc5abb05999992d1
Content-Type: text/plain; charset="UTF-8"

Thanks for the update.

On Fri., Dec. 13, 2019, 12:54 p.m. Michael Halstead, <
mhalstead@linuxfoundation.org> wrote:

> The router provided by our colocation provider went offline December 13 at
> 3:07am PST. I've been working with them since to restore service. I'm now
> on site at the data center with a senior network tech. We should have a
> timeline for the repair soon.
>
> Until the repair is complete downloads.yoctoproject.org,
> state.yoctoproject.org, autobuilder.yocto.io, and the typhoon autobulder
> workers are not available.
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
>
> On Fri, Dec 13, 2019 at 9:36 AM Armin Kuster <akuster@mvista.com> wrote:
>
>>
>>
>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>>
>> Hi,
>>
>> I went to "http://downloads.yoctoproject.org/" and I get the
>> following message:
>> Gateway Timeout
>>
>> Server error - server 198.145.29.63 is unreachable at this moment.
>>
>> Please retry the request or contact your administrator.
>>
>> Kindly assist here.
>>
>>
>> Thanks. The LF IT department is aware of  this and working towards a
>> solution.
>>
>> No ETA.
>>
>> Regards,
>> Armin
>>
>> Regards,
>>
>> Ripu
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47663):
>> https://lists.yoctoproject.org/g/yocto/message/47663
>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1003190
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
>> mhalstead@linuxfoundation.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>

--000000000000bc5abb05999992d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the update.=C2=A0</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri., Dec. 13, 2019, 12:54=
 p.m. Michael Halstead, &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org=
">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">The router provided by our colocation provid=
er went offline December=C2=A013 at 3:07am PST. I&#39;ve been working with =
them since to restore service. I&#39;m now on site at the data center with =
a senior network tech. We should have a timeline for the repair soon.<div><=
br></div><div>Until the repair is complete <a href=3D"http://downloads.yoct=
oproject.org" target=3D"_blank" rel=3D"noreferrer">downloads.yoctoproject.o=
rg</a>, <a href=3D"http://state.yoctoproject.org" target=3D"_blank" rel=3D"=
noreferrer">state.yoctoproject.org</a>, <a href=3D"http://autobuilder.yocto=
.io" target=3D"_blank" rel=3D"noreferrer">autobuilder.yocto.io</a>, and the=
 typhoon autobulder workers are not available.</div><div><br></div><div><br=
></div><div><blockquote type=3D"cite"><font size=3D"2" face=3D"Calibri"><sp=
an style=3D"font-size:11pt"><div></div>
        </span></font>
    </blockquote>
    <pre cols=3D"72">--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer</pre></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 9:36 AM Armi=
n Kuster &lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_blank" rel=3D=
"noreferrer">akuster@mvista.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div>On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I went to &quot;<a href=3D"http://downloads.yoctoproject.org/"=
 target=3D"_blank" rel=3D"noreferrer">http://downloads.yoctoproject.org/</a=
>&quot;
          and I get the following=C2=A0message:</div>
        <div>
          <h1><font size=3D"2">Gateway Timeout</font></h1>
          <p>Server error - server 198.145.29.63 is
            unreachable at this moment.<br>
            <br>
            Please retry the request or contact your administrator.</p>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Ki=
ndly
              assist here.</font></p>
        </div>
      </div>
    </blockquote>
    <br>
    <font face=3D"arial, sans-serif">Thanks. The LF IT department is aware
      of=C2=A0 this and working towards a solution.<br>
      <br>
      No ETA.<br>
      <br>
      Regards,<br>
      Armin<br>
    </font>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Re=
gards,</font></p>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Ri=
pu</font></p>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47662): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47662" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctop=
roject.org/g/yocto/message/47662</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1024=
635" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/mt=
/68533979/1024635</a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" targe=
t=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/g/yocto/unsu=
b</a>  [<a href=3D"mailto:akuster@mvista.com" target=3D"_blank" rel=3D"nore=
ferrer">akuster@mvista.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </div>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47663): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47663" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/47663</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1003=
190" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/68533979/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a>=C2=A0 [<a href=3D"mailto:mhalstead@linuxfoundation.org" =
target=3D"_blank" rel=3D"noreferrer">mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>
</blockquote></div>

--000000000000bc5abb05999992d1--
