Return-Path: <pcjegan@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46539E00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:09:50 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so1458093wib.11
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=8ILrDFUNTc8qjYnQ3nUjnQ/BIPwigr2vKPoUryywoAI=;
	b=M+DcS3+tjKthZLCnJ6pE+g9HB8L1/Q6XI6PpX87pwl/OEqLqdrMjFNk+JlQQO5uqQd
	j7BuF+l1tSX4RMSXe/gCPlUPQkrmhZr3CE3FpaWQ5GS+/toc3t5EQ4EBKuV+u9vAALIn
	FZJhFnBHK8I/jIBuE5kCjY6k61mFUsbLIxnaLT+X4AXkhlEdrJv/kYgmfw3CISilPR/M
	1Sqcf7Bz+JJZ4xCgehaatbyGuJ8rft64xSrR4qwbenTp4dQzgjkslVMfizTdXkUnZusG
	zQDWEQn/ATJLaT7J5xFli09VNJrgTIIL5G3JoV6yMDRIdhs5XBM2cuPCjuy2iAVKAv9W
	OjIQ==
Received: by 10.216.137.163 with SMTP id y35mr794550wei.33.1334214589052; Thu,
	12 Apr 2012 00:09:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.185.195 with HTTP; Thu, 12 Apr 2012 00:09:28 -0700 (PDT)
From: Jegan Chandru <pcjegan@gmail.com>
Date: Thu, 12 Apr 2012 12:39:28 +0530
Message-ID: <CAAA4K6KJ461GgvDLiPQA5Ynym+u4gf+d2beneNgSetPPpd8eXw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: How to remove a particular package or packages
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
X-List-Received-Date: Thu, 12 Apr 2012 07:09:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

Tomas,

> The basic package selection in the Poky/Yocto images is done on basis of
> the DISTRO_FEATURES variable, so you need to set this somewhere suitable
> to only include the components you need (iirc, the default package
> selection is quite rich).

Thanks for pointing this out. I am using this variable in my custom
image file now.
I think i will get desired output with this.
The need comes here that some of the packages are never gonna be used
and explicitly asked to remove those.

> Other than that, bitbake -g <package> generates .dot files that show
> package dependencies, so you can work out why particular package is
> being included.

It is helpful.

Thanks,
-JC

