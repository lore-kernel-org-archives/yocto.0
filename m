Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F0CFE00C18; Wed, 18 May 2016 13:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D4DE00BA1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:23:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u4IKNUwt004582
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 May 2016 13:23:30 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 18 May 2016 13:23:30 -0700
To: Khem Raj <raj.khem@gmail.com>, <yocto@yoctoproject.org>
References: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <d9108ecb-9554-821f-8641-4e5df9c399df@windriver.com>
Date: Wed, 18 May 2016 15:23:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [meta-qt4][PATCH 1/2] layer.conf: Use immediate expansion
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
X-List-Received-Date: Wed, 18 May 2016 20:23:36 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 5/18/16 3:11 PM, Khem Raj wrote:
> Matches most of layers defaults
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 62ce9cc..39c2421 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -5,6 +5,6 @@ BBPATH .= ":${LAYERDIR}"
>  BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
>  
>  BBFILE_COLLECTIONS += "qt4-layer"
> -BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
> +BBFILE_PATTERN_qt4-layer := "^${LAYERDIR}/"

This is really strange.  ${LAYERDIR} always immediate expands.  So there should
be no ifferences between the two.

--Mark

>  BBFILE_PRIORITY_qt4-layer = "6"
>  
> 


