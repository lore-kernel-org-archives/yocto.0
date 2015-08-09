Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90135E00A86; Sun,  9 Aug 2015 16:11:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 589F2E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:11:29 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so128115746wib.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=OUeAtf4u9ImakHkB2aRtvWP7rqztyPfJOK8a/wETbXE=;
	b=JjFNgcRdOYJR3cSbMNu1IbyzXGci4hUYqzpfMa90S4TL7vIE0SsWh6ntTgWupnALRY
	dr6zZpcFj5oGwr+o/qCk00b0X/DBJwXqn+YuXCZH65dPRW3ggy1oo5eLMjgi9ar1Df1V
	4QsKjdY1jUdalZEeF+R3Tqb5FXoRQv2He9VAqv1rXslD5kdjixlxqslKLoNIXwn0y1Wn
	XCC+1BweDdGVHLGL/mGjT/fR/Hbod+L4/FGQkc1yfWW71dBhYHYqpd4ynWpeBxPL3zSq
	Frc0CUDe/mhcEYl+NQeV5RKQ5VK01XqJ53Avp4JnPsVSVjITn1cdsiSYu48dBb8QP+9m
	n2jw==
X-Gm-Message-State: ALoCoQl3ymEZnQ7XIuvnyPs/o0YKXuTwNWLuFsX/Z0TB4gPlgiI775AXpHeI337vvdVRVkk4kzry
X-Received: by 10.194.2.51 with SMTP id 19mr40754177wjr.40.1439161889030;
	Sun, 09 Aug 2015 16:11:29 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	bd9sm10758409wib.18.2015.08.09.16.11.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:11:28 -0700 (PDT)
Date: Mon, 10 Aug 2015 01:11:26 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150809231126.GM17962@resin>
References: <002501d0d0d6$1a587d50$4f0977f0$@neuf.fr>
	<CAMKF1soYHzCF65peDgV=KBcwmx0RTZdRfgWo4Ts+Phsssd2qNA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1soYHzCF65peDgV=KBcwmx0RTZdRfgWo4Ts+Phsssd2qNA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] userland
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
X-List-Received-Date: Sun, 09 Aug 2015 23:11:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Aug 06, 2015 at 11:14:55PM -0700, Khem Raj wrote:
> On Thu, Aug 6, 2015 at 10:57 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> > Hi,
> >
> >
> >
> > Currently, userland_git.bb PROVIDES virtual/egl and virtual/libgles2.
> >
> > But “userland” seems to provide many additional components: mmal, vcos,
> > openmaxil, vchiq_arm, bcm_host, WFC, OpenVG
> >
> >
> >
> > Wouldn’t it make sense to add additional PROVIDES to handle those as well?
>
>
> if they are implementation of generic components then sure. openvg and
> openmax might be one of them but if no one
> is depending on them why bother ?
>

I think is the same for openmax as well. And I know that there are components
that depend on this - Herve already stated them/it. So I would go for the
vitual provider apprach for openmax too.

> >
> >
> >
> > I’m thinking about openmaxil, for instance.
> >
> > Right now for instance, I get it by adding a DEPEND userland to a .bbappend,
> > but I’m considering adding maybe a virtual/openmaxil to userland_git.bb.
> >
> >
> >
> > Does it make sense? Any suggestion about that?
> >
> >
> >
> > Best regards,
> >
> >
> >
> > Herve
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

