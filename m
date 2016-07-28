Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78400E00F81; Thu, 28 Jul 2016 07:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46937E00F7D;
	Thu, 28 Jul 2016 07:04:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u6SE4iex006372
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 28 Jul 2016 07:04:46 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 28 Jul 2016 07:04:43 -0700
To: Zhenhua Luo <zhenhua.luo@nxp.com>, "linux-yocto@yoctoproject.org"
	<linux-yocto@yoctoproject.org>
References: <DB6PR0401MB2630D6994223E53162C77D4CEE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <579A10FB.10805@windriver.com>
Date: Thu, 28 Jul 2016 10:04:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <DB6PR0401MB2630D6994223E53162C77D4CEE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] The kernel versions used by Yocto
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
X-List-Received-Date: Thu, 28 Jul 2016 14:04:55 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-28 12:00 AM, Zhenhua Luo wrote:
> Hi,
>
> I want to understand the kernel version selection criteria of Yocto
> release, can somebody please help to comment on it? I recall that Yocto
> uses the LTSI kernel, may I know if this is still the case?


I was about to describe the process .. but then remembered that it was
captured in the wiki, I managed to find it!

https://wiki.yoctoproject.org/wiki/Linux_Yocto

Bruce

>
> Best Regards,
>
> Zhenhua
>
>
>


