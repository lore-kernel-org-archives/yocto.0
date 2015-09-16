Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FB9BE00DC7; Tue, 15 Sep 2015 17:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A352E00BCC
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 17:31:42 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=nchLvbsmjPiJYn96Ne31vvWgMQ89WW7o7tubP+TzMIyR5GiyjgGXCVdU9PPSGEEs;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Zc0dI-0006pg-7P; Tue, 15 Sep 2015 20:31:32 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
	<2359992.oyyONspMKy@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2359992.oyyONspMKy@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 15 Sep 2015 17:31:35 -0700
Message-ID: <F0E0F2D25560443EAB9B8C0F8A7258E0@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDvktHtdJnwUkKmTLOBeQaM1vnJaAAhBtYQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884fa0ee70e37f618bab5f0d718fd6d599350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
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
X-List-Received-Date: Wed, 16 Sep 2015 00:31:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com] 
> 
> core-image-full-cmdline (and the packagegroup it uses, 
> packagegroup-core-full-
> cmdline) should give you the former, and the full tools will 
> in almost all 
> cases take precedence simply by being installed by virtue of 
> the alternatives 
> system. In order to actually remove busybox though you'd need 
> to break apart 
> packagegroup-core-boot (i.e. include its constituent parts 
> separately into 
> your image instead of the packagegroup itself).

That was pretty painless, since I don't actually need to remove busybox.
Thanks.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


