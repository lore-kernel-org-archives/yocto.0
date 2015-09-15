Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A51D2E00D9A; Tue, 15 Sep 2015 08:40:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.47.26.153 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6A3BE00B5C
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 08:40:11 -0700 (PDT)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id t8FFd9uF013442;
	Tue, 15 Sep 2015 10:39:09 -0500
Received: from DFLE73.ent.ti.com (dfle73.ent.ti.com [128.247.5.110])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id t8FFd9jO006002;
	Tue, 15 Sep 2015 10:39:09 -0500
Received: from dflp32.itg.ti.com (10.64.6.15) by DFLE73.ent.ti.com
	(128.247.5.110) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 15 Sep 2015 10:39:09 -0500
Received: from [137.167.41.114] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id t8FFd7DW001531;
	Tue, 15 Sep 2015 10:39:08 -0500
Message-ID: <55F83B9D.3020002@ti.com>
Date: Tue, 15 Sep 2015 11:39:09 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>, "Paul D. DeRocco"
	<pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<55F830DF.5030804@gmail.com>
In-Reply-To: <55F830DF.5030804@gmail.com>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 15:40:13 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit


On 09/15/2015 10:53 AM, Trevor Woerner wrote:
> On 09/15/15 10:47, Trevor Woerner wrote:
>> The only place busybox (and
>> toybox) are needed today are in the MMU-less-type systems, such as
>> Cortex-Ms etc.
> 
> Actually, the presence or lack of MMU is irrelevant, I meant to single
> out those systems with limited on-SoC flash.
> 

OE-core is capable of building a system that has no GPLv3.
This capability is still important to some users and busybox is needed
for that as I understand.

(Other users want the capability to build a system w/o proprietary code.
 OE serves both needs.)



