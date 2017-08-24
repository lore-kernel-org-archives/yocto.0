Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A208E00B87; Thu, 24 Aug 2017 16:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BB4E009A4
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 16:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1503618425; bh=1XEMd+MIdwu38NC8Ze4kaoILKtnma0WeftgQ
	aD4iq/s=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=Njd7AdYMAmYEaUns1vWkmct
	hyHuyrylQIFc28xuKngV4V+fKBvuAt94Ykg85+Jrik12h3Hp9AxBCNFOZtkLKiCRFW3
	CH8UMcX2PbmKtvLWKfTaO4SRDnzsYYaBQwv3TUIf3hu84+uWKqCOh4a/RcohX8+yuoL
	Ryn/SGJW4T8NczGiCfCT+dRKgOIxyYsAB5k7FvRKX/DUXXCo8pIcE+TL8T/8wSNopWf
	zOBGPBwxmLyjrJ5EJgCdUYNCKMetrQbZFTdlVnYs4Q0hnRLZAkJrFZvaRQXkKmHHKEF
	ZY+nCmELB6rHgWc+LnXxFUYyioe/ztAQXxbD/ReAKEvg5d2toWA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=mGLV9GqeqQ5xi4HaPzxyoKJLVIG/SczZPzcHEWc5spLZpNBmngibMuxHBQejN1n08Zi9DJgtkH2tfojdMDC6Tz/Ju3A49unuSWiFfpg/x97CMlrTU7BHWFxB3ejT3mRwwHj1vM9zMphFCEP2UIJZb8YGhYs8pEkJdJ6ZpCyztL0IO+muuPiSZbm55ozkCNd08EqfSt2lFASOChxryU2CrmWPavhJ3SpSYL2HIqSLDQUD55YzWvI1vXlqnUBAJ0EAGoLodtb83dR82XGq2vO+l2Enez8k0LVEwHqi9X0FiMS33pDUV9HjtBqCPbtKqSl99Pdq9hoBRdelxLMh5vfk3Q==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dl1q3-000ETL-HR
	for yocto@yoctoproject.org; Thu, 24 Aug 2017 19:47:03 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Aug 2017 16:46:59 -0700
Message-ID: <CC45D5CE9E0D434F8BF079FB4CE69702@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMdM0bT6cKTnT7tQ+GG5tKK8fyZFQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068845affe2a7cf25a68ba0f408f3c85e5a6350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Yocto plug-in not running cmake
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
X-List-Received-Date: Thu, 24 Aug 2017 23:47:06 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Yocto 2.2.1, standard SDK for RPi, Yocto plug-in for Eclipse Mars

I do File -> New -> C Project, give it a name, select Project Type ->
Yocto Project SDK CMake Project -> Hello World C CMake Project, click
Finish, and it creates a project. I click the build button, and it runs
"make all" and complains "make: *** No rule to make target 'all'. Stop."

Why is it running make and not cmake? It's hard to imagine that I made a
mistake somewhere in those two steps.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


