Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F12FE0053E; Mon,  7 Jul 2014 06:30:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7FF2E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 06:30:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s67DUCoK009028
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 Jul 2014 06:30:13 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 7 Jul 2014 06:30:12 -0700
Message-ID: <53BAA0C2.4000105@windriver.com>
Date: Mon, 7 Jul 2014 09:29:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1407070907540.9045@localhost>
In-Reply-To: <alpine.LFD.2.11.1407070907540.9045@localhost>
Subject: Re: how many variations to build for a beaglebone black (BBB)?
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
X-List-Received-Date: Mon, 07 Jul 2014 13:30:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-07-07 09:13 AM, Robert P. J. Day wrote:
>
>    i want to build a bootable system for a BBB, and i can see at least
> three possibilities:
>
>    1) the meta-yocto-bsp layer defines the beaglebone as one of its
>       reference boards
>
>    2) the "meta-ti" layer is advertised as "official" TI board support
>
>    3) there is a "meta-beagleboard" layer, but that one looks a bit
>       stagnant
>
> any preferences out there for people working with the BBB?

The generic "it depends" answer applies here.

Due to the efforts of TI,the core BBB support made it into the mainline
kernel for 3.14, so that forms a common baseline of feature support.

Outside of that, it depends on the functionality you need in the image
and your familiarity with integration of multiple layers and features.

meta-ti gets you the latest and greatest features and support, while
the reference BSP was also done by TI to provide a good baseline level
of support (graphics, usb, ethernet, etc) and is supported via Wind River
in the linux-yocto repository.

Cheers,

Bruce

>
> rday
>


