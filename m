Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF729E00790; Wed, 16 Jul 2014 21:34:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80A8EE00777;
	Wed, 16 Jul 2014 21:34:22 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id q107so1597400qgd.28
	for <multiple recipients>; Wed, 16 Jul 2014 21:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=T+MyLCgNqpNQdtkZnNC/STEV38TmhjdAhPQ6q8B6S4A=;
	b=B1W60rpo8njH/eJ/Aay8h69YfHTZrzs/iQ3tXDUDsQaPUZRXhoWFN3rfZldulHs4N6
	cHsAi/ZAGE599qMHQSVLoV+Ij64FZM5n67JB2vsT2rdoxrxTtFIy0xiaEGp2LZ/iVpbQ
	vyjzsXJdcHoWZJXCA5qwENvjlVj7OZS494DWQzLCXDDzE9I7yjRvlLd8eGW5mHBs14Iz
	XFNf9EfqDtVj5S8fUJxhDVj20ccH+YZoYd0dolSaamg7XR2xt700yA/P97H0vQuJ5L0S
	euXq7QhOPPoVIloLl8hVL6emMmS/OS1jby6+Bd/vfBYSBNNAF9Qipa0xp0SJ6ff+L1Wr
	Tr9A==
MIME-Version: 1.0
X-Received: by 10.140.93.44 with SMTP id c41mr20107380qge.106.1405571662173;
	Wed, 16 Jul 2014 21:34:22 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Wed, 16 Jul 2014 21:34:22 -0700 (PDT)
In-Reply-To: <CAMKF1sreRwGBVpy_GO9mDG1SmqrLRyFJC_JGC=5btzDsBfbpig@mail.gmail.com>
References: <CAP3RZoiaZLH+adych_EReWMHZZuVvf6=v3Yg3-aJoYyQ7h9Axw@mail.gmail.com>
	<CAMKF1sreRwGBVpy_GO9mDG1SmqrLRyFJC_JGC=5btzDsBfbpig@mail.gmail.com>
Date: Thu, 17 Jul 2014 10:04:22 +0530
Message-ID: <CAP3RZoi2p_8j98cYtGifFFBRO2uC+M-J4EZ0VJ5VZ2sRt2KFgg@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_rootfs is throwing errors
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
X-List-Received-Date: Thu, 17 Jul 2014 04:34:24 -0000
Content-Type: text/plain; charset=UTF-8

How can i set file system permission and mask?

On Wed, Jul 16, 2014 at 12:00 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Mon, Jul 14, 2014 at 8:53 AM, jags gediya <jags.gediya@gmail.com> wrote:
>> Exception: OSError: [Errno 13] Permission denied
>>
>> ERROR: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/jags/Projects/asai_iotg/asai_iotg/src/build/tmp/work/imx6slevk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.26461
>
> Do you have your filesystems permissions and mask ( 022 ) set up properly ?

