Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690AEE00BBD; Fri, 17 Aug 2018 01:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C828BE00B92
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 01:35:45 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id w126-v6so12748413oie.7
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 01:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=DCWYBYw9Y+vqheyOwYs8TQUVcuaUbuWykOsPZ8+qZdY=;
	b=eqKdYhwVE3bvrSB61Ikhn2Js5j20O1gY7zkIwQ0cSh8Cc6LCMcC95F1I91av/NoH1L
	r/h75sZ+XBFzgGxoqqvLnUbdkF3AfONTQo5haLgs63iKMqlZWP2qAanI0rywPsnJbmVv
	EJeiWmyl7O2ONb9qzc4t+hX0mpjerGQDfy1XiuP2e6JlAfXTt6cxOc86pm4EZVX9Vj7X
	6rdy13pQwZlHU9VrBo9K2E8lK8DxrOJaQhC3ImIWiDM+fBNxFYA8hGuoJzLakLXJc5Jm
	CS8JwS0+2HG2SilUGBGzJ+K5U+Zva7MmqF9cAbVfNy/WhOjle9dgWUQPiAwkISiWQ+ng
	qGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DCWYBYw9Y+vqheyOwYs8TQUVcuaUbuWykOsPZ8+qZdY=;
	b=FAS2qFA5Rp3xHu0dfOQtdgSlqmUItPq12rboc7etgFchgg5tTMinCcnTKHgidJo08B
	AXfxHdWrhm8l13z3ItoTBGJncBW2O+nPaQcChRAwiChtc+gAu9Nj/WKLdp7tZREuRchD
	sV/ObrkfkT08aKUFaC0AccM9QnF8fz6aj61trD6GGA2LD9HEIJDRD66R1KWrUsVvM3CN
	/HlY94HGKlHjLrl7XoZAoVhwfzQvw/v4uCK0qGTLWWBctP+dqCfWudg+wagXkC49NE06
	lLTlv+jgDA3RQpddA0fuf4T5x4/f4M5RCB9zJvHYp4K5YsG+7L3AD+SKQxQ2DQquB3vq
	NDZw==
X-Gm-Message-State: AOUpUlFC5PEYr7h/sMZGI4V3ffH5ieBw883Y6Dxz8D7iwnaVqkQUcN7p
	F2vFaVmlkJnp4Cef8xfsbzAIUWXiJ/9j6RDeyu3PKFWtzwE=
X-Google-Smtp-Source: AA+uWPyfih76RSzWzlUlAiQjf9eZu68DQN/rddY9JoDCQ2tfff6DrqSjQcBefMlePaqlP/qJ20Jdzxkfncvy7ndgezI=
X-Received: by 2002:aca:4782:: with SMTP id
	u124-v6mr1614847oia.45.1534494945066; 
	Fri, 17 Aug 2018 01:35:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:10da:0:0:0:0:0 with HTTP; Fri, 17 Aug 2018 01:35:44
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 17 Aug 2018 10:35:44 +0200
Message-ID: <CAOT_U5YbbpuVdM6yB0eBJu0gncs+_XJ8rNOgiDYOUsme3Y6izw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Doubts about image "equalness"
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
X-List-Received-Date: Fri, 17 Aug 2018 08:35:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm hoping to get opinions on a doubt regarding a certain yocto related
problem.

We have a following images in place:

* production-image.bb
        * core features, max security

* beta-image.bb
        * require production-image.bb
        * added logging, reduced security for dev intervention


At the moment, we first build the beta end if all is good we again build the
production.
This means we need to build and test twice even when no flaws are found in the
beta image.

We do that because, not knowing the internals of yocto enough,
it seems to risky to run the tests on the beta-image and afterwards
just ship the production-image assuming they are the same.

Because of that, a second approach has been suggested in which yocto
doesn't build the beta-image, but it gets created by manually modifying the
built production-image binary.

The core problem is we don't know the core of yocto that well to vouch
for the yocto option, on the other hand, this could be just a
psychological problem
and the manual approach is as dangerous if not worse :)

Did anyone how similar problems?
Would like to hear your opinions on how you approached them?

Be Well,
Alan

