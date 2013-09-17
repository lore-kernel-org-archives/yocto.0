Return-Path: <apelete@seketeli.net>
Received: from ms.seketeli.net (seketeli.net [91.121.166.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73CB4E0150A
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 07:08:03 -0700 (PDT)
Received: from localhost (176-26-190-109.dsl.ovh.fr [109.190.26.176])
	by ms.seketeli.net (Postfix) with ESMTP id 1D754EA042;
	Tue, 17 Sep 2013 16:44:21 +0200 (CEST)
Received: by localhost (Postfix, from userid 1000)
	id 67CC9A40611; Tue, 17 Sep 2013 16:11:53 +0200 (CEST)
Date: Tue, 17 Sep 2013 16:11:53 +0200
From: Apelete Seketeli <apelete@seketeli.net>
To: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
Message-ID: <20130917141153.GD20226@amegan>
References: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
	<20130917131500.GB20226@amegan>
	<9E1CA21291B3664A8E8F31523A10D6BE160CFB9ADD@MXCL21.fgremc.it>
MIME-Version: 1.0
In-Reply-To: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9ADD@MXCL21.fgremc.it>
X-Operating-System: Debian GNU/Linux 7
X-URL: http://www.seketeli.net/~apelete
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel debugging over serial console?
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
X-List-Received-Date: Tue, 17 Sep 2013 14:08:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 17-Sep-13, BITONTI Giuseppe (MM) wrote:
> Thanks Apelete for your help, but the command you suggested returns the following:
> 
> root@imx6qsabrelite:~# cat /sys/module/kgdboc/parameters/kgdboc
> cat: can't open '/sys/module/kgdboc/parameters/kgdboc': No such file or directory
> 
> root@imx6qsabrelite:~# echo ttymxc1,115200 > /sys/module/kgdboc/parameters/kgdboc
> -sh: can't create /sys/module/kgdboc/parameters/kgdboc: nonexistent directory
> 
> What I miss?

Interesting.
I am not sure how it is handled in Poky 1.4, but on a vanilla Linux
distribution you should have directories in /sys/module/ for the
kernel modules which need them for their configuration.
kgdboc being such a module, it should have its own directory there.

Could you do:

root@imx6qsabrelite:~# ls -l /sys/module/kgdboc

And paste the output here ?

Cheers.
-- 
        Apelete

