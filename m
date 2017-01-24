Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2EC9E00B8D; Tue, 24 Jan 2017 14:24:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 368F4E00B71
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 14:24:54 -0800 (PST)
Received: from mfilter18-d.gandi.net (mfilter18-d.gandi.net [217.70.178.146])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 4E044C5A5A;
	Tue, 24 Jan 2017 23:24:53 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter18-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter18-d.gandi.net (mfilter18-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id s-Hps7oU0koK; Tue, 24 Jan 2017 23:24:52 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BAFA7C5A55;
	Tue, 24 Jan 2017 23:24:51 +0100 (CET)
Date: Tue, 24 Jan 2017 22:24:50 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20170124222450.1f2120b3@host0.betafive.co.uk>
In-Reply-To: <1485282724-16153-1-git-send-email-mirza.krak@gmail.com>
References: <1485282724-16153-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: drop backported patches
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
X-List-Received-Date: Tue, 24 Jan 2017 22:24:59 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 24 Jan 2017 19:32:04 +0100
Mirza Krak <mirza.krak@gmail.com> wrote:

> From: Mirza Krak <mirza.krak@gmail.com>
> 
> U-boot has been updated to 2017.01 in poky/oe-core which contains
> these patches.
> 
> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>

I've been working on the exact same patch here, just hadn't had chance
to test it yet. Looks good to me.

Acked-by: Paul Barker <paul@paulbarker.me.uk>

