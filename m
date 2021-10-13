Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D5D2C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 08:32:21 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.5311.1634113939815461582
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 01:32:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=HY2r45Jc;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.167.43, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f43.google.com with SMTP id p16so8482135lfa.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 01:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pJ3lFHFmGWPpqZyax1PibRO2h5UyBTG/0/1V0T8Mx5c=;
        b=HY2r45JcUkkeYTfBfeSa5/e4FnYQxcjOn57OrWaqEO9+CHfVdClPXnZkxe6NSJejMw
         xzgRPPIpt8UbnnkUjDGvbMIkw7wvuonU6uLIpeJcngAGY4T410wrVZxLjnA7QElv23S6
         pv9v6ebuyglQxdENmXs3rriyzWPG9oHDxSdQkGvMvgdnTqsFKCahDg5dxJUCVcPM3hoD
         lmvBQhEQESF0Gdwxmpc9p6/ZTg2KPMCkng0z5gTQGInKwW9tc1QfXl/pcP/9OjB2nwXC
         JSY1Z7jtLryuEV7ZjcziqMSoDqtrV4WAHZq14OTwjWxUrinqjjFw29JhxM9MFSlEb2nt
         UI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pJ3lFHFmGWPpqZyax1PibRO2h5UyBTG/0/1V0T8Mx5c=;
        b=KBx+QtnKpPxkLEmVEXxeuvD8gsSfPQi60NyE1OGxsOjUqurn1H6D0tWnSSJ+fuEams
         vdmWAqBb1sSlRiDIT5JdITbsCrDtJgEePnpr1nxKj+GbUoNV5eQ1k89jTIUlQoQ7CisR
         aDuIji005CB9Rl4PzW9RWMPlDsLstptNPdtyV345Iq4RNnw1t1fd0PZiXyD/Dumx867s
         uw5v14TB8D6KfsrrDRxbXcXeckz5poUy4sJrebsVYODBm5/weqdiLTdGpa4rg6bjnABm
         QKUc+IY1z6zikFHQHZNw6OaCS99VpPKlrtZGmOUYrkztogoIN/Tj9o9unNXJL7m61yZ2
         XgfQ==
X-Gm-Message-State: AOAM530ChOjrFrJO4lbvd6NqxP/fsRDDyLo7vWV0sKtyZJQ9Syc2kQ7m
	ysL+oGHiFcHzYLiBJAgtF29x0lMDuUKFeYyrDlUIgri2
X-Google-Smtp-Source: 
 ABdhPJzn8Dp8Ll2E6DmDWMARt23KmEojoMnoEI7b6Qthxki7yKE3osBhO/PXeYvAXUQ712P6dneXYUu7v85sdHgwOfc=
X-Received: by 2002:a05:651c:169c:: with SMTP id
 bd28mr34218449ljb.476.1634113937224;
 Wed, 13 Oct 2021 01:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <e6EK.1634107862897652586.2g9b@lists.yoctoproject.org>
In-Reply-To: <e6EK.1634107862897652586.2g9b@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 13 Oct 2021 10:32:04 +0200
Message-ID: 
 <CAEt6NwoeC091oapjpAmYvBWVcc7vPMpnF9Jvv82mzk6h=ebZ+Q@mail.gmail.com>
Subject: Re: [yocto] Node-red and Wifi
To: donald@cactii.com.au
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c04a2905ce37ccec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 08:32:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55048

--000000000000c04a2905ce37ccec
Content-Type: text/plain; charset="UTF-8"

Brutally honest:

Yes it can. No you won't be able to do it without reading the docs.

<donald@cactii.com.au> schrieb am Mi., 13. Okt. 2021, 08:51:

> I am looking at various distributions to move to from my existing one -
> without wanting to wade through another lots of documentation - can the
> Yocto buid
> 1) be configured to act as a WiFi access point - with natting
> 2) run node-red
>
> I will be running on an Armbian quadcore.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55047):
> https://lists.yoctoproject.org/g/yocto/message/55047
> Mute This Topic: https://lists.yoctoproject.org/mt/86282241/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000c04a2905ce37ccec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Brutally honest:<div dir=3D"auto"><br></div><div dir=3D"a=
uto">Yes it can. No you won&#39;t be able to do it without reading the docs=
.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr"> &lt;<a href=3D"mailto:donald@cactii.com.au">donald@cactii.com.au</a=
>&gt; schrieb am Mi., 13. Okt. 2021, 08:51:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">I am looking at various distributions to move to from my existing =
one - without wanting to wade through another lots of documentation - can t=
he Yocto buid <br>1) be configured to act as a WiFi access point - with nat=
ting<br>2) run node-red<br><br>I will be running on an Armbian quadcore.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#55047): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55047" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/55047</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86282241/4689=
568" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/86282241/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D=
"_blank" rel=3D"noreferrer">jester@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c04a2905ce37ccec--

