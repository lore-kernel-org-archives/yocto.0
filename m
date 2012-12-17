Return-Path: <langabe@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D3DE006B3
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 00:36:35 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id h2so5671722oag.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 00:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=q/fsvnHjeY/GVxGeUIhTMjiVUu0UMERsrxkACU+EcKs=;
	b=DyxaDUPBRm3QkF2UxAk8GMTtAahkzADPsi0i/MlIfknAO/k5d2aNLlOm1e6tIbWbhE
	783sbEig7RwmViSFshg4BZdMyV4elcJaQEwHhrSJKdoYB8IHBuC5yRIVqcjp3cux4/yT
	l88fXedyE6UF7kC07k80Gugiqbc8HAj25Vmh94bEVnlQ0krlqiQVoHKmq3gLi/2C8x0X
	4hwAWshLfXLUhffEgHec2aMj/ojHipntvk1g5a27VjEMR7vghmDAQwjK0fCpNGYrOCCm
	ve7v1K8ebx0LkUded73vrkAK0RcAKsRFvySLmvcqK43+d47ZHesVSByBy38pb9+VtyaY
	8NJg==
Received: by 10.182.21.135 with SMTP id v7mr11048192obe.101.1355733395213;
	Mon, 17 Dec 2012 00:36:35 -0800 (PST)
MIME-Version: 1.0
Sender: langabe@gmail.com
Received: by 10.182.153.4 with HTTP; Mon, 17 Dec 2012 00:36:15 -0800 (PST)
From: Alex Gonzalez <alex@lindusembedded.com>
Date: Mon, 17 Dec 2012 09:36:15 +0100
X-Google-Sender-Auth: eiJHedmJZg_F5idcUls9GWk_fhs
Message-ID: <CANsDNf39kE=R4EhFpVsGQWP1AD1VSFgNWNxw4h1A2_nSuRUkUA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Specifying different make flags for different tasks.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 08:36:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I am using EXTRA_OEMAKE to pass extra flags to make.

How can I pass different flags for different tasks?

In this case I am compiling an external kernel module and I need
different make flags for the do_make_scripts and do_compile tasks. If
I set EXTRA_OEMAKE in the recipe, all tasks use the same make flags.

Thanks,
Alex

