Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 170F1E00DEF; Thu,  5 May 2016 10:11:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2EABE00DE9
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 10:11:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u45HBX6K005414
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 May 2016 10:11:33 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 5 May 2016 10:11:32 -0700
To: "Mihaylov, Emil" <emilmih@gmail.com>, <yocto@yoctoproject.org>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
Date: Thu, 5 May 2016 12:11:31 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Thu, 05 May 2016 17:11:39 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 5/5/16 11:57 AM, Mihaylov, Emil wrote:
> ython-argparse@lib32_x86 pciutils@x86_64 python-multiprocessing@lib32_x86
> libxml2@lib32_x86
> | Loading cache...
> | Updating cache...               ######################################## [100%]
> |
> | Computing transaction...error: Can't install
> oracle-jse-jdk-1.7.0-u67r0@x86_64: no package provides
> libavcodec.so.52(LIBAVCODEC_52)(64bit)
> |
> | Saving cache...
> |
> 
> Hi i am getting this error when i add oracle-jse-jdk recipe,

The error means that the oracle-jse-jdk -package- (produced from the recipe)
requires the 'libavcodec.so.52' library, with the specific soname of
LIBAVCODEC_52 (64-bit version).

There was apparently nothing in your build that provides this dependency, so the
installation failed.

You will need to identify what recipe provides this (libav?) and add this to the
recipes (oracle-jse-jdk) 'DEPENDS' and the packages associated RDEPENDS.

--Mark

> Any idea how to solve the issue
> 
> thanks
> 
> 
> 


