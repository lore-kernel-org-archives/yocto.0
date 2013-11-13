Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (turboconrad.planet-school.de
	[194.116.187.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225ECE01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:52:04 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 0945DB6A0FC
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 16:52:00 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.3 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from [129.187.155.160] (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 98456B6A0EF
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 16:52:00 +0100 (CET)
Message-ID: <5283A01E.30000@philipp-wagner.com>
Date: Wed, 13 Nov 2013 16:51:58 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
	<1384357651-26684-3-git-send-email-andrei@gherzan.ro>
In-Reply-To: <1384357651-26684-3-git-send-email-andrei@gherzan.ro>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [meta-raspberrypi][PATCH 3/6] linux-raspberrypi: Add version 3.10.18 and 3.12
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
X-List-Received-Date: Wed, 13 Nov 2013 15:52:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 13.11.2013 16:47, schrieb Andrei Gherzan:
> Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 4 ++++
>   recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 4 ++++
>   2 files changed, 8 insertions(+)
>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb
                                                            ^^^^^^^^^^^^^
Make this 3.12.0 or whatever it is?

>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
> new file mode 100644
> index 0000000..399a978
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
> @@ -0,0 +1,4 @@
> +SRCREV = "ae937f99fee8a37f2ddd7270f6bcc0e497e8c903"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y"
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> new file mode 100644
> index 0000000..25877fe
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> @@ -0,0 +1,4 @@
> +SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y"
> +
> +require linux-raspberrypi.inc
>

