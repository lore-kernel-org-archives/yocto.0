Return-Path: <prvs=254edae20=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43B51E006CD; Wed, 29 Mar 2017 00:46:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAAD3E00546
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:46:44 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2H8AgDQZdtY/0oKEKxdGwEBAQMBAQEJA?=
	=?us-ascii?q?QEBhDaBEo1skTEfEJF1g0mCDiqBb4QJAoNuGAECAQEBAQEBAQOBEIN/WzwBBYE?=
	=?us-ascii?q?JCw0LLlcGDQgCihSvbiYCiiUBAQEBBgIhBQkBhkSCBQiCYoUghHofBZYQhlCCB?=
	=?us-ascii?q?4R2li0XhkKKS4kfH4E9EhIRBR+HMIkcgQ0BAQE?=
X-IPAS-Result: =?us-ascii?q?A2H8AgDQZdtY/0oKEKxdGwEBAQMBAQEJAQEBhDaBEo1skTE?=
	=?us-ascii?q?fEJF1g0mCDiqBb4QJAoNuGAECAQEBAQEBAQOBEIN/WzwBBYEJCw0LLlcGDQgCi?=
	=?us-ascii?q?hSvbiYCiiUBAQEBBgIhBQkBhkSCBQiCYoUghHofBZYQhlCCB4R2li0XhkKKS4k?=
	=?us-ascii?q?fH4E9EhIRBR+HMIkcgQ0BAQE?=
X-IronPort-AV: E=Sophos;i="5.36,240,1486422000"; 
   d="scan'208";a="3212026"
To: <yocto@yoctoproject.org>
References: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>
	<83afbf1a-33c2-c1d5-6fae-a2bec388c986@gmail.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <d461da83-b2f0-5478-1410-14e5097dd109@skidata.com>
Date: Wed, 29 Mar 2017 09:46:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <83afbf1a-33c2-c1d5-6fae-a2bec388c986@gmail.com>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: multiple, different kernel images in one rootfs
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
X-List-Received-Date: Wed, 29 Mar 2017 07:46:50 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 03/28/2017 08:17 PM, Khem Raj wrote:
> On 3/28/17 2:53 AM, Richard Leitner wrote:
>> Hi,
>> I'm currently using Jethro and like to include multiple, different
>> kernel (fit)images (with different source branches/versions) in one
>> RootFS. When booting such a system the bootloader (U-Boot) will decide
>> which kernel to load.
>>
> 
> There is/was a way to build multiple kernels see something like this
> 
> https://git.digitalstrom.org/dss-oe/dss-oe/commit
> /1e0c2307a910e8fc7e2482a757c52277c4f4e01e
> 
> might help you

Thank you for your response.

So it seems they copied and renamed the kernel classes from poky.git and
let the second kernel image use the newly added class?
Am I understanding this correctly?

Is this the "preferred" way?

