Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5036E00D24; Fri, 29 Mar 2019 00:10:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF47CE00AB0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 00:10:22 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44VtDF481Nz9v;
	Fri, 29 Mar 2019 08:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553843421;
	bh=jPEvnj9MK5/Bl8W4ZOluzknGwrczJ4MHie/PsJL4+NE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ND+TD4pHzaMRzoKO6PT9q0c6DjZg5IoeJ7eXsehZ6ivYXofoLvfZl8g2To9ZnbXwD
	J2LfNF4KKREyRYihaULOTp3Hlw9NqOHceuymwyG/dJJsb2bRSVXRTHpzR6FpASOozt
	0O2yJVMoGRA7BUFKR2ab5S3o8XmD934ZiM8MkzU2iKBnscFE+qYgUof+hynZKT1U0I
	hJs1cHYWmhyTqt3em25Tv82TIiZ7r0uICraPtwFulLPgXKB1qfyekm9HNEbmtkUmNa
	KE9FcEPWFa1sss/0QQghWLKiqT5uYZHH7noilHVKwJonz3fiXS/JcfBiM/X1s0lqT6
	h9iVfBJGowkFEAKg0HigFim5VejeMMJuvYZ5hTRzpfOkajjxNaP2jaWKLyB0bEqrLp
	3Xd9vK0SIzArSSimKAeZ2d5H7rmyZvmkf9kTTZnzEr+dt4b0JxY38BXGUYEkHeW+vQ
	D0M9GsijSsUh40IpKeebPhSLeONQg0WJOD6EmMEXRPoN54tRz2owXAf5/fRcizDU08
	yBF+PiS6sgB6vgy7WsCR2zyZqS3TZXP7X3LgFiF9fJBbRdLSScJLMIzVbCMC0QVOMB
	hmQrXTDz9BowpqzuFpmgcnWcsxpsk3h5oFxYnYTvI2iWj+1xEw5tO8bE0jvEAbw3dt
	3slRS+u5+j5cZxYfZepkNMwg=
Date: Fri, 29 Mar 2019 09:10:19 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190329071019.GC26574@localhost>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-4-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190329052821.13718-4-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 4/5] sssd: update to 1.16.4
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
X-List-Received-Date: Fri, 29 Mar 2019 07:10:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Mar 28, 2019 at 10:28:20PM -0700, Armin Kuster wrote:
> Add systemd pkgconf via DISTRO_FEATURE
> 
> Fix uid/gid of sssd.conf
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>...
> -RDEPENDS_${PN} = "bind dbus samba libldb"
> +RDEPENDS_${PN} = "bind dbus samba libldb libpam"

Why is this required?

And the way this commit mixes unrelated changes, it is no even clear 
whether this is for the new upstream version or supposed to fix some 
older issue.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


