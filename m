Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD9EE006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:57:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4VIvvef008078
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 31 May 2012 11:57:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 31 May 2012 11:57:57 -0700
Message-ID: <4FC7BF2E.2050704@windriver.com>
Date: Thu, 31 May 2012 14:57:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1338487192.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1338487192.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2][linux-yocto-3.2] fri2 serial port fixes for preempt-rt
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
X-List-Received-Date: Thu, 31 May 2012 18:57:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-31 02:04 PM, Darren Hart wrote:
> These patches address are lockup when attempting login over serial on the fri2
> when running the preempt-rt kernel. I have sent the first patch out for review,
> but have not yet heard back. The serial port works and appears fairly stable.
> However, I would prefer to keep these patches in yocto/preempt-rt/fri2 until
> they are merged upstream in their final form. Please apply to a new branch:
>
>      yocto/preempt-rt/fri2

Ack. I'm fine with that as well, I'll create the branch and lock the
patches in there.

Also updating the -rt patch at the same time.

Cheers,

Bruce

>
>
> The following changes since commit c004dd798ce68af4d7677939426b083575523db5:
>
>    pch_uart: Add eg20t_port lock field, avoid recursive spinlock on port->lock (2012-05-30 23:22:37 -0700)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/standard/preempt-rt/fri2
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/standard/preempt-rt/fri2
>
> Darren Hart (2):
>    pch_uart: Add eg20t_port lock field, avoid recursive spinlocks
>    [RT] pch_uart: Correct spin_lock and irqsave usage in pch_console_write
>
>   drivers/tty/serial/pch_uart.c |   26 ++++++++++++++++++--------
>   1 files changed, 18 insertions(+), 8 deletions(-)
>


