Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7207FE00563; Thu, 25 Aug 2016 14:24:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5EF5E00519
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 14:24:36 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id z8so37695893ywa.1
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 14:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=Vj1ofEp18OpGLoBmV+dNMfKAfEAZo+471NtSj6/RaNI=;
	b=BHFI6YzhN6EzBQlFxkTkHpNvUmV9d59yPLvKnZeJBr4OkVQ1+FpC5sMNCkBvc8NYip
	33fPnYBB0zi+ekXuz/1VylLVIp8uUoJU/hChk0DCYuL9P4R23gVxrqcL/K3iZGWOuwZo
	SnsfW4hx60APhz/9y2+yhunT0B0JUM0o09OsnywNXh/W8o4YlLmenCaf4z13SbIufkUH
	BVqr7QB+f/+Obz2Agocq9edU+mYrTdRcUVhnEzPnGpWiHRDd25dGho05s2We0qpNgzMo
	EUuHcx7YjWR3K6nlSjKel/OG4zGAIuacghKRkZ1zZz874ohUXrpT9++DqUeX/Eo0bRaU
	Qd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Vj1ofEp18OpGLoBmV+dNMfKAfEAZo+471NtSj6/RaNI=;
	b=hdvNUYz/xk6z8p+Uehl1AZbK65PAVGXHEAfYA9+Co8OugA+LPerNExJjKHMeXTkMLV
	9OJJhfvc4DrMVNdOIN6N4dms4H3QXIejJU3XHopUvg7+iPaB9GzTP2UzvwxqfI0/89u8
	gH8w9gzW23dt/QVwYicJaHR9AOkNe6Tk/LbP/Zjdn/CBKlFNYRA0avXQCWgdw929ddPE
	LQsWzq7URuOrLGxM0if734MGxtS0ElrqI3bOWcQ7JwOgduKzlYICfDCvzhhyvswaiJsQ
	lEm5TETnnyYI64mwfxpoLHtElE24QLzcqxtLDjr+B1+ubk7BZx8+tvyZkRhL/I4Ayw6K
	BqWA==
X-Gm-Message-State: AE9vXwND8G9vD2FPtnZiF3epxpER52l63aAWa9UViHoeH52L7yRIm4eEaIOfccHjIa9v7osqGc1VedMDRKUCzA==
X-Received: by 10.13.247.131 with SMTP id h125mr9043833ywf.18.1472160274780;
	Thu, 25 Aug 2016 14:24:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.86.70 with HTTP; Thu, 25 Aug 2016 14:24:34 -0700 (PDT)
From: Michael Habibi <mikehabibi@gmail.com>
Date: Thu, 25 Aug 2016 16:24:34 -0500
Message-ID: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Git/yocto newbie question re: submodules and multiple layers
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
X-List-Received-Date: Thu, 25 Aug 2016 21:24:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi, I am well-versed with Git but I haven't really ever had to use
submodules. I am trying to create a git repository on our server that
will host our yocto distribution. Our distribution will include the
yocto repo, plus meta-openembedded repo, plus maybe some other layers.

The difficulty I have is thus:

my_git_repo/ <--- what my platform developers will 'git clone'
my_git_repo/yocto_git/... <-- yocto framework
my_git_repo/yocto_git/meta-openembedded <-- another git repo nested
inside yocto repo
my_git_repo/yocto_git/meta-intel <-- another example layer.

I would like for developers to be able to 'git clone' a single repo,
but pull down all the necessary layers from various git repos.
Basically it will comprise all repos, including yocto, OE layers,
intel layers, etc.

I believe the only way I can nest submodules inside pre-existing repos
is for me to create a local clone of yocto git and add the submodules
to that clone. That means the master git repo (my_git_repo in example
above) will point to *our* clone of yocto git and not yocto project's
git repo. In our local clone of yocto git, I will add a submodule for
each layer I want to add.

Does that make sense? Is this the right approach or is there a smarter way?

