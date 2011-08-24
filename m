Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D4BCE00320
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 11:33:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OIX4gD018780
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Aug 2011 11:33:04 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 24 Aug 2011 11:33:04 -0700
Message-ID: <4E5543DC.8090501@windriver.com>
Date: Wed, 24 Aug 2011 14:33:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <1314175707-9214-1-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1314175707-9214-1-git-send-email-liming.wang@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH 0/1] script/runqemu: change boot command line for qemuppc
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
X-List-Received-Date: Wed, 24 Aug 2011 18:33:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-24 04:48 AM, Liming Wang wrote:
> This patch is just a workaround to speed up boot time of qemuppc, because
> qemuppc has no framebuffer support, no need to start X server for qemuppc.
>
> Richard suggested to fix the X scripts so that if an fbdev X server is in use and
> the framebuffer device node does not exist, it just exits cleanly with a
> suitable message and doesn't timeout on boot.
>
> But I think it needs more time to implement and test.
>> X scripts serve for all the boards. And we also can't assume all the
>> boards use the same
>> framebuffer device. So how to detect whether the framebuffer device
>> exists is board dependent.
>> Maybe we can see whether the device /dev/fb0 exists(it could be created
>> manually, so we should try to open it to verify)
>> or the file /proc/fb exists to confirm the framebuffer device. Anyway,
>> any modification should be
>> tested on all boards to see whether it works. I prefer to mark it as
>> todo task in 1.1

We need to cc Richard/Saul on this, so they can re-consider
and merge this as appropriate. But for me, I'm acking this
change.

Bruce

>
> Bruce also suggests:
>> I know I'm ok with this strategy, since time is short in the
>> 1.1 cycle. We can always open a bugzilla item to track this,
>> just to be sure it isn't forgotten. Preferably we'll get a
>> qemuppc with a framebuffer in 1.x timeframe and we won't need
>> this at all. Coming up with something generic and the amount
>> of testing required doesn't fit the timeframe that we currently
>> have for 1.1.
>
>
> Liming Wang (1):
>        script/runqemu: change boot command line for qemuppc
>
>   scripts/runqemu-internal |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>


