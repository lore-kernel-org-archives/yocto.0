Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3884C433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 18:10:38 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web12.730.1652379032759454814
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 11:10:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g5VIIfWB;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id x88so5951239pjj.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 11:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=7/bHV3zYoQYq4BJHKLc1OW6VdDgCiLixNceLvhXkqRg=;
        b=g5VIIfWBKnKVWDjPqj5AaMYfiY7liPqssT7irS39spMfeLBapvyvr9AMv5Q2/XNX5k
         nn5C2amdY/crEVgyqr5uzlyQqQtAOAbJs127JEiPJu2/We64OdaBAjG1aqgzDPuJL8r6
         FlK8a+W18cP5/JyFCiZueqB86xNICVRDzZUBe8IWdxvh1OK1oQnI2FLb2PQUOl6t/c2e
         ab1KxMILdyzvyX6x+WHov2TWyB0CgBLRLjdb5eTaC1i5RLKciTxFj1xYNeB58M+AkZoF
         54TQtMw9XhyxBY7FSIEcFNjk7ApM/w2xHVgbM5wVs+WxfFou2cWEm/letcY8YL10t2ck
         Ejfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7/bHV3zYoQYq4BJHKLc1OW6VdDgCiLixNceLvhXkqRg=;
        b=KIfKatOvbYv6rsnmcOI32g8k/r6QdXycgM2ZJYbON9hrjputsEbCvfW7OTexQ67Mxe
         bmN8L/pvVVXgTUhg/ERTSoUJE/APEMwxtVPptARIksZ7DF9B0W0Iwc1Y9QvQbU7dzcQL
         t+KDP7kkoTFz+P215BiyCA1miPH7NtpnfUhTCzJYXWVgYfIug9e2/hOBZE2RLD6NlO7Y
         hg2leZ2di8jvgYhsgqV5qyAjm9aOCiqxxXAKkEpFZ0t9AbyLLeX0ks0VpFT9pDA4BwUo
         ifzWftI/6KRJgA6kPH6+pWQe5DLatLoKXPVI6wNpHZ0epWjCrOEcm6JblcALglJ35HRX
         6OHQ==
X-Gm-Message-State: AOAM531RwG5mV8CQjJggm7/+cpVslmCg8H1eAHK47mFbCyI1GQ2hr4DU
	EMuZWc/F8Sy4LngC+r0MkJl/ZvagQoLFyasjCRx3CesSFFY=
X-Google-Smtp-Source: 
 ABdhPJxqkg0MHiOKCTD0I/s9CvOiLgGonfZp2F3FXZtppPlGISMmY8+n7vKrvPE2BRlnzO4GZCwYqjeMPGWAAdnIjwA=
X-Received: by 2002:a17:902:ecc7:b0:15e:8685:77d with SMTP id
 a7-20020a170902ecc700b0015e8685077dmr1132177plh.20.1652379031612; Thu, 12 May
 2022 11:10:31 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 12 May 2022 11:10:20 -0700
Message-ID: 
 <CANx9H-Dv91gdQBxw_O5tNdmbQgodd0OToi_-5ZqsmTw96YkXWQ@mail.gmail.com>
Subject: [RFC][WIP]{honister] kernel-lab manual
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000036b20305ded47953"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 18:10:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57084

--00000000000036b20305ded47953
Content-Type: text/plain; charset="UTF-8"

I have the restructured text conversion far enough along for the
'kernel-lab' to share it now. Because I was last working on this for Yocto
Project Summit 2021.11, the current qemux86 base is on 'honister' (although
I am upgrading it to honister-3.4.4 tag).

Please realize there is a lot of history to this material and some of it
was done by folks that have left this mortal coil and some respect for that
posterity is included in this work. We can change and morph in the future,
once it has been captured close to what it is here.

I also have a separate workflow going for the Yocto Project Summit 2022.05
which is in Google Slides and is qemuarm64 based ('kirkstone'). Eventually
I will find the time to update the kernel-lab manual to follow suit, but
our collective discussion may impact that.

You can take a look at YP Summit 2021.11 to see a preview of what is coming
for YP Summit 2022.05 (once I figure out the pesky printk/pr_info issue):
https://elinux.org/images/b/be/Yps2021.11-handson-kernel.pdf

Current working branch of kernel-lab manual:
https://github.com/moto-timo/yocto-docs/tree/timo/honister/kernel-lab

And the accompanying metadata training materials:
https://github.com/moto-timo/kernel-lab-layers/tree/wip-honister

The intent is that for a given release of the docs, we would have exercises
for  LTS, Stable and Mainline (really this means current-stable, not -dev).
Currently, LTS would be 5.10, Stable would be 5.15 and Mainline would be
5.17.

--Tim

--00000000000036b20305ded47953
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have the restructured text conversion far enough along f=
or the &#39;kernel-lab&#39; to share it now. Because I was last working on =
this for Yocto Project Summit 2021.11, the current qemux86 base is on &#39;=
honister&#39; (although I am upgrading it to honister-3.4.4 tag).<div><br><=
/div><div>Please realize there is a lot of history to this material and som=
e of it was done by folks that have left this mortal coil and some respect =
for that posterity is included in this work. We can change and morph in the=
 future, once it has been captured close to what it is here.<br><div><br></=
div><div>I also have a separate=C2=A0workflow going for the Yocto Project S=
ummit 2022.05 which is in Google Slides and is qemuarm64 based (&#39;kirkst=
one&#39;). Eventually I will find the time to update the kernel-lab manual =
to follow suit, but our collective discussion may impact that.</div><div><b=
r></div><div><div>You can take a look at YP Summit 2021.11 to see a preview=
 of what is coming for YP Summit 2022.05 (once I figure out the pesky print=
k/pr_info issue):</div><div><a href=3D"https://elinux.org/images/b/be/Yps20=
21.11-handson-kernel.pdf">https://elinux.org/images/b/be/Yps2021.11-handson=
-kernel.pdf</a></div></div><div><br></div><div>Current working branch of ke=
rnel-lab manual:<br><a href=3D"https://github.com/moto-timo/yocto-docs/tree=
/timo/honister/kernel-lab">https://github.com/moto-timo/yocto-docs/tree/tim=
o/honister/kernel-lab</a><br></div><div><br></div><div>And the accompanying=
 metadata training materials:</div><div><a href=3D"https://github.com/moto-=
timo/kernel-lab-layers/tree/wip-honister">https://github.com/moto-timo/kern=
el-lab-layers/tree/wip-honister</a><br></div><div><br></div><div>The intent=
 is that for a given release of the docs, we would have exercises for=C2=A0=
 LTS, Stable and Mainline (really this means current-stable, not -dev). Cur=
rently, LTS would be 5.10, Stable would be 5.15 and Mainline would be 5.17.=
</div><div><br></div><div>--Tim</div></div></div>

--00000000000036b20305ded47953--

