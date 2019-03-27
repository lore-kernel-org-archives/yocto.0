Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D3EE00B81; Wed, 27 Mar 2019 00:16:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDE9E006D8
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 00:16:37 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44TfSL2cN9z3h;
	Wed, 27 Mar 2019 08:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553670995;
	bh=lQhQBwg+G8saRbBlLYJ21BW0tj1y/4ARhCnuhJZIQv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N9/68kFa3hu0iZbHnftBJTEEZ4EL353KYItT4Y0WzB5Hi7OhF3nTEjofNzQJN93Ou
	V7MEHOQP3mHWq+5mjpC//5Nbb8wGbYMXQsMdoN+IxloaDPQ0zWwPgXbjrXlRQwDbhp
	p9aio5LCSAY//voXaxqtt3w3RjUGywph839YQ5zOg0btpwjWdCedsdcPNJqZgsEqjp
	3gut2u7HK2Onf3SHtkcooOePYExDJGL/dtsIUky6oMwX+Cf0ltWQFl1RUGoVWVyXTD
	rHpps9cW98Wz1HX8rusDv1jJINCn3EOgL8SZ1/lZFJtYYxZ9I+Bt3vodEo4PUgsNC5
	EEXUa/ua6EEsZU5LS+/H/hR7JbkbfSXu6w+fCD/c/BMq1o6xp2F6J8Kd0YSHv2jJjy
	fQpPXznkk114hb1O9gkjVCRI+ASdChnVqh8rihu6NspAVmNoMzoLMgN1Kq2THbkuD2
	LqUR91UL/3HGwFQLIL8eaJevMKV7mkCUVs+VVr0Ox9ueDk3EqE4VmBoQpryoVVjDcw
	amqAIIkzASVfYpmvDNsnTgGhmTmuU1XfJz9Tyv2pt4+AW6bTV0GUqxuym6kdqML6Vf
	bXTStjpjnOcW6xbzHZgHAEUnw77ws+UbLU/6vc8iYRnkNIfA4Va/rebrkKlzOtXbZG
	ijPxAFTlrbmwStzoKpW89mVQ=
Date: Wed, 27 Mar 2019 09:16:31 +0200
From: Adrian Bunk <bunk@stusta.de>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190327071631.GA22331@localhost>
References: <20190325165855.9222-1-akuster808@gmail.com>
	<20190325165855.9222-2-akuster808@gmail.com>
	<20190326102444.GA19885@localhost>
	<6dae574f-f641-94ff-4bf1-09eac31e6378@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6dae574f-f641-94ff-4bf1-09eac31e6378@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: fix libcrypto version used
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
X-List-Received-Date: Wed, 27 Mar 2019 07:16:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Mar 26, 2019 at 03:52:39PM -0700, akuster808 wrote:
> 
> 
> On 3/26/19 3:24 AM, Adrian Bunk wrote:
> > On Mon, Mar 25, 2019 at 09:58:55AM -0700, Armin Kuster wrote:
> >> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >> ---
> >>  recipes-security/sssd/sssd_1.16.3.bb | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
> >> index 8f7f805..d39fa23 100644
> >> --- a/recipes-security/sssd/sssd_1.16.3.bb
> >> +++ b/recipes-security/sssd/sssd_1.16.3.bb
> >> @@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
> >>  PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
> >>  PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
> >>  PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
> >> -PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
> >> +PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto10"
> >> ...
> > This looks wrong for multiple reasons, and it still gave the same error 
> > when I tried it.
> That is troubling. I don't see any errors here. Thanks for the feed
> back. I will have to dig at this a bit more.
> 
> Can you provide some build detail so that I can reproduce it?

Try building the package without nss but with cyrpto (sic) in PACKAGECONFIG.

> > How has this change been tested?
> Not for this change.
> 
> Which reminds me I should automate some testing for this package.

This is not about automating testing.

This is about first reproducing the problem you are trying to fix,
and then verifying that your fix actually fixes this problem.

Which is the fundamental way to do any kind of bugfixing.[1]

This one line already contained two bugs,[2] and the commit added a 
third problem (usage of OpenSSL 1.0) without fixing any of these bugs.

The commit message not stating any reason why this change was done only 
adds to the confusion.
I thought originally this was a workaround for code not building with 
OpenSSL 1.1, which would then also be required for thud.

> regards,
> Armin

cu
Adrian

[1] this is not one of the harder cases where reproducing the problem
    would be a problem
[2] "cyrpto", and "libcrypto" instead of "openssl p11-kit"

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


