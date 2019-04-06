Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6396E00CDF; Sat,  6 Apr 2019 08:01:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87E7CE00994
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 08:01:44 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44c0JQ5VhVz5m;
	Sat,  6 Apr 2019 17:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554562903;
	bh=UAxpjQDB2xHxF1AKiViA3+/tDx+mjR9NsK8I5Rg+FUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cYOdABYmJTHz69Um9ZPft/2MNIbnt+iiW0JuD3IWWc6zqlLNEbOeOh5q3SMNT0Pkh
	E3YjfWzhzWt/+pX2T0e9uhYnANzK1KE/bxSra7rdOnM1OEwTxxn5ENFfOQMjb7KF9l
	fDOCuKovd+Kh5eb70ZiQf3pNSlvRBokTNd0+EGfQZPGjrmP3P6zl2Q0QYeSbfPX7bV
	Sp60ol8/wg5OfnmUD9yAbbsWs2cyZ4youw+op5QrJyGi1//6R65ewf79/69i9dtIV4
	FKBOUVaBmLdHij8ZlinOQfkitAhMZzYxnSKnltqCrJD5P/xxTTfzAsCYBuYsvl++HR
	Oj3l+bSPxd1HUBKeJqdQ1iuX7MWyljMLU3/3Lpged8PcRfxo57HBQk8himJJWBxxIR
	2a0k1RuDE8fY4qcJY6I73BmUe3aRT+oaFBD3UW3WVvJNCGvDNbD3kibU6bY7Op7vRH
	IU2pwuL3tDR4CZwHjYK+KEHDwgZs+kL9+X344QxRnpfhA7wflsO+m7jz/1bBZWOUxV
	qQtR/lQLlzYX36uxUSoUVKZN4App5CbzXkNS1DxvPkA6LNs2enUJiFd32mYwTQ7Sd1
	0nGuI2OUacNA/xopzi/HkAG5Kp/lNZi8/Q1MsdXzUeWhBwpNQF29ZvaFbxtdzb8OKZ
	a7G3KAI8Q1ZqYska2bS0G0Us=
Date: Sat, 6 Apr 2019 18:01:40 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190406150140.GA25634@localhost>
References: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: freshclam need bind to run
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
X-List-Received-Date: Sat, 06 Apr 2019 15:01:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat, Apr 06, 2019 at 08:15:40PM +0530, Armin Kuster wrote:
> Add it to the rdepends for that package
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/clamav/clamav_0.99.4.bb | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
> index 6219d9e..dbe903f 100644
> --- a/recipes-security/clamav/clamav_0.99.4.bb
> +++ b/recipes-security/clamav/clamav_0.99.4.bb
> @@ -152,3 +152,5 @@ RCONFLICTS_${PN} += "${PN}-systemd"
>  SYSTEMD_SERVICE_${PN} = "${BPN}.service"
>  
>  RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
> +
> +RDEPENDS_freshclam = "bind"

freshclam depending on a DNS server looks very wrong.

What is the actual problem?

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


