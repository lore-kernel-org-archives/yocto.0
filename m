Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA84CE0098A; Sun,  5 Mar 2017 07:59:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81322E0097C
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 07:59:55 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id d188so2696678vka.0
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 07:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=KxoYazK4pNrqNXLsbKv9uW+h47BqlM3np/uBkfJjDYA=;
	b=n3J/ll1uiyuzbIkaiObQaMNh+zAPHNAD9J9g1KNv9CDiNhgxmaYEcjdbUYEgMi2eNj
	WoxoTCcmr9axWkOgZma2G/gM2fKmcjF4Skk2KfSavlLhS39uyPL3AiAFyLFpsV9hQqUy
	s9ihdHBF7xIsfbgpS9lfKwYNcpxP/HzDydRMZ361y8zuaIvE66llWnE4+igV+PHOtV5m
	8jo+yIb3V5DFTEltxn9FACETqdl/PU8ycekl7782lofSfyQgdAtmXLhQmOzi3HzkEB4a
	Ynmk+p1zMRsteWkBvehnhabNfMOxZFbjIK8Eq9BBXICh6pJ1R4DJPPjFat4H5bozFeKx
	bndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=KxoYazK4pNrqNXLsbKv9uW+h47BqlM3np/uBkfJjDYA=;
	b=QJJm5K7HqNZr/rReccK7xPATws8uNEitQuTgb8rtayPaS5GXRhKiV20qu+txjIGKAh
	5g8OY94fOzJhxXVXJLGoLBNioduyXAqpgpXfVK2XyHWFiNyo2leqUL0Fw5n6bp7ouXnS
	IpnaPHJ3on4ysa4ont3cdnXxx5AF6oE6V1djIWpxbiYlM6ZWnM0Miimmi+H1faWfftK8
	PwRT4kDM22knWraRJF9CmgCPBSO1mDL/XVpwWN67IYWkZx82FE2bapley4PO4R3BmAqs
	smkKsaXO/XisI2wbcwXn41fKJoaITCXwcZX3F271J5ZuvTG2VF+kHyccqssiWtDNS/7n
	BU1A==
X-Gm-Message-State: AMke39lY8/6Z9N8ZUvKQAh33eMuHRfrj+hTiirSWeQyBvsqzmxXCaPH5s2Vjv55xI/61v/PyW8qwUBHXRXFKlg==
X-Received: by 10.31.114.79 with SMTP id n76mr5023415vkc.53.1488729594921;
	Sun, 05 Mar 2017 07:59:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sun, 5 Mar 2017 07:59:54 -0800 (PST)
In-Reply-To: <20170303065454.27692-1-twoerner@gmail.com>
References: <20170303065454.27692-1-twoerner@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 5 Mar 2017 10:59:54 -0500
Message-ID: <CAHUNapSbA-5eq7fEcE3eO=WB0V79rJ8V8bH7Btics9f67aiddg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v5 0/1] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Sun, 05 Mar 2017 15:59:59 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 1:54 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> Here is my v5 of this patch, based on feedback from earlier reviews.

I've added this to master as it appears the features which were
requested have been met.

