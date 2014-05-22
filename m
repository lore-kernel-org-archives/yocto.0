Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 437F9E00A44; Thu, 22 May 2014 06:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C58DE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:56:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4MDuEu0006751
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:56:15 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Thu, 22 May 2014 06:56:14 -0700
Message-ID: <537E01FE.9010804@windriver.com>
Date: Thu, 22 May 2014 08:56:14 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1400729319-1099-1-git-send-email-Chong.Lu@windriver.com>
In-Reply-To: <1400729319-1099-1-git-send-email-Chong.Lu@windriver.com>
Subject: Re: [meta-selinux][PATCH] setools: Add bison and flex to DEPENDS
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
X-List-Received-Date: Thu, 22 May 2014 13:56:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/21/14, 10:28 PM, Chong Lu wrote:
> Avoid policy_scan.c: No such file or directory
>
> Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
> ---
>   recipes-security/setools/setools_3.3.8.bb |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
> index 1e95a60..3425064 100644
> --- a/recipes-security/setools/setools_3.3.8.bb
> +++ b/recipes-security/setools/setools_3.3.8.bb
> @@ -27,7 +27,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
>                       file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
>                       file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
>
> -DEPENDS += "python libsepol libselinux libxml2"
> +DEPENDS += "bison flex python libsepol libselinux libxml2"

I suspect the above is incorrect, shouldn't this be "bison-native" (or 
"bison-native bison")?

During cross compilation, it's the native bison that produces the .c code.

--Mark

>
>   PACKAGE_BEFORE_PN += "${PN}-libs"
>
>


