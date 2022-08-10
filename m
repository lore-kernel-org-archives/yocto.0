Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E11EDC00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 14:32:55 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.6559.1660141973675755766
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 07:32:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AaX3nhkd;
 spf=pass (domain: gmail.com, ip: 209.85.221.48,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id v3so18050329wrp.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 07:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=paASqAhS0zI6vS8TmTCdfSCATSQDacbylfg3sKY/lx8=;
        b=AaX3nhkdT/QC12+oZ6+8V6XfyfuP8YTFHAWUSNWBOYaPVKDf58taiI4oojNAxOSZIm
         njOoj/lgH8fk0XLnMuwd0S6dzSpoCSBamuRCl93Qyt+uTv5jJPEP7gO575iD73frIR2f
         V5PXCMHYdIxyQICHsLX8/MPi7Ve5Dl2oMmNwI0Y8QInOpAMA6O58G4LOUA18U9vs3Svy
         a70bD+BbM+zMmmM+A2DS+6qfOtWo35My1dXMIK0AHjzFhtDoiWhycHu5zvUv8COgD7HQ
         DjH+gwzlAn6jNqFEOpIXxseSsDGheQz8O66pM2xSty41O9fumhSnYJptyb2MXp3WS6YP
         ZeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=paASqAhS0zI6vS8TmTCdfSCATSQDacbylfg3sKY/lx8=;
        b=mPPOF/gRUzsuZqaoiPbihksqZRVIbLhogyGMNGTLlCLgGCG/SMl4Na+L701gjnEzP2
         lLFa7aZn/H53I1PZaNw2Hv38oQCaCx65E2CHOgA9NOMn2hg38g8kieGcHAbS6MVYaQhe
         +VhOdJUR8h8ofhoLrlIgPEG81+7/mKxDwLnP0bnbXwNjAw47H3uatJRcYO6iryat7sn0
         28PgB990dWkdxM16vk9xngTjq7cEGI3liCL4dZrimqbT+jZgMDnvAYjtGv22xdQVnQRr
         9e8OKPkIpNPpT4kUrhs/MryWJV380/Itkqq85/jVVbgkkr/BrNVbeJYuN2dJu5kKKqZa
         vQIw==
X-Gm-Message-State: ACgBeo34CQEgvyXmLHsGDA8CxlIskbf83A+gJ9xTsjpxmXzPgFbzwx9H
	daTnNv7PG/9NDJ2wdm3V7/b66XBk/8YSLZqQXlQ=
X-Google-Smtp-Source: 
 AA6agR6hPtLRH4nlohAyk64x+nsX6M4GdfDKZ4h2QP3ZmvP1hOb8tXOKcU8RIGnCkysweW3Y1re481ffuyRVEUWgZPw=
X-Received: by 2002:a5d:6d0b:0:b0:222:955a:8774 with SMTP id
 e11-20020a5d6d0b000000b00222955a8774mr11324949wrq.129.1660141972024; Wed, 10
 Aug 2022 07:32:52 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAH+Kq0w1RYu8UKzD0PMJfaFhQM5dopmKUJTXF3RFDULwA09Lug@mail.gmail.com>
 <CA+chaQdMET-RP124EmuD=v1mOiBUZ_jzT=XPr02jTM4nd8foaQ@mail.gmail.com>
 <CAH+Kq0xPDdSapxQxzY3-KBbHE673be61NwpnJOnh4s=gPVBsxA@mail.gmail.com>
In-Reply-To: 
 <CAH+Kq0xPDdSapxQxzY3-KBbHE673be61NwpnJOnh4s=gPVBsxA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 10 Aug 2022 16:32:02 +0200
Message-ID: 
 <CA+chaQf8fA0yRRRcNpSukAbbboU0W=tY2JsO2soXjFvWRq1gSg@mail.gmail.com>
Subject: Re: [yocto] How to insure SRCREV is consistent with PV
To: Philippe Midol-Monnet <philippe.midol-monnet@easymile.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000084f30405e5e3ecd4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 14:32:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57817

--00000000000084f30405e5e3ecd4
Content-Type: text/plain; charset="UTF-8"

Hello,

the fetch is still executed in do_fetch task (and uses MIRROR/PREMIRROR
etc), maybe you mean the 2nd fetch when the tag doesn't exist in specified
branch added here:
https://github.com/openwebos/meta-webos/commit/bb59814990619065be5dcdbdeaa469e8fb2b8213
and that's executed only when needed (in case the tag WEBOS_VERSION points
to was pushed to repo, before the branch was created - at least that was
the case almost 10 years ago, there is longer history in old
openwebos/meta-webos repo:
https://github.com/openwebos/meta-webos/commits/master/classes/webos_enhanced_submissions.bbclass

Cheers,

On Wed, Aug 10, 2022 at 4:16 PM Philippe Midol-Monnet <
philippe.midol-monnet@easymile.com> wrote:

> Hello
>
> Thanks for your answer.
>
> Reading your code, I wonder why you need to do a fetch, it looks very
> resource consuming.
>
> Philippe
>
> On Tue, 9 Aug 2022 at 11:27, Martin Jansa <martin.jansa@gmail.com> wrote:
>
>> In webOS we use do_unpack postinst which checks that the SRCREV matches
>> with the expected tag name and that the tag is annotated, see
>>
>> https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_enhanced_submissions.bbclass#L117
>>
>> Then for our own components (mostly using CMake) we also pass the version
>> from the recipe into CMake:
>>
>> https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_cmake.bbclass#L30
>> which is then compared with the version inside the component source
>> during the build:
>>
>> https://github.com/webosose/cmake-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530
>> so you cannot claim different version even if you tag matches it.
>>
>> It's a bit more complicated, because we use WEBOS_VERSION variable which
>> is then split into PV (VERSION + SUBMISSION) and SRCREV,
>> but with enforced consistency across all our components this worked quite
>> well.
>>
>> Cheers,
>>
>> On Tue, Aug 9, 2022 at 11:00 AM Philippe Midol-Monnet <
>> philippe.midol-monnet@easymile.com> wrote:
>>
>>> Hi
>>>
>>> Since the last version of bibake it looks like SRCREV must be set with a
>>> SHA1 in order to fetch source from a git repository. We previously set it
>>> with a tag corresponding to PV.
>>> Manually retrieving the sha1 of the commit of a tag can easily lead to
>>> mistakes.
>>>
>>> Is there a way to ensure that the SRCREV is consistent with  PV?
>>>
>>> Regards
>>>
>>> Philippe
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#57812):
>>> https://lists.yoctoproject.org/g/yocto/message/57812
>>> Mute This Topic: https://lists.yoctoproject.org/mt/92911220/3617156
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> Martin.Jansa@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>>

--00000000000084f30405e5e3ecd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>the fetch is still executed in d=
o_fetch task (and uses MIRROR/PREMIRROR etc), maybe you mean the 2nd fetch =
when the tag doesn&#39;t exist in specified branch added here:</div><div><a=
 href=3D"https://github.com/openwebos/meta-webos/commit/bb59814990619065be5=
dcdbdeaa469e8fb2b8213">https://github.com/openwebos/meta-webos/commit/bb598=
14990619065be5dcdbdeaa469e8fb2b8213</a><br></div><div>and that&#39;s execut=
ed only when needed (in case the tag WEBOS_VERSION points to was pushed to =
repo, before the branch was created - at least that was the case almost 10 =
years ago, there is longer history in old openwebos/meta-webos repo:</div><=
div><a href=3D"https://github.com/openwebos/meta-webos/commits/master/class=
es/webos_enhanced_submissions.bbclass">https://github.com/openwebos/meta-we=
bos/commits/master/classes/webos_enhanced_submissions.bbclass</a><br></div>=
<div><br></div><div>Cheers,</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 10, 2022 at 4:16 PM Philippe M=
idol-Monnet &lt;<a href=3D"mailto:philippe.midol-monnet@easymile.com">phili=
ppe.midol-monnet@easymile.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><div><br></di=
v><div>Thanks for your answer.</div><div><br></div><div>Reading your code, =
I wonder why you need to do a fetch, it looks very resource consuming.<br><=
/div><div><br></div><div>Philippe<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 9 Aug 2022 at 11:27, Mar=
tin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">m=
artin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">In webOS we use do_unpack postinst wh=
ich checks that the SRCREV matches with the expected tag name and that the =
tag is annotated, see<div><a href=3D"https://github.com/webosose/meta-webos=
ose/blob/master/meta-webos/classes/webos_enhanced_submissions.bbclass#L117"=
 target=3D"_blank">https://github.com/webosose/meta-webosose/blob/master/me=
ta-webos/classes/webos_enhanced_submissions.bbclass#L117</a><br></div><div>=
<br></div><div>Then for our own components (mostly using CMake) we also pas=
s the version from the recipe into CMake:</div><div><a href=3D"https://gith=
ub.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_cmake.bb=
class#L30" target=3D"_blank">https://github.com/webosose/meta-webosose/blob=
/master/meta-webos/classes/webos_cmake.bbclass#L30</a><br></div><div>which =
is then compared with the version inside the component source during the bu=
ild:</div><div><a href=3D"https://github.com/webosose/cmake-modules-webos/b=
lob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530" target=
=3D"_blank">https://github.com/webosose/cmake-modules-webos/blob/c3a5d821d1=
723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530</a><br></div><div>so =
you cannot claim different version even if you tag matches it.</div><div><b=
r></div><div>It&#39;s a bit more complicated, because we use WEBOS_VERSION =
variable which is then split into PV (VERSION=C2=A0+ SUBMISSION) and SRCREV=
,</div><div>but with enforced consistency across all our components this wo=
rked quite well.</div><div><br></div><div>Cheers,</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 9, 2022 =
at 11:00 AM Philippe Midol-Monnet &lt;<a href=3D"mailto:philippe.midol-monn=
et@easymile.com" target=3D"_blank">philippe.midol-monnet@easymile.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hi</div><div><br></div><div>Since the last version of bibak=
e it looks like SRCREV must be set with a SHA1 in order to fetch source fro=
m a git repository. We previously set it with a tag corresponding to PV.</d=
iv><div>Manually retrieving the sha1 of the commit of a tag can easily lead=
 to mistakes.</div><div><br></div><div>Is there a way to ensure that the SR=
CREV is consistent with=C2=A0 PV?</div><div><br></div><div>Regards</div><di=
v><br></div><div>Philippe <br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57812): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57812" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57812</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92911220/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92911220/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000084f30405e5e3ecd4--

