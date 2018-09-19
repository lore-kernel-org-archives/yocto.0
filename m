Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 135B4E00B45; Wed, 19 Sep 2018 04:33:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81272E00939
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 04:33:49 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id h26-v6so5379905otl.9
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 04:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dH6pj4HlmO3Ek1rjJcu9LujBxFgDkX/gRp1g86yoWE4=;
	b=gRYsI98ZP/ZUenwQtv0zVEv9p5X2NzQBFDrBW56ztc02Am46L+xVq4GQgzxCP8Wet2
	MnNNNIJnozRcMRmWBcmdLV8EOLVoGB6TBpNIr8SFcIgIwdDqzlTb+W48w1/usm3oPxqM
	0Ifgs25MHaDXqP0Sn0vtHC/LPtUhQdnWhv9oLaA5A4t3UWi5twxXec9p+rrKrzQ4LAUI
	B+GfSFjTDYZBcRf49r8KhU3Wll6hjMfMPAGbeozHC2lGxOWGiW2KCXTFlDWCTFP9MumX
	BwG6QtG6pvujb7mVUXoI4/5HnOOkOF1wjNOrel05XCbygxq5fhSxHN2xOdIgtPvadKEZ
	Az+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dH6pj4HlmO3Ek1rjJcu9LujBxFgDkX/gRp1g86yoWE4=;
	b=MVa/d76nsI/ltPUZ43UPR8dfQZBzCa8dAe7pSYEvzAVGR7BMe+gknY53UNpWE5OlYt
	NuT2hMXkouCC0TgSZhMSQdhWWvDUbz7zlcyISbRFJ2vkPwtOGMCFG3FsV1nVRdRBrTuU
	VNQsLFhYCKRxgn2uBa68sZCP975XmF3Df73VWFjkIoc5CpkJe6Empl1BGzZz5X323u1l
	zRaBPCO9Z/jWsX5DMFGgY5PZhrM1ZKmzkVZhyxrgcz0TchLORcdpaQP4D9Ikm/nqawLL
	cxfnLqg2NHNxlI1zVT9NGJRh0MEOv5OM7eq0yHZ6HvYREm9Y2UV58mI3/rOXNT46lCHG
	LGiQ==
X-Gm-Message-State: APzg51C3569+g0e8764fmm1PZZGCGYbVQPoWo9Lmb1SVMpNKuacLyb9t
	b2u1Fvoos4QPC6Ll4Q8p6t+zlaeRPC4ZI0Ilh8Btjw==
X-Google-Smtp-Source: ANB0VdaH/3yatKTMGGcpBBvP0SKMAYbjbCjzGPF4cR5DrSZSWnUUQi59yfF/ULNfPeyqWquF7IvAPtwBD15uh+b9LlI=
X-Received: by 2002:a9d:4ea:: with SMTP id 97-v6mr17340486otm.99.1537356828935;
	Wed, 19 Sep 2018 04:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
In-Reply-To: <20180918162048.35454f8d@seebsdell>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 12:33:37 +0100
Message-ID: <CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
To: Seebs <seebs@seebs.net>, Jack.Fewx@dell.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 19 Sep 2018 11:33:50 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Sep 2018 at 22:21, Seebs <seebs@seebs.net> wrote:
> > Are the databases supposed to be shareable between different build
> > machines? IIRC, the answer is no. Could you store the native inode
> > type as a sqlite BLOB? Not necessarily a good idea.... Just an idea.
>
> I think coercing the values into range is probably safer. It should be
> trivial enough...

That is an excellent catch and I'm hopeful that this explains the
failures in glibc-locales too that I still see occasionally.

Is anyone actually writing a patch?

Ross

