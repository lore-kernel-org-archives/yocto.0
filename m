Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0F24E00B5A; Wed, 13 Jan 2016 09:38:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A4D3E008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:38:33 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id f206so304158794wmf.0
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=LEb4sFV1KzzO56DTtqILA+OePIYGkEqcDA8gmvSx6j8=;
	b=LzVl8jP7qDU4vTQyairNTdLWQ1FehXP4oNwH2yE0a0WMV/hrP9Yx7xNIURhIPtBEJc
	dK+C5V9BxTvGITyT0rCV+BicH6Py3GHLJMn+1dlfabfUKRDiUQccvdNovEJFmVL4LoKa
	H0d3wxjdQ3bQ7KpSiZZqvLJoR2jT1af1F1qoVpdnuFbkkT/+LvyR38Lk5U+OoQi4uxpM
	GSf0BiOCOzU9nzaFAFgeiou8rUbqaUEG8dv/LprDvQPFpSm3UxcSu1TnDFj+gCC6lthy
	owihyrJVSlDUAfg9XsNeivUGETqpT3sA4ioAIAcwsGozEV6iG3MHU6uvASnwNsFPKMNZ
	HwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=LEb4sFV1KzzO56DTtqILA+OePIYGkEqcDA8gmvSx6j8=;
	b=S1NjeS2mRE9We96P8NesbOwntNZdN/k41PBoC+z0LrYvdh81cS0Pf2ZkcGTTWaqXfb
	i7KMXfwB4opEXmjnGyTMik/mNI2QIumMH1JpZZd6KciMFOJybK7DaPK/S1JaMXWGbG6J
	HkP964K/peX/OliBELYzP14q/GTmT7ndVyJs3lTVv41OeXMFSi5/lFfReddZFKuvi64n
	e+aNM+TEKr955LjuUjpR0ZbgJFFnEWIm0sM3dWc02c1b2U0cgU0lFSVbS/WmIWv66/BJ
	3dcEJVkDe8KkzpWFkW9EhS0fAZWhzn5Ua2bT9w/A8dCwR8vemc3jTfA1uLsl6VN3DUvY
	7z/Q==
X-Gm-Message-State: ALoCoQkXPeAuWjVJnm5iiWY/OCPiecnn8cdWXEdoel+JXRX6/5ZjxkuKfVwwF/GvGL7oNhvQSKi9MLI9R8ruWky9TsRUdmuZEA==
X-Received: by 10.28.22.201 with SMTP id 192mr112213wmw.1.1452706712860; Wed,
	13 Jan 2016 09:38:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.53.2 with HTTP; Wed, 13 Jan 2016 09:38:13 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 13 Jan 2016 12:38:13 -0500
Message-ID: <CANge7vWKrbyw33P4TTvU5fGCZ8ST+mK3y=sV907Be1Gmi4R8Zg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Upstream U-Boot fetch failure (Jethro)
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
X-List-Received-Date: Wed, 13 Jan 2016 17:38:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

When fetching from upstream U-Boot, I am encountering an initial fetch
failure that "breaks" the current build.  After this initial failure,
successive executions of the recipe allows it to continue.
The minimal recipe for me to reproduce this is a simple two liner.

u-boot_2016.01.bb:
-------------------------------
require recipes-bsp/u-boot/u-boot.inc
SRCREV = "fa85e826c16b9ce1ad302a57e9c4b24db0d8b930"

It appears do_fetch() fails at the following command:

git -c core.fsyncobjectfiles=0 branch --contains
fa85e826c16b9ce1ad302a57e9c4b24db0d8b930 --list master 2>/dev/null |
wc -l

Manually diving into the associated work directory, I find the git/
directory exists, but is completely empty.

If I instead use bitbake -c devshell virtual/bootloader, I see that an
additional do_unpack() step is first executed, resulting in the work
dir's git/ directory being populated and allowing the aforementioned
command to properly output a "1" as expected by the fetcher. At this
point successive attempts to build the recipe succeed.

Would someone mind letting me know if this can be reproduced, and
whether they can make heads or tails of this?


Thanks,
Jon

