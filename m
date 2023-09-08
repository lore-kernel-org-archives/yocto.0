Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B88AEE57E6
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 08:47:54 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.34886.1694162868879286520
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 01:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=fBCszQN7;
 spf=softfail (domain: sidebranch.com, ip: 209.85.214.177, mailfrom: leon@sidebranch.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1bf55a81eeaso13998725ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 01:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1694162867; x=1694767667; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hAC065+/DNmGkecGx4ua5OziylM7j0plEbLtTssP85w=;
        b=fBCszQN7vpxA4mWuNPc3Vu9TtN/VakR7KpM1cuAFL5Rp892u7SvaSwxlg+JPJOhbSz
         4qNhh70BnMvlHXunUA4mNPENmy1ZA3sR7p/AorNJ5Xv44F0gmHfUrfPsvoP0C2MDC+LT
         hbkhun/etC8VFdGlTUmP39tTm4YcXOBGuSiu6fDxWkKtKBuWMFfJ7S7T8VVgL9LhKIsh
         kpOmZsFrWdiQDK2e9dVYPlLWm5nCaJjfjYjzFrWZBBrniJU075P3GcpSobtS1vKBrV6O
         +72/XM/hzVvFtDejuzWv5HbAIWty6EtzTcTg6lAaz9uetLZI51/ByykntebdPwiauf65
         1veQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694162867; x=1694767667;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAC065+/DNmGkecGx4ua5OziylM7j0plEbLtTssP85w=;
        b=lWsnRBM54V/sTJrgv9zgH/jhuntcSWLtzVsaWx6yKaL01tZPNgjsu8qE9zAWyIg5OH
         YhkEVGCnFOkZrSfEC8Uk1Gb2QuZcTQaa706ZgLrJLdwLAcPzjwpxIWhUSNqc6VOGqMTR
         k6Xpi4Qy7QxKFrXN6cUgGNeZRZrS8f7U/oD+EeaAKrvrxGnP/XzY0FbUYaDedExaW7Q9
         f0G+iOv9kxvgSchZYA84CnL7YTgvNe+AVOf2U0bjMwY6RYnFzSvcx4neCSg+EjaklnIj
         q35zSOo6lTb+truhIndTNF+4sGKy+AsIuMe5KJpRr+yb0F6Hxa2vDWBxomr1iJjE1xqx
         n5oQ==
X-Gm-Message-State: AOJu0YygP2WQwuNY2mdIhCUEiHYNGT6utRyHEHt053tTJb2IFuBS0rlD
	lIpL5Sk4nf2VJsbDAfyvab2/MB0Iq2byic60kf7yDiqHLPc5ntxDu+2p+A==
X-Google-Smtp-Source: AGHT+IHfWZFDPm8NXPLmLW4fr3j0lZGyKgSEszcCxUnwqB0PriNxCj555LRqXbxCDr7E7WMCgfRZuDyZA18NceiveB4=
X-Received: by 2002:a17:90b:4c84:b0:268:5919:a276 with SMTP id
 my4-20020a17090b4c8400b002685919a276mr1889036pjb.20.1694162867219; Fri, 08
 Sep 2023 01:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org> <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
 <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
 <20230908072034c8e150e6@mail.local> <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
In-Reply-To: <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 8 Sep 2023 10:47:35 +0200
Message-ID: <CAMjhiJgQBHtewbwSPVdfnk65szY6TmfProM5h7G2KBKn2mrrfQ@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Yoann Congal <yoann.congal@smile.fr>, 
	MOHAMMED HASSAN <hassanchattarki@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e489680604d50750"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 08:47:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60950

--000000000000e489680604d50750
Content-Type: text/plain; charset="UTF-8"

> My oldest NVME dedicated for OE builds, bought 2019-11-24
> https://www.gigabyte.com/SSD/AORUS-NVMe-Gen4-SSD-2TB#kf
> with 3600TBW, shows 60% Estimated Remaining Life after around 21K running
hours and started disconnecting under heavy load (not necessary issue
caused by wear) about a year ago and recently became completely unusable
for builds.
>
> 2nd one I bought when the issues started on 2022-05-16 has 8400 hours and
> Data Units Read:                    87,481,897 [44.7 TB]
> Data Units Written:                 210,637,555 [107 TB]
>

For partitions with ext4 filesystems on SSD, I use this so I can see the
TBW cycles of my SSD, on login. It is assuming PART is the most heavily
used work partition. (Of course SMART is the better approach, but not
always available or not always correct.)

I just realized this may need /bin/bash rather than /bin/sh...


$ cat /etc/update-motd.d/01-ssd-health
#!/bin/sh

for PART in nvme0n1p4; do
  # size of partition in kiB
  SIZE=`df -BKB /dev/$PART | grep -e "^/dev/$PART" | awk '{print $2}' | sed
-e 's/[^0-9]//g'`
  # size of partition in kiB
  USED=`df -BKB /dev/$PART | grep -e "^/dev/$PART" | awk '{print $3}' | sed
-e 's/[^0-9]//g'`

  WRITTEN=`cat /sys/fs/ext4/$PART/lifetime_write_kbytes`
  echo "SSD $PART is $(($(($WRITTEN + $SIZE - 1)) / $SIZE)) times written
round. TBW 1200."
done

--000000000000e489680604d50750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>&gt; My oldest NVME dedicated for OE builds, bought 20=
19-11-24<br>&gt; <a href=3D"https://www.gigabyte.com/SSD/AORUS-NVMe-Gen4-SS=
D-2TB#kf">https://www.gigabyte.com/SSD/AORUS-NVMe-Gen4-SSD-2TB#kf</a><br>&g=
t; with 3600TBW, shows 60% Estimated Remaining Life after around 21K runnin=
g hours and started disconnecting under heavy load (not necessary issue cau=
sed by wear) about a year ago and recently became completely unusable for b=
uilds.<br>&gt;<br>&gt; 2nd one I bought when the issues started on 2022-05-=
16 has 8400 hours and<br>&gt; Data Units Read: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A087,481,897 [44.7 TB]<br>&gt; Data =
Units Written: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 210,=
637,555 [107 TB]<br>&gt;<br><br>For partitions with ext4 filesystems on SSD=
, I use this so I can see the TBW cycles of my SSD, on login. It is assumin=
g PART is the most heavily used work partition. (Of course SMART is the bet=
ter approach, but not always available or not always correct.)<div><br></di=
v><div>I just realized this may need /bin/bash rather than /bin/sh...<br><d=
iv><br></div><div><br><div><font face=3D"monospace">$ cat /etc/update-motd.=
d/01-ssd-health<br>#!/bin/sh<br><br>for PART in nvme0n1p4; do<br>=C2=A0 # s=
ize of partition in kiB<br>=C2=A0 SIZE=3D`df -BKB /dev/$PART | grep -e &quo=
t;^/dev/$PART&quot; | awk &#39;{print $2}&#39; | sed -e &#39;s/[^0-9]//g&#3=
9;`<br>=C2=A0 # size of partition in kiB<br>=C2=A0 USED=3D`df -BKB /dev/$PA=
RT | grep -e &quot;^/dev/$PART&quot; | awk &#39;{print $3}&#39; | sed -e &#=
39;s/[^0-9]//g&#39;`<br><br>=C2=A0 WRITTEN=3D`cat /sys/fs/ext4/$PART/lifeti=
me_write_kbytes`<br>=C2=A0 echo &quot;SSD $PART is $(($(($WRITTEN + $SIZE -=
 1)) / $SIZE)) times written round. TBW 1200.&quot;<br>done</font></div></d=
iv></div></div>

--000000000000e489680604d50750--

