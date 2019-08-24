Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3AC3E00CB9; Sat, 24 Aug 2019 03:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52489E00C25
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 03:19:10 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd11.ad.aruba.it with bizsmtp
	id syK82000Q2wfazh01yK8cu; Sat, 24 Aug 2019 12:19:08 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <58fb31a5-8271-0645-f72a-4658e13ca988@faresoftware.it>
Date: Sat, 24 Aug 2019 12:19:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566641948; bh=7WWwIWa7JMhKHLecjvdu9iNaXjbH3P+0d2GbIcVsg9E=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=A1oAH49F+4F6D8V69uwhecnDEx4joV76XcznG9H8Pv4JZb0dLHgE9KW1EJZ18vQpX
	MI/ZVdiQb+gnBHY3ZgL9V3yKw6Ml3ob6t830VfJH8Pz00C5cSj0BOOQS5GG4BB22To
	RfsEYvgu/U1WNk47zsOpsHiO0HXFYRi5nYTx5MIzLupQ4B9qk3efoLzweJSJpo7PWT
	2PiCwZwH2z3v+qXRviTmk7fZH2YDS4I5kizYcCwf+LF1jzbB396JPgvW8zwKYC1fzu
	eYDfcIJEXDUMYNgCj+ndmkzwluaW/pc4zGNZnkBZKUd9d1iAaRQWLtaB5tc5ri3BO2
	MmDj0a78CXJMQ==
Subject: Conditional include in image recipe.
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
X-List-Received-Date: Sat, 24 Aug 2019 10:19:13 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I working on a image recipe.

If I include the layer meta-raspberrypi layer  I'd like to include 
recipes-code/images/rpi-basic-image-bb.

While if i not include meta-raspberrypi layer I don't include 
rpi-basic-image.


How can I do that?


I don't understand, but I suppose I need to read bitbake manual.


MZ


