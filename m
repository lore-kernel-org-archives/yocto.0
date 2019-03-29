Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83219E00D74; Thu, 28 Mar 2019 23:51:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3842DE00D24
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 23:51:10 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44Vsp520frz3s;
	Fri, 29 Mar 2019 07:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553842269;
	bh=N1CY4qUglbQFcmya2Et4V+5F3dTJKPjhfHD1cIWUp8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nAo0Xk2PfUQ3SIsx5jODUzBNLEV7TZpLVUxLE5eQ/r2cGznYrrRHHqid3JL3Ql7nu
	v2/fOgD6BOGRWvR4m8VlXeUtVPILKyliJSemz8zRiYSmO88KUZT1DOZZ9Vx5QyWM4y
	Mm/FOQ5VgvNXGLaf632RMGGVGn3hMPwzAc1/bLbGkpvQLpMnOhmh6IdUSOVh1OQMSg
	zN8z1GArQu4rzN/7z8EspGIdV9bM0ugS3tmrsqZYh+F7TUG8VsRQU6RrBzDSmI2JtF
	cKvh+cSk+pKlwwHZfBivykws4b2rddUeCd2BVbm+Iit4E5GCgrBQPzgoTgNK8MceWQ
	TjNoQt+7IVy3sA5mobipIOzPU4MGRStHFxvnWDajSJQUVzw8Uk0f2y1+DCTlYI8UJo
	aLPPXhLSEgLmP4JrWBz4smjFrLlIjZl+liXSpkmcBF2VcqSxH97rzTK51shY/63Dca
	EMrs3K+ufSSdaxATrHYwnVdXCqIl7Mgcye+jPKTQWU5nqto0wRAhv2WWpZIb5P7Ksj
	ULBMozB5JZcLAHHiylnt5z7P2dOuhjnbNfgc+Sbdha0gTBWaBTHISXQPqJ3ysJJUPc
	qsLuM1P23hw2Pdez0ZGXwF0JYy3jLAtEXVmU98CmP87dUKp/NIUIyxxKs0D/cKLbNp
	3l0o1pqblm09U5Fmr5e0STHo=
Date: Fri, 29 Mar 2019 08:51:07 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190329065107.GB26574@localhost>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-3-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190329052821.13718-3-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 3/5] sssd: fix a few runtime issues
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
X-List-Received-Date: Fri, 29 Mar 2019 06:51:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Mar 28, 2019 at 10:28:19PM -0700, Armin Kuster wrote:
> include a few more RDEPEND packages. remove init script as there really
> isn't one yet.
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/sssd/sssd_1.16.3.bb | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
> index 8f7f805..e3fb254 100644
> --- a/recipes-security/sssd/sssd_1.16.3.bb
> +++ b/recipes-security/sssd/sssd_1.16.3.bb
>...
>  # The package contains symlinks that trip up insane
>  INSANE_SKIP_${PN} = "dev-so"
>  
> -RDEPENDS_${PN} += "bind dbus"
> +RDEPENDS_${PN} = "bind dbus samba libldb"

Even when samba support is not enabled?

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


