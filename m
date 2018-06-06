Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAEADE0155E; Wed,  6 Jun 2018 06:21:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E889E00A51
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 06:21:58 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id l33-v6so6247317qta.11
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 06:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kUOjHCE8qzZUy0CwI9IyRn+3gYbmYW1qnjKJNo7/fgI=;
	b=IYMbM/1/lBMwhfxXznqDadquIi5cBUONUWNNcazKVVU4ihWS+1ekW27rDtc/whrluj
	0npp9F55Yju+dTKygqzcRJLVZKPQctPeygqVXVHFwCwwU64DJgZLzpwWB/ohLy0QKncY
	NbtoMdr9TVmHjPzjl776Jlh75Rtkrxen+4yNNDYCOw8lvzOUd6dmMOWD/02BjaHUj7n5
	3Y+YJmmtmw/yKsvaBeOzrddEnfEKqKfqqwy2//olGPpvJSMTXnLB6Aa1GH1OWLPhKVSk
	SCWOqP4xF3AvMpxiPVGY5ZEIRKBOgCPCCoRiELehH2jkao11kMVVa7KRugzR/cK9/hjw
	a/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kUOjHCE8qzZUy0CwI9IyRn+3gYbmYW1qnjKJNo7/fgI=;
	b=Y9fkozgQ717k9DIUP8vEglKZyrLHNSJbS2HpF1rXyygJKskpXzBamNjXFhawumrtrd
	cRT53K5VeAhFvazTin001LL+d3+g/eLrmh5CWuBhLN2eTRhAvazwvwCeCz0LIrt84THR
	rp3Unfoi7QxWr3h6aSQXgSsOQdygF963GPle4/WZYepFeFKIAeAyj+FYg+vJ28PSZd5m
	tSuI9OTV2KA6GlqVpTe3wFelBmcfx0h4A6LFaeOt7Kp9A8U1wC6WUWvYvRXL07heZKE5
	qlCv7PagRdsQrYZAIC3vB/Bh/ZQ9ewPbXKd1g6vbH5+jnfbyM5aBITB6B5MFBsdi+rUL
	3z4Q==
X-Gm-Message-State: APt69E3tF/CmiCspXYd3I9DmibDPS0fD2vOi7If6BnXSuzlgsHcDpvMu
	4pKOp30iB9Htg68t6dn5CxUSlnfSzI7ieZ7vQAA=
X-Google-Smtp-Source: ADUXVKItHMsJ98+mteqXNNM66S40rjZWqXpEKSWby+jRWLVfy9t9ilVJIu6620DwKh/ZVmjeYPgT1Yoxi7TadPKoLZY=
X-Received: by 2002:ac8:2429:: with SMTP id
	c38-v6mr2673416qtc.122.1528291317431; 
	Wed, 06 Jun 2018 06:21:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad44:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 06:21:56 -0700 (PDT)
In-Reply-To: <b1f684d7f1beb9e680a17771c66ca76096dfba71.camel@linuxfoundation.org>
References: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
	<b1f684d7f1beb9e680a17771c66ca76096dfba71.camel@linuxfoundation.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Jun 2018 15:21:56 +0200
Message-ID: <CAGAf8LxKCHYZgcU_90FtAfx7+v_XZWSAVFE0ysEkTCDyBVFk1Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: Gratitude
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
X-List-Received-Date: Wed, 06 Jun 2018 13:21:58 -0000
Content-Type: text/plain; charset="UTF-8"

Good Luck, Jeffrey...

I do not know you, but (knowing well about INTEL inside) I know that
you liked what you did. I do sincerely hope that on the new INTEL
assignment, you'll find Peace of Mind and R&D Joy!

> ...I know there are a lot of behind the scenes things which
> happen which all keep the project running smoothly.

There are many players behind the scenes. Not only INTEL. This is the
assurance (my best guess) of said/written above.

Time Will Tell.
Zoran
_______

On Wed, Jun 6, 2018 at 2:19 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2018-06-06 at 06:42 +0000, Osier-mixon, Jeffrey wrote:
>> I have been the Yocto Project community manager for over 7 years now,
>> and have had the pleasure of knowing or conversing individually with
>> several hundred of you. It is with mixed feelings that I must
>> announce that I am stepping down from my position as the YP community
>> manager and the Advisory Board chair after 7 years, as I am taking on
>> a new role in my job.
>
> Thanks for everything you've done for the project, I'm sorry to see you
> move on. As well as the obvious things, I know there are a lot of
> behind the scenes things which happen which all keep the project
> running smoothly. Good luck with the new role and I hope to see you
> around at conferences etc. in the future, its a small world! :)
>
> Cheers,
>
> Richard
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

