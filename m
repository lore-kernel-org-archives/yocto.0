Return-Path: <prvs=5572ecbe2=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D62EE00D99; Fri, 26 Jan 2018 00:43:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail01.prevas.se (mail01.prevas.se [62.95.78.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD2DE00CF1
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 00:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=579; q=dns/txt;
	s=ironport1; t=1516956200; x=1548492200;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=nWgyWm4mJNtNkpwm+n7wzf7EW5W3IS/ZM5FVQ4yjuYo=;
	b=MvdpLFz4vDtPGr/1Ced3VqoF/xiHDFqOxr1hMr9eC+bTFi1Wj03RLzLz
	TRMBvPRh6lIts8QDrm8J+sXVR+YgTOskFdO3HwMEOWXyDVt+cl986mOvR
	VwxbmyHryqcco6nJRBZ5jppBwFipmOAFRVo+Dlq672n57uahY90JZmOIP Y=;
X-IronPort-AV: E=Sophos;i="5.46,415,1511823600"; 
   d="scan'208";a="3132049"
Received: from vmprevas4.prevas.se (HELO smtp.prevas.se) ([172.16.8.104])
	by ironport1.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jan 2018 09:43:18 +0100
Received: from [172.16.11.15] (172.16.8.31) by smtp.prevas.se (172.16.8.104)
	with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Fri, 26 Jan 2018 09:43:18 +0100
To: Khem Raj <raj.khem@gmail.com>, <yocto@yoctoproject.org>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
	<e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin.hundeboll@prevas.dk>
Message-ID: <b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
Date: Fri, 26 Jan 2018 09:43:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
X-Originating-IP: [172.16.8.31]
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 26 Jan 2018 08:43:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2018-01-26 04:51, Khem Raj wrote:
> 
> Secondly, I wonder how good is upstream mainline kernel for rpi now a 
> days, we could always have a mainline recipe as an option and use it as 
> base for things like rt.

Apart from runtime device tree overlay support for RPi hats/extension 
boards, mainline linux fully supports each RPi revision.

I guess linux-yocto-rt would be just fine...

-- 
MARTIN HUNDEBØLL, Prevas A/S
Software Developer

Hedeager 3, DK-8200 Aarhus N
Phone +45 87438070
Mobile +45 25562438
Martin.Hundeboll@prevas.dk
www.prevas.com

