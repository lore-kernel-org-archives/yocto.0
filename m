Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2239AE00CD2; Thu, 23 May 2019 09:23:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 249D4E00C93
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 09:23:27 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id z1so575201ljb.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 09:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zTdyKsm+JTBwpkImV2VM1azPOAkbLTY0Epc78q5C7LM=;
	b=Td02dSJQF1IaUsCshaSUxm7hwphXr9vrY3e1/cDyZfvRyr6KfTUxj66oBCt5siex8z
	PAHGJMX7MQUQ5dtFwRKSXVtycH1xYrpPcQdb7h7HnzieuxwVK+VpVRWmnINjHT2eIIti
	g2qz+1nLOjcKtff2cUXjdxvOwHy9HbPSJhvEasaI+cGmUfflytm7R9gGlFYT/S+f84iz
	TfGz9+3xBDwf6DgASOYKUihwNcGhpsquBN6av1VBl9EgIAAqjTFegGVAe/KCfdbFDTeV
	tt4yYPeIrie6w8jm+VEDoKWJXSCj0WSLEK9pPS1kIZAEKOYAbmg74fQi+3QQyxWXlHvf
	VeiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zTdyKsm+JTBwpkImV2VM1azPOAkbLTY0Epc78q5C7LM=;
	b=ROUIzESqtBaU4qaaYSC7sD2g2vLw7PJ2Au7ANvp0CMsx+Ud/ZNWdqbnc/SCBM0VBM7
	U9a1yj0GROzw+UUhGcmjtPUhlN916jodJBykSeE6KSPDNaVQx6jXd3GHnz/hLUBndfz2
	/akQJ1SPnSdECyBHXHDyzOpjTRDRjibSnoEUiroC0soAOoy76eJkg9ndocg+Z/HCXxA3
	y8g3kpGJwwwjZAkLC2PEwAqjGVGuY1LxsxlbZf3Fu4qrTL706RfHKWmjaLlaMJjdNfjf
	FFZ9/a6aES5GA8qyR6rJFjkPnPP6l62QrFDcGCsQcrXx9kPdwfFA/dOc17xtt8mBxE5e
	GvTQ==
X-Gm-Message-State: APjAAAVbHCn3kQqNl3W5fTKMT5cepVmRskt8lm3dKdlIok1f5RcEDQ5g
	FQLVgt55IQBaF+U8htesmCD50MdVklck5CGWYrofmcLw
X-Google-Smtp-Source: APXvYqwl40wmK4MPO3c/Hy0k9XxEDyoNWufQ6IMLhSYKjd4beWxBgQKZHGXXZ6hfVfdfYnpbGy8lxcgtpM4GRrYYbp8=
X-Received: by 2002:a2e:880d:: with SMTP id x13mr8822992ljh.72.1558628606861; 
	Thu, 23 May 2019 09:23:26 -0700 (PDT)
MIME-Version: 1.0
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
	<CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
	<e173ccd1-a85a-81eb-85e0-331a0c2392cb@gherzan.ro>
	<CADkTA4M7jXrnq17=PGhQvGSB36NJ+rLJWT_hiSTjG-d-yZjnHA@mail.gmail.com>
	<731e9836-076a-6947-c24d-ebc4150b08e9@gherzan.ro>
	<CADkTA4Pfkh9d7brp5VTAaR2AhfN8xuTqoVkyBsSGA4DFPOkhHQ@mail.gmail.com>
	<78dd1c42-1be8-bd75-1b75-3d10e73561da@gherzan.ro>
In-Reply-To: <78dd1c42-1be8-bd75-1b75-3d10e73561da@gherzan.ro>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 12:23:15 -0400
Message-ID: <CADkTA4Nnrnc_QEPoXDM56-v1jAQuxSyQcZ9QNJ9vVwmhSwK6+g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Thu, 23 May 2019 16:23:48 -0000
Content-Type: multipart/alternative; boundary="00000000000072e4ee058990800f"

--00000000000072e4ee058990800f
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 12:20 PM Andrei Gherzan <andrei@gherzan.ro> wrote:

>
> On 23/05/2019 17.11, Bruce Ashfield wrote:
>
>
>
> On Thu, May 23, 2019 at 11:24 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> On 23/05/2019 16.10, Bruce Ashfield wrote:
>>
>>
>>
>> On Thu, May 23, 2019 at 11:00 AM Andrei Gherzan <andrei@gherzan.ro>
>> wrote:
>>
>>>
>>> On 23/05/2019 15.39, Bruce Ashfield wrote:
>>>
>>>
>>>
>>> On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield <
>>> bruce.ashfield@gmail.com> wrote:
>>>
>>>>
>>>>
>>>> On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> This might have been discussed before. I couldn't find a relevant
>>>>> thread, but if it is so, just link me to it.
>>>>>
>>>>> Since thud, more specific since
>>>>>
>>>>> commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>>>>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>>>>> Date:   Sat Aug 18 22:50:44 2018 -0400
>>>>>     kernel-devsrc: restructure for out of tree (and on target) module
>>>>> builds
>>>>>
>>>>> ... we switched from a recipe that was deploying the entire source code
>>>>> to one that provides mainly the kernel headers (but not only). This
>>>>> change broke people expectations of this recipe while the description
>>>>> is
>>>>> also confusing: "Development source linux kernel. When built, this
>>>>> recipe packages the \source of the preferred virtual/kernel provider
>>>>> and
>>>>> makes it available for full kernel \development or external module
>>>>> builds".
>>>>>
>>>>> If size is not a problem (which can be the case when you compile on a
>>>>> builder for example and deploy only a OOT kernel module through other
>>>>> means), the full kernel source was a painless experience where things
>>>>> like
>>>>>
>>>>> commit a9471601fedd1f5087304eaa5fd39b98ae220313
>>>>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>>>>> Date:   Thu Aug 30 09:45:41 2018 -0400
>>>>>     kernel-devsrc: fix arm/arm64 target module build
>>>>>
>>>>> ... would not appear. I understand the size impact on target and for
>>>>> those cases, continuously maintaining this recipe with new
>>>>> files/resources needed from the kernel, makes sense. So my proposal is
>>>>> to have two recipes, for example kernel-devsrc and kernel-fullsrc
>>>>> (kernel-src etc.) so people can choose what they need/want
>>>>> deploying/using. Or even have another devsrc provider. I'm open to any
>>>>> implementation detail. I'd just want to have an option for a full
>>>>> kernel
>>>>> source recipe.
>>>>>
>>>>
>>>> This is already planned, and hidden in bugzilla somewhere. I'll have
>>>> some new kernel packaging
>>>> options available for the fall release.
>>>>
>>>
>>> It looks like the bugs that I was using for development were finally
>>> moved to resolved (they were a bit old, and contained collected information
>>> on various kernel packaging options .. my searching of bugzilla isn't
>>> turning it up at the moment). So I just created a new bug to track the
>>> development for 2.8.
>>>
>>> The issue with the multiple kernel source providers is really about test
>>> cycles. The smaller devsrc is for on-target module development and builds
>>> against the exported uapi headers, and that is what the nightly / automated
>>> tests will use. We had issues with both the amount of time it took to
>>> package the entire source, and the amount of space that it took up on the
>>> images. Hence the creation of devsrc.
>>>
>>> With new kernel-source and kernel-headers packages (the working names),
>>> they are really provided as references to the running kernel, and will
>>> largely be an exercise left up to the developer to use them as they want.
>>>
>>> Right. So is there anything that holds us from creating two recipes -
>>> one for what we currently have and one for what we used to have pre-thud -
>>> find some pretty names and start from that? I'm asking just in case I'm
>>> missing any internal architecture discussions or so.
>>>
>>
>> In some other non-core layer ? Sure :D The pre-thud copying of the kernel
>> source was a disaster and needed to be killed with fire, as it was. It was
>> all special cases and I commonly needed to fight with it. What you see in
>> the current devsrc is not an invention from Yocto, it is based on the
>> redhat spec files, and also (a bit) on some of the debian packaging of
>> minimal source.
>>
>> I am aware of all the other distros having the similar approach (and they
>> do this dance for disk space optimization) but I don't understand what were
>> all the special cases you had to fight against? The recipe was barely
>> touched in years. For example there is only one commit on it in 2017.
>>
>
> There were corner cases popping up with architectures and the newer
> kernels. I had inflight changes that were tweaking the nasty find commands,
> etc, trying to get everything we needed, minimize the time spent copying
> and avoiding QA errors due to cross arch artifacts popping in. Let's just
> say, I'm not copying and pruning the same way in a plainer "kernel-source"
> package. Since it isn't installed by default, and is opt-in, it doesn't
> have to be quite so careful on those fronts.
>
>
>
>>
>> So no, I'd rather not restore the mess that was the pre-thud devsrc in
>> any form.
>>
>>
>>> And about test cycles, I'm not sure I understand why having a provider
>>> vs having two separate recipes impact automated tests. In both cases you
>>> will select whatever you want to test - by using a specific recipe or by
>>> setting a preferred provider (I don't have a strong opinion here but I was
>>> just curious about the time impact on automated tests).
>>>
>>
>> If it goes into core, we would need to run a full set of tests against it
>> to make sure that it supported development tasks. That would mean on target
>> kernel module builds, as well as potential some new cases given that the
>> full source is available (i.e. kernel rebuild). We already do that for
>> kernel-devrsc, adding multiple providers of something similar means that
>> we'd then have to test the multiple providers against all the
>> architectures, across the actively supported reference kernels in any given
>> release .. something always breaks, so then I'm on the hook for sorting
>> through all the issues (devsrc was not bug free in its previous form).
>> Given the amount of test cycles available, that's not necessarily a trivial
>> thing to add. In the end, it would be up to Richard if thinks something
>> like multiple provides are a good thing, and to commit the test
>> resources/cycles to them.
>>
>> I see. You were comparing something else. That makes sense.
>>
>>
>>
>>
>>
>>> Replying to the other email (this thread was forked). We have maintained
>>> a similar kernel headers approach for a couple of years now. And many times
>>> we found ourselves in the situation where something had to be
>>> added/removed/checked - that was either kernel fork specific or something
>>> that was added due to kernel updates. And this loop of fixes here and there
>>> was obviously completely resolved by just using the "old" kernel-devsrc
>>> which always had "everything" in. A good example is commit
>>> a9471601fedd1f5087304eaa5fd39b98ae220313 I'm mentioning above. This kind of
>>> stuff will always be needed - or at least in our experience was a pretty
>>> often loop (when you try to support one kernel headers recipe against tens
>>> of BSPs, you'll need cases, quirks and so on).
>>>
>> Those small tweaks really are trivial, I don't consider them to be a big
>> load. The advantages of the smaller footprint package have outweighed any
>> tuning we've done since things switched over.
>>
>> Again, I 100% understand the space advantage. I'm trying to see if there
>> are any other advantages at all. In a world with infinite disk space :D
>>
>
> Nothing super dramatic :D The curated / whitelist approach does make sure
> that nothing new slips into the package until we've tested and ok'd it
> (with the downsides you are pointing out) .. so we have an easier route to
> patch / workaround issues as they pop up (I remember before uapi and hand
> sanitizing the kernel headers .. and wouldn't want to be that extreme ever
> again).
>
> But I completely agree, having a simple, full copy of the source for
> situations where build/packaging time or diskspace are not a requirement is
> a good thing. I'll sort through the last symlink / provider issues and get
> something out ASAP.
>
> Thanks Bruce. Would you please CC me when you push that? Just to make sure
> I don't miss it.
>

Absolutely. I'll make sure you are copied.

Bruce



> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000072e4ee058990800f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 12:20 PM Andrei Gherzan &lt=
;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"gmail-m_-7625688416811876832moz-cite-prefix">On 23/05/201=
9 17.11, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div style=3D"font-size:small"><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 23, 2019 at
            11:24 AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro=
" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <div class=3D"gmail-m_-7625688416811876832m_32283646192407379=
2gmail-m_6396751045051702939moz-cite-prefix">On
                23/05/2019 16.10, Bruce Ashfield wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div style=3D"font-size:small"><br>
                    </div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 23,
                      2019 at 11:00 AM Andrei Gherzan &lt;<a href=3D"mailto=
:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div bgcolor=3D"#FFFFFF">
                        <p><br>
                        </p>
                        <div class=3D"gmail-m_-7625688416811876832m_3228364=
61924073792gmail-m_6396751045051702939gmail-m_-2362202549594693829moz-cite-=
prefix">On
                          23/05/2019 15.39, Bruce Ashfield wrote:<br>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div style=3D"font-size:small"><br>
                              </div>
                            </div>
                            <br>
                            <div class=3D"gmail_quote">
                              <div dir=3D"ltr" class=3D"gmail_attr">On Thu,
                                May 23, 2019 at 10:32 AM Bruce Ashfield
                                &lt;<a href=3D"mailto:bruce.ashfield@gmail.=
com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div style=3D"font-size:small"><br>
                                    </div>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr">O=
n
                                      Thu, May 23, 2019 at 9:56 AM
                                      Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hello,<br>
                                      <br>
                                      This might have been discussed
                                      before. I couldn&#39;t find a relevan=
t<br>
                                      thread, but if it is so, just link
                                      me to it.<br>
                                      <br>
                                      Since thud, more specific since<br>
                                      <br>
                                      commit
                                      9af0f1a46bbb6ad9ee8b35957251f4aa826b0=
23f<br>
                                      Author: Bruce Ashfield &lt;<a href=3D=
"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@wind=
river.com</a>&gt;<br>
                                      Date:=C2=A0=C2=A0 Sat Aug 18 22:50:44=
 2018
                                      -0400<br>
                                      =C2=A0=C2=A0=C2=A0 kernel-devsrc: res=
tructure for
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
                                      also confusing: &quot;Development
                                      source linux kernel. When built,
                                      this<br>
                                      recipe packages the \source of the
                                      preferred virtual/kernel provider
                                      and<br>
                                      makes it available for full kernel
                                      \development or external module
                                      builds&quot;.<br>
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
                                      a9471601fedd1f5087304eaa5fd39b98ae220=
313<br>
                                      Author: Bruce Ashfield &lt;<a href=3D=
"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@wind=
river.com</a>&gt;<br>
                                      Date:=C2=A0=C2=A0 Thu Aug 30 09:45:41=
 2018
                                      -0400<br>
                                      =C2=A0=C2=A0=C2=A0 kernel-devsrc: fix=
 arm/arm64
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
                                      another devsrc provider. I&#39;m open
                                      to any<br>
                                      implementation detail. I&#39;d just
                                      want to have an option for a full
                                      kernel<br>
                                      source recipe.<br>
                                    </blockquote>
                                    <div><br>
                                    </div>
                                    <div>
                                      <div style=3D"font-size:small">This
                                        is already planned, and hidden
                                        in bugzilla somewhere. I&#39;ll hav=
e
                                        some new kernel packaging</div>
                                      <div style=3D"font-size:small">option=
s
                                        available for the fall release.</di=
v>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                              <div><br>
                              </div>
                              <div>
                                <div style=3D"font-size:small">It looks
                                  like the bugs that I was using for
                                  development were finally moved to
                                  resolved (they were a bit old, and
                                  contained collected information on
                                  various kernel packaging options .. my
                                  searching of bugzilla isn&#39;t turning i=
t
                                  up at the moment). So I just created a
                                  new bug to track the development for
                                  2.8.</div>
                                <div style=3D"font-size:small"><br>
                                </div>
                                <div style=3D"font-size:small">The issue
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
                                <div style=3D"font-size:small"><br>
                                </div>
                                <div style=3D"font-size:small">With new
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
                          start from that? I&#39;m asking just in case I&#3=
9;m
                          missing any internal architecture discussions
                          or so.</p>
                      </div>
                    </blockquote>
                    <div><span class=3D"gmail_default" style=3D"font-size:s=
mall"><br>
                      </span></div>
                    <div><span class=3D"gmail_default" style=3D"font-size:s=
mall">In some other non-core
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
                optimization) but I don&#39;t understand what were all the
                special cases you had to fight against? The recipe was
                barely touched in years. For example there is only one
                commit on it in 2017. <br>
              </p>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div style=3D"font-size:small">There
              were corner cases popping up with architectures and the
              newer kernels. I had inflight changes that were tweaking
              the nasty find commands, etc, trying to get everything we
              needed, minimize the time spent copying and avoiding QA
              errors due to cross arch artifacts popping in. Let&#39;s just
              say, I&#39;m not copying and pruning the same way in a plaine=
r
              &quot;kernel-source&quot; package. Since it isn&#39;t install=
ed by
              default, and is opt-in, it doesn&#39;t have to be quite so
              careful on those fronts.</div>
            <br>
          </div>
          <div>=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <p> </p>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div class=3D"gmail_quote">
                    <div><span class=3D"gmail_default" style=3D"font-size:s=
mall"><br>
                      </span></div>
                    <div><span class=3D"gmail_default" style=3D"font-size:s=
mall">So no, I&#39;d rather not
                        restore the mess that was the pre-thud devsrc in
                        any form.</span></div>
                    <div><span class=3D"gmail_default" style=3D"font-size:s=
mall"></span>=C2=A0</div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div bgcolor=3D"#FFFFFF">
                        <p>And about test cycles, I&#39;m not sure I
                          understand why having a provider vs having two
                          separate recipes impact automated tests. In
                          both cases you will select whatever you want
                          to test - by using a specific recipe or by
                          setting a preferred provider (I don&#39;t have a
                          strong opinion here but I was just curious
                          about the time impact on automated tests).</p>
                      </div>
                    </blockquote>
                    <div><br>
                    </div>
                    <div>
                      <div style=3D"font-size:small">If it goes into core,
                        we would need to run a full set of tests against
                        it to make sure that it supported development
                        tasks. That would mean on target kernel module
                        builds, as well as potential some new cases
                        given that the full source is available (i.e.
                        kernel rebuild). We already do that for
                        kernel-devrsc, adding multiple providers of
                        something similar means that we&#39;d then have to
                        test the multiple providers against all the
                        architectures, across the actively supported
                        reference kernels in any given release ..
                        something always breaks, so then I&#39;m on the hoo=
k
                        for sorting through all the issues (devsrc was
                        not bug free in its previous form).=C2=A0 Given the
                        amount of test cycles available, that&#39;s not
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
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div class=3D"gmail_quote">
                    <div>=C2=A0<br>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div class=3D"gmail_quote">
                    <div> </div>
                    <div>=C2=A0</div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div bgcolor=3D"#FFFFFF">
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
                          just using the &quot;old&quot; kernel-devsrc whic=
h
                          always had &quot;everything&quot; in. A good exam=
ple is
                          commit
                          a9471601fedd1f5087304eaa5fd39b98ae220313 I&#39;m
                          mentioning above. This kind of stuff will
                          always be needed - or at least in our
                          experience was a pretty often loop (when you
                          try to support one kernel headers recipe
                          against tens of BSPs, you&#39;ll need cases,
                          quirks and so on).</p>
                      </div>
                    </blockquote>
                    <div>
                      <div style=3D"font-size:small">Those small tweaks
                        really are trivial, I don&#39;t consider them to be
                        a big load. The advantages of the smaller
                        footprint package have outweighed any tuning
                        we&#39;ve done since things switched over.</div>
                    </div>
                  </div>
                </div>
              </blockquote>
              Again, I 100% understand the space advantage. I&#39;m trying
              to see if there are any other advantages at all. In a
              world with infinite disk space :D<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div style=3D"font-size:small">Nothing
              super dramatic :D The curated / whitelist approach does
              make sure that nothing new slips into the package until
              we&#39;ve tested and ok&#39;d it (with the downsides you are
              pointing out) .. so we have an easier route to patch /
              workaround issues as they pop up (I remember before uapi
              and hand sanitizing the kernel headers .. and wouldn&#39;t
              want to be that extreme ever again).</div>
            <br>
          </div>
          <div>
            <div style=3D"font-size:small">But I
              completely agree, having a simple, full copy of the source
              for situations where build/packaging time or diskspace are
              not a requirement is a good thing. I&#39;ll sort through the
              last symlink / provider issues and get something out ASAP.</d=
iv>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Bruce. Would you please CC me when you push that? Just to
    make sure I don&#39;t miss it.<br></div></blockquote><div><br></div><di=
v><div class=3D"gmail_default" style=3D"font-size:small">Absolutely. I&#39;=
ll make sure you are copied.</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div bgcolor=3D"#FFFFFF">
    <pre class=3D"gmail-m_-7625688416811876832moz-signature" cols=3D"72">--=
=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--00000000000072e4ee058990800f--
