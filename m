Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336C8E00543
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 22:12:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAK6BxdC009808
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Nov 2013 22:12:00 -0800 (PST)
Received: from server.local (128.224.21.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 19 Nov 2013 22:12:00 -0800
Message-ID: <528C52B4.5070001@windriver.com>
Date: Wed, 20 Nov 2013 01:12:04 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Zhenhua Luo <zhenhua.luo@freescale.com>, <yocto@yoctoproject.org>
References: <1384853291-10215-1-git-send-email-zhenhua.luo@freescale.com>
In-Reply-To: <1384853291-10215-1-git-send-email-zhenhua.luo@freescale.com>
Cc: b40290@freescale.com, b40527@freescale.com
Subject: Re: [meta-cloud-services][PATCH] python-horizon: remove nodejs from RDEPENDS of powerpc arch
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
X-List-Received-Date: Wed, 20 Nov 2013 06:12:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2013, 4:28 AM, Zhenhua Luo wrote:
> Nodejs only supports arm, x86 and ia32 archs, it doesn't support powerpc.

This looks good. I'm making some other significant changes at the
moment, but I've queued the patch.

Bruce

>
> Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> ---
>   meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb b/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
> index fdd0bd0..edd8dae 100644
> --- a/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
> +++ b/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
> @@ -63,8 +63,7 @@ FILES_${SRCNAME} = "${bindir}/* \
>       ${datadir}/* \
>       "
>
> -RDEPENDS_${PN} += "nodejs \
> -    python-django \
> +RDEPENDS_${PN} += " python-django \
>       python-django-appconf \
>       python-django-compressor \
>       python-django-openstack-auth \
> @@ -80,6 +79,11 @@ RDEPENDS_${PN} += "nodejs \
>       python-lockfile \
>       "
>
> +RDEPENDS_${PN}_arm += " nodejs"
> +RDEPENDS_${PN}_i686 += " nodejs"
> +RDEPENDS_${PN}_x86-64 += " nodejs"
> +RDEPENDS_${PN}_ia32 += " nodejs"
> +
>   RDEPENDS_${SRCNAME} = "${PN}"
>
>   INITSCRIPT_PACKAGES = "${SRCNAME}"
>


