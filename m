Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F3E1E00AB9; Mon, 25 Jan 2016 08:07:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E6D9E0090A
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 08:07:26 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aNjfp-0002A9-Tx from Fahad_Usman@mentor.com ;
	Mon, 25 Jan 2016 08:07:26 -0800
Received: from [137.202.156.162] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Mon, 25 Jan 2016 16:07:24 +0000
To: Jon Szymaniak <jon.szymaniak@gmail.com>, "Randle, William C"
	<william.c.randle@intel.com>
References: <56A24847.9030807@mentor.com>
	<D96972A3E240BC4EACF7427F056A1F40AA7727@ORSMSX105.amr.corp.intel.com>
	<CANge7vUTDqqVObLvfrp=ePM0HHJuv2uJZG7KbrQg7Zt2BpxfCw@mail.gmail.com>
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <56A64838.908@mentor.com>
Date: Mon, 25 Jan 2016 21:07:20 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CANge7vUTDqqVObLvfrp=ePM0HHJuv2uJZG7KbrQg7Zt2BpxfCw@mail.gmail.com>
X-Originating-IP: [137.202.0.76]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yvanderv@opensource.altera.com" <yvanderv@opensource.altera.com>
Subject: Re: Altera Cyclone V u-boot-spl with meta-altera
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
X-List-Received-Date: Mon, 25 Jan 2016 16:07:28 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/23/2016 01:31 AM, Jon Szymaniak wrote:
>
> If you upgrade to the U-Boot 2016.01 (or maybe even earlier?), mkimage 
> actually supports adding the Bootrom signature to the SPL for you.  
> The current makefile is kind enough to concatenate the U-Boot SPL and 
> its DTS for you, and then run mkpimage to create an 
> 'spl/u-boot-spl-dts.sfp' file [1].
Thanks Jon Szymaniak,
I was not aware that the bootrom signature support has been added to the 
current version of u-boot. I was able to built the 
u-boot-with-spl-dtb.sfp target and the single concatenated u-boot file 
worked on Cyclone 5 board right away.

Regards,
Fahad.

