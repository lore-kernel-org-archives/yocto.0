Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0679AE009A0; Fri, 24 Mar 2017 10:15:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.53 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0C6E00970
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:15:05 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id r69so10466203vke.2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=LpJs3I9wxLL8AegAydVNYPxZWEZLFEo7tS8chE67Mgw=;
	b=YWQUvEQP3fhfOlPZ+lfXHczAjAdpBQp8AAx27KzScqaG1GydDNOHw/y3wJbPvW3kM2
	speo0nLxfOab6ETYkNabWtaor8sXgI15yBbVd1NfRkt1HY/bVhGPZMcrAjLIBYn5bCca
	+8G/e6uO27zOzKA7LYAN/dOdKrgjCfO4v0b3SNfBdNVumnYfpzc8ayyJ6vpbo85mMI5X
	JT5939jEQbJzx6cam6WAg/iVTl2rIQDP0HflokwKJvQWxJf1y32TvxTYdPBBIGoVmqAl
	GdzcuL3omESRa8aWZkeQJrUEAfTbbLhhbGOVdVfEU5VPdscjg34goUaT1Q9jd94oFDnZ
	c+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=LpJs3I9wxLL8AegAydVNYPxZWEZLFEo7tS8chE67Mgw=;
	b=GpqciGrBgxBEiIfXJpvm9VZhZ4YaDYvpb2vbLM8GSiSA7SNYOz7jHXavs5f2KyuL7o
	fzwzZneLYN/5hii3XcnvXcePlgHds0eXDoldf/xFwUpHWmSbB6cmUKCjma1/6VDg2aba
	GeH30QXX558I8BjplV82p2Dl25X6SCBzydtO1dPwYDy8JyQ/IOkWCtSvnR5jqdFBxh+/
	x3oaJ5Uk3RXjjCZLKJXC9rLcU8M5HrLQbvuPaF83d4JepLAnlN1vcVhOw+/N5LcLXpY3
	cbBj3fVXx7hBVAoQBeptsdJrrWwYVWzFRs+gvhTrr8MUwncF697JfzMOqfjgYavGV/q8
	JIrQ==
X-Gm-Message-State: AFeK/H0ltfQAnGbLGORnKaJX5GqSxDY2Ha8bDkvQrzIHRO7xmIDgOrFRhI9yF6VjBevz3Fbs4ymrdzztqSnocQ==
X-Received: by 10.31.49.136 with SMTP id x130mr4413135vkx.82.1490375704233;
	Fri, 24 Mar 2017 10:15:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Fri, 24 Mar 2017 10:15:03 -0700 (PDT)
In-Reply-To: <CAHUNapSCX2SqDha6eKPhqb=5O5Dc2VnRvxOfNf36Nb7A33AcWA@mail.gmail.com>
References: <alpine.LFD.2.20.1703230638090.745@uk63952.mitel.com>
	<CAHUNapSCX2SqDha6eKPhqb=5O5Dc2VnRvxOfNf36Nb7A33AcWA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 24 Mar 2017 13:15:03 -0400
Message-ID: <CAHUNapSNNBcQ_viA+-1Buj7yOeJDrD6yqyf+AttJG+Hhbb8XYg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP guide: better example for recursive layer structure than meta-intel?
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
X-List-Received-Date: Fri, 24 Mar 2017 17:15:08 -0000
Content-Type: text/plain; charset=UTF-8

(forgot the obligatory https://xkcd.com/917/)

