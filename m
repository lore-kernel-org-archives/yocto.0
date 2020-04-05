Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.12386.1586060320826032839
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 21:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=hkqB7ttL;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55209E0195A; Sat,  4 Apr 2020 21:18:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0E53E01958
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2020 21:18:38 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id a49so11763748otc.11
        for <yocto@yoctoproject.org>; Sat, 04 Apr 2020 21:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=JZE0jDfaOxxGP/nLlg208DLRgFZDczgTHH18mikLOFQ=;
        b=hkqB7ttLwTcofdBRrUH0y7OArMgAOKrW/EsQVkk8OcB/jTcdY3IGS/yAjK9/K+RR0E
         g6ECyB+BEhRsvCGSotaNibVpENVGig3G66jDvEPtH3KBM7BME+i0LHFvpatnGGnnFuBh
         qRAcGnJKBu/hsWNyOLXXjlOFX5O7Fmfqaz7W+fundP8rqj6uZEeE20lpQHs/JuzShGun
         L7FxN5c2RYh57KBafQ4Zzr+yjYcSvTyPktRIaD0g1LG4DDUnFWx/xp6CaWsiFyANFqwZ
         ULdx5CNTRghqWNqrwbmvxyCvfTmxtO1sbKlq7b9NYDSTMTUMLRSGPKjJj6gzibaq/Ohx
         4EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JZE0jDfaOxxGP/nLlg208DLRgFZDczgTHH18mikLOFQ=;
        b=l4K/DGjWsOVckGf+020QDKuaNyspmCldL+7wYxpREg3ZY9Rz9cQbJCo/wtwGYgkG+8
         6/xRGoLgX2bdLk7Wo9Tq4P8qE9CKt5EMzkxh9/bMBo2FZtxhcTC0ddO8uxk0bmDWIfxq
         ZoYmqzRhZWb3+1d8Bu/0jBQuBV5dxxlJXYQ4BHXF4x0jERmtG5ERSDBRTa0i3JxAYD1M
         7GLYYL3Vc1c9WalucI93u5I61AKwTBVx8Vv72X/poUTipr+wTh4Qy9600wjHGAhYNdBb
         Olecfz/JCLCHWPdXyUfHpCknkcemHDOBwuS1inhInWhCZfZkIPGvQ/pNhnc9iA2fy7M9
         j6Aw==
X-Gm-Message-State: AGi0PuZWJBpAIY4EgkFY8CLOJMGKs2ZwdED3p1colRH+TbcGGbPHKQiB
	1GoKLG60v/M/lDhHmMftCZndL2+1VyctrZb4zd1u5ZoG/eHYww==
X-Google-Smtp-Source: APiQypIXQ83Q4QwtOIzqW6r1MMF7UYyQvGqoKPg7wDtED9WOEh1ZJiko1s7IBvKg1Vi7oQazTkf8RTUY55qqEgex44o=
X-Received: by 2002:a05:6830:1f39:: with SMTP id e25mr12925784oth.135.1586060317840;
 Sat, 04 Apr 2020 21:18:37 -0700 (PDT)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Sun, 5 Apr 2020 00:18:27 -0400
Message-ID: <CAFSZm+iY_fr9FufiS+TwaDs-CKnvwKtfVm7KjxCMJ6d2UsyGPA@mail.gmail.com>
Subject: wic files with multiple rootfs source plugins and rm_work enabled
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d668c605a2837136"

--000000000000d668c605a2837136
Content-Type: text/plain; charset="UTF-8"

I'm trying to create a multi-partition image, and just ran across a
difficult to track-down issue that I'm a little curious about.

It's the intersection of rm_work, and needing to get to the sysroot of
another image recipe. RM_WORK_EXCLUDE_ITEMS is respected insomuch as I have
an empty directory named "rootfs" that remains in
tmp/work/.../secondary-image/rootfs

However, a task in rm_work named "rm_work_rootfs" has a "cleandirs" flag
set on the rootfs directory. This seems redundant and confusing to me. Why
does the rootfs directory need special handling?

It took me quite a bit to track down how this works. Is this the correct
way to do this?

It actually seems to be that the source plugin should be smart enough to
populate the sysroot of images as needed, rather than needing to prevent
cleaning them.

Thanks,
Aaron

My recipes contain:

primary-image.bb:
WKS_FILE = "dev.wks"
DEPENDS += "secondary-image"


secondary-image.bb:
# The following doesn't work, the rootfs directory will be empty
RM_WORK_EXCLUDE_ITEMS += "rootfs"
# The following is needed...
rm_work_rootfs[cleandirs] = ""


dev.wks:
part / --source rootfs --fstype=ext4 --label platform --align 1024
--use-uuid
part /usr/local --source rootfs --rootfs-dir=secondary-image --size 4096
--fstype=ext4 --use-uuid

--000000000000d668c605a2837136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to create a multi-partition image, and just=
 ran across a difficult to track-down issue that I&#39;m a little curious a=
bout.<div><br></div><div>It&#39;s the intersection of rm_work, and needing =
to get to the sysroot of another image recipe. RM_WORK_EXCLUDE_ITEMS is res=
pected insomuch as I have an empty directory named &quot;rootfs&quot; that =
remains in tmp/work/.../secondary-image/rootfs</div><div><br></div><div>How=
ever, a task in rm_work named &quot;rm_work_rootfs&quot; has a &quot;cleand=
irs&quot; flag set on the rootfs directory. This seems redundant and confus=
ing to me. Why does the rootfs directory need special handling?</div><div><=
br></div><div>It took me quite a bit to track down how this works. Is this =
the correct way to do this?</div><div><br></div><div>It actually seems to b=
e that the source plugin should be smart enough to populate the sysroot of =
images as needed, rather than needing to prevent cleaning them.</div><div><=
br></div><div>Thanks,</div><div>Aaron</div><div><br></div><div>My recipes c=
ontain:</div><div><br></div><div><a href=3D"http://primary-image.bb">primar=
y-image.bb</a>:</div><div>WKS_FILE =3D &quot;dev.wks&quot;<br>DEPENDS +=3D =
&quot;secondary-image&quot;</div><div><br></div><div><br></div><div><a href=
=3D"http://secondary-image.bb">secondary-image.bb</a>:</div><div># The foll=
owing doesn&#39;t work, the rootfs directory will be empty</div><div>RM_WOR=
K_EXCLUDE_ITEMS +=3D &quot;rootfs&quot;<br></div><div># The following is ne=
eded...</div><div>rm_work_rootfs[cleandirs] =3D &quot;&quot;</div><div><br>=
</div><div><br></div><div>dev.wks:</div><div>part / --source rootfs --fstyp=
e=3Dext4 --label platform --align 1024 --use-uuid<br></div><div>part /usr/l=
ocal --source rootfs --rootfs-dir=3Dsecondary-image --size 4096 --fstype=3D=
ext4 --use-uuid<br><br></div></div>

--000000000000d668c605a2837136--
