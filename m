Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42719E00AE4; Mon, 28 Mar 2016 18:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FA15E008EE
	for <yocto@yoctoproject.org>; Mon, 28 Mar 2016 18:45:14 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1akihD-0005nm-Ea; Tue, 29 Mar 2016 01:43:53 +0000
To: Stephen Smalley <sds@tycho.nsa.gov>
References: <1458534406-79852-1-git-send-email-flihp@twobit.us>
	<1458534406-79852-2-git-send-email-flihp@twobit.us>
	<56F1A078.1090609@tycho.nsa.gov>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56F9DE31.10406@twobit.us>
Date: Mon, 28 Mar 2016 18:45:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <56F1A078.1090609@tycho.nsa.gov>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/2] refpolicy: Replace 2.2014120 with release 2.20151208.
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
X-List-Received-Date: Tue, 29 Mar 2016 01:45:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/22/2016 12:43 PM, Stephen Smalley wrote:
> On 03/21/2016 12:26 AM, Philip Tricca wrote:
>> This was mostly straight forward. Had to refresh a single patch:
>> poky-policy-fix-new-SELINUXMNT-in-sys.patch
> 
> Can we drop that one?  Doesn't upstream already include rules for the
> change from /selinux to /sys/fs/selinux, since that has been the default
> for Linux 3.0 and later?

I'm trying to make as few changes as possible with this though you're
likely right. These are also marked as specific to Poky and I've been
testing only the minimal oe-selinux.conf. The patches aren't applied
using any logic that looks at the distro so I'm not even sure how
specific they are to poky even.

> Also, refpolicy-update-for_systemd.patch seems suspect, given that
> upstream refpolicy already includes systemd support (but you need to
> build with SYSTEMD=y, which can be done now via POLICY_SYSTEMD=y in your
> local.conf or elsewhere).  The only bit I see in that patch that isn't
> already in refpolicy is
> allow devpts device_t:filesystem associate;
> which ought to be rewritten as
> dev_associate(devpts_t)
> and upstreamed to refpolicy terminal.te if needed.
> 
> I assume that is from creating the /dvv/pts mount point and
> automatically trying to label it according to file_contexts, but the
> type in file_contexts is really for the devpts mount, not the mount point.

Long story short it looks like these patch queues need a scrub. This is
useful information though to get the task started. I'll merge this as it
is and take on the patch scrub on next.

Philip

