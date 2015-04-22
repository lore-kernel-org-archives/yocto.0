Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99BC3E00949; Wed, 22 Apr 2015 01:10:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8550E003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 01:10:39 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 22 Apr 2015 01:10:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,622,1422950400"; d="scan'208";a="559901860"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.14.70])
	by orsmga003.jf.intel.com with ESMTP; 22 Apr 2015 01:10:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 22 Apr 2015 09:10:37 +0100
Message-ID: <1758688.vCBBUn3nR9@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
	<E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 08:10:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 21 April 2015 18:54:29 Khem Raj wrote:
> Hi Chris
> 
> > On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
> > 
> > Hello.
> > 
> > Based on
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-c
> > lasses-extrausers and the .bbclass file I've added this to a .bbappend,
> > pulseaudio_%.bbappend actually so root user can use pactl when
> > pulseaudio is running in system mode:
> > 
> > inherit extrausers
> > EXTRA_USERS_PARAMS = "\
> > 
> >        usermod -a -G audio root \
> > 
> > "
> > 
> > 
> > From the .bbappend this isn't working. If instead I add it to our
> > custom image file recipe (image-blah.bb) it does work.
> 
> its a image level config so thats right behavior.
> 
> > I'm not sure how to debug or why it isn't working from the .bbappend.
> > Thoughts?
> > 
> > 
> > 
> > Also, the documentation in the .bbclass seems out of date but wanted to
> > confirm:
> > 
> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers.bb
> > class
> > 
> > shows:
> > 
> > Below is an example showing how to use this functionality.
> > # INHERIT += "extrausers"
> > # EXTRA_USERS_PARAMS = "\
> > # useradd -p '' tester; \
> > # groupadd developers; \
> > # userdel nobody; \
> > # groupdel -g video; \
> > # groupmod -g 1020 developers; \
> > # usermod -s /bin/sh tester; \
> > # "
> > 
> > This INHERIT vs. inherit seems like it could be something that changed
> > in bitbake in the past but was left over in the .bbclass.
> 
> its correct because its assuming you are adding it to config metadata and
> not recipe metadata may be location is not right. Send a patch

It should work either in the image recipe (with inherit) or at the 
configuration level (with INHERIT +=), but I agree extrausers not intended to 
work from individual recipes, we have useradd for that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

