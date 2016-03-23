Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8FBFE00BF8; Wed, 23 Mar 2016 15:11:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.169 listed in list.dnswl.org]
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99069E00BB9
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 15:11:50 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id g3so37406592ywa.3
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 15:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=BAazTvV0Vr0cFIWVXWdbseyelgAr+Ga6SmygmMixJPA=;
	b=HjqQ6x7GngSGwYcYltLX0bv4D7AvQ8IdV8OHyy016gklyj0ge4+Dv1BsPW/ibHt62B
	tPEa+wm2Z4ysfV84lvrZAsZw++cLb+KxvF3SGRkxPftb7KDJTmzhNVMLfyYjjKMx4Jlk
	cG5UGugW3M0bSyDshmZMNS9imHo+MyYgvrrDBAFxueoJx1bc8vvCZxTqWJFhAbMj6FgB
	fB0dWnar/4//kKHuE16Wb8AmkOfioL01qNI+rl04cTUpoTunwIiC7VSeZ3yOl5tRsKJO
	6KwX1oiTOuX4M0+bYL962j0M1slEIKmILwgj+8DZEsdDiRlX3fjlU9yOVANusFDAmlOk
	THZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=BAazTvV0Vr0cFIWVXWdbseyelgAr+Ga6SmygmMixJPA=;
	b=bfyiT8s4VwivNCRDtMA6cZ9nrY4ecFzXuzfUBJtNNgYBwDYUe4bbQ+sp1NEmSsL0Rf
	AMpElsAXNsjMi3wyI23ITGEE+OywatZXetPX/L5iD7H3hnZMMz0YSJoCjd/9Lle0gyKk
	nUFPIdEPExLp/W6a/LJIQF9CQv5WWzz7q7S/SU7lkkuWtSU7uO7f777Vj0l36CVYAkUn
	1Mqc/gZz+e2f789lyGvEEMUBT3nrPVLo+4mFK8PrVTlqFb7Ydgg4rnKqmdHNw3AMSnIH
	Owzvep4BL3fLO/0NPa5fQ+h6HM3vZqXr7yvhFt7lrmVo0ga5yRzqQRxx2B9slQSmyS0h
	Ir3w==
X-Gm-Message-State: AD7BkJK5EMngZWU7dV+aShMrCG0/NMlxL8Df4VnETLDy3ntXwBqNEscKTjUrsIEKjKgwiA==
X-Received: by 10.13.216.76 with SMTP id a73mr2614068ywe.179.1458771109498;
	Wed, 23 Mar 2016 15:11:49 -0700 (PDT)
Received: from [10.43.100.29] ([64.2.3.194])
	by smtp.googlemail.com with ESMTPSA id
	a202sm2684819ywe.22.2016.03.23.15.11.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 15:11:48 -0700 (PDT)
To: Jeff Osier-Mixon <jefro@jefro.net>, Philip Balister <philip@balister.org>
References: <56DEF97F.9070306@balister.org> <56F2C618.3050205@gmail.com>
	<20160323210850.GA5376@linux-yxv0> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
	<CA+YB3rYNxkjsFaRzAQVTvLtZLu_0sb=-nurdmQ8xixruGLAmOg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56F314A2.70100@gmail.com>
Date: Wed, 23 Mar 2016 15:11:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CA+YB3rYNxkjsFaRzAQVTvLtZLu_0sb=-nurdmQ8xixruGLAmOg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Wed, 23 Mar 2016 22:11:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 03/23/2016 03:03 PM, Jeff Osier-Mixon wrote:
>>>> There are only 10 people signed up.
>>>> Is that enough people to justify the expense room or even meet?
>>>
>>> I have no idea what the budget might be or what a room might cost. I'll leave
>>> it to those who do know to worry about the costs versus the benefits.
> 
> I would give an unequivocal "yes" to this (as the guy with the credit
> card). We need reliable internet access to loop in those who can't be
> there in person, plus this was actually a reasonable rate for the
> immediate area. 

tijuana? OEDMX

We can take up to 25 and these meetings usually gain 5
> or 6 people who never sign up on the wiki, so I think we are in
> excellent shape.
> 



