Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14A60E00B43; Thu, 23 May 2019 09:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 795DCE0049C
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 09:21:00 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id f8so6979584wrt.1
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 09:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=+dcyGMZnQ+MO+X3dgyZZg24tNBJOQQL4rpuK40BBtK4=;
	b=J6LhubKcHqWLv6eTz5cl1bIuTI0S7QwTduU3ea9b8hnjs4926z5fDKtGVIhyPmV0oq
	hGUY2qA2E6KJ21e9MnamhzGtmlGsSWvWd74f8C3t8ot0xwuDxjpb2sDYCgUlsZb7yz8S
	dr9m1CaOMNaQnupATzcFBAyP9SHGb8GkAt5x7TBYuoMEgje/SHoy35NogsAcXQtu77Y3
	OXo/dXF8VYrmdd6Jpw7yS9yJUmyb7Z46NoutSsAY95tJxAlVzJe7RG8cgtKQCiXjgo+K
	tvIfLZfhs89ffhpnT69C/d7LgoX8mdywuZ/yQNApCa3cLAc4/BvG9rM1WePK27cSy2DV
	eMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=+dcyGMZnQ+MO+X3dgyZZg24tNBJOQQL4rpuK40BBtK4=;
	b=Eghifs+ZqzdO/5/2iPJV/DD7VuTpRgCBlMxSeCN+RTtImzDmA69Gq3q2DHo0FeJSRG
	yTj+U0BbYelFGDH4Gofj8RSSYmCcVTAejORQ0L03tJTrkKEKYuYB4nSbvQB+vidZE2eh
	waRlXteJNE+8jvU+H5eOFc/RDSCrsp9VdKlpJblsU/dmySY4tbIa3nAQnPKI2NEHEKLr
	W0jwS5P5Px0a1b8lO+8JSC4RklWIHk6x7v9OFBNzXiF6djoAQyfJdF916D2lRVgDeVXQ
	w8/XBwhE8RD7XcKD3kAEijgl2DTULej4IpsHqkHL6aBajHobHabEl/tyHOwaTBFlFOUi
	Ml6g==
X-Gm-Message-State: APjAAAWys/zO+9zlyiBHHzGj04xTqLtpTV09W9joEB0/cnITc2oM8Ace
	P6rdkkZ+CnoO5m2yeVE3KJ811Q==
X-Google-Smtp-Source: APXvYqzh+wB3q3RLObmlbntmJN0M3Haozo89Utvw6jaewxna9cVxfCOr2h2uuh7xR3tLU4VmUyFRWw==
X-Received: by 2002:adf:f292:: with SMTP id k18mr34494620wro.321.1558628459385;
	Thu, 23 May 2019 09:20:59 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	b5sm25941959wrp.92.2019.05.23.09.20.58
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 09:20:58 -0700 (PDT)
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
	<CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
	<e173ccd1-a85a-81eb-85e0-331a0c2392cb@gherzan.ro>
	<CADkTA4M7jXrnq17=PGhQvGSB36NJ+rLJWT_hiSTjG-d-yZjnHA@mail.gmail.com>
	<731e9836-076a-6947-c24d-ebc4150b08e9@gherzan.ro>
	<CADkTA4Pfkh9d7brp5VTAaR2AhfN8xuTqoVkyBsSGA4DFPOkhHQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <78dd1c42-1be8-bd75-1b75-3d10e73561da@gherzan.ro>
Date: Thu, 23 May 2019 17:20:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CADkTA4Pfkh9d7brp5VTAaR2AhfN8xuTqoVkyBsSGA4DFPOkhHQ@mail.gmail.com>
Cc: zubair@balena.io, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 16:21:03 -0000
Content-Type: multipart/alternative;
	boundary="------------16BDBF421A1FEEBF05ECE3D4"
Content-Language: en-US

--------------16BDBF421A1FEEBF05ECE3D4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


On 23/05/2019 17.11, Bruce Ashfield wrote:
>
>
> On Thu, May 23, 2019 at 11:24 AM Andrei Gherzan <andrei@gherzan.ro
> <mailto:andrei@gherzan.ro>> wrote:
>
>     On 23/05/2019 16.10, Bruce Ashfield wrote:
>>
>>
>>     On Thu, May 23, 2019 at 11:00 AM Andrei Gherzan
>>     <andrei@gherzan.ro <mailto:andrei@gherzan.ro>> wrote:
>>
>>
>>         On 23/05/2019 15.39, Bruce Ashfield wrote:
>>>
>>>
>>>         On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield
>>>         <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>>
>>>         wrote:
>>>
>>>
>>>
>>>             On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan
>>>             <andrei@gherzan.ro <mailto:andrei@gherzan.ro>> wrote:
>>>
>>>                 Hello,
>>>
>>>                 This might have been discussed before. I couldn't
>>>                 find a relevant
>>>                 thread, but if it is so, just link me to it.
>>>
>>>                 Since thud, more specific since
>>>
>>>                 commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>>>                 Author: Bruce Ashfield <bruce.ashfield@windriver.com
>>>                 <mailto:bruce.ashfield@windriver.com>>
>>>                 Date:   Sat Aug 18 22:50:44 2018 -0400
>>>                     kernel-devsrc: restructure for out of tree (and
>>>                 on target) module builds
>>>
>>>                 ... we switched from a recipe that was deploying the
>>>                 entire source code
>>>                 to one that provides mainly the kernel headers (but
>>>                 not only). This
>>>                 change broke people expectations of this recipe
>>>                 while the description is
>>>                 also confusing: "Development source linux kernel.
>>>                 When built, this
>>>                 recipe packages the \source of the preferred
>>>                 virtual/kernel provider and
>>>                 makes it available for full kernel \development or
>>>                 external module builds".
>>>
>>>                 If size is not a problem (which can be the case when
>>>                 you compile on a
>>>                 builder for example and deploy only a OOT kernel
>>>                 module through other
>>>                 means), the full kernel source was a painless
>>>                 experience where things like
>>>
>>>                 commit a9471601fedd1f5087304eaa5fd39b98ae220313
>>>                 Author: Bruce Ashfield <bruce.ashfield@windriver.com
>>>                 <mailto:bruce.ashfield@windriver.com>>
>>>                 Date:   Thu Aug 30 09:45:41 2018 -0400
>>>                     kernel-devsrc: fix arm/arm64 target module build
>>>
>>>                 ... would not appear. I understand the size impact
>>>                 on target and for
>>>                 those cases, continuously maintaining this recipe
>>>                 with new
>>>                 files/resources needed from the kernel, makes sense.
>>>                 So my proposal is
>>>                 to have two recipes, for example kernel-devsrc and
>>>                 kernel-fullsrc
>>>                 (kernel-src etc.) so people can choose what they
>>>                 need/want
>>>                 deploying/using. Or even have another devsrc
>>>                 provider. I'm open to any
>>>                 implementation detail. I'd just want to have an
>>>                 option for a full kernel
>>>                 source recipe.
>>>
>>>
>>>             This is already planned, and hidden in bugzilla
>>>             somewhere. I'll have some new kernel packaging
>>>             options available for the fall release.
>>>
>>>
>>>         It looks like the bugs that I was using for development were
>>>         finally moved to resolved (they were a bit old, and
>>>         contained collected information on various kernel packaging
>>>         options .. my searching of bugzilla isn't turning it up at
>>>         the moment). So I just created a new bug to track the
>>>         development for 2.8.
>>>
>>>         The issue with the multiple kernel source providers is
>>>         really about test cycles. The smaller devsrc is for
>>>         on-target module development and builds against the exported
>>>         uapi headers, and that is what the nightly / automated tests
>>>         will use. We had issues with both the amount of time it took
>>>         to package the entire source, and the amount of space that
>>>         it took up on the images. Hence the creation of devsrc.
>>>
>>>         With new kernel-source and kernel-headers packages (the
>>>         working names), they are really provided as references to
>>>         the running kernel, and will largely be an exercise left up
>>>         to the developer to use them as they want.
>>
>>         Right. So is there anything that holds us from creating two
>>         recipes - one for what we currently have and one for what we
>>         used to have pre-thud - find some pretty names and start from
>>         that? I'm asking just in case I'm missing any internal
>>         architecture discussions or so.
>>
>>
>>     In some other non-core layer ? Sure :D The pre-thud copying of
>>     the kernel source was a disaster and needed to be killed with
>>     fire, as it was. It was all special cases and I commonly needed
>>     to fight with it. What you see in the current devsrc is not an
>>     invention from Yocto, it is based on the redhat spec files, and
>>     also (a bit) on some of the debian packaging of minimal source.
>
>     I am aware of all the other distros having the similar approach
>     (and they do this dance for disk space optimization) but I don't
>     understand what were all the special cases you had to fight
>     against? The recipe was barely touched in years. For example there
>     is only one commit on it in 2017.
>
>
> There were corner cases popping up with architectures and the newer
> kernels. I had inflight changes that were tweaking the nasty find
> commands, etc, trying to get everything we needed, minimize the time
> spent copying and avoiding QA errors due to cross arch artifacts
> popping in. Let's just say, I'm not copying and pruning the same way
> in a plainer "kernel-source" package. Since it isn't installed by
> default, and is opt-in, it doesn't have to be quite so careful on
> those fronts.
>
>  
>
>>
>>     So no, I'd rather not restore the mess that was the pre-thud
>>     devsrc in any form.
>>      
>>
>>         And about test cycles, I'm not sure I understand why having a
>>         provider vs having two separate recipes impact automated
>>         tests. In both cases you will select whatever you want to
>>         test - by using a specific recipe or by setting a preferred
>>         provider (I don't have a strong opinion here but I was just
>>         curious about the time impact on automated tests).
>>
>>
>>     If it goes into core, we would need to run a full set of tests
>>     against it to make sure that it supported development tasks. That
>>     would mean on target kernel module builds, as well as potential
>>     some new cases given that the full source is available (i.e.
>>     kernel rebuild). We already do that for kernel-devrsc, adding
>>     multiple providers of something similar means that we'd then have
>>     to test the multiple providers against all the architectures,
>>     across the actively supported reference kernels in any given
>>     release .. something always breaks, so then I'm on the hook for
>>     sorting through all the issues (devsrc was not bug free in its
>>     previous form).  Given the amount of test cycles available,
>>     that's not necessarily a trivial thing to add. In the end, it
>>     would be up to Richard if thinks something like multiple provides
>>     are a good thing, and to commit the test resources/cycles to them.
>     I see. You were comparing something else. That makes sense.
>>      
>
>>      
>>
>>         Replying to the other email (this thread was forked). We have
>>         maintained a similar kernel headers approach for a couple of
>>         years now. And many times we found ourselves in the situation
>>         where something had to be added/removed/checked - that was
>>         either kernel fork specific or something that was added due
>>         to kernel updates. And this loop of fixes here and there was
>>         obviously completely resolved by just using the "old"
>>         kernel-devsrc which always had "everything" in. A good
>>         example is commit a9471601fedd1f5087304eaa5fd39b98ae220313
>>         I'm mentioning above. This kind of stuff will always be
>>         needed - or at least in our experience was a pretty often
>>         loop (when you try to support one kernel headers recipe
>>         against tens of BSPs, you'll need cases, quirks and so on).
>>
>>     Those small tweaks really are trivial, I don't consider them to
>>     be a big load. The advantages of the smaller footprint package
>>     have outweighed any tuning we've done since things switched over.
>     Again, I 100% understand the space advantage. I'm trying to see if
>     there are any other advantages at all. In a world with infinite
>     disk space :D
>
>
> Nothing super dramatic :D The curated / whitelist approach does make
> sure that nothing new slips into the package until we've tested and
> ok'd it (with the downsides you are pointing out) .. so we have an
> easier route to patch / workaround issues as they pop up (I remember
> before uapi and hand sanitizing the kernel headers .. and wouldn't
> want to be that extreme ever again).
>
> But I completely agree, having a simple, full copy of the source for
> situations where build/packaging time or diskspace are not a
> requirement is a good thing. I'll sort through the last symlink /
> provider issues and get something out ASAP.
Thanks Bruce. Would you please CC me when you push that? Just to make
sure I don't miss it.

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


--------------16BDBF421A1FEEBF05ECE3D4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 23/05/2019 17.11, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4Pfkh9d7brp5VTAaR2AhfN8xuTqoVkyBsSGA4DFPOkhHQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default" style="font-size:small"><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, May 23, 2019 at
            11:24 AM Andrei Gherzan &lt;<a
              href="mailto:andrei@gherzan.ro" target="_blank"
              moz-do-not-send="true">andrei@gherzan.ro</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div
                class="m_322836461924073792gmail-m_6396751045051702939moz-cite-prefix">On
                23/05/2019 16.10, Bruce Ashfield wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div dir="ltr">
                    <div style="font-size:small"><br>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Thu, May 23,
                      2019 at 11:00 AM Andrei Gherzan &lt;<a
                        href="mailto:andrei@gherzan.ro" target="_blank"
                        moz-do-not-send="true">andrei@gherzan.ro</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div bgcolor="#FFFFFF">
                        <p><br>
                        </p>
                        <div
class="m_322836461924073792gmail-m_6396751045051702939gmail-m_-2362202549594693829moz-cite-prefix">On
                          23/05/2019 15.39, Bruce Ashfield wrote:<br>
                        </div>
                        <blockquote type="cite">
                          <div dir="ltr">
                            <div dir="ltr">
                              <div style="font-size:small"><br>
                              </div>
                            </div>
                            <br>
                            <div class="gmail_quote">
                              <div dir="ltr" class="gmail_attr">On Thu,
                                May 23, 2019 at 10:32 AM Bruce Ashfield
                                &lt;<a
                                  href="mailto:bruce.ashfield@gmail.com"
                                  target="_blank" moz-do-not-send="true">bruce.ashfield@gmail.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class="gmail_quote"
                                style="margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div dir="ltr">
                                  <div dir="ltr">
                                    <div style="font-size:small"><br>
                                    </div>
                                  </div>
                                  <br>
                                  <div class="gmail_quote">
                                    <div dir="ltr" class="gmail_attr">On
                                      Thu, May 23, 2019 at 9:56 AM
                                      Andrei Gherzan &lt;<a
                                        href="mailto:andrei@gherzan.ro"
                                        target="_blank"
                                        moz-do-not-send="true">andrei@gherzan.ro</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class="gmail_quote"
                                      style="margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">Hello,<br>
                                      <br>
                                      This might have been discussed
                                      before. I couldn't find a relevant<br>
                                      thread, but if it is so, just link
                                      me to it.<br>
                                      <br>
                                      Since thud, more specific since<br>
                                      <br>
                                      commit
                                      9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
                                      Author: Bruce Ashfield &lt;<a
                                        href="mailto:bruce.ashfield@windriver.com"
                                        target="_blank"
                                        moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
                                      Date:   Sat Aug 18 22:50:44 2018
                                      -0400<br>
                                          kernel-devsrc: restructure for
                                      out of tree (and on target) module
                                      builds<br>
                                      <br>
                                      ... we switched from a recipe that
                                      was deploying the entire source
                                      code<br>
                                      to one that provides mainly the
                                      kernel headers (but not only).
                                      This<br>
                                      change broke people expectations
                                      of this recipe while the
                                      description is<br>
                                      also confusing: "Development
                                      source linux kernel. When built,
                                      this<br>
                                      recipe packages the \source of the
                                      preferred virtual/kernel provider
                                      and<br>
                                      makes it available for full kernel
                                      \development or external module
                                      builds".<br>
                                      <br>
                                      If size is not a problem (which
                                      can be the case when you compile
                                      on a<br>
                                      builder for example and deploy
                                      only a OOT kernel module through
                                      other<br>
                                      means), the full kernel source was
                                      a painless experience where things
                                      like<br>
                                      <br>
                                      commit
                                      a9471601fedd1f5087304eaa5fd39b98ae220313<br>
                                      Author: Bruce Ashfield &lt;<a
                                        href="mailto:bruce.ashfield@windriver.com"
                                        target="_blank"
                                        moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
                                      Date:   Thu Aug 30 09:45:41 2018
                                      -0400<br>
                                          kernel-devsrc: fix arm/arm64
                                      target module build<br>
                                      <br>
                                      ... would not appear. I understand
                                      the size impact on target and for<br>
                                      those cases, continuously
                                      maintaining this recipe with new<br>
                                      files/resources needed from the
                                      kernel, makes sense. So my
                                      proposal is<br>
                                      to have two recipes, for example
                                      kernel-devsrc and kernel-fullsrc<br>
                                      (kernel-src etc.) so people can
                                      choose what they need/want<br>
                                      deploying/using. Or even have
                                      another devsrc provider. I'm open
                                      to any<br>
                                      implementation detail. I'd just
                                      want to have an option for a full
                                      kernel<br>
                                      source recipe.<br>
                                    </blockquote>
                                    <div><br>
                                    </div>
                                    <div>
                                      <div style="font-size:small">This
                                        is already planned, and hidden
                                        in bugzilla somewhere. I'll have
                                        some new kernel packaging</div>
                                      <div style="font-size:small">options
                                        available for the fall release.</div>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                              <div><br>
                              </div>
                              <div>
                                <div style="font-size:small">It looks
                                  like the bugs that I was using for
                                  development were finally moved to
                                  resolved (they were a bit old, and
                                  contained collected information on
                                  various kernel packaging options .. my
                                  searching of bugzilla isn't turning it
                                  up at the moment). So I just created a
                                  new bug to track the development for
                                  2.8.</div>
                                <div style="font-size:small"><br>
                                </div>
                                <div style="font-size:small">The issue
                                  with the multiple kernel source
                                  providers is really about test cycles.
                                  The smaller devsrc is for on-target
                                  module development and builds against
                                  the exported uapi headers, and that is
                                  what the nightly / automated tests
                                  will use. We had issues with both the
                                  amount of time it took to package the
                                  entire source, and the amount of space
                                  that it took up on the images. Hence
                                  the creation of devsrc.</div>
                                <div style="font-size:small"><br>
                                </div>
                                <div style="font-size:small">With new
                                  kernel-source and kernel-headers
                                  packages (the working names), they are
                                  really provided as references to the
                                  running kernel, and will largely be an
                                  exercise left up to the developer to
                                  use them as they want.</div>
                              </div>
                            </div>
                          </div>
                        </blockquote>
                        <p>Right. So is there anything that holds us
                          from creating two recipes - one for what we
                          currently have and one for what we used to
                          have pre-thud - find some pretty names and
                          start from that? I'm asking just in case I'm
                          missing any internal architecture discussions
                          or so.</p>
                      </div>
                    </blockquote>
                    <div><span class="gmail_default"
                        style="font-size:small"><br>
                      </span></div>
                    <div><span class="gmail_default"
                        style="font-size:small">In some other non-core
                        layer ? Sure :D The pre-thud copying of the
                        kernel source was a disaster and needed to be
                        killed with fire, as it was. It was all special
                        cases and I commonly needed to fight with it.
                        What you see in the current devsrc is not an
                        invention from Yocto, it is based on the redhat
                        spec files, and also (a bit) on some of the
                        debian packaging of minimal source.</span></div>
                  </div>
                </div>
              </blockquote>
              <p>I am aware of all the other distros having the similar
                approach (and they do this dance for disk space
                optimization) but I don't understand what were all the
                special cases you had to fight against? The recipe was
                barely touched in years. For example there is only one
                commit on it in 2017. <br>
              </p>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">There
              were corner cases popping up with architectures and the
              newer kernels. I had inflight changes that were tweaking
              the nasty find commands, etc, trying to get everything we
              needed, minimize the time spent copying and avoiding QA
              errors due to cross arch artifacts popping in. Let's just
              say, I'm not copying and pruning the same way in a plainer
              "kernel-source" package. Since it isn't installed by
              default, and is opt-in, it doesn't have to be quite so
              careful on those fronts.</div>
            <br>
          </div>
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <p> </p>
              <blockquote type="cite">
                <div dir="ltr">
                  <div class="gmail_quote">
                    <div><span class="gmail_default"
                        style="font-size:small"><br>
                      </span></div>
                    <div><span class="gmail_default"
                        style="font-size:small">So no, I'd rather not
                        restore the mess that was the pre-thud devsrc in
                        any form.</span></div>
                    <div><span class="gmail_default"
                        style="font-size:small"></span> </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div bgcolor="#FFFFFF">
                        <p>And about test cycles, I'm not sure I
                          understand why having a provider vs having two
                          separate recipes impact automated tests. In
                          both cases you will select whatever you want
                          to test - by using a specific recipe or by
                          setting a preferred provider (I don't have a
                          strong opinion here but I was just curious
                          about the time impact on automated tests).</p>
                      </div>
                    </blockquote>
                    <div><br>
                    </div>
                    <div>
                      <div style="font-size:small">If it goes into core,
                        we would need to run a full set of tests against
                        it to make sure that it supported development
                        tasks. That would mean on target kernel module
                        builds, as well as potential some new cases
                        given that the full source is available (i.e.
                        kernel rebuild). We already do that for
                        kernel-devrsc, adding multiple providers of
                        something similar means that we'd then have to
                        test the multiple providers against all the
                        architectures, across the actively supported
                        reference kernels in any given release ..
                        something always breaks, so then I'm on the hook
                        for sorting through all the issues (devsrc was
                        not bug free in its previous form).  Given the
                        amount of test cycles available, that's not
                        necessarily a trivial thing to add. In the end,
                        it would be up to Richard if thinks something
                        like multiple provides are a good thing, and to
                        commit the test resources/cycles to them.</div>
                    </div>
                  </div>
                </div>
              </blockquote>
              I see. You were comparing something else. That makes
              sense.<br>
              <blockquote type="cite">
                <div dir="ltr">
                  <div class="gmail_quote">
                    <div> <br>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
          </blockquote>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <blockquote type="cite">
                <div dir="ltr">
                  <div class="gmail_quote">
                    <div> </div>
                    <div> </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div bgcolor="#FFFFFF">
                        <p> </p>
                        <p>Replying to the other email (this thread was
                          forked). We have maintained a similar kernel
                          headers approach for a couple of years now.
                          And many times we found ourselves in the
                          situation where something had to be
                          added/removed/checked - that was either kernel
                          fork specific or something that was added due
                          to kernel updates. And this loop of fixes here
                          and there was obviously completely resolved by
                          just using the "old" kernel-devsrc which
                          always had "everything" in. A good example is
                          commit
                          a9471601fedd1f5087304eaa5fd39b98ae220313 I'm
                          mentioning above. This kind of stuff will
                          always be needed - or at least in our
                          experience was a pretty often loop (when you
                          try to support one kernel headers recipe
                          against tens of BSPs, you'll need cases,
                          quirks and so on).</p>
                      </div>
                    </blockquote>
                    <div>
                      <div style="font-size:small">Those small tweaks
                        really are trivial, I don't consider them to be
                        a big load. The advantages of the smaller
                        footprint package have outweighed any tuning
                        we've done since things switched over.</div>
                    </div>
                  </div>
                </div>
              </blockquote>
              Again, I 100% understand the space advantage. I'm trying
              to see if there are any other advantages at all. In a
              world with infinite disk space :D<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">Nothing
              super dramatic :D The curated / whitelist approach does
              make sure that nothing new slips into the package until
              we've tested and ok'd it (with the downsides you are
              pointing out) .. so we have an easier route to patch /
              workaround issues as they pop up (I remember before uapi
              and hand sanitizing the kernel headers .. and wouldn't
              want to be that extreme ever again).</div>
            <br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">But I
              completely agree, having a simple, full copy of the source
              for situations where build/packaging time or diskspace are
              not a requirement is a good thing. I'll sort through the
              last symlink / provider issues and get something out ASAP.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Bruce. Would you please CC me when you push that? Just to
    make sure I don't miss it.<br>
    <pre class="moz-signature" cols="72">-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </body>
</html>

--------------16BDBF421A1FEEBF05ECE3D4--
