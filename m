Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 234DEE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:12:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q22LCsPD027393
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:12:54 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:12:54 -0800
Message-ID: <4F5137C2.4070703@windriver.com>
Date: Fri, 2 Mar 2012 16:12:34 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1330644211.git.darren@dvhart.com>
In-Reply-To: <cover.1330644211.git.darren@dvhart.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/5][linux-yocto-3.2] Backport fixes and add FRI2 support to pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 21:12:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-01 06:59 PM, Darren Hart wrote:
> Backport consle support and add the 4 new patches (from me) enabling the FRI2
> serial port.
>
> My patches have been sent to LKML and have received the approval one of the
> driver maintainers. They are currently pending review and a pull from Greg KH.
>
> Please apply to standard/base and down.

merged. I've grouped it with my 3.2.9 and -rt updates. Will have it
pushed out after some build testing.

Bruce

>
> The following changes since commit ee3b6f8f773c373ca2ef2e4a04d2fd58b748eaee:
>
>    Merge branch 'base' into standard/base (2012-02-28 13:31:59 -0500)
>
> are available in the git repository at:
>
>    git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/standard/pch_uart
>    http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/standard/pch_uart
>
> Alexander Stein (1):
>    drivers/tty/serial/pch_uart.c: add console support
>
> Darren Hart (4):
>    pch_uart: Use uartclk instead of base_baud
>    pch_uart: Add Fish River Island II uart clock quirks
>    pch_uart: Add user_uartclk parameter
>    pch_uart: Use existing default_baud in setup_console
>
>   drivers/tty/serial/Kconfig    |    9 ++
>   drivers/tty/serial/pch_uart.c |  209 +++++++++++++++++++++++++++++++++++++---
>   2 files changed, 202 insertions(+), 16 deletions(-)
>


