Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D729E00BF9; Tue, 15 Sep 2015 17:35:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E320E00BCC
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 17:35:47 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=cjuLkZHxT+X941PBx1QsvT/pdMX/S3q8sR222SdnpZLNK83aGdp+dSXjBulvaL3k;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Zc0hE-0004Yu-W0; Tue, 15 Sep 2015 20:35:37 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bob Cochran'" <yocto@mindchasers.com>,
	<yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
	<55F82F8A.0@gmail.com><55F830DF.5030804@gmail.com>
	<55F83B9D.3020002@ti.com><CABgxDoLS0nZa3vK-NnkLk_sCPj4N9AxqSmrCBNSKCXxWQ3+8uQ@mail.gmail.com><55F84EFE.7080002@mindchasers.com>
	<55F861DF.2090508@gmail.com> <55F871E0.6080102@mindchasers.com>
In-Reply-To: <55F871E0.6080102@mindchasers.com>
Date: Tue, 15 Sep 2015 17:35:40 -0700
Message-ID: <6D857FA7749B49C9AFA1753EBE7CB8A7@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDv7TifVx7veJVMRiubcUVtEkT9JQAKfJ+Q
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068889121e8bb9192beba9c280aeaac0a0fa350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Wed, 16 Sep 2015 00:35:49 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bob Cochran
> 
> Do you know offhand how much bigger the rootfs would be if you build 
> core-image-base without busybox and instead use the real applications?
> 
> Also, how many more packages have to be built / managed?

I just added packagegroup-core-full-cmdline to my image, and it increased
the size by about 36MB. That's on a 32-bit Intel system. I don't know how
many packages are in that group, but all I had to do was add that one word
to my IMAGE_INSTALL, so I don't really care.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


