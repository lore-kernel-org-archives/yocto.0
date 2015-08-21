Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6AD1E00B4F; Fri, 21 Aug 2015 13:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 842B2E00B4A
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2015 13:49:20 -0700 (PDT)
Received: from [69.84.245.29] (helo=[10.11.19.209])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZStET-0001ip-Rp; Fri, 21 Aug 2015 20:48:14 +0000
Message-ID: <55D78EC8.4020606@twobit.us>
Date: Fri, 21 Aug 2015 13:49:12 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: jackie.huang@windriver.com
References: <1439961730-5486-1-git-send-email-jackie.huang@windriver.com>
In-Reply-To: <1439961730-5486-1-git-send-email-jackie.huang@windriver.com>
X-SA-Exim-Connect-IP: 69.84.245.29
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] e2fsprogs: now depend on attr
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
X-List-Received-Date: Fri, 21 Aug 2015 20:49:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

We probably don't need the comment since it's made clear by the DEPENDS
but other than that this LGTM.

Best,
Philip

On 08/18/2015 10:22 PM, jackie.huang@windriver.com wrote:
> From: Joe Slater <jslater@windriver.com>
> 
> Patches added by this bbappend make us depend on the attr
> package.
> 
> Signed-off-by: Joe Slater <jslater@windriver.com>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> index d8de9da..e65df12 100644
> --- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> +++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
> @@ -1,5 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>  
> +# These patches make us depend on attr.
> +DEPENDS += "attr"
> +
>  SRC_URI += " \
>      file://misc-xattr-add-xattr-module-stub.patch \
>      file://mke2fs.c-create_inode.c-copy-xattrs.patch \
> 


