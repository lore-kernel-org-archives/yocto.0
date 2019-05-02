Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70401E00D3F; Thu,  2 May 2019 13:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_FAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 SPF_HELO_FAIL SPF: HELO does not match SPF record (fail)
	*      [SPF failed: Please see http://www.openspf.org/Why?s=helo;
	id=emtekalloys.com; ip=199.212.143.9;
	r=yocto-www.yoctoproject.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from emtekalloys.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B082AE00D3A
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 13:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UgpgGvo8lcLaZZcSkysiWLnl3LlTNJPAG7/pP1OsAwY=;
	b=IR67nPlY+6C2O/76ZczQ83K0e
	yXO1Yxp45CqN3qG1QhvX0IqieKZp5YtqOFIOxMk6jGTJP1NybikfKpABS+jTBh6mglzv5Ihdvk3zl
	w/Uw9MrNN++nJEN9IRo1ZUGuiz8iauDIHMHBbEWmaZHQGh+D6z9a1vy0CoXDSC3KQRyTpI5812pcz
	b4eTUfO9Ay5N1bxcTIRjw94gUcamjuOXgYTe5aTgCe2MxsxDc6w0poeVGqph761dkz2K/ifttNwXc
	mv9CyREMWV1twf0VNi6+c52FwwVhTwfUbG+IN/pNLtOkFx9A1yqQuOP/bFTrHMWYWh/egq2Uks0TI
	DqY7f88Kw==;
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com
	([174.114.57.56]:53106 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMHtT-00078D-2s; Thu, 02 May 2019 16:01:24 -0400
Date: Thu, 2 May 2019 16:01:20 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <CAFNP8Ou5PB396Ln0mnZP86tyKDv8nMgDL7p=HxpUpEVBW5-hUA@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1905021600120.6414@localhost.localdomain>
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
X-List-Received-Date: Thu, 02 May 2019 20:01:36 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 2 May 2019, Scott Rifenbark wrote:

> Great, thanks!
>
> On Thu, May 2, 2019 at 11:21 AM akuster <akuster@mvista.com> wrote:
>
>       On 5/2/19 6:19 AM, Robert P. J. Day wrote:
>       > As meta-intel is no longer a container layer, use meta-xilinx as
>       > an example instead.
>
>       I thought "meta-virtualization" was a container layer?

  as a followup, i would think that "meta-openembedded" is the
canonical example of a container layer, no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

