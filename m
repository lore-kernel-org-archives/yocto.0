Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E307E00E02; Wed,  4 Sep 2019 13:31:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 7466 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Sep 2019 13:31:53 PDT
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F9EE00D9F
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 13:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1567629114; bh=neYMSTmTtLc/I5PSsY4qduM6KqGXFYd1DZ2L
	EAjamdY=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=T
	ve+v3EynMz2Fs/wGJSBqcvRJUjFWRNhxYqSUd05yeOHFUogFlnCkp6mN9efGpdoMhMb
	Oilfq8Ubm/XySQlAZsDGdf+wZGPp1vc0KQdYjl7EeI9xCmZtMfrzbfiUSoXVtkGEdCl
	vJh31V+H9iQDjFPrZCv6PNTYJOCjPOyLOIE4MwzLnW8ImAXf0KDNUaH+FWFAdPWNdyq
	vaCXFxJa9WaW+K9scsMYmK+s/I/sd5jmNzxsuBU2nLhFA8M/bU3SG+o6HA8IIdopqTV
	AJxrCFMFG7vm4J77nCkZAQ/fbxBztfhn2tSL5l2WZSj/82ZFUNWdKlymq753c7XgLlX
	XLfCfg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=m888xWCMiXzQcK11o39KkESPe2iE6sQQkAAx6gLV+HkuCM0ztZF9sdj6ZJitXrBO57r2NcIYoNsz63N9HW3X30xLP5VWV0dg+7ICRtTi6LLtmuKM3Q6PH8yymgvh5yUzh2WksbNuG/KNqZx2IrhbigKOf490Ja1IsmPrTkkeAadmVLquecRmMvOHOiQrqTwocQJHDW+iW327q/9rOP0TlG1J9iNwF8uJD5WwV73/bT3qLud3UXHC6TU91RDkjVrl0sJIjLFEEUB3wcMrj4VkFt3uIGgBojnxKOalmwRoTtaXPYd5Mjy59WHzj3yCYTl8E8EckTW5VWVY8x2kUYOHPg==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1i5a06-000Fz6-Rf
	for yocto@yoctoproject.org; Wed, 04 Sep 2019 14:27:27 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com><CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com><d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
	<CAAfyv356RW8R4bR-LY0SGZ1CM3iaMtoCP+ewwD5HPenePJFaGg@mail.gmail.com>
In-Reply-To: <CAAfyv356RW8R4bR-LY0SGZ1CM3iaMtoCP+ewwD5HPenePJFaGg@mail.gmail.com>
Date: Wed, 4 Sep 2019 11:27:26 -0700
Message-ID: <D90880AABBBC48EFA5A40AD1744E9835@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVjTCqPBlc5l070ShOe1ZCfHHQh2QAAdRJQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ce9f7ebc8e34a65e5df042fc06f6944b350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Re: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Wed, 04 Sep 2019 20:31:54 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Belisko Marek
> 
> BR,

A two-letter answer is too cryptic. He's not just asking what the variable
name is, he's asking where the file is that contains the variable.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


