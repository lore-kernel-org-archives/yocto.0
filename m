Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EFF1E00524; Sun, 16 Apr 2017 17:30:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71584E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:30:32 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id o22so15727688iod.3
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=r3aVPKxBOmpO63RMxSFm9Pn0odyrGUeJQKAqY8PuE94=;
	b=hl6J4FtoTsZukHNOvacnjrd3wRoaH4sfQCvlvEDMexu39AczMNXVu7NYimtDOjFxU8
	jjEIxqi40TJSrxfIohoZ3gkTvRqtdnsg4uNVGiACX5cHTX8pNkXYcZsdTpAwyNM6hFjt
	AtMJn6u4aUCfq+CiLDNBe+imY5zWAh18IIy/FmovQoAvB8LbvTGXBAUolHyjix9QpCpJ
	+LeVnIiecaOQHC1/k5Rqb97pem1++rJgwXPvDaGfts7eql1V2/2aLtc+TMIhUVYlNYvI
	V2fPDXo+3Uwu2cv+j3I4/5eJDokwnGTaqJ4yyAtOLQ8GXp/0GOrhhjnTh9hSUYxpJyQ2
	LwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=r3aVPKxBOmpO63RMxSFm9Pn0odyrGUeJQKAqY8PuE94=;
	b=AgEt+ozVZr44yFO843RyjwkyT9rI1OUzoECnu5kfN4Bh9ABaYeZaX0F5agsX40fW+C
	+nSnfHUdNlptMJTp1X9zRBNJJgUAWHG13eAEa1NQ75/CEK6r1rVXPH6Txj9/BEvCgXlo
	thQicEGm911lWdowMCr3Ob2lDLNa67gqstOUb88nNjiO+VY21049N1iDkqdRdqlP2yM6
	no6GylZlTEYoowVL/ygC2ToIgC72l6SnC2jBXDat7+4qaf5h7K22d0+874HW50NZt1ja
	k1v0G/kg/P7OxqVjWf8/1ZBtVq0GvGPdc8OLBBh+ZQnh7HYO+DAbmYkagJRATN6IS2Sa
	Y94g==
X-Gm-Message-State: AN3rC/4mEvgthhBtlWFjkJ4wazPr3pg7xoREVxdKPPHxWv6ylIrSHL1B
	UoA8/3KxU1+15Q==
X-Received: by 10.107.173.169 with SMTP id m41mr6868454ioo.190.1492389031790; 
	Sun, 16 Apr 2017 17:30:31 -0700 (PDT)
Received: from linux-uys3 (76-10-137-103.dsl.teksavvy.com. [76.10.137.103])
	by smtp.gmail.com with ESMTPSA id
	a184sm4267614ioe.62.2017.04.16.17.30.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 17:30:30 -0700 (PDT)
Date: Sun, 16 Apr 2017 20:30:29 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170417003029.GB5766@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Mon, 17 Apr 2017 00:30:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2017-04-17 @ 01:23:25 AM, Andreas Müller wrote:
> > Thank you very much for your explanations, they really cleared up a lot of
> > stuff in my head. Already I'm 10x smarter on this stuff (which doesn't say
> > much about where I started!) ;-) It was probably a good thing I spent the last
> > couple days grinding away, your explanations were perfect for where I'm at.
> Some very good document explaining FOSS graphics stack is [1] - take
> the time and some coffee :)

link? :-)

