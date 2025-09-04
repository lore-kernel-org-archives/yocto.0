Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ACC7CA1015
	for <webhook@archiver.kernel.org>; Thu,  4 Sep 2025 11:49:20 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.36901.1756986553739169670
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Sep 2025 04:49:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DX0f/yRQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: marek.belisko@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45b7d87b90fso7870585e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Sep 2025 04:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756986552; x=1757591352; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BvfWJL0AfebnM7Jf5yS58VUMbrkkhH6vbcclO7fMp80=;
        b=DX0f/yRQqZitXwu3MWGHR1xDlu7tcsPwVUw9lVAYsr5VeDBetadgVMSvclvs8N8C0g
         vDtlFcaQvTXkD9Yk4ER4FbEDNwzVait2P3gG6NbW8JQ142/1F13nLnarjzbeMVGzEONI
         e1G1itUaGEvqYHWXlpx0Fak1Bm6fH20IWRvM5QpscFITsSxiFuvamvy4xSxv6D+LoqiD
         95mQqiYZQ3xqPFFMk9mz54DIeGDhx5kX/c/7yoT7xmnEW8fbZMdrJblsD/K3e5v08TeB
         NdcLOPIDai0U92xtb1j4pozRhESqwEDukRic6u5zMb+pBLTH+WjGYXFRg5bSKF1sbO0z
         ugVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756986552; x=1757591352;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BvfWJL0AfebnM7Jf5yS58VUMbrkkhH6vbcclO7fMp80=;
        b=G2KCO5chwI7c/w3FWoBx6YpH+KwDoGXbgMIpkGlQplAP133ItnhaiGhc7fD+krtbFd
         OPkK3PuSZCCCCHyka5+OFOMpTsdN8VzkqzUmRrVRZ11imACf2do570Be7AAF6StyGGxt
         1F/FEqBzGI7eIPJRiTAwKya5GJ8xICZ1Swh8Tqac19JBeNKhyrzjJwc4IFKLfGsCM+y2
         QDkF6M4bhHoapZh1s8ynh8leKSaLVdRwYyNOCLbA5kEBcvlY/FB2DapizYlkHjd1OUh9
         8KjshTxntdbpPsyAGppIjYGb2sYGg2knamyFcDteIEDYVWdQOZ+9Rv6Yw8WDz8Bttl6x
         sL1w==
X-Gm-Message-State: AOJu0YwVCk6M68JSi4AdX5ZIi1r4+S+tVAmRm/5DP2sH7yRRkWJGDlBw
	5SykXJgzRyki6zyyZLHRPT1t0j5SsI0sK89ToICNYAt4Vq4sFEs0Orq7G+WqDNaJzqjvp8OqXnf
	zOhNzgUNhzWnvNf/Ha16K5LLYK+DcAwfuMQ==
X-Gm-Gg: ASbGncsohcaew5Dp0tp23hWoGyYrNIdCVih936EVmjXUP2cX91XncSzIwzLW2IduaMp
	usOAPubdGwrICtxLfoCiiHO+/4CGN3p9u0qTrvXVN7SQb35906uNpw4IMmvuqvTf1bhb7q7CBrj
	8lsw36EqilRmnAXy0eXBsqgDfGtVtGdIO892vcYGl5XO2y9X5oL9Z6buY9FJyyAlXKWZPdCho4q
	HBHdQXq4cJq7Xxw
X-Google-Smtp-Source: AGHT+IGwBaCvNZUtY6ewP1lCfLWrrqX5C6Zgo7MK+COCD5FiwSB8YmNQc4fDsvMjvDE++Dp994dkAvD8MbKntB0LSew=
X-Received: by 2002:a05:600c:5247:b0:45b:910c:adf with SMTP id
 5b1f17b1804b1-45b910c0ba0mr96050045e9.12.1756986550798; Thu, 04 Sep 2025
 04:49:10 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 4 Sep 2025 13:48:58 +0200
X-Gm-Features: Ac12FXxYZWXq1qBe8o7ooGiTEjhl9dETr9b1JczKPVFQ8wt_yReSyxh5mSkgQjs
Message-ID: <CAAfyv36zLfeAOau+KqBeXJxNxmmNCw5uHTaWRBiUUCQCGjj5HA@mail.gmail.com>
Subject: using cargo from cmake
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003c4f43063df84fcc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Sep 2025 11:49:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65816

--0000000000003c4f43063df84fcc
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to compile UnifySDK using cmake as a build system. But in the
cmakefiles they call explicitly cargo explicitly. I cannot include cargo +
cmake together. Is there some existing package which uses the same
combination or what would be a proper way to handle such a situation.

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000003c4f43063df84fcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br clear=3D"all"></div><div><br></div><div>I&#39;=
m trying to compile UnifySDK using cmake=C2=A0as a build system. But in the=
 cmakefiles they call explicitly=C2=A0cargo explicitly. I cannot include ca=
rgo=C2=A0+ cmake together. Is there some existing package which uses the sa=
me combination or what would be a proper way to handle such a situation.</d=
iv><div><br></div><div>Thanks and BR,</div><div><br></div><div>marek</div><=
div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">as si=
mple and primitive as possible<br>-----------------------------------------=
--------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska=
 Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>s=
kype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nan=
dra.com" target=3D"_blank">http://open-nandra.com</a></div></div>

--0000000000003c4f43063df84fcc--

