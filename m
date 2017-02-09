Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D5E3E0093F; Thu,  9 Feb 2017 00:24:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 261F8E009DA
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:24:15 -0800 (PST)
Received: from mfilter6-d.gandi.net (mfilter6-d.gandi.net [217.70.178.135])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id D86C0FB8B9;
	Thu,  9 Feb 2017 09:24:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter6-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter6-d.gandi.net (mfilter6-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id DmTJzWf1Mzoe; Thu,  9 Feb 2017 09:24:13 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 3D936FB8D5;
	Thu,  9 Feb 2017 09:24:13 +0100 (CET)
Date: Thu, 9 Feb 2017 08:24:12 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170209082412.18263c84@host0.betafive.co.uk>
In-Reply-To: <20170209054903.31598-8-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-8-raj.khem@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 8/9] userland: Upgrade to latest
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
X-List-Received-Date: Thu, 09 Feb 2017 08:24:27 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  8 Feb 2017 21:49:02 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index cec591d..5a83c8a 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>  
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "0f015eaa17add5bca00ecf8a354ea62e19bd7920"
> +SRCREV = "d35be767ce54ba46893ffa6d612b6b9d490b1e4e"
>  
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \

Can we squash this with the other userland upgrade in this series?

