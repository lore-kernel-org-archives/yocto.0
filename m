Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 166E2E00C8B; Wed, 15 Jun 2016 01:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 879FEE00C7D
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 01:05:18 -0700 (PDT)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net [111.250.199.179])
	by msfrf2607.sfr.fr (SMTP Server) with ESMTP id 907A71C00147D;
	Wed, 15 Jun 2016 10:05:16 +0200 (CEST)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net
	[111.250.199.179])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2607.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 15 Jun 2016 10:05:14 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<1464641195-88380-6-git-send-email-herve.jourdain@neuf.fr>
	<20160614235507.GD22479@resin>
In-Reply-To: <20160614235507.GD22479@resin>
Date: Wed, 15 Jun 2016 10:05:06 +0200
Message-ID: <014801d1c6dc$a6d02a60$f4707f20$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQMZxfZoy0tZ4IWhluMkeiXQw5xx5wEz12wjAoQ+NNmdPFuP8A==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 5/5] linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 15 Jun 2016 08:05:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Andrei,

OK, I will push a v5, based on your comments.

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro] 
Sent: mercredi 15 juin 2016 01:55
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH v4 5/5]
linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays

On Tue, May 31, 2016 at 04:46:35AM +0800, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb 
> b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index ba47b22..789fef1 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -4,5 +4,6 @@ LINUX_VERSION ?= "4.4.9"
>
>  SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
>  SRC_URI = 
> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y 
> \
> +           file://0001-fix-dtbo-rules.patch \
>  "
>  require linux-raspberrypi.inc
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Can we merge this patch in the 4th one? Only if you decide to push another
version based on other comments.

--
Andrei Gherzan


