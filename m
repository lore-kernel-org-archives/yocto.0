Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21866E009BA; Fri,  3 Feb 2017 00:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F78E009A5
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:42:27 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id c85so2849708wmi.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=FHF/guA/Z/bV9TWMatlpZsiO3n9TUzXP3bqWoPEgcnc=;
	b=KG9cl0C+BHF/Fx6A9gV1iDnRkjCHQiA3gCoipOCzuiAsRgyJPMNUeZQdFLwCX6TRNq
	zZhWiCjPkCnatq8u6Vh+kENXU6vmVmG+Xjqb41VRzZb0ja91cooG6QF9c52YHm5+GWKU
	Ud7m+mp85MNtHteogp+CpNqsApquq23DO5jxYUw52yaAze8YfMSA0PPU1DAw+R1fa6kn
	49XIV1kaQxgfvHhYB9ykl9KV67frnUeIH1qgNFun/HJhk+gRUTc81CRFlvNaQ+YKp4MB
	kW+1e4XJGXuhsQU0lZXzWbBd1FGqeQgg03D/P73Kyn3sVzABELXsmTcxAX7fgN/0zUv9
	4Sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=FHF/guA/Z/bV9TWMatlpZsiO3n9TUzXP3bqWoPEgcnc=;
	b=NaT7vFBnfaedGJ+HdkKUe+HfvyNAJMj9KeL9LRGQ0zEBFbN8yG5QnXz3JArklFT+tQ
	jjGh+XhmgSxLUOwKLolKrd30DvmqyZQPE9W/e2GHKM8fLTTwzI322zRPJVMZeFuUA0QQ
	jfYs01xFHn/dxSk0KOLi3s2fh43RM/5UErIQY1FqT5SoNHMyye2jcS2BBE/OQouJ+GVw
	mUzaKwTmayTfb6e1yfZuenRR1+zmm7OaBgeqpzGIoiqXAOGTia8bJevEdDqlqu74Xobm
	ltZlbX3km4czW2XUC+8mHJS2h7QgUSNCgz6AIRY2IGDfHs7l3dyvTgA1UvBhliTSgEou
	GxKg==
X-Gm-Message-State: AMke39ktcLn3G4no1tk5AM0rnulg2EBllqpRVTz/pO3suAcl9/DgiJtSDU83Hrf0vEun9g==
X-Received: by 10.28.170.211 with SMTP id t202mr319722wme.71.1486111346103;
	Fri, 03 Feb 2017 00:42:26 -0800 (PST)
Received: from crde-port-20.cahors.local ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id
	y30sm44026839wrc.23.2017.02.03.00.42.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Feb 2017 00:42:25 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 03 Feb 2017 09:42:22 +0100
Message-ID: <1710687.9RfHKcS4U3@crde-port-20.cahors.local>
In-Reply-To: <CADkTA4MvR-tpPbyHgDsVV7xcRk5Ef6zKJF335m4vcphYCvhGWg@mail.gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
	<CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
	<CADkTA4MvR-tpPbyHgDsVV7xcRk5Ef6zKJF335m4vcphYCvhGWg@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Fri, 03 Feb 2017 08:42:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On dimanche 29 janvier 2017 23:31:49 CET Bruce Ashfield wrote:
> On Wed, Jan 25, 2017 at 1:05 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
> 
> I spent Friday looking into this in more detail, and to keep things
> consistent
> with how the path and config queues are handled, with all the tree
> manipulations
> pull out of the various scripts and exposed in the bbclass itself, I ended
> up with
> a different implementation of the support.
> 
> The kern-tools change is the same as you did (and is your change), the
> difference
> is in the bbclass processing, where do_patch() modifies the tree, and it
> consumes
> the output of the meta-data routine .. versus the kgit-meta script itself.
Thanks for looking into this and come up with a better implementation. I agree 
that mine was a little harsh.
> The work can be seen in my poky-contrib tree:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=zedd/kernel,
> in the
> commit "kern-tools: re-enable scc merge command".
> 
> These changes are on master, and passed my testing to merge feature branches
> into the branch being built.
Saw it, read it and saw that it was now in master-next, ready to be pulled.
> 
> If you are able to try it out (on master), that would be great. I'm going
> to let it
> soak for a few days, and once it merges to master, it can be ported to
> morty.
Sorry, I don't have a master build ready but as soon as I can test it whether 
on morty or master, I will report back.

David

