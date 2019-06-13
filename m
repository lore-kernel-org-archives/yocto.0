Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2332E00DF0; Thu, 13 Jun 2019 01:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F84E00D8F
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 01:29:37 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45PcNb1gFfz3J;
	Thu, 13 Jun 2019 10:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1560414576;
	bh=ZBpA+VA8XFf2KaId+pFc2BkCEFtvElOuiMUxyQ6uPHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kBsCIpDXm8s+NDB3x2hj9V4hSlhDv46YCCC8SfChzsdbA8sbRm+DnQtOJ0i2CxNTB
	PXrHhyjmR/tAfOxRHkuuf3INFsL4vD6nM3yYAZJBYTDAglxH0jFb+MQ0XwZvLD8NWa
	RLHi7+kNNYX+ZwLRI5y/mOjd4aaB2gXDHVuWACw+IvpVngcyYArxshWpT/IKvM0wly
	cS3ZXJDsXaL5d6F9zAmszhmA3hYWfgbCq7v2IKpvKIbxH36+KrmkyYZnM2PlBXby0J
	tu8gj3kGAwoQRoMl0wpdU5wI4WP4sbh5bXts836M7NShXvaHNW2m4Fcl6miGCVgopW
	ufxxoZPJyvDdsXM0Uk9and9mmswlnMxEaOINtjCRyKwqNMu615L6MVIdi7hbwRLfXW
	pQKMwntgjlc5PGcnLXUP6KKzGvcvRXPZBRFpIIPa5i0h9ke3T70W1PmDvve7MwO0Mt
	Hz0kIHGOQyiQXxlK195cP37uC6lAcHseAC5pZyBDrtiorDkQHbe/uzK7vy0EqY8YPA
	HLo2HRS/1qIWC5leiA7Esmu2SoO36fzxYzsR+JamUdup64436sKut5jypL8Mo1dOCo
	4637JTUeePCf0T3QSb174fyq3504i/9Om1HwWWTXyiOegB9OeNT4xTtBpA2ZpsrALx
	4nVbMT3GFXHhjYQWHtKWuFWs=
Date: Thu, 13 Jun 2019 11:29:31 +0300
From: Adrian Bunk <bunk@stusta.de>
To: changqing.li@windriver.com
Message-ID: <20190613082931.GA15674@localhost>
References: <1560411964-388665-1-git-send-email-changqing.li@windriver.com>
	<1560411964-388665-2-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1560411964-388665-2-git-send-email-changqing.li@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [patchtest][PATCH 2/2] patchtest: fix linux-yocto version
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
X-List-Received-Date: Thu, 13 Jun 2019 08:29:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Jun 13, 2019 at 03:46:04PM +0800, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> 4.9 is not avaiable currently, preferred version changed
> to 5.0, also correct the bbappend name

5.0 is already EOL upstream and will be removed soon.

>...
> --- a/scripts/create-guest-machine
> +++ b/scripts/create-guest-machine
> @@ -145,10 +145,7 @@ cat >> $POKY/build/conf/auto.conf << EOF
>  $PTSMARK
>  MACHINE = "$MACHINE"
>  
> -# The preferred kernel version in poky (4.10%, master) returns an error whilst
> -# executing patchtest on guest. Changing the preferred version to 4.9% as it
> -# is more suitable and does not present any errors.
> -PREFERRED_VERSION_linux-yocto_qemux86-64 = "4.9%"
> +PREFERRED_VERSION_linux-yocto_qemux86-64 = "5.0%"
>...

This looks as if it was a temporary workaround for some problem with 
kernel 4.10.

If 5.0 works, then there is not really a reason for changing the 
preferred version here.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


