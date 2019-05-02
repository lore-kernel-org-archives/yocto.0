Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACB7FE00D1E; Thu,  2 May 2019 06:19:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA05E00CDF
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 06:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default;
	h=Content-Type:MIME-Version:Message-ID:Subject:
	cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WKI2MW3K92f9Mwnkw7lR0LAiTKu28160OWfs8Na75uU=;
	b=yHBmb6DON1cCEiSIMfIwLqz2yU
	fIQQ5jTU6oVktk76WjK6cb3BfNVXD9q/S5W0SU65XdXjFePzG7IPjkK86/z32K1y0chW4EcLofpsf
	avLgPHK5nqgz9sMR/BlUBgIBxjkb6/LTb3XqCG1zJA4cwulsnlgdo0gtVwRW/BpEG68y3qMsMCpJ4
	v2DO9rYsREhkxCNBRS3J0vIJCNRfNMcrIyUhDLijnq0A+MLZmEbNKoNui3Q/enAhNgeI5bS5JybxY
	ltC/ZcKcM/cojT2mrtJDIvXlkvOwdictTrj08bpnkvZrQXfCHyh+FbWzOshfUeU3HxiMc1HE5SSxR
	XyY03Ehw==;
Received: from [72.142.126.219] (port=44616 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMBcF-00074W-GP; Thu, 02 May 2019 09:19:12 -0400
Date: Thu, 2 May 2019 09:19:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
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
Subject: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Thu, 02 May 2019 13:19:14 -0000
Content-Type: text/plain; charset=US-ASCII

As meta-intel is no longer a container layer, use meta-xilinx as
an example instead.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 0bb0b68ab..a53ff6bce 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -146,18 +146,15 @@

     <para>
         Some layers function as a layer to hold other BSP layers.
-        These layers are knows as
+        These layers are known as
         "<ulink url='&YOCTO_DOCS_REF_URL;#term-container-layer'>container layers</ulink>".
         An example of this type of layer is the
-        <filename>meta-intel</filename> layer.
-        This layer contains BSP layers for the Intel-core2-32
-        <trademark class='registered'>Intel</trademark> Common Core
-        (Intel-core2-32) and the Intel-corei7-64
-        <trademark class='registered'>Intel</trademark> Common Core
-        (Intel-corei7-64).
-        the <filename>meta-intel</filename> layer also contains
-        the <filename>common/</filename> directory, which contains
-        common content across those layers.
+        <filename>meta-xilinx</filename> layer.
+        This container layer contains some basic top-level information,
+        as well as three actual Xilinx-related BSP layers,
+        <filename>meta-xilinx-bsp</filename>,
+        <filename>meta-xilinx-contrib</filename>, and
+        <filename>meta-xilinx-standalone</filename>.
     </para>

     <para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

