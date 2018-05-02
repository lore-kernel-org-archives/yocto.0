Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0794FE00A6A; Wed,  2 May 2018 13:36:21 -0700 (PDT)
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
X-Greylist: delayed 242 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 May 2018 13:36:20 PDT
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F86E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 13:36:20 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id A3B9821AC8;
	Wed,  2 May 2018 16:36:19 -0400 (EDT)
Received: from web6 ([10.202.2.216])
	by compute1.internal (MEProxy); Wed, 02 May 2018 16:36:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=cc:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=csZpRibc7Qz+/pH+9
	lFJeQLaaeNHkEl3s5JSZks8VIQ=; b=SpOXxRws9uVldlkrlBiWRO7Z3/Uf9o1I6
	HjMtMBLBRyotyWe1bbJ7pvJ6/Sir6m3oGmLLLssWm+rSjtjeVzLZU5J5rh7+c4Oq
	QNPqf80QjP71muwASBXO17s7AiGf+n3m/273HvOlPAJX2Xf8OtFg2/dnO402gCDo
	PkKlEXxTXt4MoCdtcPjf4r3ttG7ZhMAIBx0VWkzDgRi9jg9h4+UVL+VfHL1xw4y5
	0aUjRGRSV7o9ocyrJW3PW8fGJRmhdE9MdXzZrqWhn9YahIJoZn9LY1nFeHWCrBYU
	nzUwS7lG8jYKSOILlGu/vot9R8ht6MCeYpGRWASnqGkbMpkaWVM9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=csZpRi
	bc7Qz+/pH+9lFJeQLaaeNHkEl3s5JSZks8VIQ=; b=KmoSIWp7pRAEAAI5ITYK8T
	qRQ84c6e+JP8NRQ0N5thso5KQeVoz9P75YyL6028SFvaxLpYcuNTwMXk8GNn1+EN
	w4NfwBujuOFPrFZltU81jeUgQudNqCQMVge8CNPiVtenESDJRhmcr1q06a7A5sP5
	EXUHTVFy9Y9z9CJQlwkM1zjjZN7n0wBONGK4t318NoGaDnI0xsJiRFRpGk+pJAll
	o7b+tm5UKzL/UaKuaM6kMCMt6jaBrfknoxazoYpoXKdTVsU6n2VdEkpK1aM0rOQW
	U4+v3yEzDaaYHDUkyFh5QdAH9I/ENwvygewURnSQ31AQ/kPF3po5u/Ok88ruUeuA
	==
X-ME-Sender: <xms:QyHqWvpPcPo6W0cYcipyN2xLZeYGfliFTsXaSIY0jX2atVDOcRgYyA>
Received: by mailuser.nyi.internal (Postfix, from userid 99)
	id 7BE31422E; Wed,  2 May 2018 16:36:19 -0400 (EDT)
Message-Id: <1525293379.1343784.1358733424.3328B6FF@webmail.messagingengine.com>
From: Paul Barker <paul@betafive.co.uk>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
MIME-Version: 1.0
X-Mailer: MessagingEngine.com Webmail Interface - ajax-62b61488
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
	<CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
	<CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
In-Reply-To: <CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
Date: Wed, 02 May 2018 21:36:19 +0100
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 02 May 2018 20:36:21 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="utf-8"

On Wed, 25 Apr 2018, at 21:55, Zoran Stojsavljevic wrote:
> > Jethro doesn't support Yocto 16.* because it is very old (released 2015...)...
> 
> Now, I must admit, I have learned something new. Never gave any
> consideration to these releases: example: Pyro 17.0.3.
> 
> But now I understand: it has direct link with Ubuntu 17... Even, YOCTO
> Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow...
> 
> Every day in every way, I'm progressing more and more! ;-)
> 

You seem to be a bit confused here by the fact that the poky version number lined up with the year in 2017. See https://wiki.yoctoproject.org/wiki/Releases for some context.

-- 
Paul Barker
Beta Five Ltd

