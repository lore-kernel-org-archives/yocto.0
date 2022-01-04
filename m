Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A9B3C433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 15:43:36 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web11.8402.1641311015153546593
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 07:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ldyxSxmC;
 spf=pass (domain: gmail.com, ip: 209.85.167.179,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-oi1-f179.google.com with SMTP id s73so60058043oie.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 07:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=31rlifQyz+HGzOtTtcKsShgOpSJiLzPq+MIhqGNpMTw=;
        b=ldyxSxmCq02uDiuhy+73G35A+D7KXtQ93Q6MGy0z18SJT0IryA0c3BXTxf5+TpkNo+
         0Q5XR6j3UHLWZXS8h520NCa4v/M/sb+qlC28Ek80GZy3ZbcuAJCN1J9cBO/54gBkWJTJ
         uhSQxEIYpKO/GGJpiXg9z+fK1T1ReuepFrJEPMKFGJ0uEs6joZ4G51NT82yqrdjxiaEH
         tvBdbK86mjBXSHiFOPtXoewFEaqQSubXN9yQZmdkds8o3WS+OAxK1l8nKzEB6tY/xD0j
         u9uKkTWnvXp4eW3QWjuyW4siYagEj9tC3IbP/RlHJSfTnN/8SlRLFPd2CaWNkXNb81zO
         Gacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=31rlifQyz+HGzOtTtcKsShgOpSJiLzPq+MIhqGNpMTw=;
        b=TdEuGtfbMJI5zEMf5EUkAet9KL2eJkjeKwd6uvT/WVcp7aNq9MHZcfDcGraXHwEB0t
         /UZNZqFjIfX+XoBNhLmfsBxj7FM4NU4zhF71OkSjCRsG6vkKZp9q/diLgQiPHF9rPckH
         euwqXUMc3cdXkrB37e0GyjtYwqraEyWmck7fBhIGDoXV3t66JIwBlIV3I6QpdqEsOkno
         F04vV4KxNptrZ5vMSOYLRCbUfcLM8CZ8SubRE/OCeGJ8IUVD6GbdsW+vV2fl8/IVx9Bz
         iDJXkY1/X3Zn2FqNt+0sLeJt0jYYB0ZSHTP6yOVUDHwArv6tOwqqNyb6dhdTFHZ4UmnJ
         3eXg==
X-Gm-Message-State: AOAM533rSM2CSkPZ8UcE403/VvIjCYF+YgmLWb1K+ZtXmed3YkR2NHdT
	7YqPEQQqN9wogVywfbLl/OQ3qK54ciqgZIYbx1k=
X-Google-Smtp-Source: 
 ABdhPJzmPSmzNuqFyFKwzXdnvLGFR2d7p5a1XpGDHnxXkXdumqCy5XH9lEBC7oMJqdxxGnKO1DD9fT3TPPY63ky+Ol8=
X-Received: by 2002:aca:5f44:: with SMTP id
 t65mr38621128oib.131.1641311014333;
 Tue, 04 Jan 2022 07:43:34 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
 <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
 <16C71934C97A8A71.28298@lists.yoctoproject.org>
In-Reply-To: <16C71934C97A8A71.28298@lists.yoctoproject.org>
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 4 Jan 2022 17:43:21 +0200
Message-ID: 
 <CAGeH+D2bXPGTsyeYJnqYf_Z+6U9Vc6CLkCpSY82H86xus4as9w@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Arik Kleiman <arik.kleiman@gmail.com>
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 Ross Burton <ross@burtonini.com>,
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f9b51705d4c37f99"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 15:43:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55724

--000000000000f9b51705d4c37f99
Content-Type: text/plain; charset="UTF-8"

From what i read, there is a way to do this using timedatectl (its part of
systemd).

Anyone knows what recipe i need for that?


On Tue, Jan 4, 2022, 16:58 Arik Kleiman via lists.yoctoproject.org
<arik.kleiman=gmail.com@lists.yoctoproject.org> wrote:

> I don't have option to add systemd.
>
> Added alrady tzdata and all time zone folders exist.
> The issue is that ntpdate returns time in UTC.
>
> I found a way to get local time zone (by using ip lookup). Now i looking
> for a way to use it to update system time
>
> On Tue, Jan 4, 2022, 15:47 Michael Opdenacker <
> michael.opdenacker@bootlin.com> wrote:
>
>> Hi Arik,
>>
>> On 1/4/22 1:15 PM, Arik Kleiman wrote:
>> > The thing is that ntpdate syncs system time to UTC
>> >
>> > How can i set my system's time according to time zone?
>>
>>
>> If you're using systemd, you could use the timedatectl command:
>>
>> https://linuxiac.com/how-to-set-timezone-and-sync-server-time-with-ntp-in-linux/
>>
>> Otherwise, you can add the "tzdata" recipe to your image. It should
>> allow you to set the timezone that you want:
>> https://www.yoctoproject.org/pipermail/yocto/2018-October/042964.html
>>
>> Cheers
>> Michael.
>>
>> --
>> Michael Opdenacker, Bootlin
>> Embedded Linux and Kernel engineering
>> https://bootlin.com
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55721):
> https://lists.yoctoproject.org/g/yocto/message/55721
> Mute This Topic: https://lists.yoctoproject.org/mt/88186305/6638820
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> arik.kleiman@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f9b51705d4c37f99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>From what i read, there is a way to do this using ti=
medatectl (its part of systemd).<div dir=3D"auto"><br><div dir=3D"auto">Any=
one knows what recipe i need for that?</div></div><br><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 4, 2022, 16:58 =
Arik Kleiman via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;arik.kleiman=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"auto">I don&#39;t have option to add system=
d.<div dir=3D"auto"><br></div><div dir=3D"auto">Added alrady tzdata and all=
 time zone folders exist.</div><div dir=3D"auto">The issue is that ntpdate =
returns time in UTC.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I f=
ound a way to get local time zone (by using ip lookup). Now i looking for a=
 way to use it to update system time</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 4, 2022, 15:47 Michae=
l Opdenacker &lt;<a href=3D"mailto:michael.opdenacker@bootlin.com" target=
=3D"_blank" rel=3D"noreferrer">michael.opdenacker@bootlin.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Hi Arik,<br>
<br>
On 1/4/22 1:15 PM, Arik Kleiman wrote:<br>
&gt; The thing is that ntpdate syncs system time to UTC=C2=A0<br>
&gt;<br>
&gt; How can i set my system&#39;s time according to time zone?<br>
<br>
<br>
If you&#39;re using systemd, you could use the timedatectl command:<br>
<a href=3D"https://linuxiac.com/how-to-set-timezone-and-sync-server-time-wi=
th-ntp-in-linux/" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank=
">https://linuxiac.com/how-to-set-timezone-and-sync-server-time-with-ntp-in=
-linux/</a><br>
<br>
Otherwise, you can add the &quot;tzdata&quot; recipe to your image. It shou=
ld<br>
allow you to set the timezone that you want:<br>
<a href=3D"https://www.yoctoproject.org/pipermail/yocto/2018-October/042964=
.html" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/pipermail/yocto/2018-October/042964.html</a><br>
<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer noreferrer" ta=
rget=3D"_blank">https://bootlin.com</a><br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55721): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55721" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/55721</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88186305/6638=
820" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/88186305/6638820</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:arik.kleiman@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">arik.kleiman@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000f9b51705d4c37f99--

