Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD69BE0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:51:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0AFp3ZT024360
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jan 2012 07:51:03 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Jan 2012 07:51:03 -0800
Message-ID: <4F0C5E5F.1050709@windriver.com>
Date: Tue, 10 Jan 2012 10:50:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <CANFv2Emzgi2GqXGbLCJ4Ej+umyPHsNmJQ_eMj-6A0XAcVeFtyg@mail.gmail.com>
In-Reply-To: <CANFv2Emzgi2GqXGbLCJ4Ej+umyPHsNmJQ_eMj-6A0XAcVeFtyg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto on Acer Aspire One NAV50
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
X-List-Received-Date: Tue, 10 Jan 2012 15:51:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-10 10:47 AM, James Abernathy wrote:
> I created a core-image-sato using the meta-n450 BSP hoping I could work
> with it on the Acer Aspire One 532h-2588. However, that netbook uses the
> Atheros AR5B95 wireless NIC and the Atheros AR8132 wired NIC, which are
> not recognized. Is there anything already in Yocto that could be turned
> on to support these devices, or am I left with porting the drives?
> Since Ubuntu 11.10 with it's kernel 3.0.0 supports these devices and
> runs on the netbook, I'm guessing it's a matter of configuring the
> kernel to include these modules.
> Does this sound right??

That should be all that is required. If the drivers you need are
indeed in 3.0 (I didn't go check explicitly), then you can create
a bbappend for the BSP in a layer, and add a configuration fragment
that enables the drivers you need (as modules or builtin, your
choice).

Examples of config fragments are in the BSP/kernel guides found on
the yocto project pages.

Cheers,

Bruce

> Jim A
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


