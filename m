Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 845A2E00D9D; Fri,  4 Oct 2019 02:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9652EE00AB6
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 02:18:21 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id y23so5720383lje.9
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 02:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=NoeoFdwxfihOe91O7rbhDqGg1i5Z7J0WkKEUGTov73Q=;
	b=BZLRwzIwrS1rrQzJO29GTXVnVXSToG1lG4PnkQtj8I+QIituMgdV6L7H6Pb9DQJ57K
	3qqQ8PDrX0IaQOAEJTljSr1Kwj5mbFTuyq50LF/X3L0kREm/zUccLW4EwFf/IRf4fYcH
	FZOPhybnKOSnAMlwEzVT8H0H+blBA4IaLrnlait/YiZfUShaCd6r2DHPQs7srsIoOdiC
	UHcrFME1haOi6z8a+bdVbx2FUpZD7vvD+8jUwGr4zQ/xJyo8oi1DH5zXymmMT8NhKh7J
	hhAKb8sC00G9/rgrX9FCzLOcE1HbZ5fQ690YyFrCmaPbB2fcMBlcF+iARqP2gI1ml12E
	vA5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=NoeoFdwxfihOe91O7rbhDqGg1i5Z7J0WkKEUGTov73Q=;
	b=D45A/FKtDtF/BZo4xbkEOseC5n1MOtfUSJmF5o+MKAJNYXZ6MRXvlDGS+RZlKBGYTZ
	qkIApVy/PpSO4srO47woGr0N0fgtIf2fQYXeKXaUYgOG5MJWWIuJXp2QVIJuiz6b97Ey
	CLrJpFRNn66wHPFfHBbugaq7BrMjg+aEDy6HmahnhC7wHMKcPjSBajGRCgvv9eOAE5K/
	7c1kZ6l16OGH+CClu9jbI9E9n1qq63bqnJdNCwWf7xIM9s3xP/U6D6ZKONRT8KbEfOLo
	/UIS1jCFpCwl5Em1pBsLLAz1Ab0NbAa7gtfprrydJe4yHDn+hT3j+X3EtzqhiEJh06cq
	9TZQ==
X-Gm-Message-State: APjAAAXpGmF4TOhOc8anfE6KR68HslsKWfjowR4JT1wp0AuaFrk4XySH
	UTf7/mC6RRUwr+1852O/AevtIB9QCHj232POA8E4y969A2ihxA==
X-Google-Smtp-Source: APXvYqywrcp88+JfL4A9LnwweXS/oG+Rki5v5cH3EM275FatX7mL/HdJ6luxZho1gCW7WTx1AV+2k5aM2X8/H58Gd5U=
X-Received: by 2002:a2e:5b9a:: with SMTP id m26mr5409897lje.90.1570180700298; 
	Fri, 04 Oct 2019 02:18:20 -0700 (PDT)
MIME-Version: 1.0
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 4 Oct 2019 11:18:09 +0200
Message-ID: <CAP71Wjz5v_vkc4pMo2tyZ7GrH=YoXrgvrw+Nsq2Dtm95XQweFg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Demos for the Yocto Project booth at ELCE in Lyon
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
X-List-Received-Date: Fri, 04 Oct 2019 09:18:24 -0000
Content-Type: text/plain; charset="UTF-8"

Dear all,

As usual, the Yocto Project will have a booth at the ELCE conference
in Lyon later this month. While the booth is a great opportunity for
everyone to get a new sticker of your favorite project ;-) we are also
very excited when developers from our community get a chance to show
off the fun and cool things they build thanks to the Yocto Project!

If you want to bring any of your cool demo on the YP booth, please
reply to Andreea (cc'd) and I so that we can plan and discuss any of
the logistics!

Also, don't forget that right after ELCE we are having our first Yocto
Project Summit, with a very exciting schedule and great set of
speakers. If you haven't done so already, please check out:

https://www.yoctoproject.org/yocto-project-summit-2019/

cheers
nico

