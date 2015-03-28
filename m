Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59F3EE00970; Fri, 27 Mar 2015 22:27:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4583E0096A
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 22:27:38 -0700 (PDT)
Received: by pdnc3 with SMTP id c3so116824211pdn.0
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 22:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=8qhqo5kDElcVOTzMLvEZmXKISdQIN4ODOv/lzAyJCSU=;
	b=oY1mrPa091Q/A8UIFKl3vlOUywI0ppkuKsh2z3e/VHpyO9yJz+MWmc6OBeIez0UrGK
	/n9ubFdk82RXDDRwjdc2/5uHI4uGaH+8oCcWC9AX598rbgRu9+XWujRXNufXGDTBqQCv
	58Eke8NmcOOLwan/g5E7H+c3SOieWUFGVjXc5kqT6TAbLmJ3K7gZJaiUgkfbIKyuuP7t
	S3J0a9Ym8VWEdqDZ5XZMkt/i7By1uPAJeyp4Yr6+O+wR64NzAFIG6cRpjCdUZcjC3Lnj
	JhdBeQK4Hsj18fYhAy/Dl6uP88Fd3T2NWNJHltlJZycz9upksxdalIR6s4LenF0u4mZI
	9dLA==
X-Received: by 10.68.87.5 with SMTP id t5mr40037321pbz.137.1427520457807;
	Fri, 27 Mar 2015 22:27:37 -0700 (PDT)
Received: from ?IPv6:2601:9:1b80:31f:744c:276a:f00c:82d7?
	([2601:9:1b80:31f:744c:276a:f00c:82d7])
	by mx.google.com with ESMTPSA id ha5sm3800829pbb.34.2015.03.27.22.27.35
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Mar 2015 22:27:36 -0700 (PDT)
Message-ID: <55163BC6.2070409@gmail.com>
Date: Fri, 27 Mar 2015 22:27:34 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1427491508-24428-1-git-send-email-hugo.saldanha@aker.com.br>
In-Reply-To: <1427491508-24428-1-git-send-email-hugo.saldanha@aker.com.br>
Subject: Re: [meta-security][PATCH] clamav: fix ncurses configure option
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
X-List-Received-Date: Sat, 28 Mar 2015 05:27:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

merged to master-next.

Thanks,
Armin

On 03/27/2015 02:25 PM, Hugo Vasconcelos Saldanha wrote:
> Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
> ---
>   recipes-security/clamav/clamav_0.98.5.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/clamav/clamav_0.98.5.bb b/recipes-security/clamav/clamav_0.98.5.bb
> index 8f71654..08604a7 100644
> --- a/recipes-security/clamav/clamav_0.98.5.bb
> +++ b/recipes-security/clamav/clamav_0.98.5.bb
> @@ -53,7 +53,7 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
>               --with-openssl=${STAGING_LIBDIR}/.. \
>               --with-zlib=${STAGING_LIBDIR}/.. \
>               --with-libbz2-prefix=${STAGING_DIR}${prefix} \
> -            --with-libcurses-prefix=${STAGING_LIBDIR}/.. \
> +            --with-libncurses-prefix=${STAGING_LIBDIR}/.. \
>   "
>
>   do_install_append () {
>

