Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59DEDE00A38; Thu, 14 Sep 2017 23:15:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D055EE00851
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 23:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505456104; bh=DLObICaoVIQcHHAlSi9qfV0E7HGaqJzXpat5
	fPpQAqE=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=D/awbbKxyulAg1eHKrnowHc
	s9SRXNklJ6uj9oleJW4MoDfqO4IjkNYo19qUs8peNDIamXhOYlqchsjRwfBqO4trTrU
	eyMFXTyk9O6Ubqrz9+kfjoUwEaTEShbHMcomPK1qqecp3EsLSanrjsnWgtZqtyJhiI8
	niR9lM/Y4kypAjEG0dab0oakChqXRU1wfTH73LXo8H67R6PoUKfBezuTgAPViIX4D21
	e6ZFdxpJIM18Ud40wkkgkrsnUcAgvCN6g/rkNsYtYv777f2SPEGWpZFwR74pjEOeJ8h
	8P8GaI/wj/TtKTdSANVsUjplsOeQku1Hpma0LCS8wS13O39MLZA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=C1BPuoATufZVPi9y7GecVdYkj7lZSt9cgR8TtLlakMkluUnl4mCghoezK4jayU/I3AJZDAB1RtgLkoXgF0xZ1CKq+5gUzPkFBHxehjNWsYbyBWBCmia4IWIpKS5GgE68ytTmctSY1Doh7sgzu7gKOpVRYFbeNE5otq7LomVY4BcTiaCXI1PDEGIy4HbducCMRg0Qp0RhJ5cw5NaRGeqd3JmcDmbha35cybu56UlVFAq1hbPFbw2zZHDQpKSe5gYzGut3VbOntsWeM9JLMeBRQ8cnMPNxKGdHfoS/mU1s0bey+iX730QFkxtYDpCqp1haPXoagKx7790qTKODGegIIA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dsju3-0005Zy-Lw
	for yocto@yoctoproject.org; Fri, 15 Sep 2017 02:15:03 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Sep 2017 23:15:01 -0700
Message-ID: <F134F05EDC574B48AC0E09D6006F7C02@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMt6fbdu69Ot2+hS3u4yxe9HHfDrg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068897051320bf82a0b93ece4fc6531e8d57350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Morty to Pyro upgrade
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
X-List-Received-Date: Fri, 15 Sep 2017 06:15:05 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I just upgraded to Pyro, and now I get several Python errors in
sstate_sign_package(), complaining there is no module named oe.gpg_sign.

I reused the Morty sstate-cache. Is that legal, or do I need to nuke it
and start over?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


