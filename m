Return-Path: <philippe.midol-monnet@easymile.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC7FC00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 14:16:45 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web08.6331.1660141004767136526
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 07:16:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@easymile.com header.s=easymile header.b=eft+ZAmb;
 spf=pass (domain: easymile.com, ip: 209.85.208.48,
 mailfrom: philippe.midol-monnet@easymile.com)
Received: by mail-ed1-f48.google.com with SMTP id z22so19259271edd.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 07:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easymile.com; s=easymile;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=wi8m9JPKvx4PuJ8nvox/tx7323TMFs/gvKD1+TxDbQs=;
        b=eft+ZAmbrss92steKj3XOam4ydi4GWUzTLNVg1uqLGldcC0LbNHkExjSLedWG1YUeI
         pTo9vgrBiSS8gEXzeTlgV/G87HobQz/HVENDQcE5trQJqcTfDtWDURufYzka95XZEfis
         +esxs4MGBaa2tCcTCrCMNWsQnjnCU588AJI9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=wi8m9JPKvx4PuJ8nvox/tx7323TMFs/gvKD1+TxDbQs=;
        b=XBWFF+0JjseeTYJ2ThtFk0noJQAMfcadW0Tk09bBwlw5AWjIGonbrCJvm/UFZv5lsj
         ezguYgAu7aP2B5eWBNG7nQPnvAVANk3me01p7sVGfwktoFrer1eZgielOQzTLZ2lhafR
         XP2czIIGmmX+VInTAozbQkgfhdv972gLRUa8JwtZoGX5ahMCf447CVsTOvEqlxlrUhHT
         JKTbDLgZU2JQ+b5U5qlV8j5FuxdnK6CqZF+XORj4fH8CUZei0YtcgMv98kkD1skpV9jM
         fvNlGhBpVrQKqZrwHEwTLgKhD8it6XVYVvavYQizkdydLxVKXwF5BoiM6emQQHOhHDh8
         o1Kw==
X-Gm-Message-State: ACgBeo20xQl9wcWQ5WU6jneJIwnylMJax3FVQl9HRIWptJSB4V7ztFZI
	u/wTH+WauzE7Lz4XEzv0kL+kcuH7L5p4pcYsfjKTtQ==
X-Google-Smtp-Source: 
 AA6agR6CWT3mU6ht6hT4n5sWSSgYYOmXdcGjrwbM0KvGZ5/SGzBM/AAHgukpmz23aCOFLcw6T7M77Z2R6zZZ0K5mbjA=
X-Received: by 2002:a05:6402:4411:b0:437:b723:72 with SMTP id
 y17-20020a056402441100b00437b7230072mr27241663eda.38.1660141002895; Wed, 10
 Aug 2022 07:16:42 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAH+Kq0w1RYu8UKzD0PMJfaFhQM5dopmKUJTXF3RFDULwA09Lug@mail.gmail.com>
 <CA+chaQdMET-RP124EmuD=v1mOiBUZ_jzT=XPr02jTM4nd8foaQ@mail.gmail.com>
In-Reply-To: 
 <CA+chaQdMET-RP124EmuD=v1mOiBUZ_jzT=XPr02jTM4nd8foaQ@mail.gmail.com>
From: Philippe Midol-Monnet <philippe.midol-monnet@easymile.com>
Date: Wed, 10 Aug 2022 16:16:32 +0200
Message-ID: 
 <CAH+Kq0xPDdSapxQxzY3-KBbHE673be61NwpnJOnh4s=gPVBsxA@mail.gmail.com>
Subject: Re: [yocto] How to insure SRCREV is consistent with PV
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c16a9c05e5e3b233"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 14:16:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57815

--000000000000c16a9c05e5e3b233
Content-Type: text/plain; charset="UTF-8"

Hello

Thanks for your answer.

Reading your code, I wonder why you need to do a fetch, it looks very
resource consuming.

Philippe

On Tue, 9 Aug 2022 at 11:27, Martin Jansa <martin.jansa@gmail.com> wrote:

> In webOS we use do_unpack postinst which checks that the SRCREV matches
> with the expected tag name and that the tag is annotated, see
>
> https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_enhanced_submissions.bbclass#L117
>
> Then for our own components (mostly using CMake) we also pass the version
> from the recipe into CMake:
>
> https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_cmake.bbclass#L30
> which is then compared with the version inside the component source during
> the build:
>
> https://github.com/webosose/cmake-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530
> so you cannot claim different version even if you tag matches it.
>
> It's a bit more complicated, because we use WEBOS_VERSION variable which
> is then split into PV (VERSION + SUBMISSION) and SRCREV,
> but with enforced consistency across all our components this worked quite
> well.
>
> Cheers,
>
> On Tue, Aug 9, 2022 at 11:00 AM Philippe Midol-Monnet <
> philippe.midol-monnet@easymile.com> wrote:
>
>> Hi
>>
>> Since the last version of bibake it looks like SRCREV must be set with a
>> SHA1 in order to fetch source from a git repository. We previously set it
>> with a tag corresponding to PV.
>> Manually retrieving the sha1 of the commit of a tag can easily lead to
>> mistakes.
>>
>> Is there a way to ensure that the SRCREV is consistent with  PV?
>>
>> Regards
>>
>> Philippe
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#57812):
>> https://lists.yoctoproject.org/g/yocto/message/57812
>> Mute This Topic: https://lists.yoctoproject.org/mt/92911220/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> Martin.Jansa@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--000000000000c16a9c05e5e3b233
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>Thanks for your answer=
.</div><div><br></div><div>Reading your code, I wonder why you need to do a=
 fetch, it looks very resource consuming.<br></div><div><br></div><div>Phil=
ippe<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 9 Aug 2022 at 11:27, Martin Jansa &lt;<a href=3D"ma=
ilto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">In webO=
S we use do_unpack postinst which checks that the SRCREV matches with the e=
xpected tag name and that the tag is annotated, see<div><a href=3D"https://=
github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_enha=
nced_submissions.bbclass#L117" target=3D"_blank">https://github.com/webosos=
e/meta-webosose/blob/master/meta-webos/classes/webos_enhanced_submissions.b=
bclass#L117</a><br></div><div><br></div><div>Then for our own components (m=
ostly using CMake) we also pass the version from the recipe into CMake:</di=
v><div><a href=3D"https://github.com/webosose/meta-webosose/blob/master/met=
a-webos/classes/webos_cmake.bbclass#L30" target=3D"_blank">https://github.c=
om/webosose/meta-webosose/blob/master/meta-webos/classes/webos_cmake.bbclas=
s#L30</a><br></div><div>which is then compared with the version inside the =
component source during the build:</div><div><a href=3D"https://github.com/=
webosose/cmake-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/=
webOS/webOS.cmake#L530" target=3D"_blank">https://github.com/webosose/cmake=
-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.cm=
ake#L530</a><br></div><div>so you cannot claim different version even if yo=
u tag matches it.</div><div><br></div><div>It&#39;s a bit more complicated,=
 because we use WEBOS_VERSION variable which is then split into PV (VERSION=
=C2=A0+ SUBMISSION) and SRCREV,</div><div>but with enforced consistency acr=
oss all our components this worked quite well.</div><div><br></div><div>Che=
ers,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Aug 9, 2022 at 11:00 AM Philippe Midol-Monnet &lt;<a href=
=3D"mailto:philippe.midol-monnet@easymile.com" target=3D"_blank">philippe.m=
idol-monnet@easymile.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi</div><div><br></div><div>S=
ince the last version of bibake it looks like SRCREV must be set with a SHA=
1 in order to fetch source from a git repository. We previously set it with=
 a tag corresponding to PV.</div><div>Manually retrieving the sha1 of the c=
ommit of a tag can easily lead to mistakes.</div><div><br></div><div>Is the=
re a way to ensure that the SRCREV is consistent with=C2=A0 PV?</div><div><=
br></div><div>Regards</div><div><br></div><div>Philippe <br></div></div>
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

--000000000000c16a9c05e5e3b233--

