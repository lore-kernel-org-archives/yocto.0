Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08B23E0096C; Wed, 30 Apr 2014 08:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
X-Greylist: delayed 6907 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 08:22:31 PDT
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C538FE003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 08:22:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3UDRFoq016338
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Apr 2014 06:27:15 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 30 Apr 2014 06:27:15 -0700
Message-ID: <5360FA25.40006@windriver.com>
Date: Wed, 30 Apr 2014 09:27:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Sudhangathan B S <sudhangathan@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "General mailing list for gumstix users."
	<gumstix-users@lists.sourceforge.net>
References: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
In-Reply-To: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
Subject: Re: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Wed, 30 Apr 2014 15:22:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-30 03:40 AM, Sudhangathan B S wrote:
> Hi all,
>
> I need to prevent my wifi drivers auto loading during boot time. How do
> we do it in the Poky OS or in the Yocto project..?

Are you actually seeing a confirmed auto load of modules ?

In a standard image kernel modules will not be autoloaded unless
specifically requested via a recipe with : module_autoload_<module name>.

I'm not talking about a usermode helper / on demand load, but
an explicit autoload + dependencies.

Bruce



>
> I tried both the fedora way and debian way, neither worked.! this is as
> given in this website..:
> http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html
>
>
> I'm using gumstix overo hardware..! Poky version 9.0.2, Yocto Project
> 1.4 Reference Distro, 1.4.2 overo.
>
>
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>


