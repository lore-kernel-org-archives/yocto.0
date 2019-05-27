Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D76E00D35; Mon, 27 May 2019 10:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCADBE00798
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 10:33:10 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id 15so185970wmg.5
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 10:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UL3Nl1WLOO2def5/JVfIgNjhVx29/tOG0nEBOP5PNs8=;
	b=UJKrS7IoYX4pK0+4q50o+LpMJf+x5NQvl0IyJQyOSQuQUsGRUb5pjwVx/NEwYvgLw9
	78o35LTb720HNj8Hzj9WS7Qq5IPKmOERUJqovPbUz1HNSMSklpBJOz+r7dPznPP0k9eJ
	QiYKbL4aTlt9m7yM4SixDznVYD/KdhUtfqXTCmDW7kgfeteLA1a/N5lKeB7I6xyhSovk
	ExbowCvOTUrNVEP/+VwOUG0RQyZJnDZvJbRGoOtVhj3Umw0/2CuKc9GdGhjEZS4NZdOJ
	pvn1guTyHxxIhckRiw5LXOtxWFUYJCR/b5w2RvlUauma4Hys9h1ISbiHvggJlhepHK0L
	v15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UL3Nl1WLOO2def5/JVfIgNjhVx29/tOG0nEBOP5PNs8=;
	b=JJlevst6FoJEFuQiUvN1+2QC9RdXt/a46ijNrXFo4PlbQNW+IMMSSwDKXX94ba29jT
	whE/bAYTw83SwhzyuLkQb49Pqhpk1GMsCi7ieESGshJ4Ub+kIHGt259MFnHs7Q/+3vFl
	w8rJ9itI/xamaijNa75rOdqsd3DrYfT/DNqJA82jkgBFYsuOUc6gBnfszqivxolrCIwP
	6hj7EDyU8qJbQt6Jw2JdzN4MZmYw/UupaCQDXSraw1zbWXUOemOxp1PVbVEAzamDjWC3
	IeOq1/KX4k6TbROaX8CL6tb0I7qpKdqD4uSJ+rNqq5qwZ+fP/2/ROo0nNyhLnOueh8T5
	CJjQ==
X-Gm-Message-State: APjAAAVVblzWtoEkml6WaG8fQ1Kovy6ffdo/AuA2Ley29TVeHDK9LWG+
	UVP7l1adIKtYLLKSFuFbGJ2mleiAo91eXtB0DvU=
X-Google-Smtp-Source: APXvYqwwos/OpRkpcEL6y3QxgSOWFK7zE5m3rp0ExC0n8yw/20aG7xIeqprkCAN3qJCiwoKoaWd8uDnIkth9tHi4svg=
X-Received: by 2002:a1c:be12:: with SMTP id o18mr133923wmf.124.1558978389845; 
	Mon, 27 May 2019 10:33:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
In-Reply-To: <CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 27 May 2019 19:32:57 +0200
Message-ID: <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
To: Enrico <ebutera@users.sourceforge.net>
Cc: yocto <yocto@yoctoproject.org>, Sergey Lapin <slapin@ossfans.org>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Mon, 27 May 2019 17:33:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Enrico,

On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net> wrote:
>
> Hi,
>
> i try to keep it maintained, but now i just have a lime2 for testing
> on real hardware, and i don't have the resources to do test builds for
> all the supported boards.
> Your help would be welcome, i can't check right now if i have the
> rights to add you as co-maintainer, anyway i will add you.
Thanks I have few sunxi based boards so can do tests also on my setup.
Pls ping me when you will add me. Thanks.
>
> Thanks for the help!
>
> Enrico

Marek
>
> On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com> wrote:
> >
> > Hello,
> >
> > I'm just curious if meta-sunxi is still maintained? I was contributed
> > to layer back while and when look now thud branch is un-compilable
> > (dri2proto not replaced) and warrior branch not created yet. There is
> > 14 issues + 6 pending pull requests. Added maintainers also in CC. I
> > think it would be good to have sunxi properly maintained as boards
> > with sunxi processors are popular. I can give a hand as co-maintainer
> > if necessary. Thanks a lot.
> >
> > BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com

