Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7C4BE01346;
	Tue, 18 Sep 2012 07:18:11 -0700 (PDT)
Received: by lboi15 with SMTP id i15so37239lbo.35
	for <multiple recipients>; Tue, 18 Sep 2012 07:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=a7FCeldKyNZLNBy9jfDm9QyvM2XlDILFjUluxdYLfS4=;
	b=fIU7UX//NT/tRCdE9mLBM5s7urWSsS1baJfVSg7Mwrz6puri/E6m+aED7YWjZzfHQ+
	N2Y94Fhg2qPX2D2vg8fW21RjHpTOFJ9E1viz7c8smvY3B9vxydG7RbSM2B38GrdamhiG
	9u4zZqaq3R+iZgY5WR10EETVvCMxlK1SyJWbJ7XmNLq1DjMA3AUe4Lqk3VUMiPqKMZ7+
	9PfIYwVTcxx/mp/TGRtYgJ03d9Kg/piObMouBJdiwN+oxD/hjkrx3z10uxzVu6Y9447z
	Q8moDPP/tIQoiLc4O+QEwel7fW8x7D5wrKGrZu+rUZZMjtvjxRIrEYcv+6dACs/GAPS+
	NUAA==
MIME-Version: 1.0
Received: by 10.112.83.8 with SMTP id m8mr261238lby.115.1347977890693; Tue, 18
	Sep 2012 07:18:10 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Tue, 18 Sep 2012 07:18:10 -0700 (PDT)
In-Reply-To: <50587DEA.6030508@linux.intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com>
	<1347976148.6185.49.camel@empanada>
	<50587DEA.6030508@linux.intel.com>
Date: Tue, 18 Sep 2012 10:18:10 -0400
Message-ID: <CADkTA4MErqT2Y+qedg+p5UBbohwi_vKE-4+v5n=vK1P+DFZzmA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 18 Sep 2012 14:18:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 18, 2012 at 9:58 AM, Mihai Lindner
<mihaix.lindner@linux.intel.com> wrote:
> On 2012-09-18 16:49, Tom Zanussi wrote:
>> On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
>>> On 12-09-18 01:59 AM, Mihai Lindner wrote:
>>>> Please pull into linux-yocto-3.0, meta.
>>>>
>>>
>>> Adding linux-yocto, Darren and Tom.
>>>
>>> This looks fine to me, and we should consider it for all the repositories,
>>> not just 3.0.
>>>
>>> Tom/Darren. Any side effects you can think of for this change ?
>>>
>>
>> No, but shouldn't it already be there, inherited from base.cfg?
>
> For cedartrail, at least, standard.cfg is used.

And standard will include base.cfg, which already has this option. Are
you actually
seeing this not in the final .config of your build ?

Bruce

>
> --Mihai
>
>>
>> Tom
>>
>>> Bruce
>>>
>>>> Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
>>>> Cedartrail (at least) cannot boot live from ISO image due to
>>>> BLK_DEV_INITRD missing:
>>>> "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
>>>> Should fix #3050
>>>>
>>>> [YOCTO #3050]
>>>>
>>>> Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
>>>> ---
>>>>
>>>> The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
>>>>
>>>>    meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
>>>>
>>>> are available in the git repository at:
>>>>    git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
>>>>
>>>> Mihai Lindner (1):
>>>>        boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>
>>>>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>   1 files changed, 2 insertions(+), 0 deletions(-)
>>>>
>>>> Mihai Lindner (1):
>>>>    boot-live.cfg: enable BLK_DEV_INITRD in kernel
>>>>
>>>>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>>>>   1 files changed, 2 insertions(+), 0 deletions(-)
>>>>
>>>
>>
>>
>>
>>
>
>
> --
> Mihai Lindner
> Yocto Project
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

