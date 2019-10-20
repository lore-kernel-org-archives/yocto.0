Return-Path: <prvs=11967ea63c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B680DE00B33; Sun, 20 Oct 2019 03:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.21 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[85.215.255.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE12DE0098A
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 03:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571569157;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=F5tZoMPcz2bl3Xke7Me0QdPnjEUiihXQWoyJb6JpKLE=;
	b=W8scdZ/WYgSpwJmIe6B6QaIwaUIh1SJGjpW2IW0QdL5WPnZtP9c86tUJD+NqeRHUA7
	W3LdfrD8ggx2ZtUch7eRnIZSJnlY5r7DBGGR+stCVRA0Ir6xBNXps/Z+gMImw4iUV/lc
	kuyyIpf5y40baAxEKxz8JwujMcmArfSsqR2zkrSTt5Ycc6PzaJu/csBDATV45EMlC4RC
	F97r4d2thZTK0wLqCxph+MbTI5Mx4xSgde7YgbkKT8ZAOjPyhL3ptNg6DaUZQKXBqiMF
	HrOLFXNJpjhUeqeshJI2Gte0AZcqnGiPOoTGAnPxrQHxeqA9+FBnGkQFWDIwAbbd5fcm
	EN/Q==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.28.1 AUTH)
	with ESMTPSA id y0882fv9KAxHBH3
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Sun, 20 Oct 2019 12:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1571569157; x=1572173957;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=F5tZoMPcz2bl3Xke7Me0QdPnjEUiihXQWoyJb6JpKLE=; b=T
	vkYcephA48cDuXtv579eQdv+05/ZLWXngZwhhysDrdiaV179gLr0GLNAA3mm0+FG
	1GTNkMSgJSfU4GfEkwgzu7mjt2ePFLf8+HtduLECCpOivOg9cwHUH5fCq/hbDvyc
	uGUhxNdXlJIYm+0zFMhM2bssmuIwJjCZ7Fw5dxQCJo=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.0.3) with ESMTPSA id
	md50000209372.msg; Sun, 20 Oct 2019 12:59:16 +0200
X-MDRemoteIP: 178.27.69.5
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Sun, 20 Oct 2019 12:59:16 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=11967ea63c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Sun, 20 Oct 2019 12:59:00 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Abhi Arora <abhiarora4@live.com>
Message-ID: <20191020105900.rp7gebz6sjil6jl3@jholzmayr.localdomain>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
	<MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>
	<CA+4=imYxNpiox1pPwi52LeL56vT+ZSpFgj9EStYh+EXmirBNeA@mail.gmail.com>
	<MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
User-Agent: NeoMutt/20180716
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sun, 20 Oct 2019 10:59:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Oct 19, 2019 at 04:32:26PM +0000, Abhi Arora wrote:
> I am planning to install it in my host machine and see if I am able to run my scripts and manually add or remove modules and python packages to get minimal required system for my scripts.
> 
> For that I need to access python3-misc and what it installs.

Its not something that directly corresponds to a standard desktop
distribution. Rather, its "everything that would otherwise be left
behind", see:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/python/python3_3.7.4.bb#n323

So its just like the advice was already: remove it, see what breaks, and
then add smaller bits and pieces again until everything works as
desired.

Greetz
> 
> 
> 
> Get Outlook for Android<https://aka.ms/ghei36>
> 
> ________________________________
> From: Yann Dirson <yann.dirson@blade-group.com>
> Sent: Saturday, October 19, 2019 8:51:52 PM
> To: richard.purdie@linuxfoundation.org <richard.purdie@linuxfoundation.org>
> Cc: Abhi Arora <abhiarora4@live.com>; Khem Raj <raj.khem@gmail.com>; yocto@yoctoproject.org <yocto@yoctoproject.org>
> Subject: Re: [yocto] Reducing the size of the image by optimizing python
> 
> You can also look at the package dependency graph (see the file
> generated by bitbake -g) to get a better idea of what pulls what.
> 
> 2019-10-19 17:10 UTC+02:00, richard.purdie@linuxfoundation.org
> <richard.purdie@linuxfoundation.org>:
> > On Sat, 2019-10-19 at 14:55 +0000, Abhi Arora wrote:
> >> Thanks your for the suggestion.
> >>
> >> From where I can find out what modules and packages python3-misc
> >> downloads and installs? I am new to yocto and Don't know where to
> >> look for. I tried grep but didn't help me.
> >
> > python3-misc is a package. You can look at its dependencies to see what
> > it adds to the image.
> >
> >> And how about optimization using pyc file? Is it doable?
> >
> > Start simple. If you have python3-misc installed its using a lot of
> > space and is the sensible place to start with trimming things down.
> >
> > Optimising to just pyc files is an optimisation further than most
> > people find they need and will be much harder to do.
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> 
> 
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


