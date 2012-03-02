Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6054DE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:03:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q22L3T7o004230
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:03:29 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:03:29 -0800
Message-ID: <4F51358D.6060008@windriver.com>
Date: Fri, 2 Mar 2012 16:03:09 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1330643860.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643860.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 00/11][linux-yocto-3.0] Backport fixes and add FRI2 support to pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 21:03:51 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-03-01 06:58 PM, Darren Hart wrote:
> Backport 7 patches bringing pch_uart up to date with required fixes and new
> features to support the 4 new patches (from me) enabling the FRI2 serial port.
>
> My patches have been sent to LKML and have received the approval one of the
> driver maintainers. They are currently pending review and a pull from Greg KH.

Grabbed and merged these. Will push them out later today, along with
my 3.0.23 + rt updates.

Bruce

>
> Please apply to yocto/standard/base.
>
> The following changes since commit c578f3a1f357142a6e02a1df4ae9aa16f45094d6:
>
>    Merge branch 'yocto/base' into yocto/standard/base (2012-02-26 00:04:15 -0500)
>
> are available in the git repository at:
>
>    git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/yocto/standard/pch_uart
>    http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/yocto/standard/pch_uart
>
> Alexander Stein (3):
>    pch_uart: add missing comment about OKI ML7223
>    pch_uart: Add MSI support
>    drivers/tty/serial/pch_uart.c: add console support
>
> Darren Hart (4):
>    pch_uart: Use uartclk instead of base_baud
>    pch_uart: Add Fish River Island II uart clock quirks
>    pch_uart: Add user_uartclk parameter
>    pch_uart: Use existing default_baud in setup_console
>
> Jiri Slaby (1):
>    TTY: serial, fix includes in some drivers
>
> Tomoya MORINAGA (2):
>    pch_uart: Set PCIe bus number using probe parameter
>    pch_uart: Change company name OKI SEMICONDUCTOR to LAPIS
>      Semiconductor
>
> Uwe Kleine-König (1):
>    serial/pch: use global div helper instead of creating a private one
>
>   drivers/tty/serial/Kconfig                  |    9 +
>   drivers/tty/serial/apbuart.c                |    1 +
>   drivers/tty/serial/cpm_uart/cpm_uart_core.c |    1 +
>   drivers/tty/serial/dz.c                     |    1 +
>   drivers/tty/serial/ioc3_serial.c            |    1 +
>   drivers/tty/serial/ioc4_serial.c            |    1 +
>   drivers/tty/serial/m32r_sio.c               |    1 +
>   drivers/tty/serial/max3100.c                |    2 +
>   drivers/tty/serial/max3107.c                |    2 +
>   drivers/tty/serial/mpc52xx_uart.c           |    1 +
>   drivers/tty/serial/msm_serial_hs.c          |    2 +
>   drivers/tty/serial/mux.c                    |    2 +
>   drivers/tty/serial/nwpserial.c              |    1 +
>   drivers/tty/serial/pch_uart.c               |  227 ++++++++++++++++++++++++---
>   drivers/tty/serial/sb1250-duart.c           |    1 +
>   drivers/tty/serial/serial_ks8695.c          |    1 +
>   drivers/tty/serial/serial_txx9.c            |    2 +
>   drivers/tty/serial/sn_console.c             |    1 +
>   drivers/tty/serial/timbuart.c               |    2 +
>   drivers/tty/serial/uartlite.c               |    1 +
>   drivers/tty/serial/ucc_uart.c               |    4 +-
>   drivers/tty/serial/xilinx_uartps.c          |    4 +-
>   drivers/tty/serial/zs.c                     |    1 +
>   23 files changed, 246 insertions(+), 23 deletions(-)
>


