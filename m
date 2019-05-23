Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 142D9E00B81; Thu, 23 May 2019 08:00:37 -0700 (PDT)
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
	*      [209.85.221.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86BAFE0091A
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:00:35 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id f10so6662965wre.7
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=76IV0bX9coqXiP62XusqOY8yY2GlIyZ8P6lG5Jw++cY=;
	b=LWDzEW/vvsCBLKCRQ/AebL62uureTzSrQnrr1HG7Br1+b0yZ+pRnm8mpAX7rRGtr/T
	i/Q7gWFi75GWyhtm4YFQruPSleiGZaliICFOopAL0VwMHw49MlMkEqEqY0IxMc8+O6jY
	4LLP/HjryIZBosqQg2WLxX09iHKPc6/r2/SB+hjuQSNCw6qSEJYPcsu2EuYomMPRappF
	2lkImij/4Vz4ARbTrPvCPuWhRDZHAhhohf84G2Be9+xKVCBHAdN6Ar8Fm+RAMiVytDbC
	ab5IPe9PpLEJwZ+R8ksqHi/uGz46gtfENSnNCcLC+CUluscUUqupnssr6F4KHh6+nYhp
	YJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=76IV0bX9coqXiP62XusqOY8yY2GlIyZ8P6lG5Jw++cY=;
	b=R5C2k5GI0xakeKOBM4HENwHqFPBwKPJh+37u+XXYkn6DKq2JkMIWWuGfni5ep6wzgk
	MkVhfLckrz+UE82G/zLXzexBF3sN0q6oP5QeEAIdtZawb4TV0tbBdOJdiSBV8wdi5CxQ
	p/0k8DNiRBDbVS7ZVh5sz7rujHj9UyocC+YphxJE+fc0xJ/98O2z3WlzOIaYU6gY9AH+
	CfLZlo53VUu22pm9vC/CiEFz4FdaaOQgzIBeaid3AJfCSt/gXsxooggPoip3Xx7Rf2mh
	a06NtVJ1LRcWoGtAbe3Yow0Rp6aFQ9jJHbBcfpV8dy8Fd1UsheJB/vkAD26dbJ5ogdOO
	oomA==
X-Gm-Message-State: APjAAAU6Wwhn+ecKpXEr9mBW0QycafpDYsGmY2JtjeB5ZOneoM+WjGyk
	5o/F3gotZD09pyHGd0olVNr/vg==
X-Google-Smtp-Source: APXvYqwtYmpcOBdw1GOLynNPIGCesUWftU4tP/IlUyOHxHvk9E+Ek6/I8hP3aYu0x7uxk4ykSgLTIw==
X-Received: by 2002:adf:a4d8:: with SMTP id h24mr3086287wrb.171.1558623634143; 
	Thu, 23 May 2019 08:00:34 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	q15sm11406133wrr.19.2019.05.23.08.00.33
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 08:00:33 -0700 (PDT)
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
	<CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <e173ccd1-a85a-81eb-85e0-331a0c2392cb@gherzan.ro>
Date: Thu, 23 May 2019 16:00:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
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
X-List-Received-Date: Thu, 23 May 2019 15:00:37 -0000
Content-Type: multipart/alternative;
	boundary="------------FD0B600A045DA9E3D0AD56F8"
Content-Language: en-US

--------------FD0B600A045DA9E3D0AD56F8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


On 23/05/2019 15.39, Bruce Ashfield wrote:
>
>
> On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield
> <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>
>
>
>     On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro
>     <mailto:andrei@gherzan.ro>> wrote:
>
>         Hello,
>
>         This might have been discussed before. I couldn't find a relevant
>         thread, but if it is so, just link me to it.
>
>         Since thud, more specific since
>
>         commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>         Author: Bruce Ashfield <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>>
>         Date:   Sat Aug 18 22:50:44 2018 -0400
>             kernel-devsrc: restructure for out of tree (and on target)
>         module builds
>
>         ... we switched from a recipe that was deploying the entire
>         source code
>         to one that provides mainly the kernel headers (but not only).
>         This
>         change broke people expectations of this recipe while the
>         description is
>         also confusing: "Development source linux kernel. When built, this
>         recipe packages the \source of the preferred virtual/kernel
>         provider and
>         makes it available for full kernel \development or external
>         module builds".
>
>         If size is not a problem (which can be the case when you
>         compile on a
>         builder for example and deploy only a OOT kernel module
>         through other
>         means), the full kernel source was a painless experience where
>         things like
>
>         commit a9471601fedd1f5087304eaa5fd39b98ae220313
>         Author: Bruce Ashfield <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>>
>         Date:   Thu Aug 30 09:45:41 2018 -0400
>             kernel-devsrc: fix arm/arm64 target module build
>
>         ... would not appear. I understand the size impact on target
>         and for
>         those cases, continuously maintaining this recipe with new
>         files/resources needed from the kernel, makes sense. So my
>         proposal is
>         to have two recipes, for example kernel-devsrc and kernel-fullsrc
>         (kernel-src etc.) so people can choose what they need/want
>         deploying/using. Or even have another devsrc provider. I'm
>         open to any
>         implementation detail. I'd just want to have an option for a
>         full kernel
>         source recipe.
>
>
>     This is already planned, and hidden in bugzilla somewhere. I'll
>     have some new kernel packaging
>     options available for the fall release.
>
>
> It looks like the bugs that I was using for development were finally
> moved to resolved (they were a bit old, and contained collected
> information on various kernel packaging options .. my searching of
> bugzilla isn't turning it up at the moment). So I just created a new
> bug to track the development for 2.8.
>
> The issue with the multiple kernel source providers is really about
> test cycles. The smaller devsrc is for on-target module development
> and builds against the exported uapi headers, and that is what the
> nightly / automated tests will use. We had issues with both the amount
> of time it took to package the entire source, and the amount of space
> that it took up on the images. Hence the creation of devsrc.
>
> With new kernel-source and kernel-headers packages (the working
> names), they are really provided as references to the running kernel,
> and will largely be an exercise left up to the developer to use them
> as they want.

Right. So is there anything that holds us from creating two recipes -
one for what we currently have and one for what we used to have pre-thud
- find some pretty names and start from that? I'm asking just in case
I'm missing any internal architecture discussions or so.

And about test cycles, I'm not sure I understand why having a provider
vs having two separate recipes impact automated tests. In both cases you
will select whatever you want to test - by using a specific recipe or by
setting a preferred provider (I don't have a strong opinion here but I
was just curious about the time impact on automated tests).

Replying to the other email (this thread was forked). We have maintained
a similar kernel headers approach for a couple of years now. And many
times we found ourselves in the situation where something had to be
added/removed/checked - that was either kernel fork specific or
something that was added due to kernel updates. And this loop of fixes
here and there was obviously completely resolved by just using the "old"
kernel-devsrc which always had "everything" in. A good example is commit
a9471601fedd1f5087304eaa5fd39b98ae220313 I'm mentioning above. This kind
of stuff will always be needed - or at least in our experience was a
pretty often loop (when you try to support one kernel headers recipe
against tens of BSPs, you'll need cases, quirks and so on).

Regards,

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


--------------FD0B600A045DA9E3D0AD56F8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 23/05/2019 15.39, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default" style="font-size:small"><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, May 23, 2019 at
            10:32 AM Bruce Ashfield &lt;<a
              href="mailto:bruce.ashfield@gmail.com"
              moz-do-not-send="true">bruce.ashfield@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div dir="ltr">
                <div style="font-size:small"><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Thu, May 23, 2019
                  at 9:56 AM Andrei Gherzan &lt;<a
                    href="mailto:andrei@gherzan.ro" target="_blank"
                    moz-do-not-send="true">andrei@gherzan.ro</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">Hello,<br>
                  <br>
                  This might have been discussed before. I couldn't find
                  a relevant<br>
                  thread, but if it is so, just link me to it.<br>
                  <br>
                  Since thud, more specific since<br>
                  <br>
                  commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
                  Author: Bruce Ashfield &lt;<a
                    href="mailto:bruce.ashfield@windriver.com"
                    target="_blank" moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
                  Date:   Sat Aug 18 22:50:44 2018 -0400<br>
                      kernel-devsrc: restructure for out of tree (and on
                  target) module builds<br>
                  <br>
                  ... we switched from a recipe that was deploying the
                  entire source code<br>
                  to one that provides mainly the kernel headers (but
                  not only). This<br>
                  change broke people expectations of this recipe while
                  the description is<br>
                  also confusing: "Development source linux kernel. When
                  built, this<br>
                  recipe packages the \source of the preferred
                  virtual/kernel provider and<br>
                  makes it available for full kernel \development or
                  external module builds".<br>
                  <br>
                  If size is not a problem (which can be the case when
                  you compile on a<br>
                  builder for example and deploy only a OOT kernel
                  module through other<br>
                  means), the full kernel source was a painless
                  experience where things like<br>
                  <br>
                  commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
                  Author: Bruce Ashfield &lt;<a
                    href="mailto:bruce.ashfield@windriver.com"
                    target="_blank" moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
                  Date:   Thu Aug 30 09:45:41 2018 -0400<br>
                      kernel-devsrc: fix arm/arm64 target module build<br>
                  <br>
                  ... would not appear. I understand the size impact on
                  target and for<br>
                  those cases, continuously maintaining this recipe with
                  new<br>
                  files/resources needed from the kernel, makes sense.
                  So my proposal is<br>
                  to have two recipes, for example kernel-devsrc and
                  kernel-fullsrc<br>
                  (kernel-src etc.) so people can choose what they
                  need/want<br>
                  deploying/using. Or even have another devsrc provider.
                  I'm open to any<br>
                  implementation detail. I'd just want to have an option
                  for a full kernel<br>
                  source recipe.<br>
                </blockquote>
                <div><br>
                </div>
                <div>
                  <div style="font-size:small">This is already planned,
                    and hidden in bugzilla somewhere. I'll have some new
                    kernel packaging</div>
                  <div style="font-size:small">options available for the
                    fall release.</div>
                </div>
              </div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">It looks
              like the bugs that I was using for development were
              finally moved to resolved (they were a bit old, and
              contained collected information on various kernel
              packaging options .. my searching of bugzilla isn't
              turning it up at the moment). So I just created a new bug
              to track the development for 2.8.</div>
            <div class="gmail_default" style="font-size:small"><br>
            </div>
            <div class="gmail_default" style="font-size:small">The issue
              with the multiple kernel source providers is really about
              test cycles. The smaller devsrc is for on-target module
              development and builds against the exported uapi headers,
              and that is what the nightly / automated tests will use.
              We had issues with both the amount of time it took to
              package the entire source, and the amount of space that it
              took up on the images. Hence the creation of devsrc.</div>
            <div class="gmail_default" style="font-size:small"><br>
            </div>
            <div class="gmail_default" style="font-size:small">With new
              kernel-source and kernel-headers packages (the working
              names), they are really provided as references to the
              running kernel, and will largely be an exercise left up to
              the developer to use them as they want.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Right. So is there anything that holds us from creating two
      recipes - one for what we currently have and one for what we used
      to have pre-thud - find some pretty names and start from that? I'm
      asking just in case I'm missing any internal architecture
      discussions or so.</p>
    <p>And about test cycles, I'm not sure I understand why having a
      provider vs having two separate recipes impact automated tests. In
      both cases you will select whatever you want to test - by using a
      specific recipe or by setting a preferred provider (I don't have a
      strong opinion here but I was just curious about the time impact
      on automated tests). </p>
    <p>Replying to the other email (this thread was forked). We have
      maintained a similar kernel headers approach for a couple of years
      now. And many times we found ourselves in the situation where
      something had to be added/removed/checked - that was either kernel
      fork specific or something that was added due to kernel updates.
      And this loop of fixes here and there was obviously completely
      resolved by just using the "old" kernel-devsrc which always had
      "everything" in. A good example is commit
      a9471601fedd1f5087304eaa5fd39b98ae220313 I'm mentioning above.
      This kind of stuff will always be needed - or at least in our
      experience was a pretty often loop (when you try to support one
      kernel headers recipe against tens of BSPs, you'll need cases,
      quirks and so on).</p>
    <p>Regards,<br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </body>
</html>

--------------FD0B600A045DA9E3D0AD56F8--
