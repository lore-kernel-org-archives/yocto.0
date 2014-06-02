Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0777E00BC2; Mon,  2 Jun 2014 07:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B7ECE00B20
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 07:18:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s52EIgdI003994
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Jun 2014 07:18:42 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Mon, 2 Jun 2014 07:18:42 -0700
Message-ID: <538C87C1.7070404@windriver.com>
Date: Mon, 2 Jun 2014 09:18:41 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Chong Lu <Chong.Lu@windriver.com>, <yocto@yoctoproject.org>
References: <1400810369-14634-1-git-send-email-Chong.Lu@windriver.com>
In-Reply-To: <1400810369-14634-1-git-send-email-Chong.Lu@windriver.com>
Subject: Re: [meta-selinux][PATCH][V2] setools: Add bison-native and flex-native to DEPENDS
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
X-List-Received-Date: Mon, 02 Jun 2014 14:18:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Merged to master.

On 5/22/14, 8:59 PM, Chong Lu wrote:
> Avoid policy_scan.c: No such file or directory
>
> Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
> ---
>   recipes-security/setools/setools_3.3.8.bb |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
> index 1e95a60..ba1802a 100644
> --- a/recipes-security/setools/setools_3.3.8.bb
> +++ b/recipes-security/setools/setools_3.3.8.bb
> @@ -27,7 +27,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
>                       file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
>                       file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
>
> -DEPENDS += "python libsepol libselinux libxml2"
> +DEPENDS += "bison-native flex-native python libsepol libselinux libxml2"
>
>   PACKAGE_BEFORE_PN += "${PN}-libs"
>
>


