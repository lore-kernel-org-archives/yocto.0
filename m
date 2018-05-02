Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DBACE00A6A; Wed,  2 May 2018 13:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73075E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 13:38:12 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 76E3422767
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 16:32:17 -0400 (EDT)
Received: from web6 ([10.202.2.216])
	by compute1.internal (MEProxy); Wed, 02 May 2018 16:32:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=y4V33dLEWrnIJ86StIMOyxrdZ1O9j
	dXGu9sJnlB3/NY=; b=KTzsTXZqUgLK+S6JkxicwRjs5cKqTO7QYP2uJf4feU+l/
	KOGftZ5G0/gjRuXhg/R/KmK2LLkVwmSGFN9tqTf7DNZrg2aTFeRhbB9ALVAdQtcO
	zgktDEstXjfk5aMiofINNqAcO4BPKyy8rcYpgyQxsbU+zPa+DmYOZsA8Q0+ohXKT
	OWiFV9lJysVYimkbTmkjF6GUPyfYSkvSzEua1uO5AuPzuFM/WayAJJwAygjcdK1N
	lb1pLlJNlLGgmpglCKpwVdthGSRj07+Bg/sGZXXDkV/5JprgqoeUvMwEfNl2gxQu
	28Ok0lFxFimbJWIcva6S14I1xXTkBJvhGphC3d6nA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=y4V33d
	LEWrnIJ86StIMOyxrdZ1O9jdXGu9sJnlB3/NY=; b=P0iZyKjl/UJxMpEKfTOYma
	N5yCoK1sPNnozu/n+Kpj32MUNrtpFQjXlkLYncXBNgMmPXL9ZOJWRsGsCVxzDNnm
	iSCPmf7PWFZ3VA0BjKKp1hlZLHtArSZ4pT94BYKTY2aVWD0bCAmC6qf6L6CstEKS
	duUpYqECJ8mjAy6+MngkbFrQ6/nj8hZMbOhzyVnATVzmoYh5B3Ea312fVCYDqgue
	7px3Y5KDfW/oAf1Fn80xHR2P9rXAnNc+9lJNQr1uMRZN0MjpeO1qOWvEEfoF/RVc
	4L6dBkFI+0FNspGdpILs67fxBQgw+8kKkgRiZJm54YqcgH+oBqGucfQeKmX4QpHw
	==
X-ME-Sender: <xms:USDqWiU1A0_9W8O6JSy8usPMr_jaJihYGgnqpjigtUkjHb3iV3dYbA>
Received: by mailuser.nyi.internal (Postfix, from userid 99)
	id 463E4422E; Wed,  2 May 2018 16:32:17 -0400 (EDT)
Message-Id: <1525293137.1342848.1358729048.121DC72A@webmail.messagingengine.com>
From: Paul Barker <paul@betafive.co.uk>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-Mailer: MessagingEngine.com Webmail Interface - ajax-62b61488
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
	<MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8Lw0FCJ6ebE3dLFmbnm00MOe-vMdi+rWa+sHcDYpZMcBBA@mail.gmail.com>
In-Reply-To: <CAGAf8Lw0FCJ6ebE3dLFmbnm00MOe-vMdi+rWa+sHcDYpZMcBBA@mail.gmail.com>
Date: Wed, 02 May 2018 21:32:17 +0100
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Wed, 02 May 2018 20:38:13 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="utf-8"

On Wed, 2 May 2018, at 21:17, Zoran Stojsavljevic wrote:
> Hello Raymond,
> 
> YOCTO is, per say, moving target. If you have YOCTO Krogoth, you should
> have somehow frozen host Centos 7 release around this time. As you now
> moving to Rocko, you need to fast-forward the whole host Centos 7 (in other
> words to upgrade Centos 7) to this state (maybe to latest, it'll still
> work, I guess).

Sorry, I'd say this is wrong. Centos is a pretty stable base and I wouldn't expect backwards incompatible changes to be made within a stable release series. So if a Yocto release worked on a given Centos version (say Centos 7) at the time of release, it should still work now.

Advising people to "freeze" their host system and stop taking security/bugfix updates pushed by their distro is a bad idea.

-- 
Paul Barker
Beta Five Ltd

