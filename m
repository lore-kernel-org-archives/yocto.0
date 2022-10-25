Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D434C38A2D
	for <webhook@archiver.kernel.org>; Tue, 25 Oct 2022 16:02:40 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web12.8796.1666713750179065057
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Oct 2022 09:02:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hjPDzWVV;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id f27so3179085eje.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 09:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YUd7pkTJCMbm6tJi8SWoWO00nDOiBS8/5Eiexm6UAS4=;
        b=hjPDzWVV5Y8M1CcDK9lN1/LbeAXhhOA/yeZT9PFelEOUFyHYUTLwHVx0QxfMgT/nrT
         n5pohBdYD20+r0u+SduCwktVSzFaOlz71H9Hmx2LUvWr5E5gPehuAhsmVn0stMwDwCdO
         IX3e3M1IsiKYxkttqf9EUzbfJp3q1DkvqaRbLxRdw8CLMhwAQfvZ72fYkIo/73+sRatG
         Zmu4T11ixDx899stXjDUhofdGAL7MtD7Z82aj/XNRK7+bdWn07asYWLB9ef/OC2hfkWd
         OgQiXy5/oBSrqNnurbuH84HMobdCzd2bsvyOTSrDF40FFe/ytNf1QICU0P3qxMSJySew
         ZvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YUd7pkTJCMbm6tJi8SWoWO00nDOiBS8/5Eiexm6UAS4=;
        b=XaGMRBT68/0TalhCnjbhYyrU60nfnfq2wEFIUQT4wfUDQcHQxh6hu8miPV3tbKTAVW
         wZC6cmxqA0WzZZMb4PrzSfXE3Pf3xR4WA7C+C43s5P+y/z+CuvPnUOTac3GpANQb4bGQ
         N53vR2rnomtoC8IJuLIbs36SU9CqU6QQF8ntINtfVYvhWkai0A6FaMDtpIxlhdL8sKHR
         AD9Ta3bNan8K20F9hqEqnEYRgv9pcnbLJVFlqd4qhUvijonTaWbH4EwuH+tWPitsPbV8
         E7vA2kF2b2ee0/OwOAXSHUot8cvsXNvSWQ6gZhQ8Fc1VTU8Wlq4TYOs0ca8AAbEswYxW
         9ktg==
X-Gm-Message-State: ACrzQf21i2EV2FGtSNd1cVbn+TkMD7BI49ej8YxdlA4jQu0eBogdRnJv
	vIxybZsDJT7j8rth5BsGB+BEJJghzyfpSy3lqNA=
X-Google-Smtp-Source: AMsMyM7lMcEI4KOGFzcdMeeuqgm6/rl241FUNptYZUnYJJLptUILrd4zUV216AUYOZTHLguye53TkZxQQiF92YTApJg=
X-Received: by 2002:a17:907:a06b:b0:78d:d25f:b726 with SMTP id
 ia11-20020a170907a06b00b0078dd25fb726mr33237967ejc.203.1666713748316; Tue, 25
 Oct 2022 09:02:28 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 25 Oct 2022 09:02:17 -0700
Message-ID: <CANx9H-C2h-9920kje9fJv+0QhwZQ42cqC-hcP5J9x=bULu26fQ@mail.gmail.com>
Subject: OpenEmbedded Happy Hour October 26 9pm/2100 UTC
To: openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e924d905ebde088a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 16:02:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58415

--000000000000e924d905ebde088a
Content-Type: text/plain; charset="UTF-8"

All,

You are cordially invited to the next OpenEmbedded Happy Hour on October 26
for Asia/Pacific time zones @ 2100/9pm UTC (5pm ET / 2pm PT).

https://www.openembedded.org/wiki/Calendar
https://www.openembedded.org/wiki/Happy_Hours
https://www.timeanddate.com/worldclock/fixedtime.html?msg=OpenEmbedded+Happy+Hour+October+26&iso=20221026T21&p1=1440&ah=1

Regards,
Tim "moto-timo" Orling

--000000000000e924d905ebde088a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All,<div><br></div><div>You are cordially invited to the n=
ext OpenEmbedded Happy Hour on October 26</div><div>for Asia/Pacific time z=
ones=C2=A0@ 2100/9pm UTC (5pm ET / 2pm PT).</div><div><br></div><div><a hre=
f=3D"https://www.openembedded.org/wiki/Calendar" rel=3D"noreferrer" target=
=3D"_blank">https://www.openembedded.org/wiki/Calendar</a><br></div><div><a=
 href=3D"https://www.openembedded.org/wiki/Happy_Hours" rel=3D"noreferrer" =
target=3D"_blank">https://www.openembedded.org/wiki/Happy_Hours</a><br></di=
v><div><a href=3D"https://www.timeanddate.com/worldclock/fixedtime.html?msg=
=3DOpenEmbedded+Happy+Hour+October+26&amp;iso=3D20221026T21&amp;p1=3D1440&a=
mp;ah=3D1">https://www.timeanddate.com/worldclock/fixedtime.html?msg=3DOpen=
Embedded+Happy+Hour+October+26&amp;iso=3D20221026T21&amp;p1=3D1440&amp;ah=
=3D1</a><br></div><div><br></div><div>Regards,</div><div>Tim &quot;moto-tim=
o&quot; Orling</div></div>

--000000000000e924d905ebde088a--

