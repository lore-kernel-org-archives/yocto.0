Return-Path: <ashishm@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707DFC27C4F
	for <webhook@archiver.kernel.org>; Sun, 23 Jun 2024 05:03:32 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web11.112271.1719119007456631246
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jun 2024 22:03:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=HXX3J8Ad;
 spf=pass (domain: mvista.com, ip: 209.85.210.51, mailfrom: ashishm@mvista.com)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6f980c89db8so1730725a34.1
        for <yocto@lists.yoctoproject.org>; Sat, 22 Jun 2024 22:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1719119006; x=1719723806; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bYEkS7d6VVqAZTxr4ZDd6yrqPAa7HTzU0ONeamu+32c=;
        b=HXX3J8AdxifBeNLwpQiVMkwBu9uoAyJRTsgvXtFEKoq+nvSMjV2wbtkDaXXVf4zCL5
         orkZE3nI/bRGrMvIr0iZngDuWLjZziUqJ+4StEJJ5DmkNIAyfHtCNw+XvlAyWvLalcZs
         GIbiH0IEgPAotAdDw/Jn7xnCoVkXV/H3wH6mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719119006; x=1719723806;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bYEkS7d6VVqAZTxr4ZDd6yrqPAa7HTzU0ONeamu+32c=;
        b=mJ2dRIPIAU2IcSmxfPWQ5EcELDMRSiYMTVR0OwgXWVL6Qkr3iUJwVFaU9XxC6MQT4q
         J8dujQ4AqQq7TQhmNg4wysN7u+i+bF3FnFqdcjRhnCiyMdio55KtJRPAyZwwI2SQmHmz
         xJubdsIlfsvaqopRgMf5esv8JouAXHWB3zNKw/17x48AdF4gF5z8JLn2OpcnwbvNM/0S
         3wQh3hssBJxNJam+4s5f9wSEH8PaYsMZ0Guc40MGketOhqrs/3qMECmReNaPtx6mUiyK
         oRaVINNdWLQJRqtLprcVutv3USdFxiWYEddui4iB3VxkcnFDgbe9ITvbTBfdgEbXz6/+
         Q2ww==
X-Gm-Message-State: AOJu0Ywp0M87JC+JPCW8nq8+WABr5D4KrAhTqC+MFvV1qR7phjTo90Vc
	TuSLmX8IPJq31ilt6mutQY1oHcHrF+503LY2y4G8NHKCJbCUGK6QK670cOCwKfBquu8rsG8Wjyq
	0953G5S369mgeWlxteuQtEX+lNsfvVL1iMgoj53E8c4EMMSqx
X-Google-Smtp-Source: AGHT+IFljoIa8mfg2FCo7o0tLAeYS9Qy1zvwe4pKcbxMDNy1CSp/UBXDRLE5tgTCb85NfQtuI1DrDYMfQWwAwzatrDg=
X-Received: by 2002:a05:6870:c14e:b0:259:8b4e:e71a with SMTP id
 586e51a60fabf-25cfcf34d87mr2522677fac.46.1719119006269; Sat, 22 Jun 2024
 22:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <iLai.1718957021658838098.5r35@lists.yoctoproject.org>
 <CAMKF1so5mNEM5=mt64Pf6LUc+6dC=DXQtBj_4465w_TqDtTuiQ@mail.gmail.com> <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
In-Reply-To: <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
From: Ashish Mishra <ashishm@mvista.com>
Date: Sun, 23 Jun 2024 10:33:15 +0530
Message-ID: <CAP2OjcjTrhgQM=7ZCpuOy5scmB_KZJAhZrAqvsARjV0SL4gcmw@mail.gmail.com>
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: yocto@lists.yoctoproject.org, ticotimo@gmail.com
Cc: raj.khem@gmail.com
Content-Type: multipart/alternative; boundary="000000000000b218a1061b8795a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Jun 2024 05:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63379

--000000000000b218a1061b8795a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Tim & Khem Raj .
Will look at these points

- Ashish

On Fri, Jun 21, 2024 at 9:32=E2=80=AFPM Tim Orling via lists.yoctoproject.o=
rg
<ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:

>
>
> On Fri, Jun 21, 2024 at 7:04=E2=80=AFAM Khem Raj via lists.yoctoproject.o=
rg
> <raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> On Fri, Jun 21, 2024 at 1:03=E2=80=AFAM emailaddress.ashish via
>> lists.yoctoproject.org
>> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi Team ,
>> >
>> > 1) We wanted to enable openssl-fips on our Yocto Image  ( we are tryin=
g
>> on Yocto-5.5 )
>> >      Do we have any layer to support this or any recipe ?
>> >      I was looking through recipe supported by open-embedded  but coul=
d
>> not find any recipe for same.
>> >
>> > 2) Any suggestion or any inputs on same will be helpful.
>> >
>>
>> there is a layer
>>
>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-open=
ssl102-fips/
>> its older version but could be a good starting point.
>>
>>
> OpenSSL 3.1 still has not been fully ratified for latest FIPS 140-3. It i=
s
> a NIST backlog problem.
>
> You can absolutely build OpenSSL 3.0.8/3.0.9 though.
> https://csrc.nist.gov/projects/cryptographic-module-validation-program/ce=
rtificate/4282
> It is very different than openssl102 workflow.
>
>
>> > Thanks ,
>> > Ashish
>> >
>> >
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63378):
> https://lists.yoctoproject.org/g/yocto/message/63378
> Mute This Topic: https://lists.yoctoproject.org/mt/106795437/4806067
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ashishm@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b218a1061b8795a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Tim &amp; Khem Raj .<div>Will look at these points=
=C2=A0</div><div><br></div><div>- Ashish=C2=A0</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 21, 2024 at=
 9:32=E2=80=AFPM Tim Orling via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;ticotimo=3D<a href=3D"mailto:gmail.com@lists.=
yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Jun 21, 2024 at 7:04=E2=80=AFAM Khem Raj via <a href=
=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproject.org=
</a> &lt;raj.khem=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" tar=
get=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Jun 21, 2024 at 1:03=
=E2=80=AFAM emailaddress.ashish via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;emailaddress.ashish=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Team ,<br>
&gt;<br>
&gt; 1) We wanted to enable openssl-fips on our Yocto Image=C2=A0 ( we are =
trying on Yocto-5.5 )<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Do we have any layer to support this or any recipe=
 ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 I was looking through recipe supported by open-emb=
edded=C2=A0 but could not find any recipe for same.<br>
&gt;<br>
&gt; 2) Any suggestion or any inputs on same will be helpful.<br>
&gt;<br>
<br>
there is a layer<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/layer/m=
eta-openssl102-fips/" rel=3D"noreferrer" target=3D"_blank">https://layers.o=
penembedded.org/layerindex/branch/master/layer/meta-openssl102-fips/</a><br=
>
its older version but could be a good starting point.<br>
<br></blockquote><div><br></div><div>OpenSSL 3.1 still has not been fully r=
atified for latest FIPS 140-3. It is a NIST backlog problem.</div><div><br>=
</div><div>You can absolutely=C2=A0build OpenSSL 3.0.8/3.0.9 though.=C2=A0<=
a href=3D"https://csrc.nist.gov/projects/cryptographic-module-validation-pr=
ogram/certificate/4282" target=3D"_blank">https://csrc.nist.gov/projects/cr=
yptographic-module-validation-program/certificate/4282</a></div><div>It is =
very different than openssl102 workflow.</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
&gt; Thanks ,<br>
&gt; Ashish<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63378): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63378" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63378</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106795437/480=
6067" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106795437/4806067</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ashishm@mvista.com" target=3D"_blank">ashishm@mv=
ista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b218a1061b8795a9--

