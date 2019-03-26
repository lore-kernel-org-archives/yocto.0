Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A80BCE00C1E; Tue, 26 Mar 2019 03:24:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6933EE00BAF
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 03:24:48 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44T6gy5hmJz5m;
	Tue, 26 Mar 2019 11:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553595887;
	bh=mMNQZ5iOU4hxJKf1X5KFQoNLz4MElGtWFGWLdoJqPX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TJ8ZYj7fz9rNgEiHzN45Fy6YPi9iL4YcYPJSJdtQOwDLd9yKmzKWzH4wjf+ccMjpg
	gMJbdAIo4RKLDSao6WTFWe5LNhmhlgVD2VbOiwVr1mrxvqJ3lKaP2mw13LdDAmnDZe
	UCBWZCidRgyGUlv4OyTALYMc7tNuEhhawIkXQtAKyjuFfjOfo6LWg0mxPFuae6ci1Z
	Xc8UIs8OH7CLPsa+R2EmdRKcNxnAb0C75sw36J4e535R2Wo87YaIqpkS0ouMqyRB1l
	Fir7UQYGN1y3mat8YyRd52FFl3nSKrV1qdmeUK/D/buSGST7Feh3A1XP/tnUN7eLjB
	tHd4YxZ4ML1wtGV2vYw2PticUigDTFPbgpSYp8fTlvrom0V3H69nT0KbWMGBw9sbY5
	znrP55fCAP/fHeWBzairp/pkh9SI6E/uPjO2nz3LPQYTS86/naihZLCBxcBwWJXsyJ
	Kvqn8tkaYa7m2By+vzJg1HOZej2khecKWZx2kVYFBmKF40qycE2FKC6aLFjF/dBSTr
	5491UYmAsnbPiIjS63qRQYIz8gXvIa73D80VPu/66XsJpv6bg2+iX8VTDAdEMfp5h3
	O4EdUKfkFwXXIEyvImAvcPiX/X2osUontj2atCeLpWsCRGPOJ6UB9aL4nh0bWq7mWi
	biGCt4aIaDcXQQjvaQ6gDiSE=
Date: Tue, 26 Mar 2019 12:24:44 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190326102444.GA19885@localhost>
References: <20190325165855.9222-1-akuster808@gmail.com>
	<20190325165855.9222-2-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190325165855.9222-2-akuster808@gmail.com>
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
X-List-Received-Date: Tue, 26 Mar 2019 10:24:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Mar 25, 2019 at 09:58:55AM -0700, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/sssd/sssd_1.16.3.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
> index 8f7f805..d39fa23 100644
> --- a/recipes-security/sssd/sssd_1.16.3.bb
> +++ b/recipes-security/sssd/sssd_1.16.3.bb
> @@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
>  PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
>  PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
>  PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
> -PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
> +PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto10"
>...

This looks wrong for multiple reasons, and it still gave the same error 
when I tried it.

How has this change been tested?

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


