Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B46AE014E4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 02:06:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5S96JmE025445
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 02:06:19 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Fri, 28 Jun 2013 02:06:17 -0700
Message-ID: <51CD521D.1040905@windriver.com>
Date: Fri, 28 Jun 2013 17:06:37 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
In-Reply-To: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
X-Originating-IP: [128.224.162.233]
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 09:06:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/28/2013 04:55 PM, Chris Tapp wrote:
> I'm experimenting with meta-fsl-arm and I need to use 'master' for some of the latest updates. However, when I build I get told that "Bitbake requires Python 2.7.3".
>
> My development system is Ubuntu 11.10, which only has 2.7.2 (and is out of support, so no updates!) and the "latest" "Quick Start" manual simply says that 2.7 is required.
>
> Is 2.7.3 now a hard requirement (in which case the documentation could do with a minor change), or is the version test being too specific?

I run into the same problem on Ubuntu 11.10, and I installed python2.7.5.
Everything's been working out well so far.


//Chen Qi
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


