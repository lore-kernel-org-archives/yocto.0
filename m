Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41C7DC3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 13:45:21 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.14823.1720619117462751069
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 06:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UrCX5TpL;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-76cb5b6b3e4so2412654a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 06:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720619116; x=1721223916; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FsMJiplYgj2PEXrApEviHXQUYp51RDYAJE6nh9nuePY=;
        b=UrCX5TpLN47rXMlb6GtQ9GYJUWMwzwqKL4zfWA5ByhoasCNuImELJPiBgYvtS4zaWR
         kxQ1iSQHjhYw6QMDvkeTYPX3TOc+aIX0korcQC/kkTGsGs2D4YvtXJC8l8BdSQjfW8KD
         pRNyJiXxTueaeiHvKV+SXS3pkPydw9oyAdJ+7xsmTFn5daWteGf3kgYZfvEpZBYoAkM1
         IvkFkXb6M8S7pSFR28TUfq9V+AqmUtbcksmJKEyEHSj/9vgplMv+uY6TB6QJPhM5nie0
         7J9k1cbidnN5Oe/9kx6V0TfCr8y2yy4ifaa/b966QS42ec2Q8PelaXZMnUQdqIsSSHLg
         kl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720619116; x=1721223916;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FsMJiplYgj2PEXrApEviHXQUYp51RDYAJE6nh9nuePY=;
        b=h+Ltr1xD7MUD+Dq/ou95CviYw7Px6YTvp81DWx2fzn/VlxNgvm8C7M1EB+IN4edVoq
         La+BTlKPAmLzuzCNNeVmO6ovWYgCLBf9b10h8nRIThiJPe3Nnts2XZNTfC8L7z6K9l3w
         VZ+7vJhnJfLI/T4R6r+bl1pdm7bWPwqVTUr2dWKCbSjvJM+rPn3frfl6LrecreaW79EJ
         Ykb38ZFP7DxpERJBmFiCgXsBijQ+ahh47DkvJOLjQNBBWcBUHWTNZPx1Bakap/hccMrX
         qIyxyquhScywKKWJoBDiLAHEQwjP7suc4TKP7VWeKNUzblmhEgmaFGrOLQF/iHpr05ZZ
         t0fg==
X-Gm-Message-State: AOJu0YyMmI0KBk5bhgrqw22sBEgRmv0pf0KaSocVB0unSVb6uBOBNUST
	x6BqVhGciH1SBFMHPyuDY3IAxgeW7EDI9iJKQUw78dHB1s6XvPIX2sZ39avPj5BOMRhaZQK9ydN
	FQ3E7LK77HOteQwg/3sMcQtCJgwNa3CDIPxk=
X-Google-Smtp-Source: AGHT+IEAJSZ/+HL6Rf4duxkZYI32Z4DU6PPKDjEy/cCpuHPHD18xBYIejgGXv+giplQsuNw1XYh9UNC/YbDVJWs8pQA=
X-Received: by 2002:a05:6a20:3c94:b0:1c3:3436:a23c with SMTP id
 adf61e73a8af0-1c33436aeb7mr2841122637.12.1720619115916; Wed, 10 Jul 2024
 06:45:15 -0700 (PDT)
MIME-Version: 1.0
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Wed, 10 Jul 2024 15:45:04 +0200
Message-ID: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
Subject: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000032b705061ce4db01"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 13:45:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63459

--00000000000032b705061ce4db01
Content-Type: text/plain; charset="UTF-8"

Hi guys,

I've just started upgrading a BSP to scarthgap, as usual when upgrading I
have some failures and I like to make some quick and dirty patches that
help me going forward.

For instance today I wanted to patch linux-vanilla-master from phytec, so
I'm going to the directory with the sources of the kernel in tmp/, made my
patch and add it in a bbapend.

However I'm having :

ERROR: linux-vanilla-master-r0.0 do_patch: QA Issue: *Missing
Upstream-Status in patch*
/sources/poky/../meta-fresh/recipes-kernel/linux/files/0001-use-uart3-as-rs485.patch
Please add according to
https://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html#patch-upstream-status
. [patch-status]
ERROR: linux-vanilla-master-r0.0 do_patch: Fatal QA errors were found,
failing task.
ERROR: Logfile of failure stored in:
build/tmp-ampliphy/work/phygate_tauri_l_imx8mm_2-phytec-linux/linux-vanilla/master/temp/log.do_patch.1883521
ERROR: Task
(sources/poky/../meta-fresh/recipes-kernel/linux/linux-vanilla_master.bb:do_patch)
failed with exit code '1'

So I've followed the link and amended my commit with:

*Upstream-Status: Pending*

I'm not having the issue anymore, but I don't want to do that for all the
patches I'm going to backport, can you explain why and when this error
occurs? And if it's systematic how can I systematically ignore it as I
don't really care about the "Upstream-Status".

Bests,

Yann CARDAILLAC,
--------------------------------------------------------------------------------------------------------------------
Embedded Linux Engineer, Teacher, Trainer
--------------------------------------------------------------------------------------------------------------------
Phone : +33669909858
--------------------------------------------------------------------------------------------------------------------
Linkedin : https://www.linkedin.com/in/yann-c-39b64012b/
Website: https://ycardaillac.fr

--00000000000032b705061ce4db01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi guys,</div><div><br></div><div>I&=
#39;ve just started upgrading a BSP to scarthgap, as usual when upgrading I=
 have some failures and I like to make some quick and dirty patches that he=
lp me going forward.</div><div><br></div><div>For instance today I wanted t=
o patch linux-vanilla-master from phytec, so I&#39;m going to the directory=
 with the sources of the kernel in tmp/, made my patch and add it in a bbap=
end.</div><div><br></div><div>However I&#39;m having :</div><div><br></div>=
<div>ERROR: linux-vanilla-master-r0.0 do_patch: QA Issue: <b>Missing Upstre=
am-Status in patch</b><br>/sources/poky/../meta-fresh/recipes-kernel/linux/=
files/0001-use-uart3-as-rs485.patch<br>Please add according to <a href=3D"h=
ttps://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html#patc=
h-upstream-status">https://docs.yoctoproject.org/contributor-guide/recipe-s=
tyle-guide.html#patch-upstream-status</a> . [patch-status]<br>ERROR: linux-=
vanilla-master-r0.0 do_patch: Fatal QA errors were found, failing task.<br>=
ERROR: Logfile of failure stored in: build/tmp-ampliphy/work/phygate_tauri_=
l_imx8mm_2-phytec-linux/linux-vanilla/master/temp/log.do_patch.1883521<br>E=
RROR: Task (sources/poky/../meta-fresh/recipes-kernel/linux/linux-vanilla_m=
aster.bb:do_patch) failed with exit code &#39;1&#39;</div><div></div><div><=
br></div><div>So I&#39;ve followed the link and amended my commit with:</di=
v><div><br></div><div><b>Upstream-Status: Pending</b><br></div><div><br></d=
iv><div>I&#39;m not having the issue anymore, but I don&#39;t want to do th=
at for all the patches I&#39;m going to backport, can you explain why and w=
hen this error occurs? And if it&#39;s systematic how can I systematically =
ignore it as I don&#39;t really care about the &quot;Upstream-Status&quot;.=
</div><div><br></div><div>Bests,<br></div><div><br></div><div><div dir=3D"l=
tr" class=3D"gmail_signature"><div dir=3D"ltr"><div>Yann CARDAILLAC,<br></d=
iv>------------------------------------------------------------------------=
--------------------------------------------<br>
Embedded Linux Engineer, Teacher, Trainer<br><div>
---------------------------------------------------------------------------=
-----------------------------------------</div><div>Phone : +33669909858</d=
iv><div>-------------------------------------------------------------------=
-------------------------------------------------</div><div>Linkedin :<a hr=
ef=3D"https://www.linkedin.com/in/yann-c-39b64012b/" target=3D"_blank"> htt=
ps://www.linkedin.com/in/yann-c-39b64012b/</a></div><div>Website: <a href=
=3D"https://ycardaillac.fr" target=3D"_blank">https://ycardaillac.fr</a></d=
iv></div></div></div></div></div>

--00000000000032b705061ce4db01--

