Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF07C433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 12:15:27 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.5797.1641298526357369024
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:15:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OfORiYbm;
 spf=pass (domain: gmail.com, ip: 209.85.167.170,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id s73so59243622oie.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CpXSn2i11eSlfgCtNLdPb8mnnM5Bi64b+VSljK1GRHg=;
        b=OfORiYbmtYSKwf5rs4FpMC6vVqdlet2Y5pV1nAv4ukaOLiDYKWmA+FIRm/n5JYyIvD
         gM6EdAXxCpNcZrcn2GNGmCwOIV5wrvVSwXvYvBt4bkOwHGDBUphyvcHdRDXeTfRzzABc
         XroZjDuqdM2ljfAejaSnEFlYkU8IskAQ4dgDAzQ2GYcf4pBXpm7fKpw/nMTp1IIy6fEh
         lvsaIxoATVFyfV3HH/+xFsifYp4jp6VXMddx4Mn5sFcG6ZsNYGmhSWfpHK5HXzlyAJ9x
         t1TmRBHPoxX5TO1a7lpD1A6mpllUpPQGiRBGeMGCEekXgMJBwo6w4Ptlu42BgvXMRjIz
         Saaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CpXSn2i11eSlfgCtNLdPb8mnnM5Bi64b+VSljK1GRHg=;
        b=32NiRBsACGsS810w8CcLrfgDAjXgGdrB/03k0hzx+WaeD+uExIZ6VXnTl+ZlegKlOy
         7xzBmHmrpRB/V0cpze0Cz16M34w3Y3hbgz0dgOnW6frC05jeHg0u68fFlFXX5kb7VNVN
         4lTqMWcSKOXpMP+QF55W7f88Ftzd2NUJmZ2Hg7BhZz89tin1g5xxeejmBTmDUdW37/IL
         zr1Hh5nYfuT8cGUHYcvCuBsJaJUjotQAlea5P0tiLdulL5v48eX0Pwukac5CXK30Oibn
         gIHWe0Q+Xo78jP+5XaMoMmo/ba9EwWGhIvXoufDiJ3MZTAkO8gV9jAJ2NSmrXDEtRCCq
         TV6Q==
X-Gm-Message-State: AOAM531q5g/YmsA9SCtdY1UUnapd+wtq3Z6sWQQ4ElyU8kuHnZbnDSu+
	SR5ibA9US5YCIU+VhBWN7WVS6ttUv7y4Kd2REds=
X-Google-Smtp-Source: 
 ABdhPJyBtIKrsb1Z50bZ5m2TI8jYo6+C6wMBfBBqKMLvDPHD0dlKNAa7K10FZ4WchqEeW2zkTCSIdmMVYAjcLDxmP8w=
X-Received: by 2002:a54:4793:: with SMTP id o19mr37834673oic.59.1641298525541;
 Tue, 04 Jan 2022 04:15:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 4 Jan 2022 14:15:13 +0200
Message-ID: 
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000095d70305d4c0979f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 12:15:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55718

--00000000000095d70305d4c0979f
Content-Type: text/plain; charset="UTF-8"

The thing is that ntpdate syncs system time to UTC

How can i set my system's time according to time zone?

On Tue, Jan 4, 2022, 14:05 Ross Burton <ross@burtonini.com> wrote:

> Just use something like NTP to sync the local time. There's a number
> of recipes that can do this, such as systemd/ntp/ntpdate.
>
> Ross
>
> On Tue, 4 Jan 2022 at 07:47, Arik Kleiman <arik.kleiman@gmail.com> wrote:
> >
> > Hi,
> >
> > Is there any way to update my Read Only system (which connected  to the
> world via cellular) with local time?
> >
> > Im able to get the local time zone from ip lookup ... but can't use it
> to update the system current time.
> >
> > Thanks,
> > Arik
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55714):
> https://lists.yoctoproject.org/g/yocto/message/55714
> > Mute This Topic: https://lists.yoctoproject.org/mt/88186305/1676615
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ross@burtonini.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--00000000000095d70305d4c0979f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The thing is that ntpdate syncs system time to UTC=C2=A0<=
div dir=3D"auto"><br></div><div dir=3D"auto">How can i set my system&#39;s =
time according to time zone?</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 4, 2022, 14:05 Ross Burton &l=
t;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">Just use something like NTP to sync =
the local time. There&#39;s a number<br>
of recipes that can do this, such as systemd/ntp/ntpdate.<br>
<br>
Ross<br>
<br>
On Tue, 4 Jan 2022 at 07:47, Arik Kleiman &lt;<a href=3D"mailto:arik.kleima=
n@gmail.com" target=3D"_blank" rel=3D"noreferrer">arik.kleiman@gmail.com</a=
>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Is there any way to update my Read Only system (which connected=C2=A0 =
to the world via cellular) with local time?<br>
&gt;<br>
&gt; Im able to get the local time zone from ip lookup ... but can&#39;t us=
e it to update the system current time.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Arik<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#55714): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55714" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/55714</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88186305=
/1676615" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/88186305/1676615</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:ross@burtonini.com" target=3D"_bla=
nk" rel=3D"noreferrer">ross@burtonini.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000095d70305d4c0979f--

