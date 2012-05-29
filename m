Return-Path: <wmills@ti.com>
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C821E0044A
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 11:41:46 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4TIfh6V015364;
	Tue, 29 May 2012 13:41:44 -0500
Received: from DFLE71.ent.ti.com (dfle71.ent.ti.com [128.247.5.62])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4TIfh7D019116;
	Tue, 29 May 2012 13:41:43 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3;
	Tue, 29 May 2012 13:41:44 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q4TIfgZm017716;	Tue, 29 May 2012 13:41:42 -0500
Message-ID: <4FC51866.5050505@ti.com>
Date: Tue, 29 May 2012 14:41:42 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Rudolf Streif <rudolf.streif@linux.com>
References: <CA+gsK-qXd1De=kyWbkXXO_9M7VruxNT+DLvpH9ZykPdLE4v1pw@mail.gmail.com>	<CAPWh-0JB5PFxRw-8kX5+TEdWTpcq47n7TFqZpnst-QkO9O1PEw@mail.gmail.com>
	<CA+gsK-q9Sk2ba-W5EiPc=4+LJeu2dwLEk+QkehfGvE5XnQVV9A@mail.gmail.com>
In-Reply-To: <CA+gsK-q9Sk2ba-W5EiPc=4+LJeu2dwLEk+QkehfGvE5XnQVV9A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building linux-yocto kernel for BeagleBone
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
X-List-Received-Date: Tue, 29 May 2012 18:41:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/29/2012 12:11 PM, Rudolf Streif wrote:
> KMACHINE_beaglebone = "yocto/standard/beagleboard"

Sorry, they are not _that_ close.

> Any suggestions would be appreciated.

meta-ti has support for DM37x and for AM335x.  You can observe the 
differences there.

> On Sun, May 27, 2012 at 12:34 PM, Sanyaade Adekoya <sanyaade@gmail.com
> <mailto:sanyaade@gmail.com>> wrote:
>
>     Hi,
>     According to Ti, BeagleBone is just a small BeagleBoard in a small
>     factor so a common base like a bare build for BeagleBoard should run
>     on BeagleBone. I think the is same for OMAP family.
>
>

Yes, an AM335x uses the base OMAP family mach-omap2 but a binary kernel 
for the AM/DM35/37 won't work on it.

