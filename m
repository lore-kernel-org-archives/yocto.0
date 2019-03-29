Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC532E00D26; Thu, 28 Mar 2019 23:50:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8643E00872
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 23:50:18 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44Vsn507Z7z3s;
	Fri, 29 Mar 2019 07:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553842217;
	bh=BMTaBEqmgFl5gYB4Caoyg2YLGmeBb52wCpkdS5GqC0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZsLnTXqPvhoSsE1jUyMvqTvzo6+dRzMnQBZQMWM5cLDIm8hrlYfcMs+x6LBjFnwvL
	66oEUvLg+yBL0JVz531rFnlUEl/+2ORkrOf3zwvsdcdyRC4adb8XeYbd+OuLEJV5BZ
	mfSO+jyNubj+45DQ64URiyQnO4wYfZY6S1Fg0MJerZiZJ7G5CBOmthrq9VepXg2duE
	bUFxyA+Q3o0Y5Z1p8GVgQm8wt1P46FVmSQ4iny24bM6AFaJMORmaBaONUUu26aCNuf
	Rktc5lWugmAyoj4TIqTraAkD7xH5L+4s3MF4VRv7VMMlTBaMLAI+3caGyJZoiMA5Hk
	igCIKcJKmVcncuqgF8QEVrMZfkKTMMqwf18H8EMRBgqXq5SE8A+mPv4tzWhLf+oYGH
	Tx6guNDWgzJKTPR+5CR6FQi6TJ7+ZExSODcx+2rgmRytpSmWrQMNJnDdZ4XBV2r5sb
	v4jjmFLRBM/GcW0jSS1nmMwGkP41+do638YN8rf4N4flVBq44RdBtzCrr0mpr9dSFQ
	8N+cL2KbHCX/n1TIA5EVD7lGFWG629iPlkB/AVJXuD7NwTDpMj7aixgfJlT18JU8Nq
	cJvBJ+1H8Y1WWs1p17PSsZHvzsQd3ouDEGiq91ACsuu+YDZyytHpWn4CIAlGcnA1Hj
	L13MGH5p7M7C/KTwxmsd2zZU=
Date: Fri, 29 Mar 2019 08:50:14 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190329065014.GA26574@localhost>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-2-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190329052821.13718-2-akuster808@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/5] libldb: work around samba libldb packaging issues
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
X-List-Received-Date: Fri, 29 Mar 2019 06:50:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Mar 28, 2019 at 10:28:18PM -0700, Armin Kuster wrote:
> Samba and libldb overlap in a few places. This is the simplest fix for
> now.

Adding a quick hack for interaction problems between two packages
that are both in meta-openembedded by adding a .bbappend in 
meta-security creates a technical debt while not even helping
users who are not using meta-security.

The proper solution is likely to make samba use the external libldb 
instead of an internal copy.

> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-support/libldb/libldb_%.bbappend | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 recipes-support/libldb/libldb_%.bbappend
> 
> diff --git a/recipes-support/libldb/libldb_%.bbappend b/recipes-support/libldb/libldb_%.bbappend
> new file mode 100644
> index 0000000..2633a1e
> --- /dev/null
> +++ b/recipes-support/libldb/libldb_%.bbappend
> @@ -0,0 +1,22 @@
> +# This fixes this issue:
> +#ERROR: sssd-1.16.3-r0 do_prepare_recipe_sysroot: The file /usr/lib/python2.7/site-packages/_ldb_text.py is installed by both libldb and samba, aborting
> +
> +EXTRA_OECONF += "--disable-python"
>...

So just adding the meta-security layer will turn the pyldb* packages 
into empty packages?

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


