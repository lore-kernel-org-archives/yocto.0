Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A45E00B9F; Fri,  6 Jun 2014 07:34:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FC9E009E7
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 07:34:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s56EYA7l029528
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 Jun 2014 07:34:11 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 6 Jun 2014 07:34:10 -0700
Message-ID: <5391D151.5060405@windriver.com>
Date: Fri, 6 Jun 2014 10:33:53 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <kaiu@gmx.de>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAAKMwirNP_YqD_9vawKqy-MHQ+RZ2QBm-BaxiZ2wzj21=68Yuw@mail.gmail.com>
In-Reply-To: <CAAKMwirNP_YqD_9vawKqy-MHQ+RZ2QBm-BaxiZ2wzj21=68Yuw@mail.gmail.com>
Subject: Re: Newbee - patching kernel
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
X-List-Received-Date: Fri, 06 Jun 2014 14:34:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-06 09:39 AM, Kai Ulrich wrote:
> Hi,
>
> Is there a way to create a separate layer that adds kernel patches to an
> existing machine?
> Is there a example to learn from?

Patching the kernel works just like patching any package, but there is a
specific section in the manual (which perhaps you've already read):

http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#patching-the-kernel

It contains examples as well as explanations.

Bruce


>
> friendly regards
> Kai Ulrich
>
>


