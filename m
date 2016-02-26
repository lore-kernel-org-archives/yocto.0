Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C371DE00DAF; Fri, 26 Feb 2016 11:52:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5123FE00DA6
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:52:06 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id ho8so57423944pac.2
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=4YM8osP17iT8FkNM12c5m1iUhK1JTv7dO7qBcMPt2fI=;
	b=gDTyWnE5/nSLd1D5s3Yn4zI9fXaS3QxbYnIRC3bavbsTz+ag7jr2LytlEnX8i/HsXN
	vW1x+7edfwcV7i8aATEnHb6xv9g3HSPtgWYO1EJ/G/yfOIdI+MTZpL4VSL23i9V48Zy6
	+ZMbni3FmR3Scddieet2bKSjn/aEpF2PplPSsiaSV6Q3Cb4Vvt4jFu/Y8XPN41u5Gva1
	7pUEdK1nN9uH7iZgkLZNL+n8mI0ykezKawz5KxVFG1qq06P5I4XAQzbv2ycWP+Enc1sX
	v3mOdzsIre/6IjbzidSFX+inNYKlfFCCNcLYrZx9ezccbMzPcPpcNwi0Tu3Zqm4Jbx3A
	fHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=4YM8osP17iT8FkNM12c5m1iUhK1JTv7dO7qBcMPt2fI=;
	b=I4ltsdbEMG5xgGNeypuSP2WX0lTwjD8nN45P8AI6zv4WWyt30WXrkPcUt4wYqTo5K/
	xu/Hq8s3Q9qSy+UYMdEZaNxhiv3gaF57+iQ3dy3XCrtnBM+SyZ42eiE5+GXc9rt3I45W
	4EgvgLmJST78Cxd4euwlRI5kHfj2JzMc6M4GCqNN/9FKJ6/e4gfJP5HdTOu+7+0zQ+83
	+egS2KOw/oze4OXavx0CMMV1z4FfENATVAYnxZ1doya0XKJOf434k5OiHwmGGDYW7xlR
	1lL4vby003L3FHvBDG+P0bSY8Wmf31zaYIN1kGxkXwX3DJH5kM2ik6ML6QrvMFwj1NY1
	7tIg==
X-Gm-Message-State: AD7BkJLhpKBbEs8lh1WYwl/xnOeaBoouXum7pYONHeNVkvR5/suR2HP7KRZF7gRXn/Pf6g==
X-Received: by 10.66.190.131 with SMTP id gq3mr4548189pac.42.1456516325974;
	Fri, 26 Feb 2016 11:52:05 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	v29sm21174614pfa.31.2016.02.26.11.52.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 26 Feb 2016 11:52:04 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Feb 2016 11:52:03 -0800
Message-ID: <2042150.gN3rpHrprf@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.3.5-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
In-Reply-To: <1456512644.11498.108.camel@linuxfoundation.org>
References: <1456508168.11498.95.camel@linuxfoundation.org>
	<56D09D35.8040002@balister.org>
	<1456512644.11498.108.camel@linuxfoundation.org>
MIME-Version: 1.0
Cc: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW09
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
X-List-Received-Date: Fri, 26 Feb 2016 19:52:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

> > > 
> > > * We're about to try and transition meta-yocto within meta-yocto to
> > > 
> > >   meta-poky. The amount of pain this is causing is horrible :(.
> > 
> > Thanks for doing this. Can you summarize the pain? Are there any
> > important lessons here?
> 
> The key lesson is our current "migration" code in OE-Core sucks and I
> have some patches in progress which rewrite pieces of it in a way that
> makes it more useful. I'm therefore trying to make some positives from
> it.
> 
> That said, I haven't found a way to make this work without leaving a
> dummy layer.conf in the old location since a missing layer.conf file is
> fatal to bitbake very early on before any migration code triggers.
> 
> More should become clear when I post the patches, I've been holding off
> that until I actually manage a patch set that works on the
> autobuilder...
> 
> Patches should be out over the weekend (in time for the freeze).

Sounds like a lot of work and potential for breaking things with little added 
value other than a more consistent naming. What was the rationale for making 
the change, if I may ask?

Thanks,
:rjs


