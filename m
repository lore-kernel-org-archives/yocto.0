Return-Path: <jpuderer@littlebox.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 103A6C7EE2C
	for <webhook@archiver.kernel.org>; Fri, 26 May 2023 15:23:58 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.74.1685114633107365867
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 May 2023 08:23:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@littlebox-ca.20221208.gappssmtp.com header.s=20221208 header.b=Sza+0fEQ;
 spf=none, err=permanent DNS error (domain: littlebox.ca, ip: 209.85.167.42, mailfrom: jpuderer@littlebox.ca)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so972675e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 08:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=littlebox-ca.20221208.gappssmtp.com; s=20221208; t=1685114631; x=1687706631;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1XegAhMYycJBjALdkh2/PldP/rzjqkJKqutQC52tK1M=;
        b=Sza+0fEQSQ957Ighb3r5xPla/CKplM8ShiZtBR0CYzpfjxwi/PZJLrxC2pV1bcZSi0
         2DlPFEYA1vmXZAwIHyUjrD6eaf+I9Q6115f6k69YVJnEPd4gUHF+NCvtnFH8MAKBoAsV
         isuP1alTo/VQZDHIqhuFUI8mrhXHs6oEEuFt/krK8Bucnf0tqJVBt+cBAXuTKTnRrF0v
         9BuI2BxEOFPXIMaPg9f3+HAO1yeFSXDs2dzDqJfHsPwQrY9+cyyfrIuXlph5GhcnyS+m
         EOfGK4OjWgT3u7HgK1kD9pByfTAfWGyuw8CbrsFjaGX2umF0X0ymYbDafgNhAAZouD86
         gnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685114631; x=1687706631;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XegAhMYycJBjALdkh2/PldP/rzjqkJKqutQC52tK1M=;
        b=Z0PaVY8bbyK3QlPbNFuquOrH4YHNShHjxre4KOmQxhem2RfJZE2NCq6nbnJ4cyDLjI
         OmD3SV4yvS3Gy+RLHzlvZPlCMfO4YHrm6n5dizD/p5XO15f+r+WHqlVuP79aYNftoORm
         nHh+VywIeVlQFfTIP7hiX8PZHxAekc1gY5NxsvtNWTbBSn+GTWV+Mdvj8CrMTyUpVZC0
         0Yvv4/C3BLXnxok9Pit5zp5ZzQyHT+cIM9S9ujSwaUpAOuZtc88oWuaLL75zIkKj7nmg
         WzRyIIE8VE0pipVW4fSVYU2+57WkgMqFnbX2HStuwmBA9eIZlpQ9WIzgCy8wnWLL4yWd
         5H5w==
X-Gm-Message-State: AC+VfDxJP7hm4FE/X/FNYXQ+hfLzA7mfPRcez+k6U+6gYk8GeHIYhiH5
	LFQk1K5ovJ0sabVbdGqGY0D6mX/y9W+Uma7PtDtY7oInM2fb++BzW5S7rg==
X-Google-Smtp-Source: ACHHUZ5m21rSDNiOgTj5FkWIBFw/otRNqhagHCzkOQ1Lzc2XTvcD5jW4uigS75R2dLKzt8oG1QOBsk1DeoF5J9sKR68=
X-Received: by 2002:ac2:59dc:0:b0:4f4:c6ab:f119 with SMTP id
 x28-20020ac259dc000000b004f4c6abf119mr680958lfn.64.1685114630815; Fri, 26 May
 2023 08:23:50 -0700 (PDT)
MIME-Version: 1.0
From: James Puderer <jpuderer@littlebox.ca>
Date: Fri, 26 May 2023 09:23:40 -0600
Message-ID: <CAP=9gbuZrFrrNATXQMQ4FPtCC8bA2bcZY8c9J-75xtoi35eM+Q@mail.gmail.com>
Subject: Setting the nodatacow flag on a BTRFS directory
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f9da3b05fc9a52cf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 15:23:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60130

--000000000000f9da3b05fc9a52cf
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm trying to figure out how to set the `nodatacow` flag on a directory in
a BTRFS image at build time.  Normally this is done by running 'chattr +c
<dir>'.  Unfortunately, this doesn't seem to be something supported by
fakeroot/pseudo.  I would really like to avoid doing it at runtime, or
mounting the filesystem in loopback mode (requires root).

This seems like something that Yocto *should* be able to do.  Am I missing
something?  If not, what would be the correct place to implement something
like this?

Thanks,
James

--000000000000f9da3b05fc9a52cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<br><br>I&#39;m trying to figure out how to set =
the `nodatacow` flag on a directory in a BTRFS image at build time.=C2=A0 N=
ormally this is done by running &#39;chattr +c &lt;dir&gt;&#39;.=C2=A0 Unfo=
rtunately, this doesn&#39;t seem to be something supported by fakeroot/pseu=
do.=C2=A0 I would really like to avoid doing it at runtime, or mounting the=
 filesystem in loopback mode (requires root).<br><br>This seems like someth=
ing that Yocto *should* be able to do.=C2=A0 Am I missing something?=C2=A0 =
If not, what would be the correct place to implement something like this?<b=
r><br>Thanks,<br>James<br></div>

--000000000000f9da3b05fc9a52cf--

