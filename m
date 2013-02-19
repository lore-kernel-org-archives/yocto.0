Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15AB7E006CB
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 06:03:08 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 1AAFEB6A046;
	Tue, 19 Feb 2013 15:03:06 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.2 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from [129.187.155.160] (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id DF341B6A068; 
	Tue, 19 Feb 2013 15:03:05 +0100 (CET)
Message-ID: <51238619.4010206@philipp-wagner.com>
Date: Tue, 19 Feb 2013 15:03:05 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1360518927-20296-1-git-send-email-andrei@gherzan.ro>
In-Reply-To: <1360518927-20296-1-git-send-email-andrei@gherzan.ro>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] rpi-first-run-wizard: Fix RDEPENDS warning
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
X-List-Received-Date: Tue, 19 Feb 2013 14:03:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 10.02.2013 18:55, schrieb Andrei Gherzan:
> WARNING: QA Issue: [...]/rpi-first-run-wizard.bb:
> Variable RDEPENDS is set as not being package specific, please fix this.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   recipes-extra/startup/rpi-first-run-wizard.bb |    4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-extra/startup/rpi-first-run-wizard.bb b/recipes-extra/startup/rpi-first-run-wizard.bb
> index c5cef7c..6ede56e 100644
> --- a/recipes-extra/startup/rpi-first-run-wizard.bb
> +++ b/recipes-extra/startup/rpi-first-run-wizard.bb
> @@ -3,11 +3,11 @@ LICENSE = "GPLV2"
>   LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>
>   DEPENDS = "zenity dbus"
> -RDEPENDS = "slim sudo zenity dbus"
> +RDEPENDS_${PN} = "slim sudo zenity dbus"
>
>   COMPATIBLE_MACHINE = "raspberrypi"
>
> -PR = "r1"
> +PR = "r2"
>
>   SRC_URI = " \
>             file://LICENSE \
>

I've applied this patch and it works as expected.

Philipp

