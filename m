Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BACC1E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 22:27:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q066RTE4010844
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Jan 2012 22:27:29 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 5 Jan 2012 22:27:28 -0800
Message-ID: <4F069435.2060701@windriver.com>
Date: Fri, 6 Jan 2012 14:27:01 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>,
	<bruce.ashfield@windriver.com>, <sgw@linux.intel.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<bc71f5e117ed7093e89b289b00126ad797428eb3.1325824274.git.zumeng.chen@windriver.com>
In-Reply-To: <bc71f5e117ed7093e89b289b00126ad797428eb3.1325824274.git.zumeng.chen@windriver.com>
Subject: Re: [PATCH 2/4] lttng-tools: Integrated from git repo.
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
X-List-Received-Date: Fri, 06 Jan 2012 06:27:34 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

于 2012年01月06日 14:11, Zumeng Chen 写道
> +DEPENDS = "liburcu popt lttng-ust"
>   
And there is a depend on liburcu, which version should
>= 0.6.6,
it just has been updated recently. Lucky and Thanks :)

Regards,
Zumeng
> +
> +SRC_URI = "http://lttng.org/files/lttng-tools/lttng-tools-${PV}.tar.bz2 \
> +	   file://fix-compiling-error-for-powerpc-arm-and-mips.patch"
> +
> +SRC_URI[md5sum] = "58ed0a15db80a00172d5b0413a55451c" 
> +SRC_URI[sha256sum] = "188d262bda80043dd939c9aa7aec1795ca77aeec0cb3c0f23c28bfe754049491"
> +
> +S = "${WORKDIR}/lttng-tools-${PV}"
> +
> +
> +inherit autotools
> +
> +export KERNELDIR="${STAGING_KERNEL_DIR}"
> +
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>   


