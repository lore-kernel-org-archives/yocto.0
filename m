Return-Path: <celledge@siteworx.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 335AEC7619A
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 22:05:14 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.40286.1680213912604488764
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 15:05:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@siteworx.io header.s=google header.b=Qm65zRIU;
 spf=pass (domain: siteworx.io, ip: 209.85.208.54, mailfrom: celledge@siteworx.io)
Received: by mail-ed1-f54.google.com with SMTP id cn12so82348449edb.4
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 15:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=siteworx.io; s=google; t=1680213910; x=1682805910;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aQ6wEU8Tws0S2GvGXzdU7UFhMbbxRt0KVbe2Lw5mjLg=;
        b=Qm65zRIUlNSOrkT9e0he7Fe8Alg0SLJW8vMSco30xFNHXcK02PIMbyh6wRQa3PsHd1
         aor8dmyftmtq1t3S3WdOJpW1bPyt2UIZnblDx3l6Wph2TKDdPuUojoBpeXg5zuVu2yTv
         LSNbImIlWJrGoPcOK+AG7xsHD8ASPdZTTmE0zZI9FgT+AiiZlw9iO5ULPu1nPpa4rYZ0
         WjOjuHAUWTCLr2KSB2C06NwuFyiNedPJJh51HK2kclf5bOmRIofsfqPi2KXPEdTNM1wS
         uRPPajiOk7THPmoBtDtmvTpE6KNdr6e1yiX4v/LWaZ2s7zfVRByeAoe0SA7IlyCwP1Ew
         IzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680213910; x=1682805910;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQ6wEU8Tws0S2GvGXzdU7UFhMbbxRt0KVbe2Lw5mjLg=;
        b=0c+rLDlz+CX2gqsuK2jLFBY1IEbekdJXvE9o408rU2d0773eaAJWgM0FfvuzzGILqB
         t+nqghOFQOr+avcRbYoHtQTjYJl0CZCbyPqJYUQFOmKZSDvhTxo7g3nArrlW6OnY/4cz
         lfwwhlNfwN2z5jqBtxQZWxxBHTbOV75kVVseKieu3tn8WCPVCDC6HTRv5wOSO3P2LE0U
         KI7OYruTZfRm5EtynUL5md12/iyfHsRzGjS0QFD88hTkkEDoEaM+4OnXV/SO1gpulYEh
         6chZLG8ZtLhqLGiui2bFIT0OepjKz4eGu8ZWVRAwcZPIHa2I2yiaVWPNbUbQL9Wgxmc5
         5f6A==
X-Gm-Message-State: AAQBX9d6g5GNxgyJQE8r1+oGoerQYmXL1Cx0YAB9eHgwiYmHb0DlGsEJ
	Gdoy7beE59VKiG9W7GlIvX2lbRP7P+g0k+XRAXeMm5NPmDAiJplIa1EEFw==
X-Google-Smtp-Source: AKy350bRCvTY6m21nleleVdXZoIfy+iC12eE9V+cC8d2KboEavJM0rKX4yQ+NVncKpH8KQvf3u4B3nSkrrs/ROfB4Aw=
X-Received: by 2002:a17:906:1185:b0:92b:ec37:e4b7 with SMTP id
 n5-20020a170906118500b0092bec37e4b7mr12520821eja.14.1680213910507; Thu, 30
 Mar 2023 15:05:10 -0700 (PDT)
MIME-Version: 1.0
From: Chris Elledge <celledge@siteworx.io>
Date: Thu, 30 Mar 2023 18:04:59 -0400
Message-ID: <CAHkgX0uZ0Hd5aMx+OcGuYnNdjVjY-nGCWLwL-D9-TbsnXo-m6w@mail.gmail.com>
Subject: connman + busybox-hwclock startup failure
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000048667d05f8254920"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 22:05:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59555

--00000000000048667d05f8254920
Content-Type: text/plain; charset="UTF-8"

I've encountered an issue when using a system that has both connman and the
hwclock.sh script enabled during startup. The default combined startup
order for these two services is wrong.

Currently connman starts at 05, and hwclock.sh is at 20 (default for
update-rc.d). This means that we have a situation where connman starts up
and obtains a correct NTP time, then hwclock.sh clobbers the system time
with whatever is in the RTC even if it is way in the past. The big issue
caused by that is connman schedules its next NTP update at an absolute time
of (current time + 1024s). Once the hwclock.sh script knocks the system
time way into the past, the NTP update will not run for a potentially very
long time.

I would suggest adding a line to poky/meta/recipes-core/busybox.inc to move
hwclock.sh earlier.
For example:
INITSCRIPT_PARAMS:${PN}-hwclock = "start 04 2 3 4 5 . stop 20 0 1 6"
or
INITSCRIPT_PARAMS:${PN}-hwclock = "start 40 S . stop 20 0 1 6"

Thanks,
Chris Elledge

--00000000000048667d05f8254920
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve encountered an issue when using a system that has=
 both connman and the hwclock.sh script enabled during startup. The default=
 combined startup order for these two services is wrong.<div><br></div><div=
>Currently connman starts at 05, and hwclock.sh is at 20 (default for updat=
e-rc.d). This means that we have a situation where connman starts up and ob=
tains a correct NTP time, then hwclock.sh clobbers the system time with wha=
tever is in the RTC even if it is way in the past. The big issue caused by =
that is connman schedules its next NTP update at an absolute time of (curre=
nt time=C2=A0+ 1024s). Once the hwclock.sh script knocks the system time wa=
y into the past, the NTP update will not run for a potentially very long ti=
me.</div><div><br></div><div>I would suggest adding a line to poky/meta/rec=
ipes-core/busybox.inc to move hwclock.sh earlier.</div><div>For example:</d=
iv><div>INITSCRIPT_PARAMS:${PN}-hwclock =3D &quot;start 04 2 3 4 5 . stop 2=
0 0 1 6&quot;</div><div>or</div><div><div>INITSCRIPT_PARAMS:${PN}-hwclock =
=3D &quot;start 40 S . stop 20 0 1 6&quot;</div><br class=3D"gmail-Apple-in=
terchange-newline"></div><div>Thanks,</div><div>Chris Elledge</div></div>

--00000000000048667d05f8254920--

