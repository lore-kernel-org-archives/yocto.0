Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6CB2E002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 22:01:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7E51Qba023332
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 13 Aug 2012 22:01:26 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.247) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Mon, 13 Aug 2012 22:01:25 -0700
Message-ID: <5029DBA4.5090500@windriver.com>
Date: Tue, 14 Aug 2012 01:01:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <1344909019-5708-1-git-send-email-twoerner@gmail.com>
In-Reply-To: <1344909019-5708-1-git-send-email-twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH poky-extras] layer.conf: clarify comments
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2012 05:01:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-13 9:50 PM, Trevor Woerner wrote:
> From: Trevor Woerner<twoerner@gmail.com>
>
> The recipes are no longer stored in a "packages" directory but in directories
> under recipes-*.

I grabbed this and pushed it to the poky-extras repo.

Thanks!

Bruce

>
> Signed-off-by: Trevor Woerner<twoerner@gmail.com>
> ---
>   meta-kernel-dev/conf/layer.conf |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-kernel-dev/conf/layer.conf b/meta-kernel-dev/conf/layer.conf
> index ea889e8..642d485 100644
> --- a/meta-kernel-dev/conf/layer.conf
> +++ b/meta-kernel-dev/conf/layer.conf
> @@ -5,7 +5,7 @@ BB_DANGLINGAPPENDS_WARNONLY ?= "true"
>   # We have a conf and classes directory, add to BBPATH
>   BBPATH := "${BBPATH}:${LAYERDIR}"
>
> -# We have a packages directory, add to BBFILES
> +# We have recipes-* directories, add to BBFILES
>   BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>               ${LAYERDIR}/recipes-*/*/*.bbappend"
>


