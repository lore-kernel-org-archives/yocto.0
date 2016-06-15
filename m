Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C52AE00C9A; Tue, 14 Jun 2016 22:37:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F3F2E00C86
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 22:37:44 -0700 (PDT)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net [111.250.199.179])
	by msfrf2615.sfr.fr (SMTP Server) with ESMTP id 4581A1C000801;
	Wed, 15 Jun 2016 07:37:42 +0200 (CEST)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net
	[111.250.199.179])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2615.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 15 Jun 2016 07:37:40 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<20160614235412.GC22479@resin>
In-Reply-To: <20160614235412.GC22479@resin>
Date: Wed, 15 Jun 2016 07:37:35 +0200
Message-ID: <00e801d1c6c8$093d5bb0$1bb81310$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQMZxfZoy0tZ4IWhluMkeiXQw5xx5wIlF3PJnUjbN3A=
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 0/5] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Wed, 15 Jun 2016 05:37:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Andrei,

I believe it still has not been merged...
Shall I send a ping?

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro] 
Sent: mercredi 15 juin 2016 01:54
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH v4 0/5] Support for .dtbo
files for dtb overlays, required by kernels 4.4.6+

On Tue, May 31, 2016 at 04:46:30AM +0800, Herve Jourdain wrote:
> v4: rebased
> For kernels 4.4.9+, the behavior for the device tree overlays loading has
been modified on RaspberryPi.
> For overlays, it loads .dtbo files, not .dtb anymore.
> Also, it does not check for -overlay extension, so the name of the overlay
that is placed in the "overlays" directory must be <overlay_name>.dtbo,
instead of <overlay_name>-overlay.dtb.
>
> This patch addresses the issue for kernels 4.4+, while keeping the same
behavior for older kernels.
> This patch must be used in conjunction with another patch to
meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo
files for overlays, instead of only .dtb like before.
>

Is the poky patch merged? It doesn't seem it was.

--
Andrei Gherzan


