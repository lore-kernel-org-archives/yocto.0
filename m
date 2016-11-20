Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A002E00C72; Sun, 20 Nov 2016 04:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E00E009A4
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:58:50 -0800 (PST)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id D279A1C000849;
	Sun, 20 Nov 2016 13:58:49 +0100 (CET)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:58:46 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
	<1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
	<29ca6996-3502-26ef-fc30-a04e7fd97814@gmail.com>
In-Reply-To: <29ca6996-3502-26ef-fc30-a04e7fd97814@gmail.com>
Date: Sun, 20 Nov 2016 13:58:36 +0100
Message-ID: <003e01d2432d$d42d17c0$7c874740$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQI8/iJUgLdgbQk3zTg2LDWneozZRwH9hYEsAcm/djSf7iIaYA==
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb: upgrade to latest good version
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
X-List-Received-Date: Sun, 20 Nov 2016 12:58:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Khem,

If I may, I have an interest in keeping 4.7 for a few more months (2 or 3 I
guess).
I'm using it for a few things, and I don't currently plan to switch to 4.8,
but rather to 4.9 when it's more stable (hence the 2 or 3 additional
months).
As you already know, 4.9 is supposed to be the next LTS (if Greg
Kroah-Hartman doesn't change his mind), and I'd like to wait for it while
keep using the version I already use.

This said, given the recent rebasing on the raspberrypi github, at least for
version 4.7, it definitely is a maintenance burden.
If that can help, I'm volunteering to maintain the revision for the 4.7
raspberrypi linux kernel, for the next 2 to 3 months.

After that, the question that will remain is what revisions do we keep: we
currently have 4.1, 4.4, 4.7 and 4.8.
We will soon have 4.9.
4.1 and 4.4 are LTS (EOL = 09/2017 & 02/2018), neither 4.7 nor 4.8 will be,
and 4.9 is supposed to be.
What do you think we should do, scrap 4.1 and 4.7, leaving 4.4, 4.8 and 4.9?
Or keep only the LTS ones?

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com] 
Sent: jeudi 17 novembre 2016 18:17
To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb:
upgrade to latest good version



On 11/17/16 5:13 AM, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb 
> b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> index 0315f8f..4a8fe36 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>  
> -LINUX_VERSION ?= "4.7.7"
> +LINUX_VERSION ?= "4.7.10"

I think, we should abandon all non-lts recipes except one which will be
latest release ( 4.8 ) as of today.

>  
> -SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
> +SRCREV = "e7fa325a40f260ed9fb86391a0b65150eba8c112"
>  SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
>             file://0001-fix-dtbo-rules.patch \  "
> 



