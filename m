Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF47B4C80052
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 07:55:58 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB2DtvOv006568;
	Thu, 2 Dec 2010 05:55:57 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 2 Dec 2010 05:55:56 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 2 Dec 2010 05:55:56 -0800
Message-ID: <4CF7A56B.9090508@windriver.com>
Date: Thu, 02 Dec 2010 08:55:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 02 Dec 2010 13:55:57.0062 (UTC)
	FILETIME=[A4C08A60:01CB9228]
Cc: yocto@yoctoproject.org
Subject: Re: why cp in do_install() change file permission mode?
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
X-List-Received-Date: Thu, 02 Dec 2010 13:55:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-02 05:16 AM, Lu, Lianhao wrote:
> Hi fellows,
>
> Could anyone tell me why does the cp in do_install() change the file permission mode? Thanks!
>
> do_install () {
> 	rm -rf ${D}${installed_dir}
> 	install -d ${D}${installed_dir}
> 	cp -rp ${S}/* ${D}${installed_dir}
> }
>
> After "bitbake xxx -c install", I found the file under ${D}${installed_dir} had the permission mode of 0744 while the corresponding file under directory ${S} had the mode of 0644. Why did this happen? How to avoid this kind of mode change? Thanks!

What's the umask of the your uid ? .. or maybe this is
one of those settings that is controlled by bitbake/poky.
But either way, it should just be that the cp is taking
the current umask which is changing the mode to 0744.

One option is to use install to copy the files, since it
allows a specific set of permissions to be set on its
command line.

I haven't looked into this at all, just some thoughts
off the top of my head.

Cheers,

Bruce

>
> Best Regards
> -Lianhao Lu
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


