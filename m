Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57AA4E00B4C; Sat, 20 May 2017 08:54:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0B7E0090E
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 08:54:17 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id p134so2273357wmg.0
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 08:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GXRSkmIoM4Hr3PONys9ZyJU+4oFm8wdpP04oE4+Qda0=;
	b=qy8SHWaOBgj+UrXaDVhFrUp5J78V2iDTZZSAIhxtFk7nA4OQ2ESUkA8/i0ztre9sEa
	GkQTYWtsEQKKj0tP3MkPhuzhdLQ+XU7z//woETAhxEbFPfPlxAjUKOShX/EFdEhWB2Kq
	gTCLr+2zaNJNi8T9QCsBu09l+pBNuge4hE1Mh45YeLLELU2Rn4NJPK+zt4fwGk96tQgj
	OX9xtDDHSFc+AXmQXAi79Zmy+ux2JolptlzKFP09EhuiFi4FTDcwIx128As5oQ7jQfoU
	QA5O58GMvyDHVMiFpti1UmBANuiXcsiJA+jc8/yNEJQUb6k9XU1k5o1jDEuPZQyUSHS+
	v2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GXRSkmIoM4Hr3PONys9ZyJU+4oFm8wdpP04oE4+Qda0=;
	b=Vhh4HicTI/BO/88uV2+ZStp3e2DUqEMZsY0SCGGqdMf9lGRm0fjtBklfz/gs1peisg
	LTGumEiBi/WeUSZhjwTo4exMnHqqRiAN5Zd0kfdYmwgmJGlN8sdMxW4r5Qw0bN66pF5V
	ekWRzBI9ky4KTKn5USOq2CtSrPgfxymgPrzf/bblsbBmbn612v1683xnxLzLGFJdDvpy
	Nd9ri/9du63RyYj3O995ACu9yOqZm2RQ6IrIOvZPhqD6jBHDmlJu6qbrICu4nsOHmd+S
	VKCnsxLxbXmhgDI3yvvjiFp02OwLqmVlGzCkgaj5MiyT82xf1FvnPd7aCuq+ZT92qgHO
	wOYQ==
X-Gm-Message-State: AODbwcBFTin3Am3S2XkVcIy8MjpE3wHjVt9N4fo16AZnxHDNCFoKXH5s
	CFC/qW0cif3X8TLikGlbBeUsbL4KqQ==
X-Received: by 10.80.180.155 with SMTP id w27mr11193160edd.42.1495295656511;
	Sat, 20 May 2017 08:54:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Sat, 20 May 2017 08:53:45 -0700 (PDT)
In-Reply-To: <C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
	<65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>
	<C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 20 May 2017 08:53:45 -0700
Message-ID: <CAMKF1so=4MOc8ZvKe9wkOGgrhZ2M6yhuaN+WAQY9VrzcH9+rNw@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What can I share between projects?
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
X-List-Received-Date: Sat, 20 May 2017 15:54:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, May 20, 2017 at 8:16 AM, Darcy Watkins
<dwatkins@sierrawireless.com> wrote:
> Are you saying that the sstate cache is smart enough to handle exact same
> package for same arch but just built using different layer stack?  (Say one
> case builds package A with a bbappend, but the other uses a bbappend from a
> different layer, and say they are at same bbappend revision).

yes it should be, since it checksums the variables which are effective
during build of a given package.

