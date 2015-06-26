Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4993E009DF; Fri, 26 Jun 2015 15:47:14 -0700 (PDT)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BBBBE00947
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 15:47:08 -0700 (PDT)
Received: by pdbep18 with SMTP id ep18so60564449pdb.1
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 15:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=BXbh2nnhs1Kv9gtPNp8z5wlYZgm5UnhsUNoyHhdlUOo=;
	b=gthsnqMl1bx491dz0DdUFCEshyT1GvN96ykzttLxB/1Pl40MtdpRwwqil3B1hz28eU
	JFG14gCZOHfzymk5q1B0aP8w15xbekkcZBFDFAo1rYs7qtVnPQZWT061OlGNSr7/fJju
	6GEC+iPUZ+D/0h2ZpFYMlZ/dDkrWf3K8EZ6K8Qp8ATliC/bvec8W2oRX5weDbGTDxntn
	EPeMAxBH963L0WDYNyGRYj4W38/nEt+KRWY28rDEg3WIp2OHR/Vta+x23kn8arFHfIwU
	hBn+opCLZYe+mmNwI6O07ZieCYNm0nnHjw9Q9clXt8WvDZWZZJIEsUONa6df7cX0GEmm
	7WQw==
X-Received: by 10.69.31.171 with SMTP id kn11mr7506145pbd.119.1435358827604;
	Fri, 26 Jun 2015 15:47:07 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:dc83:bde:8b44:3ed3?
	([2601:202:4000:1239:dc83:bde:8b44:3ed3])
	by mx.google.com with ESMTPSA id
	oa3sm34369206pbb.23.2015.06.26.15.47.05 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Jun 2015 15:47:06 -0700 (PDT)
Message-ID: <558DD667.9030200@gmail.com>
Date: Fri, 26 Jun 2015 15:47:03 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1435216740-20173-1-git-send-email-biannm@cn.fujitsu.com>
In-Reply-To: <1435216740-20173-1-git-send-email-biannm@cn.fujitsu.com>
Subject: Re: [meta-security][PATCH] samhain-server: fix build warn
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
X-List-Received-Date: Fri, 26 Jun 2015 22:47:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Bian,

thanks,

merged.

- armin

On 06/25/2015 12:19 AM, Bian Naimeng wrote:
> WARNING: QA Issue: /etc/init.d/samhain-server_samhain-server contained in package samhain-server requires /bin/bash, but no providers found in its RDEPENDS [file-rdeps]
>
> Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> ---
>   recipes-security/samhain/samhain-server_3.1.5.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/samhain/samhain-server_3.1.5.bb b/recipes-security/samhain/samhain-server_3.1.5.bb
> index fd6da3d..b8ea248 100644
> --- a/recipes-security/samhain/samhain-server_3.1.5.bb
> +++ b/recipes-security/samhain/samhain-server_3.1.5.bb
> @@ -47,4 +47,4 @@ FILES_${PN}-dbg += " \
>       ${sbindir}/.debug/* \
>       "
>
> -DEPENDS_${PN} += "gmp bash"
> +RDEPENDS_${PN} += "gmp bash"
>

