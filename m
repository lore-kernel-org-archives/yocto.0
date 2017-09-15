Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BBBCE00A38; Thu, 14 Sep 2017 22:49:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF84E00851
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 22:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505454542; bh=QqTunZ9gXhomFX1PZSGhD7m0q5dxsq9yFhDN
	xpUL2YM=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=o
	Pk1O+ODH/1JVgB63syjSLE444+/movtk+H+pOonfSJgNyx6uft5FGRFv7zLj9C1Pe2l
	9mfyVxFct2UUPtDsRddmz8KlT2OQhJmBGF5xZvdOFqBCkKvVOkADTZn5zBFJZ0kcu1i
	2HJb9XR4+79NUGYIja6ArcYI8f8PqagyjkDC0BwWyJSEfDUwG0P942YzeYwXcTnya7+
	RagH4qoEjt8T19r40JA1twOXoqgt70DZ83k2k2JgCCIiVArdLSNmvmuuGvMmLehFbSV
	X4p609PinAJ4B/XjtPEBPT3UoxLzpNCb+f5rab3XGfbQNDavlagSwRHKsp1xn53ZHe5
	w6NrJg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=haCCVYnfY0cATbJB7ohqRdCFaYvOT9bkUB237lgbjJc+65k4/L3AlRkbh86Isal9IbdGZnVPk9y8gNnsUc02KnVdECV6NTAsHqyFZlchX7fzkyHFbb3Wvn8PA+X1KvV16G94alFRWWaIXEfIMDZSqbJPR2DSV/vAWb7h7Q3iovxXVjjHEYEt6l6af6Qwfe/16VhiIckvjMfJmq1KzMJKUxKKk7b2a7qDTFli8eqYFJ5tO1Vvbr5iCuzquK3U2T5ClHLYNL+HzpV+9dnbTIjat5YH2cAUujLjqhhWhDTedmPQe+6pjwnOT5tiufbwJYq+gp2Cbh9YKmYKEr3MJAPE7Q==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dsjUr-0006Kk-8u; Fri, 15 Sep 2017 01:49:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Einar Vading'" <einar@vading.se>,
	<yocto@yoctoproject.org>
References: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
In-Reply-To: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
Date: Thu, 14 Sep 2017 22:48:59 -0700
Message-ID: <A051A1ED763B4E9688EF56DB747E947D@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMtmgcHevtFHQXQRku+Nu4h+EJ8DwASbAnA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068849a5c23abd14d1d3f4413dd9a5aedd8c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Re: Best practices when for script recipes.
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
X-List-Received-Date: Fri, 15 Sep 2017 05:49:03 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Einar Vading
> 
> If I have one or a few shell scripts with their own recipe. Do I make
> a git and use the git from the recipe or do I just add the scripts to
> a files directory and install from there?

A recipe should fetch from something other than a files directory
accompanying the recipe if it's large, and you don't want every user of
the layer containing that recipe to have it unless they specifically
include that package. Even then, it only needs to be a git repo if you
want it under version control--FTP is also a valid source.

But in your case, what the recipe needs is tiny, so there's no reason not
to include it with the recipe in a files directory. That's a completely
routine thing to do.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


