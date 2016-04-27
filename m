Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4864E00D7F; Wed, 27 Apr 2016 02:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79059E00D7D
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:22:06 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8B4FE68A01A; Wed, 27 Apr 2016 10:22:05 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E4F6268A019;
	Wed, 27 Apr 2016 10:22:04 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 97DDF6740363;
	Wed, 27 Apr 2016 11:22:03 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <57207CC3.3020905@mlbassoc.com>
	<CAJTo0LbHvD417+AkLhM8153DhbpBAE9TTeGMbuEDr+BV0CJAbA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <572084BB.5090307@mlbassoc.com>
Date: Wed, 27 Apr 2016 11:22:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbHvD417+AkLhM8153DhbpBAE9TTeGMbuEDr+BV0CJAbA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 09:22:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-27 10:59, Burton, Ross wrote:
>
> On 27 April 2016 at 09:48, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Is there any way to not have both the hwdb.bin (which I assume
>     is a binary version of the hardware databases) and /etc/udev/hwdb.d?
>     Perhaps there is some way to only use one?
>
>     Or maybe there is a better choice, such as mdev?  I'm not sure about
>     this (no experience) but my system needs to handle plug&play devices
>     which the current eudev does well.  It's just a huge "price" to pay.
>
>
> You could not install hwdb at all, it's a recommends so you can BAD_RECOMMENDS it away.  It's certainly possible to wipe
> away the source files for hwdb if you don't care about extending them at runtime but nobody has done that yet: a rootfs
> postproccess hook could delete it and confirm that everything works fine.

Can you explain a bit more? - BAD_RECOMMENDS doesn't seem to be documented.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

