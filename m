Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D450E00C15; Thu, 21 Jul 2016 08:40:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB85E00A07
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 08:40:14 -0700 (PDT)
Received: from nbhjo (unknown [8.36.234.10])
	by msfrf2606.sfr.fr (SMTP Server) with ESMTP id 4E2C01C001C2D;
	Thu, 21 Jul 2016 17:40:10 +0200 (CEST)
Received: from nbhjo (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2606.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 17:39:52 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Paul Barker' <paul@paulbarker.me.uk>, yocto@yoctoproject.org
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
In-Reply-To: <20160721080236.0ed7287e@nuc.betafive.co.uk>
Date: Thu, 21 Jul 2016 17:39:49 +0200
Message-ID: <001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGns7zzwvXWFP6vUBGSdcsdnnLgdqB3ZADg
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Thu, 21 Jul 2016 15:40:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Paul,

I had the same line of thoughts...
I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and maybe
add 4.7 to the mix, since 4.7 seems to be where the bulk of the work is done
now.

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Paul Barker
Sent: jeudi 21 juillet 2016 09:03
To: yocto@yoctoproject.org
Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions

Hi all,

I'm planning to look at the linux-raspberypi recipes once I've had time to
send V2 of my u-boot patches. I'd like to know people's thoughts on the
available kernel versions in the meta-raspberrypi layer:

Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
referenced in SRCREV is from June 2015. I think it's probably time to retire
this unless anyone has a reason to keep it around.

Is there any reason to keep linux-raspberrypi 4.1 as the default recipe? The
last commit to the 4.1 branch was in April and the default branch on the
linux-raspberrypi GitHub repository has been
4.4 since then. I think we should change the default version to 4.4 unless
there's a good reason not to.

If there's no objections I'll send a couple of patches to drop 3.18 and
change the default to 4.4.

Thanks,
Paul Barker
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


