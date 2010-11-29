Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17C924C80039
	for <yocto@yoctoproject.org>; Sun, 28 Nov 2010 23:06:08 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAT561PN028478;
	Sun, 28 Nov 2010 21:06:01 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 28 Nov 2010 21:06:00 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.8]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 28 Nov 2010 21:06:00 -0800
Message-ID: <4CF334B6.2070502@windriver.com>
Date: Mon, 29 Nov 2010 00:05:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <ict4gj$kc3$1@dough.gmane.org>
In-Reply-To: <ict4gj$kc3$1@dough.gmane.org>
X-OriginalArrivalTime: 29 Nov 2010 05:06:00.0930 (UTC)
	FILETIME=[1D8A9420:01CB8F83]
Cc: yocto@yoctoproject.org
Subject: Re: yocto on beagelboard-xm
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
X-List-Received-Date: Mon, 29 Nov 2010 05:06:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-28 3:39 AM, Robert Berger wrote:
> Hi,
>
> As far as I saw the beagleboard is supported by the yocto project.
> What about the beaglebaord-xm?
> I will create a training for the beaglebaord-xm and would like to show
> yocto with it.

We don't currently have a kernel branch for it, but if sommeone
were to send any additional patches, or configuration to our beagleboard
kernel branch, the support would be easy enough to add.

We've recently had a few discussions on adding platforms, and BSP
bootstrapping on the list, so searching for that discussion is a
good starting point on what the steps are to start/add a new board
variant.

Cheers,

Bruce

>
> Regards,
>
> Robert
>


