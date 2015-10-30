Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A4BE00B76; Fri, 30 Oct 2015 11:42:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40828E00B5D
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 11:42:02 -0700 (PDT)
Received: by padhy1 with SMTP id hy1so75604301pad.0
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 11:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=MSYcEZVXrv2x/woMQVMZpVPptZ9gsMES/OB2KQMejlE=;
	b=qJ4YrgxKqqOc5nh+9tf08OmybnBRlQoEqyTeEuGRNfr6Az3xPF51qTC4NNImGolh9b
	cp9G6ejNU3AmmPC0H0T8yLXcyc95bAgfpY7AUENpj6lh/0ifN4z5ndJAwBYDMnd9nSOp
	nR1IVf4gVxozziwKXY7/ozbqjP+RiPYqTBZJLMWEkinVc0O1LTL7piQdHyVOPhDR8OIx
	O+pnjzOpXATESLcz2XLzglsNbxjbbvz7Tl9IbJqurkBslh2ntQTw8u0p2L+Z8Zk9IVkj
	wTZBdTEpBwHapf0dZuWTD91qmWfBKa3zTvAOkU80p2uoCsmGkdl7XN3kR43blMmliXRX
	6uEg==
X-Received: by 10.68.57.137 with SMTP id i9mr10265871pbq.101.1446230521963;
	Fri, 30 Oct 2015 11:42:01 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:b89f:56e0:63e5:80b9?
	([2601:202:4000:1239:b89f:56e0:63e5:80b9])
	by smtp.googlemail.com with ESMTPSA id
	ku1sm9503096pbc.47.2015.10.30.11.41.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Oct 2015 11:42:00 -0700 (PDT)
To: Li xin <lixin.fnst@cn.fujitsu.com>
References: <1446197859-1701-1-git-send-email-lixin.fnst@cn.fujitsu.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5633B9F6.5070509@gmail.com>
Date: Fri, 30 Oct 2015 11:41:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1446197859-1701-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] samhain: upgrade to 4.1.0
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
X-List-Received-Date: Fri, 30 Oct 2015 18:42:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Li Xin,

Master-next already has the 4.1.0 update. I have merged the additional
fixes to master-next.

thanks,
Armin

On 10/30/2015 02:37 AM, Li xin wrote:
> From: Li Xin <lixin.fnst@cn.fujitsu.com>
> 
> Also fix an error when "samhain -t check" is executed.
> The error is like this:
> 'ERROR: msg=<Record with bad version number in file signature database>,
> subroutine=<sh_dbIO_getdataent>, path=<(null)>'
> 
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>  .../samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb}    | 3 ++-
>  .../samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb}    | 0
>  recipes-security/samhain/samhain.inc                                | 6 +++---
>  3 files changed, 5 insertions(+), 4 deletions(-)
>  rename recipes-security/samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb} (79%)
>  rename recipes-security/samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb} (100%)
> 
> diff --git a/recipes-security/samhain/samhain-client_4.0.0.bb b/recipes-security/samhain/samhain-client_4.1.0.bb
> similarity index 79%
> rename from recipes-security/samhain/samhain-client_4.0.0.bb
> rename to recipes-security/samhain/samhain-client_4.1.0.bb
> index c671b48..bb47449 100644
> --- a/recipes-security/samhain/samhain-client_4.0.0.bb
> +++ b/recipes-security/samhain/samhain-client_4.1.0.bb
> @@ -8,7 +8,8 @@ EXTRA_OECONF += " \
>          --with-logserver=${SAMHAIN_SERVER} \
>          --with-port=${SAMHAIN_PORT} \
>          --with-config-file=/etc/samhainrc \
> -        --with-data-file=/var/lib/samhain/samhain_file \
> +        --with-data-file=/var/samhain/samhain.data \
> +        --with-pid-file=/var/samhain/samhain.pid \
>          "
>  
>  
> diff --git a/recipes-security/samhain/samhain-server_4.0.0.bb b/recipes-security/samhain/samhain-server_4.1.0.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-server_4.0.0.bb
> rename to recipes-security/samhain/samhain-server_4.1.0.bb
> diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index e33182f..dedcf76 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -8,9 +8,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>  	   file://${INITSCRIPT_NAME}.init \
>  	   file://${INITSCRIPT_NAME}.default \
>  	  "
> -
> -SRC_URI[md5sum] = "2144383cc5452b9b80c7e4e4c991ad4a"
> -SRC_URI[sha256sum] = "5a841708f78c6d9b4731970fa39151dff366885de08ecddc382e8c45a2c1b4e2"
> +SRC_URI[md5sum] = "fcb59c6c8a1d30cc6ffc21557a0046d3"
> +SRC_URI[sha256sum] = "a8e10454782a7f3bb5f709dd05cee695ffbd052afc709668a3e7c4b629771189"
>  
>  S = "${WORKDIR}/samhain-${PV}"
>  
> @@ -87,4 +86,5 @@ do_install_append () {
>  	install -d ${D}${docdir}/${PN}
>  	cp -r docs/* ${D}${docdir}/${PN}
>  	cp -r scripts ${D}${docdir}/${PN}
> +        install -d -m 755 ${D}/var/samhain
>  }
> 

