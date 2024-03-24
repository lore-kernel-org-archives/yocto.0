Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33B5DCD11BF
	for <webhook@archiver.kernel.org>; Sun, 24 Mar 2024 01:23:02 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.21537.1711243379052891445
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Mar 2024 18:22:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TDhjdyqC;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-609ed7ca444so33329557b3.1
        for <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 18:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711243378; x=1711848178; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xQX/Zq8KDQWmgQ1gXc+CbhG9rlJe+b3bnGAXC5nbz4s=;
        b=TDhjdyqCNSPW1muNeO3oVzgCkeixDEKwBtluCf8T3waZUOqrhhB4cfvfi/6l3Uhaud
         OHDEfIpzK3lCyTYwsdA7KeggXPhHa1XltYhh+7bBCRw8AUZqTg+ASJ4npQs6WEhdgQln
         A1VOrdA9BY5R0qaBmfJg5ocIz8wk1gAR6Z8Gjtr0GbvOXD4dYPguOJ5a5H80l5yx0IWt
         4J9kWBOTmRvcPBvH8fK5LKMkM9kU4aLnegLQddBXVoVnh103V3K55xCS9pHs6llrQpQc
         gmuw4bBfX0Sr9Wb+I0pUHSYnA8ngJUNxTxKCXu8PNNHe24HlTSFLeVOJJQCLv9ag+Dwe
         CHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711243378; x=1711848178;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQX/Zq8KDQWmgQ1gXc+CbhG9rlJe+b3bnGAXC5nbz4s=;
        b=sYDFzK90qflLbsD1ze0lZlFZZz0vGMx6nVJRgyyfvqoPsbpckwRlJCC23WwCFHfiei
         +y2h1Tk/0Gbe97M41TCmdyiFmDSF/vN6qpM8IyeQ75/1NsjFml22jn3/odYVIV+arXL1
         HH8TrmZVA6/mEbpnnlJRQEpm2EDzRgSL4kcxhwHJjWGMy43HBqgYcxnDWhbWkPfMXjPR
         BHxVYA8xlG6xvxBTW6NhyaIPrSleGarqOnrzp1GmkCQXh05dI7f69VWH3mVIhsnC8Xaw
         +mDAxgqIgG3KTT6HMNq/UCkMRCEM3fRipxxbsFMIPpxmJ69j+bXwYWvjRn6WxXC7Yn2K
         etsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWzxERdXSbuTZ2+5ZkxAo5+wN5V7gGSIS/0B1wwjIPCzI+Iv73Qte55c8i6H11P4Z7JzMZGiOoH9JZ5jsEfJxCy4NqGmP2tUy4ENBc
X-Gm-Message-State: AOJu0Yw/kbSbtlFMp2a/NaQObpIWmaK0Na1PczP7kSPtTJoba2a76sxP
	/H+8gy7VpaJc6nk0wpN6BT7pJ0agg0l9oy/YYEZzzb8MxeAsscB04T+kx21BBf8xmUFyQknk9c7
	We/mSXpk+OogYV6fiGkhBrChxMtG7Vs5f
X-Google-Smtp-Source: AGHT+IGEBzKl0qvid6HGPHQeBG894Jya8MnVHDumJnSBKKzXrU7301l6H3RY/R3Sq493fOQK15exFu+bQV0Z1Nx7LF8=
X-Received: by 2002:a0d:d7cf:0:b0:611:c12:635f with SMTP id
 z198-20020a0dd7cf000000b006110c12635fmr2721353ywd.1.1711243377899; Sat, 23
 Mar 2024 18:22:57 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 23 Mar 2024 18:22:47 -0700
Message-ID: <CANx9H-Bp1_5rkXv0LqsnSgsL8dTYa7MwEM+j83BqXivtQxw00A@mail.gmail.com>
Subject: [meta-java] Call to Action: rebase your old patches and resend
To: "openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aa038e06145de572"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Mar 2024 01:23:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62831

--000000000000aa038e06145de572
Content-Type: text/plain; charset="UTF-8"

Many of you may have sent patches to one or more mailing lists. Please
rebase your patches and resend them (or send as a GitHub pull request, or
less preferred Gitlab merge-request). We have several years worth of
patches and fixes to catch up on and it is not even slightly clear which
patches apply nor to which branches.

If you care strongly about a given stable release, make certain the patch
has been applied to master (assuming it applies) and then highlight the
need for a backport.

Provide as much information as you can (what host distro and version are
you using? what machine target are you building for? etc.) and proof it
passes build and runtime testing and reproducer for the issue you are
trying to fix. If you send patches that do not apply to master, they will
be rejected (unless they are particularly applicable to a stable branch for
some reason). If your patches fail basic parsing, building and run-time
testing, they will be rejected. Do not waste our time with poor quality
patches. Thank you.

Cheers.

--Tim

--000000000000aa038e06145de572
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Many of you may have sent patches to one or more mailing l=
ists. Please rebase your patches and resend them (or send as a GitHub pull =
request, or less preferred Gitlab merge-request). We have several years wor=
th of patches and fixes to catch up on and it is not even slightly clear wh=
ich patches apply nor to which branches.<div><br></div><div>If you care str=
ongly about a given stable release, make certain the patch has been applied=
 to master (assuming it applies) and then highlight the need for a backport=
.</div><div><br></div><div>Provide as much information as you can (what hos=
t distro and version are you using? what machine target are you building fo=
r? etc.) and proof it passes build and runtime testing and reproducer for t=
he issue you are trying to fix. If you send patches that do not apply to ma=
ster, they will be rejected (unless they are particularly applicable to a s=
table branch for some reason). If your patches fail basic parsing, building=
 and run-time testing, they will be rejected. Do not waste our time with po=
or quality patches. Thank you.</div><div><br></div><div>Cheers.</div><div><=
br></div><div>--Tim</div></div>

--000000000000aa038e06145de572--

