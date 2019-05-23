Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADCB3E00B3E; Thu, 23 May 2019 08:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493B9E008F2
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:10:51 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id j24so5838510ljg.1
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Wj2Xxm+fQS8yFKiWjAF1gx8UfvhYpXyuobEkPuIN3+w=;
	b=YHdAUFSHfVOL7lfWu7OulDXgQVfTEBm8fNMgkAXlISxziIuMeKWOkzKXFUkGdzR8+I
	iwAZlzPR6E2jnK5G2yLx4MeGH42nBBW8VZPTwUOcq6koOgJFRN/P2kjuZSDwRp605A34
	Z8fX86GuouESo/N1A12w+T2Z1vMBEY0szWt8mMbSDbDnrWE2ap+x6VFCmLOE9r47YD9E
	gjbmr7F74/9HiH8nlErcXi03AKV+pvbwhoKM9cy49iJWKC3iHn5fODG48AFaNMgYiaJW
	2JKLrPG1wW2K9uwO3DscmGI5ACRuSLLi26hsgf7m+sq6mhP9pgoSi/zsru9p5buzPU+A
	6qqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Wj2Xxm+fQS8yFKiWjAF1gx8UfvhYpXyuobEkPuIN3+w=;
	b=ZHiIDpuF74cd9CohexDBIoeszxd/g+gKESztcsKtVZrMQiJ5FsEvWPpKgZrcAzlww0
	5OdWNlRlNHWGowVLRa/2UyHduLGDvY27xHcvgi2KDjtsAC7NepuRJYHbVyaZNONQ3YOO
	lAPZ1WIWRSA6i/sm3ji0WL5QS8fvlytONYegLRqVhHE+2JB53+5X13Mje1C3jEhw7iVY
	BGvnhsbd4ZlfRrlSjoe1H7y6zbZSgAIEQbs/OdX4a6DmbEWZDR+hvr+iLPDov5CcKAK5
	ybY4WBTAJ8wD52vBfMVRNAmd9tzpEhaREtZyiz8kLZbq+puK3K4MuH4nYnlchqxKWJMP
	77yw==
X-Gm-Message-State: APjAAAWGxiyN+baZy4Ll8hQ6IUR3ErJP6T7V9riFG7OlW+YrNFbi/Okf
	ga4GQ1Mtzc1tcuQkZoqkh+keZLUZ7oZd3+mUt9rpcRay
X-Google-Smtp-Source: APXvYqwXo6eIP0aprKyR8URX7DCQSnh/cQ4Y/iJuhbYVQ4juPu4u0sjqvL++KFy0uuN6D5c+N2Ugi6e43VUdH50cHWc=
X-Received: by 2002:a2e:9192:: with SMTP id f18mr36479824ljg.112.1558624250167;
	Thu, 23 May 2019 08:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
	<CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
	<e173ccd1-a85a-81eb-85e0-331a0c2392cb@gherzan.ro>
In-Reply-To: <e173ccd1-a85a-81eb-85e0-331a0c2392cb@gherzan.ro>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 11:10:38 -0400
Message-ID: <CADkTA4M7jXrnq17=PGhQvGSB36NJ+rLJWT_hiSTjG-d-yZjnHA@mail.gmail.com>
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
X-List-Received-Date: Thu, 23 May 2019 15:10:53 -0000
Content-Type: multipart/alternative; boundary="000000000000c5065705898f7c78"

--000000000000c5065705898f7c78
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 11:00 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

>
> On 23/05/2019 15.39, Bruce Ashfield wrote:
>
>
>
> On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
>
>>
>>
>> On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>>
>>> Hello,
>>>
>>> This might have been discussed before. I couldn't find a relevant
>>> thread, but if it is so, just link me to it.
>>>
>>> Since thud, more specific since
>>>
>>> commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>>> Date:   Sat Aug 18 22:50:44 2018 -0400
>>>     kernel-devsrc: restructure for out of tree (and on target) module
>>> builds
>>>
>>> ... we switched from a recipe that was deploying the entire source code
>>> to one that provides mainly the kernel headers (but not only). This
>>> change broke people expectations of this recipe while the description is
>>> also confusing: "Development source linux kernel. When built, this
>>> recipe packages the \source of the preferred virtual/kernel provider and
>>> makes it available for full kernel \development or external module
>>> builds".
>>>
>>> If size is not a problem (which can be the case when you compile on a
>>> builder for example and deploy only a OOT kernel module through other
>>> means), the full kernel source was a painless experience where things
>>> like
>>>
>>> commit a9471601fedd1f5087304eaa5fd39b98ae220313
>>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>>> Date:   Thu Aug 30 09:45:41 2018 -0400
>>>     kernel-devsrc: fix arm/arm64 target module build
>>>
>>> ... would not appear. I understand the size impact on target and for
>>> those cases, continuously maintaining this recipe with new
>>> files/resources needed from the kernel, makes sense. So my proposal is
>>> to have two recipes, for example kernel-devsrc and kernel-fullsrc
>>> (kernel-src etc.) so people can choose what they need/want
>>> deploying/using. Or even have another devsrc provider. I'm open to any
>>> implementation detail. I'd just want to have an option for a full kernel
>>> source recipe.
>>>
>>
>> This is already planned, and hidden in bugzilla somewhere. I'll have some
>> new kernel packaging
>> options available for the fall release.
>>
>
> It looks like the bugs that I was using for development were finally moved
> to resolved (they were a bit old, and contained collected information on
> various kernel packaging options .. my searching of bugzilla isn't turning
> it up at the moment). So I just created a new bug to track the development
> for 2.8.
>
> The issue with the multiple kernel source providers is really about test
> cycles. The smaller devsrc is for on-target module development and builds
> against the exported uapi headers, and that is what the nightly / automated
> tests will use. We had issues with both the amount of time it took to
> package the entire source, and the amount of space that it took up on the
> images. Hence the creation of devsrc.
>
> With new kernel-source and kernel-headers packages (the working names),
> they are really provided as references to the running kernel, and will
> largely be an exercise left up to the developer to use them as they want.
>
> Right. So is there anything that holds us from creating two recipes - one
> for what we currently have and one for what we used to have pre-thud - find
> some pretty names and start from that? I'm asking just in case I'm missing
> any internal architecture discussions or so.
>

In some other non-core layer ? Sure :D The pre-thud copying of the kernel
source was a disaster and needed to be killed with fire, as it was. It was
all special cases and I commonly needed to fight with it. What you see in
the current devsrc is not an invention from Yocto, it is based on the
redhat spec files, and also (a bit) on some of the debian packaging of
minimal source.

So no, I'd rather not restore the mess that was the pre-thud devsrc in any
form.


> And about test cycles, I'm not sure I understand why having a provider vs
> having two separate recipes impact automated tests. In both cases you will
> select whatever you want to test - by using a specific recipe or by setting
> a preferred provider (I don't have a strong opinion here but I was just
> curious about the time impact on automated tests).
>

If it goes into core, we would need to run a full set of tests against it
to make sure that it supported development tasks. That would mean on target
kernel module builds, as well as potential some new cases given that the
full source is available (i.e. kernel rebuild). We already do that for
kernel-devrsc, adding multiple providers of something similar means that
we'd then have to test the multiple providers against all the
architectures, across the actively supported reference kernels in any given
release .. something always breaks, so then I'm on the hook for sorting
through all the issues (devsrc was not bug free in its previous form).
Given the amount of test cycles available, that's not necessarily a trivial
thing to add. In the end, it would be up to Richard if thinks something
like multiple provides are a good thing, and to commit the test
resources/cycles to them.



> Replying to the other email (this thread was forked). We have maintained a
> similar kernel headers approach for a couple of years now. And many times
> we found ourselves in the situation where something had to be
> added/removed/checked - that was either kernel fork specific or something
> that was added due to kernel updates. And this loop of fixes here and there
> was obviously completely resolved by just using the "old" kernel-devsrc
> which always had "everything" in. A good example is commit
> a9471601fedd1f5087304eaa5fd39b98ae220313 I'm mentioning above. This kind of
> stuff will always be needed - or at least in our experience was a pretty
> often loop (when you try to support one kernel headers recipe against tens
> of BSPs, you'll need cases, quirks and so on).
>
Those small tweaks really are trivial, I don't consider them to be a big
load. The advantages of the smaller footprint package have outweighed any
tuning we've done since things switched over.

Bruce

> Regards,
>
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000c5065705898f7c78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 11:00 AM Andrei Gherzan &lt=
;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"gmail-m_-2362202549594693829moz-cite-prefix">On 23/05/201=
9 15.39, Bruce Ashfield
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
            10:32 AM Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gm=
ail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div style=3D"font-size:small"><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 23, 2019
                  at 9:56 AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gh=
erzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br=
>
                  <br>
                  This might have been discussed before. I couldn&#39;t fin=
d
                  a relevant<br>
                  thread, but if it is so, just link me to it.<br>
                  <br>
                  Since thud, more specific since<br>
                  <br>
                  commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
                  Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfie=
ld@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br=
>
                  Date:=C2=A0=C2=A0 Sat Aug 18 22:50:44 2018 -0400<br>
                  =C2=A0=C2=A0=C2=A0 kernel-devsrc: restructure for out of =
tree (and on
                  target) module builds<br>
                  <br>
                  ... we switched from a recipe that was deploying the
                  entire source code<br>
                  to one that provides mainly the kernel headers (but
                  not only). This<br>
                  change broke people expectations of this recipe while
                  the description is<br>
                  also confusing: &quot;Development source linux kernel. Wh=
en
                  built, this<br>
                  recipe packages the \source of the preferred
                  virtual/kernel provider and<br>
                  makes it available for full kernel \development or
                  external module builds&quot;.<br>
                  <br>
                  If size is not a problem (which can be the case when
                  you compile on a<br>
                  builder for example and deploy only a OOT kernel
                  module through other<br>
                  means), the full kernel source was a painless
                  experience where things like<br>
                  <br>
                  commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
                  Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfie=
ld@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br=
>
                  Date:=C2=A0=C2=A0 Thu Aug 30 09:45:41 2018 -0400<br>
                  =C2=A0=C2=A0=C2=A0 kernel-devsrc: fix arm/arm64 target mo=
dule build<br>
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
                  I&#39;m open to any<br>
                  implementation detail. I&#39;d just want to have an optio=
n
                  for a full kernel<br>
                  source recipe.<br>
                </blockquote>
                <div><br>
                </div>
                <div>
                  <div style=3D"font-size:small">This is already planned,
                    and hidden in bugzilla somewhere. I&#39;ll have some ne=
w
                    kernel packaging</div>
                  <div style=3D"font-size:small">options available for the
                    fall release.</div>
                </div>
              </div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div style=3D"font-size:small">It looks
              like the bugs that I was using for development were
              finally moved to resolved (they were a bit old, and
              contained collected information on various kernel
              packaging options .. my searching of bugzilla isn&#39;t
              turning it up at the moment). So I just created a new bug
              to track the development for 2.8.</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">The issue
              with the multiple kernel source providers is really about
              test cycles. The smaller devsrc is for on-target module
              development and builds against the exported uapi headers,
              and that is what the nightly / automated tests will use.
              We had issues with both the amount of time it took to
              package the entire source, and the amount of space that it
              took up on the images. Hence the creation of devsrc.</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">With new
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
      to have pre-thud - find some pretty names and start from that? I&#39;=
m
      asking just in case I&#39;m missing any internal architecture
      discussions or so.</p></div></blockquote><div><span class=3D"gmail_de=
fault" style=3D"font-size:small"><br></span></div><div><span class=3D"gmail=
_default" style=3D"font-size:small">In some other non-core layer ? Sure :D =
The pre-thud copying of the kernel source was a disaster and needed to be k=
illed with fire, as it was. It was all special cases and I commonly needed =
to fight with it. What you see in the current devsrc is not an invention fr=
om Yocto, it is based on the redhat spec files, and also (a bit) on some of=
 the debian packaging of minimal source.</span></div><div><span class=3D"gm=
ail_default" style=3D"font-size:small"><br></span></div><div><span class=3D=
"gmail_default" style=3D"font-size:small">So no, I&#39;d rather not restore=
 the mess that was the pre-thud devsrc in any form.</span></div><div><span =
class=3D"gmail_default" style=3D"font-size:small"></span>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF">
    <p>And about test cycles, I&#39;m not sure I understand why having a
      provider vs having two separate recipes impact automated tests. In
      both cases you will select whatever you want to test - by using a
      specific recipe or by setting a preferred provider (I don&#39;t have =
a
      strong opinion here but I was just curious about the time impact
      on automated tests).</p></div></blockquote><div><br></div><div><div c=
lass=3D"gmail_default" style=3D"font-size:small">If it goes into core, we w=
ould need to run a full set of tests against it to make sure that it suppor=
ted development tasks. That would mean on target kernel module builds, as w=
ell as potential some new cases given that the full source is available (i.=
e. kernel rebuild). We already do that for kernel-devrsc, adding multiple p=
roviders of something similar means that we&#39;d then have to test the mul=
tiple providers against all the architectures, across the actively supporte=
d reference kernels in any given release .. something always breaks, so the=
n I&#39;m on the hook for sorting through all the issues (devsrc was not bu=
g free in its previous form).=C2=A0 Given the amount of test cycles availab=
le, that&#39;s not necessarily a trivial thing to add. In the end, it would=
 be up to Richard if thinks something like multiple provides are a good thi=
ng, and to commit the test resources/cycles to them.</div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=
=3D"#FFFFFF"><p> </p>
    <p>Replying to the other email (this thread was forked). We have
      maintained a similar kernel headers approach for a couple of years
      now. And many times we found ourselves in the situation where
      something had to be added/removed/checked - that was either kernel
      fork specific or something that was added due to kernel updates.
      And this loop of fixes here and there was obviously completely
      resolved by just using the &quot;old&quot; kernel-devsrc which always=
 had
      &quot;everything&quot; in. A good example is commit
      a9471601fedd1f5087304eaa5fd39b98ae220313 I&#39;m mentioning above.
      This kind of stuff will always be needed - or at least in our
      experience was a pretty often loop (when you try to support one
      kernel headers recipe against tens of BSPs, you&#39;ll need cases,
      quirks and so on).</p></div></blockquote><div><div class=3D"gmail_def=
ault" style=3D"font-size:small">Those small tweaks really are trivial, I do=
n&#39;t consider them to be a big load. The advantages of the smaller footp=
rint package have outweighed any tuning we&#39;ve done since things switche=
d over.</div></div><div class=3D"gmail_default" style=3D"font-size:small"><=
br></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF">
    <p>Regards,<br>
    </p>
    <pre class=3D"gmail-m_-2362202549594693829moz-signature" cols=3D"72">--=
=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000c5065705898f7c78--
