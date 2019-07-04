Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B07CBE00D86; Thu,  4 Jul 2019 03:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D62EE00B1B
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:16:07 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id h6so3551179iom.7
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 03:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cnK8vTqI3UIIe/aXsVx4yMNC0S8yec4q+7pbeQMFYVk=;
	b=mkZjDFUL2j/EWO0Isz6Phw8pdmDFw5N56pognrkfCC1G7LgROJDJaUZ/BnEHWopBgh
	0QJnGiFuxN3xGkmVnz3j6P50M8HsZHyxmyBvLSsBPuGPAOLX37l/WhswWGgfWP02cdl1
	jD+5KlRkKcm+qrojAvKjSMiuZa5YanfLQad2NYjaSU2ZAPDeVarrep4OxytRkXAy6sem
	wZl6R9grfiYQ5mNMI2Yi49dhzFaDT+waM5X2H1Md4vg+Dl+buuOSPi8djRoT/eMGnqjN
	EoMrnMwYnrvUi80AL8uGoj9tIURuNNmUzwgV3LGadzMZBXfeC7I2NKf2+TzSWQa6Lq7u
	ZxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cnK8vTqI3UIIe/aXsVx4yMNC0S8yec4q+7pbeQMFYVk=;
	b=UGCCE3fF1hMbeetQyHNbgUpYpnZUaBewuwrS+7J+V++1Zs5Uo/kh1LNLzd76N3lIJV
	w+9QaLbPUoas4vpGg4wUNGXrhAmw6CoSdDMoIoR5jNg1rbsIDnMIuVuwUj7CQhr+KeOL
	mPSN4kNxd2Q7LkwL2FMQcYOmltDJIptWi6BdIabI6lo8imx8544J9+uhpo7Qu+KzTO94
	qtQAFjfzbpNQZVkpfRJ9EucZnXJeMNgTiFGiGSsMvYJ+5umCeCl4lU1EN8ZQq+TWxtLe
	d6QdLMB4YufekY7vN0l0q1pocMJLPHrjl0zmN2sky+TuX1BDGV6icdEU7oRa+qqAURoV
	j4tQ==
X-Gm-Message-State: APjAAAXT4q0AbDRkDjwX6Ve7Xpt6lmKKJShog5H4SsE7sGNs8Lvtloj6
	tDPHsiDryTI7Yv5YkSbljcig2fzKWvxuTaLKbTtOoQ==
X-Google-Smtp-Source: APXvYqwvi1u9YlTdA01oNmbE/Y4NBttcsfPq05IunkiW4UM+qQd6yxCiuVbsD87a3S3TeLU4/DCaCHha8ev1EvnCDso=
X-Received: by 2002:a5e:9747:: with SMTP id h7mr4602490ioq.299.1562235366817; 
	Thu, 04 Jul 2019 03:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
In-Reply-To: <CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jul 2019 11:15:55 +0100
Message-ID: <CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 10:16:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Why Weston protocol? Why not classical X11 Client Server in user
> space? Which DeskTop are U using in Ur YOCTO build?

Weston is arguably superior to X11 in most respects, and for new
platforms which are not tied to a classic X server I entirely
recommend Weston over X.

Ross

