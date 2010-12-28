Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B38C44C80050
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 21:40:02 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBS3e1T5020906;
	Mon, 27 Dec 2010 19:40:01 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 27 Dec 2010 19:40:01 -0800
Received: from [128.224.163.159] ([128.224.163.159]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 27 Dec 2010 19:40:01 -0800
Message-ID: <4D195C39.20205@windriver.com>
Date: Tue, 28 Dec 2010 11:40:41 +0800
From: Liming Wang <liming.wang@windriver.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19A9BCD@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19A9BCD@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 28 Dec 2010 03:40:01.0546 (UTC)
	FILETIME=[E849CEA0:01CBA640]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: default dependencies not built in "bitbake -b"
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
X-List-Received-Date: Tue, 28 Dec 2010 03:40:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2010-12-28 10:21, Lu, Lianhao wrote:
> Hi fellows,
>
> Does anyone know why "bitbake -b<.bbfile>" fails on a newly cloned poky tree, complaining about the cross-compiler can not be found in the PATH. Does  "bitbake -b" build the default dependencies?
I think it doesn't build the dependencies if you a .bb file.

Liming Wang
> Best Regards,
> -Lianhao Lu
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


