Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD19EE00BAF; Tue, 24 Jul 2018 23:47:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F080CE00B6C
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 23:47:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6P6l7lL005714
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 23:47:07 -0700
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 24 Jul 2018 23:47:06 -0700
To: <yocto@yoctoproject.org>
References: <1532500882-248786-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <404f5d1f-67ba-9044-9e41-89342469c425@windriver.com>
Date: Wed, 25 Jul 2018 14:47:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1532500882-248786-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [PATCH] pacemaker: remove depend on openais
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
X-List-Received-Date: Wed, 25 Jul 2018 06:47:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Please ignore this patch.

On 07/25/2018 02:41 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> corosync 1.x have removed from meta-cgl, and use corosync under
> meta-networking.
>
> corosync 2.x can replace corosync 1.x + openais (in meta-cgl),
> so remove depend on openais
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
> index 9aeb1fb..8726111 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
> @@ -11,7 +11,7 @@ HOMEPAGE = "http://www.clusterlabs.org"
>   LICENSE = "GPLv2+ & LGPLv2.1+"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=19a64afd3a35d044a80579d7aafc30ff"
>   
> -DEPENDS = "corosync libxslt openais libxml2 gnutls resource-agents libqb python-native"
> +DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python-native"
>   
>   SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
>              file://0001-pacemaker-fix-xml-config.patch \

-- 
BRs

Sandy(Li Changqing)
+861084778653


