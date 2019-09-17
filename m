Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3621E00D47; Tue, 17 Sep 2019 03:21:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 511A0E00C25
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 03:21:21 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id c195so2411916lfg.9
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 03:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B6+uGoCn7CnkQgQ30BKN9BZwgSCZjGg/0dqzsYMvKRQ=;
	b=XiQR7krW+pv+HOWlCTJNMUorpyFbkAkP4EbduM9LfI9RAEVpSYwkhUJCUU7393moPm
	/9BMal03j2p2B+xrIZ35IaFBMNRWeLysX7UTZfnvJaUsM+Jerozo1+yW9RbXWyoR0gcd
	LPwELdKfaLZ/NwIjo+NAK+KHsxojiaMHbvdbhKQ/hdS2rCEhE5tGlFFd5QlW5odn/YSg
	NuwXtqcjN+NjuZQWifDaNjrHiMnbXfLvstlVSNRNMEwcFU0GVilRhCuzgeSuUG0F08cs
	U9i4qRURmEZAax37Trp/9oWUNqZKg9N+kxtHRE5EZUaUyxVvCQqLKFgJBMZbCgpumDNJ
	Midg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B6+uGoCn7CnkQgQ30BKN9BZwgSCZjGg/0dqzsYMvKRQ=;
	b=l6W/x7p0AKSoBe70Ru8IvbeSemi5p+RHMdVe5Yl9RsACUsu7/27pMgxDArRjNa6Z7r
	fV3C69YlVWOp16cKqwGw/hqHEkm8YVX0F6/2btcGrF11pwdSZbB6rASOOnPLUgV1ET6Y
	k6biOms1qDmx7wNbpdeM5NPaaQm/xnanOHm7Pe5gawTazSKceYDdFksaFDSbGQWWLpKo
	+kxs0bHNIsI7Nak0tqSMrK9MigZd+PLfl+dnOdSSX8P4/ZYxenK+d0mY2V4QWIE/erkt
	ZusZ/PAOyW8qyoTtuQ+1KhDgijfitlTYgZiOThWmDEuAvV6iWiTFCyiS0z2BovKcGeBR
	sVLQ==
X-Gm-Message-State: APjAAAW339ttDq1drhkxa0GB2JZW+q5Q8U8RGsRdedd75XWpJL51LVFs
	iGEttWidXYjvhXf2U4RoUdGN9yAPV1NeQfnUEVBu+LAO
X-Google-Smtp-Source: APXvYqxhMZciEhLcC8kMDKnm8zh1ah2SFO9gFZ+Cxy23pjTAgAt2j362hTb1p2YhY5RcBeSAWCuTfz+R7ulTOs6qBNU=
X-Received: by 2002:ac2:4551:: with SMTP id j17mr1655922lfm.81.1568715680307; 
	Tue, 17 Sep 2019 03:21:20 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Tue, 17 Sep 2019 13:21:08 +0300
Message-ID: <CAAmVmrr-EA1B_-SY06s0OP000QXFDWV36j1EDr_+2om-MhAx7A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Wayland-scanner missing from SDK
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
X-List-Received-Date: Tue, 17 Sep 2019 10:21:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to create SDK for my image created with Yocto's rocko -
branch. It goes fine except wayland-scanner is missing from native
toolchain.

I found this patch and verified those changes are in place:
https://patchwork.openembedded.org/patch/126669/

Still the wayland-scanner is not  appearing to native toolchain side.
The target side it is.

I'm using command 'populate_sdk' to create sdk. How do I get
wayland-scanner to native toolchain side too?

I tested with thud-branch and it has same issue.

Hopefully this comes to correct mailing list.

-Teemu Keskinarkaus

