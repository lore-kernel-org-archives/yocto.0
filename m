Received: from exchange.sewerin.com (exchange.sewerin.com [])
 by mx.groups.io with SMTP id smtpd.web11.14475.1605813423733403479
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 11:17:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=AghWJL6V;
 spf=softfail (domain: lists.yoctoproject.org, ip: <nil>, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 18:51:17 +0000
X-Sender: bounce+53643+51436+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 10634
X-Received: by 127.0.0.2 with SMTP id 85UfYY3619394xCFYQHI2nbO; Thu, 19 Nov 2020 10:45:06 -0800
X-Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48]) by mx.groups.io
 with SMTP id smtpd.web10.10046.1605797103745980645 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 06:45:03 -0800
X-Received: by mail-vs1-f48.google.com with SMTP id u24so3136614vsl.9        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 06:45:03 -0800 (PST)
X-Gm-Message-State: 0tfq8sffz52PGyk8bBZkTNA5x3618059AA=
X-Google-Smtp-Source: ABdhPJy71aGCkWuOpI9FVmuQf7wPGblfq1L4x3sr/bUCflmwSTFMRT76YkjFQpyL1zxffzojdSHlpAlOpL1BtGEvXaM=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr7770996vso.23.1605797102802; Thu, 19 Nov 2020 06:45:02 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com> <20201119091631.riqm2r2gtnou2cie@qschulz>
 <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com> <20201119111831.agmgsv577robrg5p@qschulz>
 <1648EA3F963FB36F.4882@lists.yoctoproject.org>
In-Reply-To: <1648EA3F963FB36F.4882@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 20:14:51 +0530
X-OldMsgId: <CAJw=dJ-svQSy+K5-t6Gk0495hxbdX7sXQfY4iCoix-RDtVnHBw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605811506; bh=fQOgcIJk5NQHhQ+JKztAEoXH213rSUooFzE/Ji8rM/U=; h=Cc:Content-Type:Date:From:Subject:To;
 b=AghWJL6VkNC5UBpZNzczCHrQFeY1fcYas72m5K4ba/Asda+OCRbJMwG+yXxWN1rRlua MQ/03V43VM9lVbc4x5xTiBoMdRiA8zL7BV/2w+exJ8FnQo3Thx6bFsz1TIb8R2bVQOLzK Unu3++6CLkbqqy8MCBCdqJQCuSZHYKVDBKc=
Return-Path: bounce+53643+51436+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <430ed7f180934b108697ab778a7e4d30@Exchange.sewerin.de>
Message-ID: <MADEUP.1648FECD893B96A3.24957@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="HkDMblNoQLLfhySQi6pO"

--HkDMblNoQLLfhySQi6pO
Content-Type: multipart/alternative; boundary="000000000000e4d81005b476c579"

--000000000000e4d81005b476c579
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {D1DB1BDD-A97A-42A7-B2C8-CC049D9BEE50}

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
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {88A3F6B9-66FA-48DA-9097-2EF91C5524D6}

<div>Hi ,=C2=A0<div>=C2=A0 for these issue we got solution ,</div><div>=C2=A0=
 =C2=A0obexpushd binary interpreter is on /lib64=C2=A0 folder ,=C2=A0 =C2=A0=
but in our custom=C2=A0image /lib64 support is not there=C2=A0.</div><div>=C2=
=A0 =C2=A0so we are trying to add lib64 support for our custom=C2=A0image .<=
/div><div><br></div><div>=C2=A0 =C2=A0For sato image by default it is taking=
 lib64 support , so it work there.</div><div>=C2=A0 =C2=A0</div></div><br><d=
iv class=3D"gmail_quote"><div class=3D"gmail_attr">On Thu, Nov 19, 2020 at 6=
:30 PM NIKHIL PATIL via <a href=3D"http://lists.yoctoproject.org">lists.yoct=
oproject.org</a> &lt;nikhilvp29=3D<a href=3D"mailto:gmail.com@lists.yoctopro=
ject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div>Hi ,<div>=C2=A0 =C2=A0Thank You=
 very much , we are able to copy obexpushd to /usr/bin using .bb file.=C2=A0=
=C2=A0</div><div><br></div><div>=C2=A0 I have one more dout=C2=A0;</div><div=
>1)=C2=A0 We created our own custom=C2=A0image (<b>bitbake core-image-xxxx</=
b>) , after flashing image to board . when we run <b>obexpushd binary=C2=A0 =
</b>it shows as follows :-</div><div>=C2=A0 =C2=A0=C2=A0</div>root@intel-cor=
ei7-64:~# <br>root@intel-corei7-64:~# obexpushd<br>-sh: /usr/bin/obexpushd: =
No such file or directory<br>root@intel-corei7-64:~# cd /usr/bin =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 <br>root@intel-corei7-64:/usr/bin# ls | grep obexpush<=
br>obexpushd<br>root@intel-corei7-64:/usr/bin# <br><br><div>Even though bina=
ry is there it shows no such file or directory.</div><div><br></div><div>2) =
But when we are flashing a sato image (<b>bitbake</b>=C2=A0<b>core-image-sat=
o-sdk </b>) , that time <b>obexpushd</b> binary is working fine .</div><div>=
=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Why it is happening like these ?=
</div><div>=C2=A0 =C2=A0 Is there any permission related issue with custom=C2=
=A0image and sato image ?</div><div>=C2=A0</div></div><br><div class=3D"gmai=
l_quote"><div class=3D"gmail_attr">On Thu, Nov 19, 2020 at 4:48 PM Quentin S=
chulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin.schu=
lz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi,<br>
<br>
On Thu, Nov 19, 2020 at 04:45:19PM +0530, NIKHIL PATIL wrote:<br>
&gt; Hi ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Yours correct only , but the thing is we are taking=
* binary(obexpushd)*<br>
&gt; from other source and only need to copy that binary into* /usr/bin* of =
our<br>
&gt; platform(*intel board*).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Hence how we can achieve these using .bb file ? is =
there any sample<br>
&gt; example .<br>
&gt; <br>
<br>
I gave you what you have to do in the previous mail. Remove the last two<br>=

lines of your bb file.<br>
<br>
If it does not work, give the full error logs and what you&#39;re trying to<=
br>
achieve and what you have.<br>
<br>
Quentin<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000e4d81005b476c579--

--HkDMblNoQLLfhySQi6pO--
