Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37D4CE00C3D; Tue, 13 Nov 2018 01:30:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EFBE00B77;
	Tue, 13 Nov 2018 01:30:58 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id z16-v6so12464992wrv.2;
	Tue, 13 Nov 2018 01:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bwN3tJfTAuGhTMx3eAE1Kk4XQgatbgy1RF8nif9TpCc=;
	b=eLB9CXmYTC5ATM3goY+Te6RR/6Ni31ha3H1KyZUKXALlUS1b0vsn3dl+OkAcFAF7Le
	ccgMSLKO4cj+a2h9XmtnIU6xFGLaNpL8KOt7m2NBxbX128OtBo8CQcYiEdQ52/J+KS+H
	i9FzGX4wiXj/e523mzQpvXogsF1jOs9r99CEeqwqjDvYn7M3itfDUFkiuH7gmgTg/ACn
	Xy2WHb9R6CVsfFFcgKOA8p/1wzxIT3VIgnOKey/XG3pdUfstOK0MZLOO5WS/dxm+Rxj6
	9nnH0tEDGuzBCi61sVq6L2HY7ppMf3tBPT8odmqt/QcZxNiylvNGV0rYse7PrxdjgLLJ
	+Giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bwN3tJfTAuGhTMx3eAE1Kk4XQgatbgy1RF8nif9TpCc=;
	b=d8DO1o69yaqVzRxDt9PHephbVmwyvaqlxbQTLwyZOHnbLmica9giGaOXZJjtc+QLu2
	z+Q+lFtQGlupCV0tMh2v2EnhVVqGhf5VuSoqPJMB2C+oyUCD5lNuZC2fSKOyIzQTcdrO
	ONYht1m2kInLrPoJa5KGfKIoYo5RFTZPefh/7H0IY0OtthkqfepbT/no0GJadySlYb4X
	k0LGvu8VtA+4Q1AyaQZVTC4cmBNxyR1+WTKuWvos7FMfBcaXnEx3s2FmAXNtsVVJ/bS7
	sjYtP8Z9gJX3sQe9em26nhxylSL4Z6PMoUopz/LiSA5qs1PAzBzBrcOSEjci0jMwKJGi
	BFWQ==
X-Gm-Message-State: AGRZ1gIYcN4D5Cir0ZitrVsIUCqML/1TzuMZcSCZXZgf1Dcr9z05BH0S
	P0TPMPmHc1MqYSULxBDTaSVgEP8lMXsSKj5eCgUlu/rL
X-Google-Smtp-Source: AJdET5dAXy9w4/IU9RmAt7tHjYPnrMADj/vdkEdbVChv1O8RQd0Y1sBzZp3GUga3PRhofyAry+jzEpr5D1SXSluiMlQ=
X-Received: by 2002:adf:8b0a:: with SMTP id
	n10-v6mr3984166wra.282.1542101456995; 
	Tue, 13 Nov 2018 01:30:56 -0800 (PST)
MIME-Version: 1.0
From: Knoppix <theknoppix@gmail.com>
Date: Tue, 13 Nov 2018 12:30:45 +0300
Message-ID: <CAD9sEJtuq21Y6-auquC+AW8a92TDYXxLw6W340NT3ef=khxwZA@mail.gmail.com>
To: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: fb: switching to inteldrmfb from efi vga
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
X-List-Received-Date: Tue, 13 Nov 2018 09:30:59 -0000
Content-Type: text/plain; charset="UTF-8"

yocto and meta-intel: 2.5.1/sumo
kernel=linux-yocto-4.15.18
machine=intel-corei7-64
distro=poky

the problem is:
when I boot the system it comes to this message and frozees: " fb:
switching to amdgpudrmfb from efi vga"

I searched a lot, there is a workaround to solve problem (add
nomodeset to grub params) but when i set this splash screen doesn't
work. (also someone on stackoverflow says when you do nomodeset you
cannot use graphical acceleration.)

There are a lot of old messages about this spesific problem which they
say "it is solved in new version of kernel" or "a new intel drm-fix
will solve" but I came accros the problem now.

Would you please advice me any tutorial to learn what's going on?

(Excuse me for my english, I am not native)

