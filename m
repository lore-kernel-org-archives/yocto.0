Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C1BE0051D
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 18:46:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r891kQfe025863
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 8 Sep 2013 18:46:26 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Sun, 8 Sep 2013 18:46:26 -0700
Message-ID: <522D2898.6050301@windriver.com>
Date: Mon, 9 Sep 2013 09:47:04 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <522C9C86.4050700@philipp-wagner.com>
In-Reply-To: <522C9C86.4050700@philipp-wagner.com>
X-Originating-IP: [128.224.162.233]
Subject: Re: How to include python-misc in SDK?
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
X-List-Received-Date: Mon, 09 Sep 2013 01:46:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2013 11:49 PM, Philipp Wagner wrote:
> Hi,
>
> I'm trying to build a SDK, which I can use to develop software for an
> image. I'm running
>
> bitbake -c populate_sdk my-image-name
>
> Afterwards I get a nice SDK, but I cannot really use it. The the
> software I'm building needs (on the host) the Python module "filecmp".
> This module is packaged inside python-misc, or nativesdk-python-misc, as
> far as I can tell.
>
> Right now the SDK contains some basic Python, but not this module, and
> since the PATH is set in a way that the build uses the python inside the
> SDK, my builds fail.
>
> So what do I need to do to get this package included in my SDK?

Try adding the following line in your local.conf.
TOOLCHAIN_HOST_TASK_append = " nativesdk-python-misc"

Cheers,
Chen Qi

> Philipp
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


