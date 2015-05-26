Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72AEAE0095D; Tue, 26 May 2015 15:39:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE15FE007B6
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 15:39:11 -0700 (PDT)
Received: by ieczm2 with SMTP id zm2so621875iec.1
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 15:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RDANvHqOtdPjrkvaDWo5XJ9EsgsCHIMdxveCSCIkR7c=;
	b=AL6kayRgONBaC1+VM+hOHTFtI9qHecGDD3nshH/YZCFdE5pTOmaf+DKqxtNhOkH8Ci
	PfK3R2MTa7KF4jolipcTX8NVVb6v2j5IiAtx91oRtIyF52wb5WlKJfmUaQtKC+Uooe9J
	K2bZ+DK9dgQ/G4Htf8s4tJTCxtk+OH6TefQXu7yQYRNe+XAwsfvGYLxRLIc6ruMhWk/Z
	Fcq6Pd2+Bnp3C/6yr+5U7Lw/PGbGyyHHxxoKVugkFCkk/yk7naxVqe/C7/KfDScu4X6z
	jXkh1T8cerDAKqHyxqmwhbiyMD1FYWexw404TITB0MnSDkQyAaR6+hkgRdzE9XlRxtsS
	GItQ==
X-Received: by 10.50.132.3 with SMTP id oq3mr26558igb.21.1432679950801; Tue,
	26 May 2015 15:39:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.134 with HTTP; Tue, 26 May 2015 15:38:40 -0700 (PDT)
In-Reply-To: <5564F148.3010007@linux.intel.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
	<CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
	<55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
	<CAK8F28nzBnuc+kSA6HTBVO_y1qd4HUafPSuo0oeOsUidvH3t6w@mail.gmail.com>
	<5564F148.3010007@linux.intel.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Tue, 26 May 2015 15:38:40 -0700
Message-ID: <CAK8F28=sm13e2urstMKOAY0pwb6tsGg4eQTGVUM3N-sriyFkRQ@mail.gmail.com>
To: Randy Witt <randy.e.witt@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Tue, 26 May 2015 22:39:15 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 26, 2015 at 3:18 PM, Randy Witt
<randy.e.witt@linux.intel.com> wrote:
> Did you source the environment-setup script? If so, what distro were you
> using?
Ubuntu 15.04 (Vivid-Vervet).  I used an SDK created based on the
gumstix-console-image rather than a mainstream image from meta-yocto
so perhaps there is a particular configuration etc. that messes up the
creation of the SDK?
<snip>
> We were thinking it wouldn't be so granular Basically it would end up
> matching everything in a manifest rather than asking for one particular
> package. So it would look more like "devtool publish-sdk location", followed
> by users being able to then update to whatever "sdk's" exist at that
> location.
Okay---If I understand correctly, that's a little more limiting than I
would like.  No matter how many different SDKs I provide, each
customer will need a different set of a software packages in their
sysroot.  Yocto makes it easy to build up a big sstate or package
repository and post this online---users can just grab a baseline SDK
and then pull in the pieces they need (which probably is pretty
comfortable for folks who are used to a 'sudo apt-get install
libboost-dev' etc.).

Based on this, should I be turning my attention back to using smart
install with a regular SDK environment or is this imagined workflow
just not a reasonable objective?

Thanks,
--Ash

