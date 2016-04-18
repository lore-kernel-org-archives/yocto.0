Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D037BE00D08; Mon, 18 Apr 2016 05:20:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91081E00931
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 05:20:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u3ICKj6p010740
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 18 Apr 2016 05:20:45 -0700 (PDT)
Received: from server.local (147.11.119.160) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 18 Apr 2016 05:20:45 -0700
To: "Yigal Reiss (yreiss)" <yreiss@cisco.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <690f5e51a76642d689429a2a29067083@XCH-RTP-014.cisco.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5714D11C.4040404@windriver.com>
Date: Mon, 18 Apr 2016 08:20:44 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <690f5e51a76642d689429a2a29067083@XCH-RTP-014.cisco.com>
Subject: Re: Adding kernel module to rootfs without changing machine's configuration
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
X-List-Received-Date: Mon, 18 Apr 2016 12:20:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-18 2:54 AM, Yigal Reiss (yreiss) wrote:
> I am able to add a kernel module to the rootfs by appending it to the MACHINE_EXTRA_RDEPENDS of the <platform>.conf under the machine folder of the BSP. E.g. for adding nfq:
> MACHINE_EXTRA_RDEPENDS += "kernel-module-xt-multiport ...  kernel-module-xt-nfqueue"
>
> I would like to make the override (i.e. add my own kernel module, and possibly apply kernel patches) from my own layer without touching the provided BSP layer. Is this possible?

It is possible. The kernel recipe, and the MACHINE_EXTRA_RDEPENDS, are just
like any other recipe and variable in the system.

If you have your own layer, you can bbappend the kernel recipe to add 
patches
and in your .conf files, you can append to the extra_rdepends.

Bruce

>
> Thanks,
> Yigal


