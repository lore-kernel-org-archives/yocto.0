Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D686E00A38; Mon, 29 May 2017 00:22:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D5DE00920
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 00:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1496042518; bh=NEB1dVmiXuCf/pCoordR6uhL8oDWUlELdCfu
	WanERYE=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=FGv1rFNx8Ui8tc0F3+Ku2ZL
	NnZaSB6D17uCecUR5IyWu+tvYvB6cD9+2mzPjlWRMLkeZ+ntn3TeoHMQPDXyT7Pf7Pr
	Eq5gUs4IgUn5aPcIpL+R9rdLTc5AeW94GW2x0ptRlhOIz9ACKn8vcYicJd569w/CI+u
	PxtQsUDM+it2TMfL2I64amzMgqdFNZNVpVinHiKp7w7Ack1+7huOhQJv6ymkGeYGKQs
	ei+pgRyovf/8JPUPz6Azo6N7lBt/758pjCcMZmGqIvqIF978toB5Ov1TVnghk8dmybT
	u2+cK4OqdYP/UeXcgyXXlVDwXVPaUPGG2SH+RLyO3ypMcgV1VBw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=momFismCt8FMgZAKqAm+QMPkYp6EsK+dxGW9tKNIJPUOBaTaGE/qC31lcwBUEva6fzhcQ1fONjgxjCJ+ntPvUAZwPH94X8EmYybljxUlgIOPH2DT/9W5r3QLF153CYjtVeTfsNj7P/oAyPD/P99ztFWvUrKJFviKaT0GGd9Vtqb1If92JsrMfNiQaDUyp3b/KEIRIm/DDCALVJb7TVf8kI15D8wisdlsZwMKjRJkHBcRQDaXo1XTkL1FjWjtrL+e9KEgY8cvM7AcU3uCH3vCgCq8MDFcOGIiHmqgNmpxfYQxvg/q4hIZucxUcYGmVe2jNOAWqfLxjDyCt5IragbeyA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dFEzz-0007ro-P0
	for yocto@yoctoproject.org; Mon, 29 May 2017 03:21:55 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Mon, 29 May 2017 00:21:56 -0700
Message-ID: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLYTEC+dhsmH1pLREW03Q6nGw/bpQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688672f4389f980a905e48233f205fbfaea350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Kernel config fragments ignored
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
X-List-Received-Date: Mon, 29 May 2017 07:22:01 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I ported a working build from Fido to Morty, made a few tweaks in response
to error messages (mostly updating version numbers), but it's not finding
my kernel configuration fragments. This is supposed to be an i386 arch
system, but it insists upon building an x86_64 kernel. The .config file it
generates does not include my configuration fragments, which contain
things like CONFIG_X86_64=n and CONFIG_X86_32=y.

My linux-yocto-rt_4.8.bbappend file lists my .cfg and .scc files in
SRC_URI, and they are indeed being copied into the build directory (at
tmp/work/chroma_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah). The docs
seem to imply that that's all I have to do: that they will automatically
be found and included, without my having to name them anywhere else. If I
intentionally put a syntax error into any of them, that erroneous file is
indeed copied, but nothing ever complains about the error, so it isn't
being read when I force a kernel_configme. Even cleaning the kernel and
repeating the kernel_configme doesn't change anything.

There is one .scc that includes the others, so that suggests that there
must be some mechanism for specifying that one and relying on the explicit
includes to pull in the rest. Its name is chroma-bsp.scc, which matches my
custom machine name specified in local.conf. It was previously called
chroma-bsp-preempt-rt.scc under Fido, but when that didn't work under
Morty, I tried changing the name, to no avail.

Also, I'm puzzled that the work directory name contains "chroma_bsp"
instead of "chroma-bsp".

What am I missing?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


