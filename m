Return-Path: <tsoos99@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 080E9D637B2
	for <webhook@archiver.kernel.org>; Wed, 13 Nov 2024 20:09:14 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.21091.1731528546337233385
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Nov 2024 12:09:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jbFMZXCe;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: tsoos99@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c96b2a10e1so11039745a12.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 Nov 2024 12:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731528544; x=1732133344; darn=lists.yoctoproject.org;
        h=to:date:message-id:subject:mime-version:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BSMSKkB3u6lEVDbib2SQZOwHERhLN5Wj94M6Vqr3o7M=;
        b=jbFMZXCeeSDjhnrPW/RGUpk9N4M65NTZ9XlMDVJyRQhAAyELdSflTYu0/pbVDzRGuz
         uqUxFMkDK5xCU1AmmsoFeq11FAqO88GE7SjmE8neC9ZtqZ10uXhW7XP+lQy9WBOxD0Xu
         Xn8ImaBG+D2QZZU0jpMW7tHJIZIICvKffvTOWiiTxTueito7ms6t2tDI9PQYgobd+0tO
         DyMxk1jBNyZfyGeKGQ2RcNK3zJLcbf6b1HsdHchdYoD+BDVL+iLknxZUfMuNcjjZx4VM
         bTHrl/YWNXDduDyONxQ27Za8WaK3hEKvaaSs9HGtw4a2ptJKN/dh9jZzlyiKTHyne3RH
         wL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731528544; x=1732133344;
        h=to:date:message-id:subject:mime-version:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BSMSKkB3u6lEVDbib2SQZOwHERhLN5Wj94M6Vqr3o7M=;
        b=X8yclBkrix091h6SDi+ahthwx4i1agaXc//beBokEuzDc8CCd7jaKxkEHJUDvKELLn
         10Ha30tBjGe6XFdqiPok+1q169tKi4gR21oY+FJXEsz9n9IWVdmLWOwv7REuLZYHw2rk
         0KUIDpPS8Rc50OcOPlbc+HdCOlkALMPoW/qq+yn8BZ9BQOTBxFBN6z7OKVLsW8QLGhtS
         8ZrKsw9+DFhWWbZZ7Npgf42k9V++CnnjKDTM05SvSVuhmWJ3qI3XXqgGdj4B+UhPB5Z6
         A+7tkLz/ToetCAWPEpazc9lEGLwM2Zr/rVaGd1svm1A6Xojx213rHwErTUZ5GRV4ltVs
         rc0g==
X-Gm-Message-State: AOJu0YyDItDw8R3U8JPjDoxAZW7R7s4ongfaAywDU7reVbTzN7Pbu5IR
	IVAnI0VUGWUEOh1mtIBLAR6gJCyCwZugiLejALjR3dvmRO3liszCDvmG9Q==
X-Google-Smtp-Source: AGHT+IGt3LoGcMJJGvRpw74o2hzkQZeQEvAc5fjKJh5XSR5WjPsV+LcsvC41itOXBLir8SkPwglo4Q==
X-Received: by 2002:a05:6402:2692:b0:5c8:9f81:43e4 with SMTP id 4fb4d7f45d1cf-5cf0a2faeb2mr18996169a12.7.1731528543382;
        Wed, 13 Nov 2024 12:09:03 -0800 (PST)
Received: from smtpclient.apple ([89.223.204.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf1d2cf5c5sm5280672a12.31.2024.11.13.12.09.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2024 12:09:02 -0800 (PST)
From: =?utf-8?B?VGFtw6FzIFNvw7Nz?= <tsoos99@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_507434EE-6A67-4554-843D-CA87B9572B92"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.200.121\))
Subject: Kernel name is too long #poky #kirkstone
Message-Id: <4F24401C-C73B-4F23-94BA-8FEF15D514CA@gmail.com>
Date: Wed, 13 Nov 2024 21:08:51 +0100
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3826.200.121)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Nov 2024 20:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64272


--Apple-Mail=_507434EE-6A67-4554-843D-CA87B9572B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

I=E2=80=99m trying to build an image for a custom board. The build works =
fine with kirkstone-4.0.16, but it fails on 4.0.17. Here=E2=80=99s the =
output from the kernel recipe:

|   HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
| =
"5.15.82-bsp-yocto-ampliphy-am335x-pd23.1.0-bsp-yocto-ampliphy-am335x-pd23=
.1.0" exceeds 64 characters
| make: *** =
[/home/tamas/poky/build/tmp/work-shared/phyboard-regor-am335x-1/kernel-sou=
rce/Makefile:1308: include/generated/utsrelease.h] Error 1
| make: *** Waiting for unfinished jobs=E2=80=A6.

I saw the following fixes in the release notes that could be relevant:
    =E2=80=A2 kernel.bbclass: introduce KERNEL_LOCALVERSION
    =E2=80=A2 kernel: fix localversion in v6.3+
    =E2=80=A2 kernel: make LOCALVERSION consistent between recipes

I checked the config with menuconfig and saw the local version was set =
to =E2=80=9C-bsp-yocto-ampliphy-am335x-pd23.1.0=E2=80=9D.
On 4.0.16 it is also set to the same thing. This is a custom kernel =
recipe that inherits kernel and kconfig.

This is as far as I=E2=80=99ve gotten. I couldn=E2=80=99t figure out how =
this local version is set. I tried searching for it, but I found nothing =
suspicious.=20
I also tried manually specifying KERNEL_LOCALVERSION in the kernel =
recipe, but nothing changed.=20

How could I figure out what is wrong with the custom kernel recipe?

--Apple-Mail=_507434EE-6A67-4554-843D-CA87B9572B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;">Hi,<div><br></div><div>I=E2=80=99m trying to build =
an image for a custom board. The build works fine with kirkstone-4.0.16, =
but it fails on 4.0.17. Here=E2=80=99s the output from the kernel =
recipe:</div><div><br></div><div><div>| &nbsp; HOSTCC =
&nbsp;scripts/dtc/libfdt/fdt_empty_tree.o</div><div>| =
"5.15.82-bsp-yocto-ampliphy-am335x-pd23.1.0-bsp-yocto-ampliphy-am335x-pd23=
.1.0" exceeds 64 characters</div><div>| make: *** =
[/home/tamas/poky/build/tmp/work-shared/phyboard-regor-am335x-1/kernel-sou=
rce/Makefile:1308: include/generated/utsrelease.h] Error 1</div><div>| =
make: *** Waiting for unfinished jobs=E2=80=A6.</div></div><div><br></div>=
I saw the following fixes in the release notes that could be =
relevant:<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">  =
  </span>=E2=80=A2 kernel.bbclass: introduce =
KERNEL_LOCALVERSION</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">    </span>=E2=80=A2 kernel: fix localversion =
in v6.3+</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">    </span>=E2=80=A2 kernel: make LOCALVERSION =
consistent between recipes</div><div><br></div><div>I checked the config =
with menuconfig and saw the local version was set to =
=E2=80=9C-bsp-yocto-ampliphy-am335x-pd23.1.0=E2=80=9D.</div><div>On =
4.0.16 it is also set to the same thing. This is a custom kernel recipe =
that inherits <i>kernel</i> and =
k<i>config.</i></div><div><br></div><div>This is as far as I=E2=80=99ve =
gotten. I couldn=E2=80=99t figure out how this local version is set. I =
tried searching for it, but I found nothing =
suspicious.&nbsp;</div><div>I also tried manually specifying =
KERNEL_LOCALVERSION in the kernel recipe, but nothing =
changed.&nbsp;</div><div><br></div><div>How could I figure out what is =
wrong with the custom kernel recipe?</div><div></div></body></html>=

--Apple-Mail=_507434EE-6A67-4554-843D-CA87B9572B92--

