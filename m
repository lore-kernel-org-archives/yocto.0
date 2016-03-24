Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FA0EE00894; Thu, 24 Mar 2016 11:36:45 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E073E0048B
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 11:36:42 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id td3so28614789pab.2
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 11:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=HTU98DcFcHyWfLS5J7113D72P8MRpKTOQYpsmj5imUg=;
	b=h8a6zgNN5vbkZ3C/EIVvAOY84smyVi/IXhvE8wmnh3qwwb/YI5ynIbLkqzsPWCI2pp
	SRHtFhsWvWcWc+PRxmA7U7fGVuIeUPfB9mPZA6wtd2fcE77/FxPcbawX1l528j403sPj
	6rqahGGoWmj9D//TTfLd0PD2UWejCruUSbKDZBgTls2WX+G7hNU7tvaxfbRYUuokwAIU
	svAuRjaN0nLDCyMykEyHnULLh6AsXw7hql6wXCS0Iw1Kdj/nSVPusuB1aTls6tEf7ByS
	RDQuR01Gt6+5U41W5ds68JUg24MabwvXM8VinD2shYJKOiZRGM+cu+1iFlSvpgwlV38H
	OVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=HTU98DcFcHyWfLS5J7113D72P8MRpKTOQYpsmj5imUg=;
	b=XpCC5o/U9cINJG3n+3rx89e1HkyaKjuCrKjG5mtMWNxcRIFvnRJEX2nbZDUi+U5t/9
	rGvJa5NtMUxYfdOXkO6Jyjh+cO7pJWKRxd2OXPJtH+DX5XV1OOGEdcGmoWnOmOuR7ZY7
	wF7gGXdccvb3RRTAQeuYLKB1gNFZBU07qB+WpcXnJGq6Hza70IzYHGa/BRhcvLdYvOgl
	uOu33xzfZ5irW+YT2GpMd+s13cgzO85xaKc5OdLfBd0mFNt+oMDukKdiPg2u5ufm8RoB
	FaVH7TDlAbIdUJPiYIIcG5FA3gUZgnd6x2a3Pwx8GjWvnDS/lgloTKJtjkF8tDWQqpaT
	SQiA==
X-Gm-Message-State: AD7BkJJkTzZ2geHCtwwwHWnQQ1afoO3fe741la0OR80UD1RoHEMf/kZ3ElUlsObLUwivGQ==
X-Received: by 10.66.191.225 with SMTP id hb1mr14851498pac.78.1458844602377;
	Thu, 24 Mar 2016 11:36:42 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	qh8sm11674432pac.40.2016.03.24.11.36.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 24 Mar 2016 11:36:41 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: openembedded-devel@lists.openembedded.org
Date: Thu, 24 Mar 2016 11:36:40 -0700
Message-ID: <1604312.a7pP1GrPCb@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.5-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <56F42DA1.4090902@balister.org>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F42DA1.4090902@balister.org>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Thu, 24 Mar 2016 18:36:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Since I happen to live in San Diego, I have been asking around for a potential meeting room (unfortunately, I don't have an office with a meeting room myself). I am currently working with the University of San Diego and the Catamaran/Bahia Hotel. Can't promise anything yet.

:rjs


On Thursday, March 24, 2016 11:10:41 AM Philip Balister wrote:
> We are up to fifteen now and as noted will have some off site attendees
> and late sign ups.
> 
> Philip
> 
> On 03/23/2016 02:11 PM, Fred Ollinger wrote:
> > I'm coming and I'm probably brining another person.
> > 
> > I still have to make the wiki account which failed for some reason before.
> > 
> > Frederick
> > ________________________________________
> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Trevor Woerner <twoerner@gmail.com>
> > Sent: Wednesday, March 23, 2016 2:08 PM
> > To: akuster808; openembedded-devel@lists.openembedded.org; openembedded-core; Yocto Project; openembedded-members@lists.openembedded.org
> > Subject: Re: [yocto] [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
> > 
> > On Wed 2016-03-23 @ 09:36:40 AM, akuster808 wrote:
> >> There are only 10 people signed up.
> >> Is that enough people to justify the expense room or even meet?
> > 
> > I have no idea what the budget might be or what a room might cost. I'll leave
> > it to those who do know to worry about the costs versus the benefits.
> > 
> > In any case I certainly think it's still worth meeting. A smaller, more
> > focused group can sometimes get more done than a larger group. Secondly, it's
> > my experience that more people always show up than sign up.
> > 
> > With a project like this there will always be things to discuss, and sometimes
> > a discussion goes better in person rather than online.
> > 
> > Best regards,
> >         Trevor
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> 


