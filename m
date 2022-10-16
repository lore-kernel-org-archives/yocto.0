Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517A6C433FE
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 19:28:18 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.33045.1665948495965513559
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 12:28:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MnVRRW+r;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id 203so11130356ybc.10
        for <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 12:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CzzYynQ8xZ2kX13zIbsj+1mhC9nNC2HzFXUwZgrjR44=;
        b=MnVRRW+rWkMjDs9fbsrHw2WilO5HQ8lxll31LCFLcoxmOoYZDH1ndFX/h392G9Zsk0
         y9VwViZo4V3u7+mf+OcbDxtNROwKsBagQ/2aCuQ0DtWulyiOCKA3xD0OPRSHLsqS2djP
         8gczRPTziz3dnsezZYB9YECLIcTeiXYDXucoXXk0HVXmob0TVtW4OxGpfQu3zyvZ7Ejg
         P07NC0i3oU/txwjD1TFtp8OD00135CTOxwUPNgd+UfazIkgi56lpYmgtjbPpaqhOgJ1R
         A6AvwaV3C4Vpcd3+W4a0RaXW1zIXpeF/fyS6a0uy6lrMW5C6ns6ngvIh91hgKJVJMPdN
         Nv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CzzYynQ8xZ2kX13zIbsj+1mhC9nNC2HzFXUwZgrjR44=;
        b=eXZLw9uR8l/JlU1KmOytFUCTP3BLZnlba7j39wncSod/wZFCwuFCSuxlzinvJkdyKd
         mXn6+pjvW6WukHVFi0ezddy1Jcr4JZqcmNcbWPJwSLTbHlT3IyFQnGo6E4LUvqiTb8Zp
         JrUXaEwtyYOWDg5JZo7SG1dQs0k7Ju97dgZc2bmKrrtStwW/ejaWmLZ2Z700OjyJ0Y0C
         omlnbcMlFOns32jM7QrBa0c+nUwiPDThB6ZvA/7BWmGd2N5FpBn1EtxQrKfYBdrKefQ7
         wnH/lC1627kppGq+rkXLtvlvnJHtBaZfCl56lgkLZdyj3ZGGGUoyLmoVYmIVtffwQbpD
         XJeg==
X-Gm-Message-State: ACrzQf0RUWJSorricTJrh5Ix0p2kZdGfm+FYGobFjJLdEti3gi92wZmA
	txKve1bDidjJ40Hdmgf27xcerJfBZswLViouRMw=
X-Google-Smtp-Source: AMsMyM76tvCxr/PKY/nxvNW6cFd59blIJ0pskEUF+jJqoPD78xPdRmy/hBA1bZvUI7vRdjvEaigMzUtVlFxv9coKCRU=
X-Received: by 2002:a25:8f90:0:b0:6c1:e605:429b with SMTP id
 u16-20020a258f90000000b006c1e605429bmr6607866ybl.638.1665948495032; Sun, 16
 Oct 2022 12:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
In-Reply-To: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Sun, 16 Oct 2022 12:28:03 -0700
Message-ID: <CAB=6tBQU6mxtx2snmXupF0GUSCi7v7dRp9T-ZkNLZCHAUsyBXg@mail.gmail.com>
Subject: Re: [yocto] Fixing [host-user-contaminated] warning
To: umut@ediz.dev
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000042b74a05eb2bdcd1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 19:28:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58343

--00000000000042b74a05eb2bdcd1
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 16, 2022 at 12:13 PM <umut@ediz.dev> wrote:

%< SNIP %<


> I tried various options of tar to extract these files with different UID
> and GID with no success.
> How can I solve this issue? I think it would be better if I patch the
> script to use the install command but I am not sure how can I integrate
> that kind of workflow with lots of tar archives that includes lots of
> subdirectories.
>

You were unclear about which tar options you tried, so it makes me wonder
if you tried --no-same-owner. I use that in a number of places in my builds
and it works just fine.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000042b74a05eb2bdcd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Oct 16, 2022 at 12:13 PM &lt;<a h=
ref=3D"mailto:umut@ediz.dev">umut@ediz.dev</a>&gt; wrote:<br></div><div cla=
ss=3D"gmail_quote"><div><br></div><div>%&lt; SNIP %&lt;</div><div>=C2=A0<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">I tried various op=
tions of tar to extract these files with different UID and GID with no succ=
ess.<br>How can I solve this issue? I think it would be better if I patch t=
he script to use the install command but I am not sure how can I integrate =
that kind of workflow with lots of tar archives that includes lots of subdi=
rectories.<br>
</blockquote></div><br clear=3D"all"><div>You were unclear about which tar =
options you tried, so it makes me wonder if you tried --no-same-owner. I us=
e that in a number of places in my builds and it works just fine.</div><div=
><br></div><div>..Ch:W..<br></div><div><br></div>-- <br><div dir=3D"ltr" cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family=
:monospace">&quot;Perfection must be reached by degrees; she requires the s=
low hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--00000000000042b74a05eb2bdcd1--

