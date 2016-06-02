Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56451E00BDE; Wed,  1 Jun 2016 19:48:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E199E00B9F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 19:48:40 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id b124so25262732pfb.0
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 19:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=lIAUXVSKUeHfji/hvWdx8Qi0O0RpoyHXPkyzfzf5VDE=;
	b=C4eIPbPXI5Wt4NxA2fXa6e2tnNmKg7B2elPXfsb/vPQ8VD1zighGl5cuIislonWCY8
	5Zd8mXf2PsI2OUE2ss0BQc8J/+3rFHNyiujZLy9QboTwjff8BYtThwz54Hfhw/XRpGGo
	DD+8TS9DUvduw2NW6WTvLp/yZW0wkr4wWKl6z2XdUiWT03bMsiMGnPpBDC+QZ8hKkLM5
	88gTquImR5Vi9Ii4H4DXGbEXA0ypCT14/CVKvOlekekrfVrnUxIEuAMF3G4R/igKzyyb
	ibtdKO7g+5uDGM5Gk2ofOLc6pd6mX1sPEqA1A9fMdzrF8F0KrRNiHGZlxV7OYB8qlTi9
	UevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=lIAUXVSKUeHfji/hvWdx8Qi0O0RpoyHXPkyzfzf5VDE=;
	b=lb1tVieO3ZGekmXhJlEb/QSSGhM2uVWcquaqR1+Uro/HB5x5YWMbFKHb3QVJU15O0y
	HT24F374kLciRhM6EDrjXyl9tfLIPy6kXU3+LblBxpLxC0Ehk0LBMcT33z/y/OUHzWS5
	XRw0VshcwIqHXoUVJQs1wpbUw3RKX6Bu1m/EFqk7P2EM+KGpkUrw+zp18AmSKWqPVgua
	wctiPP/zYtfjM3XrrPDbUBQMYGbBPg4q76GwM0DryeaDtQ0N6tvBrUdgDZjEcWlHdY3l
	Nxk8fCnakVuyeQ6d2uhol5yoYlFKTu3JPUQB9Yxb49AvDcifrSYUGB9UiRyuxvPYU2tW
	S6uw==
X-Gm-Message-State: ALyK8tIkgG59OqGATbEo4B8lnWBN5Xx+HpZp5SDIbKTNgLuwMKKCKAtXm4/s+Rn5HAxPBA==
X-Received: by 10.98.64.21 with SMTP id n21mr60064pfa.161.1464835720170;
	Wed, 01 Jun 2016 19:48:40 -0700 (PDT)
Received: from [192.168.1.6] ([192.77.237.64])
	by smtp.gmail.com with ESMTPSA id
	o87sm51070647pfa.75.2016.06.01.19.48.39 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Jun 2016 19:48:39 -0700 (PDT)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
Message-ID: <574F9E80.3000107@mender.io>
Date: Wed, 1 Jun 2016 19:48:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: poky master issue with kernel and gcc version
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
X-List-Received-Date: Thu, 02 Jun 2016 02:48:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am trying to build a vexpress-qemu machine targe from poky's master 
branch, but I get this error compiling the kernel:

| 
/home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/compiler-gcc.h:121:30: 
fatal error: linux/compiler-gcc6.h: No such file or directory

Apparently it is picking gcc 6.1 and kernel 4.1.24, which do not play 
well together.

The best approach is probably to use kernel 4.2 or newer. Is there a bug 
filed for this? I would think this is affecting quite a lot of people as 
I am not doing any special configuration for my build.

Thank you.

-- 

Eystein Stenberg
Mender.io

