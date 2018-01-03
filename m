Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F1CE00DA3; Wed,  3 Jan 2018 07:14:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 339 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jan 2018 07:14:55 PST
Received: from outbound0.mail.transip.nl (outbound0.mail.transip.nl
	[149.210.149.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC011E00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 07:14:55 -0800 (PST)
Received: from submission5.mail.transip.nl (submission5.mail.transip.nl
	[149.210.149.125])
	by outbound0.mail.transip.nl (Postfix) with ESMTP id 3zBZ8W4ldxzymRn;
	Wed,  3 Jan 2018 16:09:15 +0100 (CET)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 3zBZ8V3zkDz7vHs;
	Wed,  3 Jan 2018 16:09:11 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 03 Jan 2018 16:09:11 +0100
From: Herman van Hazendonk <me@herrie.org>
To: Paul Barker <pbarker@toganlabs.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <CAPyrkgxupO+=0+bmA=+JO+zs=t_i=Pm06GJyRFvYfTb5sXjSBA@mail.gmail.com>
References: <CAPyrkgxupO+=0+bmA=+JO+zs=t_i=Pm06GJyRFvYfTb5sXjSBA@mail.gmail.com>
Message-ID: <c390c6f12905dac53a61cae7009a2585@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	s=transip-a; d=herrie.org; t=1514992154; h=from:reply-to:subject:to:
	cc:references:in-reply-to:date:mime-version:content-type;
	bh=joUDm4UjvtopJQ5e/eJL7Mfl/Koof1gsppipldAoiZ4=;
	b=EMq67NZUjxi397YsyQRM7jfExWVN5jCghEZSti4nlen5mPW4/i0IfOFJKRKoqJTmBB1z6b
	53I5gIUWlJefuTedf1/R+KFtwk73oPmwhduC5rRvQkf7BeqTLmcm4Y6d9efXSFE2Oz8qIK
	wbjDFifCVQhSBWmf7wct/n5tiLyHFvdOiPh66AFfUhHy3jTdofq9QGucgDDdvv6X4Wg0s6
	nrbDKxVjOPyjq0ysl1MBplDspFh2C0UpoGnk/IpMdB0Lb1hFH+9NnQ19unjKg0ronwChdT
	GFTiXcp2mP0+YIV3VxesV1LfL9NqwTiYT0C825AdhZBa/s3BONtm+gd5il4/8w==
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto <yocto@yoctoproject.org>, openembedded-members@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Slideshow for FOSDEM
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
X-List-Received-Date: Wed, 03 Jan 2018 15:14:57 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Paul,

Thanks for putting this together. I've added a slide at the end with 
projects I'm aware of that are using OE/Yocto. I'm sure there are plenty 
more to be added though.

Best regards,
Herman

On 2018-01-03 15:47, Paul Barker wrote:
> Hi all,
> 
> As we've only got one table at FOSDEM this year we're not going to
> have space for as many bits of hardware as usual. I'd still like us to
> show off the project and what people are building with OpenEmbedded &
> Yocto Project though. Given the limited space I think the best way to
> do this would be to put a slideshow on my laptop.
> 
> I've made a start on this here:
> https://docs.google.com/presentation/d/1KYxhsxO-8GxhAreE0GKnTOCPdY6_4uXYIEp6Lc55MB8/edit?usp=sharing
> 
> I've made this publicly editable so please feel free to add slides for
> any OE features you want to show off and any projects (professional or
> hobbyist) built with OE. If anyone can add a slide on project history
> that would also be great. I'd also like a slide on the latest release
> and the new features added. Photos of hardware projects using OE and
> features like Toaster would be especially welcome!
> 
> I'll give this a final edit before FOSDEM and the put it on rotation
> on a laptop at the stand. Hopefully it will be useful for future
> events as well.
> 
> Thanks all,
> 
> --
> Paul Barker
> Togán Labs Ltd


