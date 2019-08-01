Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 083DCE00E39; Thu,  1 Aug 2019 13:54:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99336E00E35
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 13:54:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x71KsJxO001689
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Aug 2019 13:54:19 -0700 (PDT)
Received: from [128.224.56.213] (128.224.56.213) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 1 Aug 2019 13:54:18 -0700
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWT8zsyukcEBT=C9XAYLMt2tCaRqZT6Z_5ijQKnSdrAQRw@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <867c4cd9-27b2-f7b0-63e0-c0a74a261675@windriver.com>
Date: Thu, 1 Aug 2019 16:54:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWT8zsyukcEBT=C9XAYLMt2tCaRqZT6Z_5ijQKnSdrAQRw@mail.gmail.com>
X-Originating-IP: [128.224.56.213]
Subject: Re: Anyone tried to build and to use QUIC?
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
X-List-Received-Date: Thu, 01 Aug 2019 20:54:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 7/31/19 7:06 AM, JH wrote:
> Hi,
> 
> I searched recipes for supporting QUIC, but could not find it. Has
> anyone tried to build and to use QUIC?
> 
> Thank you.
> 
> Kind regards,
> 
> - JH
> 

Hi,

I presume that you mean QUIC (Quick UDP Internet Connections)
as in:
    https://github.com/conght/quic

I also couldn't find an existing recipe using:
    https://layers.openembedded.org/layerindex/branch/master/recipes/?q=QUIC

or by a general web search.

Do you have a specific implementation in mind?
Care to write a recipe and send it in?
FYI:
   http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Alternatively contractors and companies are available if you want to go
that route.

-- 
# Randy MacLeod
# Wind River Linux

