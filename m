Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE1BE0122C
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 06:18:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7PDI7Hc018833
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 06:18:07 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 25 Aug 2011 06:18:07 -0700
Message-ID: <4E564B8B.2060208@windriver.com>
Date: Thu, 25 Aug 2011 09:18:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <1314258935-32230-1-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1314258935-32230-1-git-send-email-liming.wang@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/1] mips/rt: convert cascade interrupt to no threaded
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
X-List-Received-Date: Thu, 25 Aug 2011 13:18:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-25 03:55 AM, Liming Wang wrote:
> This patch fixes yocto bug:
> [Bug 1392] qemumips: linux-yocto-rt_3.0 panics at boot

Ack'd. I do recall a similar fix for mips back in the
2.6.27 days. Both for this and the timer interrupt.

Will merge this shortly.

Bruce


>
> Liming Wang (1):
>        mips/rt: convert cascade interrupt to no threaded
>
>   arch/mips/kernel/i8259.c |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>


