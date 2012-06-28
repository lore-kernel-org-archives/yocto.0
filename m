Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B68BE01304
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 13:27:34 -0700 (PDT)
Received: from [192.168.1.113]
	(cpc2-cmbg15-2-0-cust171.5-4.cable.virginmedia.com [86.26.12.172])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 2A979600C5
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 21:06:04 +0100 (BST)
Message-ID: <4FECBE32.5090203@communistcode.co.uk>
Date: Thu, 28 Jun 2012 21:27:30 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:13.0) Gecko/20120614 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1340911677.44429.YahooMailNeo@web121601.mail.ne1.yahoo.com>
In-Reply-To: <1340911677.44429.YahooMailNeo@web121601.mail.ne1.yahoo.com>
Subject: Re: Beagleboard BSP on BeagleBone?
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
X-List-Received-Date: Thu, 28 Jun 2012 20:27:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 28/06/2012 20:27, maniacbug wrote:
> Apologies if this is the wrong list, should it be on meta-ti?
>   
> Does anyone here know if the yocto 'beagleboard' BSP works on the BeagleBone board?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

You should use the Beaglebone BSP by adding the meta-ti layer and 
following the instructions in the meta-ti readme.

Regards,
Jack.


