Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17204E00D7E; Wed, 17 Jul 2019 13:37:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF1C6E00D75
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 13:37:43 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id e20so17576242iob.9
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 13:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=cPDegesFKOF14fHWvXJWO293w29aPKJUAmrm2tHRAmE=;
	b=Nc2q/C4gVzWuFnbqeB731tSiXj8+PRY9Z+qgQW47kgBNsjY8GJHCknBbYpBV2ux1km
	+V/VeMs6T3oveG+WPLMVKou6qlIfGX5eUnBGjsg3RZDwqOKWuE2NH/v1lw2bQDSCBG2i
	HdUD7tFYCoad5dFUZxCBdSpnlk/QGt9caZ60FgOKKBMA1EzDSCU2usPh83wxEL634eEw
	qgtqvQ0DNTrVAi5igPfDN3VJt4vOYrYTbQG6+aS2NJIlm9lcWeYWuMEyT/o3FL+REYBD
	gWLLKFgIX7KzaswN54CXkIOA7amI8d9rZ16iizNd6pzkcxa0t4EDzIHvSSGIOfqoBi+C
	doMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=cPDegesFKOF14fHWvXJWO293w29aPKJUAmrm2tHRAmE=;
	b=a3JznOrMXZiup64y5zDStGqOlQPbhmEyZ0BBIrv5Dprh5YH/BG/eFoH9TvBSOnppM0
	54f4+Dtl2nIQun6xiZw5S1Keh2kmc3aBv7dpUZNp1R6cKKSVm/1gvP10bGaf+GmjzuLe
	A6vKRLZ3b3j+djauGMRm6dhdoB3SSOOl7/jJy4Bq+oAJuGSEru4ApXk9kkFSM+SKORkC
	s0QuEuu9lxcBgq4+xkpM6siPUE+ZIksKy4OMbZCYNnKTCHRbXFNvN1+3Lw9WZMyncL5R
	P8rfoOkv7O0t5gHswjteKWs4rw7W5n5g8i37KKacLTRqJc4qwyfAXQo0dzrbmX1sWqu2
	E5XQ==
X-Gm-Message-State: APjAAAUP+sQUjmYuCs3EUgOxVn96iH3V7r7AsVh/MwVM0c7GvbWVJ3qY
	bVrdYsEKw1Tj7TNcMM8oOlW01Ph+Iu9MDzMdIurbs/tc
X-Google-Smtp-Source: APXvYqz/0FiS0po3PIoZpcPI3XMBRuJb7VAnkEpZ3gxsiy4e9l7YP98qzWHM3KIqNSs+j2sffmajlPaRYyoIqwktHno=
X-Received: by 2002:a5e:c744:: with SMTP id g4mr37533006iop.187.1563395862880; 
	Wed, 17 Jul 2019 13:37:42 -0700 (PDT)
MIME-Version: 1.0
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Jul 2019 21:37:31 +0100
Message-ID: <CAJTo0LaOHbSB75OGLsHJ3Vxd5eVgg9+7Cq3k0=P-BwPLpFiyjg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Cc: OE-core <openembedded-core@lists.openembedded.org>
Subject: RFC: dropping official support for Debian 8 / Opensuse 42.3
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
X-List-Received-Date: Wed, 17 Jul 2019 20:37:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Now that both Debian 8 and OpenSuse 42.3 are end-of-life and no longer
formally supported, we think it's time to drop them from the supported
distribution list.  Initially this involves removing them from the
SANITY_TESTED_DISTROS list in Poky, at some point during this cycle we
may remove those distributions from the Yocto Project autobuilder to
add more workers for other supported distributions.

It is expected that the next release will probably work on those two
distributions, there are no plans to do new and exciting things
dropping these unsupported distributions enables -- like increasing
the minimum Python version to 3.5 until after the 2.8 release in
October.

Please, if this impacts you, speak up now.

Ross

