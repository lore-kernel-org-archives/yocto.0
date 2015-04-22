Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C84D2E00949; Wed, 22 Apr 2015 04:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48355E003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 04:03:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Apr 2015 04:03:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,623,1422950400"; d="scan'208";a="713509305"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.14.70])
	by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2015 04:03:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 22 Apr 2015 12:03:42 +0100
Message-ID: <2068353.baZ4Sj8WqF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAAPegz0yoeT6MHsTgszud2RXHpkNDZLo28Xsj_w8iHPosSikhw@mail.gmail.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
	<1758688.vCBBUn3nR9@peggleto-mobl.ger.corp.intel.com>
	<CAAPegz0yoeT6MHsTgszud2RXHpkNDZLo28Xsj_w8iHPosSikhw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 22 Apr 2015 11:03:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 22 April 2015 07:00:50 Chris Morgan wrote:
> On Wed, Apr 22, 2015 at 4:10 AM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 21 April 2015 18:54:29 Khem Raj wrote:
> >> Hi Chris
> >> 
> >> > On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
> >> > 
> >> > Hello.
> >> > 
> >> > Based on
> >> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref
> >> > -c
> >> > lasses-extrausers and the .bbclass file I've added this to a .bbappend,
> >> > pulseaudio_%.bbappend actually so root user can use pactl when
> >> > pulseaudio is running in system mode:
> >> > 
> >> > inherit extrausers
> >> > EXTRA_USERS_PARAMS = "\
> >> > 
> >> >        usermod -a -G audio root \
> >> > 
> >> > "
> >> > 
> >> > 
> >> > From the .bbappend this isn't working. If instead I add it to our
> >> > custom image file recipe (image-blah.bb) it does work.
> >> 
> >> its a image level config so thats right behavior.
> >> 
> >> > I'm not sure how to debug or why it isn't working from the .bbappend.
> >> > Thoughts?
> >> > 
> >> > 
> >> > 
> >> > Also, the documentation in the .bbclass seems out of date but wanted to
> >> > confirm:
> >> > 
> >> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers
> >> > .bb
> >> > class
> >> > 
> >> > shows:
> >> > 
> >> > Below is an example showing how to use this functionality.
> >> > # INHERIT += "extrausers"
> >> > # EXTRA_USERS_PARAMS = "\
> >> > # useradd -p '' tester; \
> >> > # groupadd developers; \
> >> > # userdel nobody; \
> >> > # groupdel -g video; \
> >> > # groupmod -g 1020 developers; \
> >> > # usermod -s /bin/sh tester; \
> >> > # "
> >> > 
> >> > This INHERIT vs. inherit seems like it could be something that changed
> >> > in bitbake in the past but was left over in the .bbclass.
> >> 
> >> its correct because its assuming you are adding it to config metadata and
> >> not recipe metadata may be location is not right. Send a patch
> > 
> > It should work either in the image recipe (with inherit) or at the
> > configuration level (with INHERIT +=), but I agree extrausers not intended
> > to work from individual recipes, we have useradd for that.
> 
> Looked at useradd source and documentation and skeleton example but I
> don't see a way to add another specific user to a group.
> 
> I had been looking to use extrausers with 'usermod' in the
> pulseaudio_%.bbappend because the pulseaudio.inc base recipe file is
> the one creating the 'audio' group and adding the 'pulse' user to it.
> So it seemed like an appropriate recipe to add to to also add root to
> the 'audio' group.
> 
> Am I missing some way of doing this with useradd or should I just be
> modifying the top level image recipe to resolve this issue?

I don't believe useradd.bbclass can be used to solve this, no. You probably 
need to use extrausers.bbclass from the image recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

