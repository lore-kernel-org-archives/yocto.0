Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1274AE00D1B; Thu, 28 Mar 2019 09:30:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06254E00D12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:30:45 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 448CA2400FC
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1553790644; bh=nROfgt1l56CMi3qQ9ecAo62haleUoNZlxuI6UU4VPUs=;
	h=Date:From:To:Cc:Subject:From;
	b=QNVjvCp6aajTq+5Eu9FGr/1mg9oNZ3mA2GABMxS4Lj8XxI/DHhg9aIq2iO0h/mxes
	qlTUdOBFMMhvsMWOSPy2YUFjB2BvE12cqTTbEHRPaffd4EjX/LtUQlKNI+jci5hNx4
	jafL9gQ06Hd7SKSGqGVhgFVqUVTuG0hv4+PHIOfVKa75IvXrwyXcF9vNL35UtE9yz6
	CqONzi4JsAXa9PbYBz079vOVUp5Klt1t/EHRKxmCvmjHQPZFuxk2vaKXvP5rd2vD64
	YjUypnJsK0J+5STbXYXVb1/9Ux2qcWKI7uf4T1cO4uaN1SGEYljBav64xNgzagarPZ
	ZfiNcOUFqu7wg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44VVjH3Fg1z9rxH;
	Thu, 28 Mar 2019 17:30:43 +0100 (CET)
Date: Thu, 28 Mar 2019 17:30:42 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: A <aaron.biver@gmail.com>
Message-ID: <20190328173042.5a4d9f0b@posteo.de>
In-Reply-To: <CAMd7AX-pAObJ38twArWYpif7OCb5Z_mQmnfgRe7GxrnMXv-1mQ@mail.gmail.com>
References: <CAMd7AX-pAObJ38twArWYpif7OCb5Z_mQmnfgRe7GxrnMXv-1mQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Basic Yocto+CMake Usage question
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
X-List-Received-Date: Thu, 28 Mar 2019 16:30:47 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi

On Thu, 28 Mar 2019 12:20:43 -0400
A <aaron.biver@gmail.com> wrote:

> I'm having issues with a yocto build that is combining recipes that
> should depend on each other, and I need a sanity check.  Is this an
> ok forum for stupid user questions?
> 
> The main idea is to have one recipe install some prebuilt libraries,
> and have another cmake-based recipe use those libraries.
> 
> As a caveat, this is a native version of the build that I seem to be
> having trouble with, but I assume that is mostly irrelevant:
> 
> In ProjectA, the meat of the matter is a do_install that copies
> ProjectA*.so into STAGING_LIBDIR.  I don't recall why I chose that
> instead of ${D}${libdir}... is it ok this way?
> In ProjectB, I'd like CMake's find_library() to find Project A's
> libraries, and I seem to be having trouble.
> 
> How would you approach this?  The recipe for Project B contains
> "inherit cmake" and some variables I pass in with an EXTRA_OECMAKE
> and an EXTRA_OECMAKE-native.
> 
> I also have there:
> DEPENDS += "ProjectA"
> DEPENDS_class-native = "ProjectA-native"
> 
> However,in ProjectB's find_library() call, I am uncertain how to
> direct it to find those libraries - what PATHS or HINTS or whatever?

I was having similar problems with this (a dependency for zeromq in my
case).

  DEPENDS = "zeromq" # build dependency

I had to add the following variable to my recipes:

  OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM = "BOTH"

this, iiuc, tells cmake that in case of cross-compiling (via a
toolchain-file) that it shall also look in the sysroot for header
and library-files when doing find_library(). Not sure if it will work
with all find_package()-modules.

It worked, I haven't investigated further why, but I should have.

HTH.
--
Patrick.

