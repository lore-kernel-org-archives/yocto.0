Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 015BBE00D0F; Thu,  2 May 2019 05:53:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_FAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	*  0.0 SPF_HELO_FAIL SPF: HELO does not match SPF record (fail)
	*      [SPF failed: Please see http://www.openspf.org/Why?s=helo;
	id=emtekalloys.com; ip=199.212.143.9;
	r=yocto-www.yoctoproject.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from emtekalloys.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F1BE00BAA
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 05:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default;
	h=Content-Type:MIME-Version:Message-ID:Subject:
	cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hSepMFT2Bgqq/SahZqMi0Ot/Nh9ew03ktjUhuq3AGpw=;
	b=K3AdNuaUpnA4eLqKK8ZANv54v3
	HLgUw3ioKjp9Or7xU3vlWLntiLihpYLJooYcQrJb06/XwbBLeZS6HLkh76ync0E1jMK5Kd/fS1Sjb
	LwaXKN5NeZ/+BtDLcxqg/AaM46BrnbIVDfXBo2avkdHWFH++oQThIgJwxQz1WV5HXBRzxJ6pLiLBB
	sn87+79DXNmM+5wERzAszh1OKD9DR5v8FSvAgnMA+whH5w2japDqiWLWMOQn5PNKb0rHstbevXUx6
	PwfatZHbS2YQFc+Byq1pFTBg5y6dRutYwJe7hrfaTZhi92P/NXAhELI0UnzvK5hdxU/ARWVYfoncg
	P1BAGHfA==;
Received: from [72.142.126.219] (port=43982 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMBDf-0000Mq-Eb; Thu, 02 May 2019 08:53:48 -0400
Date: Thu, 2 May 2019 08:53:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1905020850390.9757@localhost.localdomain>
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
Subject: "meta-intel" layer bad example of a "container layer"
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
X-List-Received-Date: Thu, 02 May 2019 12:53:52 -0000
Content-Type: multipart/mixed; boundary="8323328-103327886-1556801627=:9757"

--8323328-103327886-1556801627=:9757
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT


  catching up with all the YP stuff i've missed over the last while
and, in the BSP guide in the layers section:

https://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-layers

one reads:

"Some layers function as a layer to hold other BSP layers. These
layers are knows as "container layers". An example of this type of
layer is the meta-intel layer. This layer contains BSP layers for the
Intel-core2-32 Intel® Common Core (Intel-core2-32) and the
Intel-corei7-64 Intel® Common Core (Intel-corei7-64). the meta-intel
layer also contains the common/ directory, which contains common
content across those layers. "

  pretty sure meta-intel has been a regular BSP layer for a while now,
so another example should be used. off the top of my head, i'd suggest
meta-xilinx:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/

unless anyone has strong objections, i can send in a patch.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-103327886-1556801627=:9757--
