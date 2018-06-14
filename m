Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 262B3E01A16; Thu, 14 Jun 2018 00:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BBDAE0112F
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 00:07:02 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id i205-v6so4729856oib.1
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 00:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zotD5g6HjPpZ/OlIGVXpSP6rSzq6utxPwOBiwYNG+FY=;
	b=LMMBGUj20dVt7eqMJx9e4V2mxJW7odKWzxA1OVENT2MWkUlWJfYTVpulrHQZkj7IH1
	bVFENlIa+6BKF+Gsq5V6FX7eZAEZaDv64t+JlKSFGqZIvFyxV8NB6C2WEGdtJvtZXANS
	B+cLKLrBfSE9X4pAwb3ZSRGq88OiR7dDMpoU3P5tuSYSEWc16GeWAbAKIZ1n63RMEE9y
	z/vajekiYEN8NFQC9LVWk7oOw031psois66V+mw4vka/TBBFu5TtdbijiXlTYkg0bg7k
	+7PStGJL/Mu6+TVLOkJhPFBYmPTPiZJrW8Azts+ea1CkiDaCc+1ZtJcRGSQiZZAGlLup
	h9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zotD5g6HjPpZ/OlIGVXpSP6rSzq6utxPwOBiwYNG+FY=;
	b=OyEybwB/KenKYRtKZzU6IdnGptqOjerggV5acffB2qn23icoiB7s0HbLuHzAeom8oE
	PTuQwkq57TvRbGO54CkSovg3KgrEF6ly1xkTqVERWCjMhC/HOBKPNndKACUlMjt/I0aH
	zp1IA6FjM2dfMXmOSzoPjTWod0oSrfVJtInsV8x78/kc6V3rNeJYBH6ttAwzYBmRP1sb
	fG8r//e18hVROoTJq7O1drpGO4ACqsBocIx34KBTaZTWSNeIkNq1FXRC5cSA+Yifui6C
	XGfgU3IbfxBZ0hVI0veVUoAnsqZHLeCdqHp8HI1hCXfVw4S2NVxDMPx/776Aos46SRGA
	qfpw==
X-Gm-Message-State: APt69E09YLUKzdMXhpNOFnD8DzNPKu4bR4twQ0C8VhuYD7V4raB5YvAn
	v/IgVTYK8hL/qkzwtfVBMVAVZKncV1wtQ2ty9i4=
X-Google-Smtp-Source: ADUXVKJrDseqKB2WWu7Z7zgFvmB2m578AmHYTLpnAabVMFGvHa++MT1FhvRX5BXNYGGQ6gDb5krD8bjgI7lkYPyvB/Q=
X-Received: by 2002:aca:41d6:: with SMTP id
	o205-v6mr684103oia.38.1528960022559; 
	Thu, 14 Jun 2018 00:07:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP; Thu, 14 Jun 2018 00:07:02
	-0700 (PDT)
In-Reply-To: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
References: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Jun 2018 10:07:02 +0300
Message-ID: <CANNYZj9bbraOoEJChm2X7Ws1+h9+K86Kissdh2dWaPtr1PiOEw@mail.gmail.com>
To: Tim Hammer <tdhammer99@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: devtool finish & patch order
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
X-List-Received-Date: Thu, 14 Jun 2018 07:07:04 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-14 7:02 GMT+03:00 Tim Hammer <tdhammer99@gmail.com>:
>
> My changes for U-Boot are not working as expected. I am wondering- did I use
> devtool incorrectly?
>
> I used 'devtool modify' to create a working copy of the vendor's u-boot and
> copied & modified files to add support for my custom board. I did my work in
> 3 distinct and commitable steps, resulting in 3 patch files in my layer when
> I ran 'devtool finish'.
>
> When I pulled the changes into another clone for validation, it appears to
> be applying patches in reverse order! It is attempting to apply patch 003
> but cannot find the file to modify. That file was created in patch 001. None
> of the files created in patch 001 are in my working directory.
>
> I reversed the order of the patch files in the .bbappend file and it worked
> fine.
>
> Do I need to use the tool differently to get the patches correctly applied?

Devtool should add newly added patches to the recipe in the same order
as the commits you created in workdir repo. If that is not the case,
please provide the steps that reproduce the issue.

Alex

