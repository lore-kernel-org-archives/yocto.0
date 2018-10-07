Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DBF2E00920; Sun,  7 Oct 2018 07:06:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B51FE00826
	for <yocto@yoctoproject.org>; Sun,  7 Oct 2018 07:06:42 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id k64-v6so13861759oia.13
	for <yocto@yoctoproject.org>; Sun, 07 Oct 2018 07:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6ypw3Un7AHDHVLQwcIcFs2xXoJtsaV2Xx5VwH9rp+YU=;
	b=lgE+sITFnIrIH1EoJz1lpHrH0mp8kJmClCsKoXVaulmoYT4uo042Qr4LL82qc7BvAe
	8ZyJeOFhddKkR6D6dVIqiiZCDHBkZMpqAlUgOtA7nzYciuRTvzzMI1RZl9ZyPqtWUW6N
	x8X8YGQ08myWsGXW4puLkyTBXUZCxCD/MKrsMtphNDhwgQyuokC9q65ThEywCHPKLl0I
	BskuJP2IjYVO34oapz7qspS3rT64Dzf1RgSq7IDeqPiHPPYYbWQPEYlFf0N3w/GSI+XN
	OOqjs2dXoWjpnl8Xb7/GUREWWniVUrS2KtGhrmORpniNsso9mA5Wk0rrpMIxmPGWTBWM
	uR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6ypw3Un7AHDHVLQwcIcFs2xXoJtsaV2Xx5VwH9rp+YU=;
	b=Nzhcm4LGCUVtZkqECrdGz3ak9qPFvm9nUpPeqVvw/v6yBiPm4DHnHcXbF7fZ8aKWvL
	R/ypPvJgauAXbbU2Tv141plzwD7TQ3vyOQnc7/AneQnJSIu1lEfI+YOIRo2S1WJ4JQVe
	CyJ+RtHS9EGWrNrUMVftD6OdzY+FnFKxP+qfSl0aI3leqj2X9vUuZfdl/j8uVa4pmvZk
	U56cu6NHh2khQB6A9049fkEwgfuJIAXXH0/k/iifhnq4r1Q1p2JLRu61Uw/RvxP8c3UM
	VctuZfvH8PFrQ436u80+RlKu1Wn/1fms2kBdIV0rdgJKANLNb84LnH4fSvwNBxcz3y4+
	gjrQ==
X-Gm-Message-State: ABuFfohmxXjmoa2fWR1pktla9RoP+dKa+Avj/LlSRD5eGvXY/kPLsa0z
	WZo/vHASMPQaUNdowx5IKuMNXfb1xigPZRhzCMI=
X-Google-Smtp-Source: ACcGV60n5qw8VLnVMaCzuebAnDSKOPaA8yRx2BC+BmLAwNnqa359vhZBjDJWICfCmlrkktq3NvWeE2dHzwY/SUyWgd0=
X-Received: by 2002:aca:fd89:: with SMTP id
	b131-v6mr3335223oii.30.1538921201687; 
	Sun, 07 Oct 2018 07:06:41 -0700 (PDT)
MIME-Version: 1.0
References: <28aef114-cd1b-54a7-a479-4675b1777035@danlynch.org>
In-Reply-To: <28aef114-cd1b-54a7-a479-4675b1777035@danlynch.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 7 Oct 2018 16:06:30 +0200
Message-ID: <CANNYZj-gimjgi33mCv02D0RovYus0d-p46T_BazR8X6-kXXLUg@mail.gmail.com>
To: dan@danlynch.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Project Demo At Edinburgh Submit
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
X-List-Received-Date: Sun, 07 Oct 2018 14:06:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Dan,

I believe you need to contact Nicholas:
https://lists.yoctoproject.org/pipermail/yocto/2018-September/042588.html

Alex
On Sun, 7 Oct 2018 at 13:20, Dan Lynch <dan@danlynch.org> wrote:
>
> Greetings Yocto mailing listers,
>
> I am pretty new to Yocto and completely new to this list obviously. So
> allow me to introduce myself.
>
> My name is Dan Lynch and I'm a Linux/FOSS geek/dev and journalist from
> Liverpool. I've been working on a brand new open hardware and FOSS
> project with Alex Lennon who some of you will know, plus another local
> lad called Matt Croughan who you are probably less likely to know.
>
> We started it 2 weeks ago, it's called MakeSpace.Live and it's already
> taken off like a rocket. So much so that I think we could do a good demo
> on the Yocto stand.
>
> I am already going to be in Edinburgh for the Open Source Summit ina
> couple of weeks and Alex mentioned you were looking for people to
> demo/discuss things on your stand.
>
> Do I need to do anything formal to apply or can I just come along with a
> load of Raspberry Pis and cameras? Our project leverages Yocto for the
> Pi images so it is relevant obviously.
>
> Many thanks in advance,
>
> Dan
>
>
> ----------------------
> http://danlynch.org
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

