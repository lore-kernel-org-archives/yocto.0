Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 434EDE00D13; Tue, 30 Apr 2019 17:43:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15115E00CEE
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2019 17:43:37 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id y6so13832614ior.5
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2019 17:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=cqH52ArwjOyvczGJlM2tTO1e94BiaQLkEO9vJYIws1s=;
	b=nlDnlG7ujsO9bBBXgRMYMYGpk8fIBajCzpNSyyuk8vKpWP2XzGMD+byafqu4B66YKx
	n5/AEecKE0LFov+9Rp7QOfOzZr6TFCq0LKzTmohKYSa6ZqE56W4D1SEeD1buZW14sZPU
	CphuuwyN6QvU77LdbrjZTvM5ZDjOKd0f1qxm1Kvm21nOPTMny5FHaHrC/As6ofHdLcp8
	hnmlBOtAQtBX3y7ZY8xj6NT3yEqlEpBjMJP/XJIoyS+gop9evDlkMGjIrgFcbsRlX9NH
	teQNOgvbKawnsLZxZLt0ZdLODqOV+0YWObYsDeqdj9fkq+txKyuhGa59VjK6TbvxrHCL
	X6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cqH52ArwjOyvczGJlM2tTO1e94BiaQLkEO9vJYIws1s=;
	b=dhVO5qERjElejwhB9aEFp7vrKcKlbPH7oacpWOQNM+eXoP1so1drulGbrTJpDQL+zg
	3D4ZOZB2OOY/LP5CnVPYqndrx/k2eBRYIlsexzLTCVeVpePR5MrfgfAPSBBcgYhdiuKt
	bDJ2FHuXlXLzDusMWqzNENFYPQxOp+a4eXaLfYNGA7E/IIcL/EI2htWR4Pj/AjRk3Aox
	MeSeGuyUIew6U5in44OQBLAvt0nOmmeqlkAS4s6pSZx77yZAM3lMfrQirej/qSLGHWzo
	1ounmIeJkI9kqkcilfgZK3slpjcXdY/osJ4iGST0tZNXk8nDbTjd8imBi2CKI8Hj+7tC
	flTw==
X-Gm-Message-State: APjAAAXj1FhaQQh33/qdpchSTRI8ZDVy2UsP00SDoMUkPsX8LWKqAXv+
	SZ+fF4mBwoXIZ/ahlhEu2gJq/k3SsVXpaEB+J/LLAg==
X-Google-Smtp-Source: APXvYqxKKXOszh8v7z/HLctibj8Nr3MxzFmZTBdLNwBU5xqLD9eG3Z2BIueAqgW6VILG/KeT3QZF3nOAeiDXLOi7/LE=
X-Received: by 2002:a6b:e411:: with SMTP id u17mr3487964iog.57.1556671416982; 
	Tue, 30 Apr 2019 17:43:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP; Tue, 30 Apr 2019 17:43:36
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 1 May 2019 10:43:36 +1000
Message-ID: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Could not find glib.h
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 May 2019 00:43:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I added glib-2.0 to DEPENDS but it still could find the glib.h, what I
could be missing here?

fatal error: glib.h: No such file or directory
|  #include <glib.h>
|           ^~~~~~~~
| compilation terminated.

Thank you.

Kind regards,

- jupiter

