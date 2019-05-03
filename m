Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 807FDE00D54; Fri,  3 May 2019 03:55:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from somersetfoodbank.org (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA61E00D50
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 03:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QDXhZpAudFpY91q6rfwbgOXoUXXs5R1uLtIo4GlFv8Y=;
	b=d386Bhjsy+uCAtr/HO0oJljzk
	GX9Mm8huNRhB7MsWPIFZVUDFbyXlCILI4PjBhgJISyqs+ZDRrn9tazh/GA5EIMyuKW0SJJUZ3Ejcq
	8Npif/e3qcFQqrMxSE4tkCYRJyaKmtn3J1Zn94zRaM0b/59s6cFHHhg74QiGHxlCy1ueWQQXwPLSV
	BvJHICEXuAk1Zz0UucigFJT++U5GYvPhBuLcrb2aOOH5PotQPT46Vgasvr8ocRKNPn/XMC59qcK7I
	FZjixfssnoINw5Ir4/JkYMTXLzpS10JVCSFT/G1NKiMzPxDxeWysVquY7Sm0nTPDBwcDvXmvmXRGV
	wvbLiRvBQ==;
Received: from [72.142.126.219] (port=60348 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMVqB-0006bR-SJ; Fri, 03 May 2019 06:55:02 -0400
Date: Fri, 3 May 2019 06:54:54 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <CAFNP8Ou5PB396Ln0mnZP86tyKDv8nMgDL7p=HxpUpEVBW5-hUA@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1905030649530.6705@localhost.localdomain>
References: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
	<6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
	<CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
	<4dec56c4-3876-b96c-9b31-a1e4d726f78b@mvista.com>
	<CAFNP8Ou5PB396Ln0mnZP86tyKDv8nMgDL7p=HxpUpEVBW5-hUA@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Fri, 03 May 2019 10:55:19 -0000
Content-Type: multipart/mixed; boundary="8323328-2141207469-1556880896=:6705"

--8323328-2141207469-1556880896=:6705
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 2 May 2019, Scott Rifenbark wrote:

> Great, thanks!
>
> On Thu, May 2, 2019 at 11:21 AM akuster <akuster@mvista.com> wrote:
>
>
>       On 5/2/19 10:45 AM, Scott Rifenbark wrote:
>       The term "Container Layer" was put in the ref-manual by me to describe a
>       "meta-*" layer that had other "meta-*" layers (see
>       https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer
>       and the term "Container Layer").  Maybe this was never a good term?  I don't
>       know.  Nobody has said anything about that term for many releases. 
>
> The problem Robert points out needs to be fixed in the BSP manual as "meta-intel" is
> not longer qualifying by my definition.  I can fix that. 
>
> Is "Container Layer" ok as I have defined it?
>
> in those terms above, yes its fine.

  the more i think about it, the more i'm nervous about the phrase
"container layer", as it suggests a "layer" of some kind in the
context of OE. the one distinction i think worth making is that a "BSP
layer" is a layer expressly designed to support identified target
systems (eg., meta-xilinx-bsp), while a non-BSP layer simply packages
functionality (recipes, classes) -- a good example is
meta-virtualization.

  in either case, the trivial property of an OE layer is something
that can be specified in a bblayers.conf file. so i'm not sure *how*
you would describe, for example, meta-openembedded.

  i'm sure i'm overthinking this.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-2141207469-1556880896=:6705--
