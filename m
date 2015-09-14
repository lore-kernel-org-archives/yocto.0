Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87FF1E00D0C; Mon, 14 Sep 2015 01:48:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6DA3E00821
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 01:48:37 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Rl+34godwMCB+e25kN07xXdM0MDGL/w1m4g79vphhhW5pdzDZr76B/uYqIBaQRr7;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZbPR9-0006NX-B6
	for yocto@yoctoproject.org; Mon, 14 Sep 2015 04:48:31 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
	<90A8BD5E-50DE-4AF8-946D-62620C29AF12@shotspotter.com>
In-Reply-To: <90A8BD5E-50DE-4AF8-946D-62620C29AF12@shotspotter.com>
Date: Mon, 14 Sep 2015 01:48:32 -0700
Message-ID: <D5E58E49104F4B9E8106F22CA3B3C36E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDuYPUVhS0FImuORRu4v3X7tO4CNQAC9SEAABbTwNA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688906510894f62d840411c277489a30ffa350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: Warning about auto generated BSP description
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
X-List-Received-Date: Mon, 14 Sep 2015 08:48:38 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Robert Calhoun [mailto:rcalhoun@shotspotter.com] 
> 
> Your kernel recipe needs to have an entry for the machine, 
> e.g. a kernel recipe called linux-mainline.bb contains
> COMPATIBLE_MACHINE_mymachine = "mymachine"
> 
> Also, your machine config file mymachine.conf needs to have a 
> preferred kernel version, e.g:
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-mainline"
> PREFERRED_VERSION_linux-yocto ?= "3.19%"
> PREFERRED_VERSION_linux-mainline ?= "4.2%"
> 
> 
> (I am not certain these will fix your error but you should 
> have them defined.)

The linux-yocto-rt_3.14.bbappend file created by the yocto-bsp script
includes:

    COMPATIBLE_MACHINE_chroma_bsp = "chroma_bsp"

My bblayers.conf file contains:

    PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"

The chroma-bsp.conf file created by the script (in
meta-chroma-bsp/conf/machine/) includes:

    PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
    PREFERRED_VERSION_linux-yocto-rt ?= "3.14%"

I'm not sure if or how the last file is getting read.

Since I'm definitely using the RT kernel, I would assume I'd only need
references to linux-yocto-rt. See anything wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


