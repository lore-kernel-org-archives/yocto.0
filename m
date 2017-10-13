Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 744C1E00CD4; Thu, 12 Oct 2017 22:30:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7DFE00CCC
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 22:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507872607; bh=fAAmwXZiuGl0GHFz+Yt6D1SX4JrXCXZkkn6l
	UEaAZqo=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=B
	Vbr69iOc6quE6s0etyI+6AYJ6F8YHE1Vx963+B4E7k1GJH0+OOXW+7O2xt7V82NkqVd
	5cpauUIzJDNQdRZkjnEUrFHPuuzq9MJwJxAf5KsqXPyhV9Q2Nh4nAGwGUsqki1BzGJT
	C079n/UFBZ4jGZD8qcei9XQWcCDRaY4qpiDgM40qqruzryco4IhjDDP7IVHV1BlGTvy
	YETQ3j/Tb0Eb9Ekmfigjsam6pWC/QbXgMVpkoMvj71NuoF6uHCqZ6Zf4t46gnRzNNpo
	IdroYW3HVqb9lJDcJS5HsPVdJupIAPMjmHgYsYfKbK509LyGTNQiMX/j4USoTCQIK+J
	70zmMg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=KiFXRqo14+W+Uh4GKdfRemAd/jdGS9qJH9afZ0njZzgr3Fs4Qv1KNQn7uRYBiYexwFZXl9Y1uCNoPfYt6BTL5FOHhBCwkNUX5JcAVmW7nIQl4H379ik5kOKG9ik8k8Fqfaq+4zDlp8kN0YzlsD0/d+NgV7y7uJLmUVMJJbcqnIuyuIzZiaaFqFHjIBl/KWnlPs3KHa/Uw29G6Q7Np8AN8sItvsNCtLNHWQGmQDNMufsdeeSjee6jEP37cLWvL/rvTEHLNnRFadGoDmXKktodY/syRbXWSUNCLookFHhhyIoPhRPnwQFemBvSW0Y6yQtcxJulwCWFBagSsNgSd52wcw==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1e2sXs-0007Jz-7V; Fri, 13 Oct 2017 01:30:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'John Ernberg'" <john.ernberg@actia.se>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD><20171013033200.vkrdd6jiq2lqaooj@apollo><88F50DD804AA49FF97B3133B16A414D3@PAULD>
	<dcfc7cfa-81bf-3964-7b8c-76e96309bb9f@actia.se>
In-Reply-To: <dcfc7cfa-81bf-3964-7b8c-76e96309bb9f@actia.se>
Date: Thu, 12 Oct 2017 22:30:01 -0700
Message-ID: <5E23642EDC4F42DAA768543C43C3B7DF@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdNDIo91RybcvaSHQsqlC1MIT5L0pQAoIEgAAACzkIAAAjw0gAAFWHhQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688231fcb4d032de41e2b55dc2ca59e849c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 05:30:08 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: John Ernberg
> 
> Looks like you're overriding SRC_URI instead of appending it. 

I had a feeling I was doing something dumb. Thanks.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


