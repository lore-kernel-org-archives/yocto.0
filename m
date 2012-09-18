Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE66E00655;
	Tue, 18 Sep 2012 07:17:25 -0700 (PDT)
Received: by lboi15 with SMTP id i15so36452lbo.35
	for <multiple recipients>; Tue, 18 Sep 2012 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GfAb9CwnCdwzdsV13jexwfKjd8gKB/MopTg7ggVxOGk=;
	b=qz58OalHkD1gt7QtejhrpcP490VN/0FxPdlxCce3XHTIVlLw/dG1ZwIOWxAqbWResL
	91PgDJbX50+p87cqJmgavPkHokzoLPq4lcj5Ui4gLpZlZG5nvk7fMrDgOEzwiX1jlgy2
	iqj0Y9fgqUD6WqkI8/tP0LK8TTELoPPBKeVU8x+xpATkQxu7ahGvRJYL+HBq2GTEhgu1
	hU2uhGbBMrpEW8J/U5cnXpO7TFSvzmioXEcPPuMEFfrg8rZTxHYM7G5TsprcB/DUW8Jx
	Blqgggdm1STaTzNMX8kB5OwpgCyAM6npujkY4aqri215sv7jOmIr1h6WTudxCS3aZlqP
	J0pA==
MIME-Version: 1.0
Received: by 10.112.88.2 with SMTP id bc2mr278099lbb.61.1347977841602; Tue, 18
	Sep 2012 07:17:21 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Tue, 18 Sep 2012 07:17:21 -0700 (PDT)
In-Reply-To: <1347976148.6185.49.camel@empanada>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com>
	<1347976148.6185.49.camel@empanada>
Date: Tue, 18 Sep 2012 10:17:21 -0400
Message-ID: <CADkTA4PqNm84D++5Zz_wYwjhuEg2aoqRXXgY2cxHXSCxZ3U8QA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 14:17:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 18, 2012 at 9:49 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
>> On 12-09-18 01:59 AM, Mihai Lindner wrote:
>> > Please pull into linux-yocto-3.0, meta.
>> >
>>
>> Adding linux-yocto, Darren and Tom.
>>
>> This looks fine to me, and we should consider it for all the repositories,
>> not just 3.0.
>>
>> Tom/Darren. Any side effects you can think of for this change ?
>>
>
> No, but shouldn't it already be there, inherited from base.cfg?

Right you are. This is already in the inherited configs.

Bruce

>
> Tom
>
>> Bruce
>>
>> > Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
>> > Cedartrail (at least) cannot boot live from ISO image due to
>> > BLK_DEV_INITRD missing:
>> > "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
>> > Should fix #3050
>> >
>> > [YOCTO #3050]
>> >
>> > Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
>> > ---
>> >
>> > The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
>> >
>> >    meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
>> >
>> > are available in the git repository at:
>> >    git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
>> >
>> > Mihai Lindner (1):
>> >        boot-live.cfg: enable BLK_DEV_INITRD in kernel
>> >
>> >   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>> >   1 files changed, 2 insertions(+), 0 deletions(-)
>> >
>> > Mihai Lindner (1):
>> >    boot-live.cfg: enable BLK_DEV_INITRD in kernel
>> >
>> >   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>> >   1 files changed, 2 insertions(+), 0 deletions(-)
>> >
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

