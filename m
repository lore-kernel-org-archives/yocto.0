Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D28EE0082D; Wed,  4 Feb 2015 10:17:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C90F5E00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 10:17:27 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[172.16.1.11])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YJ4U2-0003KI-0G; Wed, 04 Feb 2015 18:15:26 +0000
Message-ID: <54D2622E.9050708@twobit.us>
Date: Wed, 04 Feb 2015 13:17:18 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Icedove/31.3.0
MIME-Version: 1.0
To: Armin Kuster <akuster808@gmail.com>
References: <1422673355-29535-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1422673355-29535-1-git-send-email-akuster808@gmail.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] ustr: fix typo in SRC_URI
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
X-List-Received-Date: Wed, 04 Feb 2015 18:17:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Armin,

I've submitted a very similar patch a few days earlier. This was bundled
up into a larger series that *should* get meta-selinux master building
again. See:
https://lists.yoctoproject.org/pipermail/yocto/2015-January/023314.html

Philip

On 01/30/2015 10:02 PM, Armin Kuster wrote:
> From: Armin Kuster <akuster@mvista.com>
> 
> This fixes
> ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
> http://www.and.org/ustr/$%7BBPV%7D/ustr-1.0.4.tar.bz2:
> 2015-01-30 18:26:38 ERROR 404: Not Found.
> 
> Changed "BPV" to "PV"
> 
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  recipes-extended/ustr/ustr_1.0.4.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
> index a0a1e41..cdb78ad 100644
> --- a/recipes-extended/ustr/ustr_1.0.4.bb
> +++ b/recipes-extended/ustr/ustr_1.0.4.bb
> @@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
>  		    file://LICENSE_MIT;md5=c61e779b782608472bd87593c3c3916f"
>  
>  SRC_URI = "\
> -    http://www.and.org/ustr/${BPV}/${BPN}-${PV}.tar.bz2 \
> +    http://www.and.org/ustr/${PV}/${BPN}-${PV}.tar.bz2 \
>      file://ustr-makefile-fix.patch;patch=1 \
>      file://ustr-fix__va_copy-not-defined.patch;patch=2 \
>      file://ustr-c99-inline.patch;patch=3"
> 


