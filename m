Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78A9E00DB6; Wed, 17 Jan 2018 08:12:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9277CE00D5F
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:12:03 -0800 (PST)
Received: from submission6.mail.transip.nl (submission6.mail.transip.nl
	[149.210.149.10])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 3zMBtT38t3zT4qx;
	Wed, 17 Jan 2018 17:12:01 +0100 (CET)
Received: from webmail.frontend (web2.mail.transip.nl [149.210.149.97])
	by submission6.mail.transip.nl (Postfix) with ESMTPA id
	3zMBtQ6H5Rz12NDS; Wed, 17 Jan 2018 17:11:58 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 17 Jan 2018 17:11:57 +0100
From: Herman van Hazendonk <me@herrie.org>
To: philippe gislard <philippe.gislard@gmail.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
References: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
Message-ID: <85fe1cf4f30c0686302a4a51acf7b503@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	s=transip-a; d=herrie.org; t=1516205519; h=from:reply-to:subject:to:
	cc:references:in-reply-to:date:mime-version:content-type;
	bh=zdR0cgEUEGwRXhAPeQ3gtj75Pn6ipWix1SQzBsHc2sA=;
	b=TRJDTzmAXwVWleY6cfjfI78H0ZTn27HHgK2TJ3yKaawaLIX3SW5Pwb/IzgumMybpDCcOVS
	deSl9km+QfcgfV+UaqruZHGfXy7LeNV4RayV4LfHYWnWXwewA9vkZP3Umsxao05HpCaa/B
	OdXCRP+jamE8pw5nAMWOciw+5plHQyGAK9d7HLlAbFOGtsdOpuQM1quufMN9NVrsXGCBe/
	tJJCr45uB3NEd0zQNlFrQCCmJnClhkIATl7Z4kDhXmATceBwgmwnp9yBLi0E9BbkfoIMH7
	dm0beNLBXzrxSRAeBO4uoLOwMMYKu/8ngzF2BRQHBchedgkxn883fhtPiFQkKg==
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: [Pyro] Multiple toolchains
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Jan 2018 16:12:05 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Philippe,

You might want to try to patch your kernel for newer GCC versions. We've 
done that successfully with our 3.4 based kernels. See for example the 
commits we used on our LG Hammerhead (Nexus 5) kernel. 
https://github.com/Halium/android_kernel_lge_hammerhead/commits/halium-5.1 
See the commits from 13th of October for reference. There are other ways 
to do it and have separate toolchains, but that should address your main 
GCC related issues probably.

Best regards,
Herman


On 2018-01-17 16:59, philippe gislard wrote:
> Hello,
> 
> We are updating our BSP from Krogoth to Pyro.
> We are using a kernel designed and patched specifically for our
> hardware (3.10.40) that does not compile with GCC 5.x or GCC6.x.
> AFAIK, Pyro is qualified with GCC 5.x and GCC6.x (not with earlier 
> versions).
> 
> What is the easiest way to use two toolchains?
> - GCC 4.9 for the kernel.
> - GCC 6.3 for the other packages.
> 
> Thank you.
> 
> --
> Philippe GISLARD


