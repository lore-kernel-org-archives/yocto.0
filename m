Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F397FE00950; Tue,  2 Apr 2019 20:51:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B2BE00950
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 20:51:17 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id w15so9061777itc.0
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 20:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wW/MoSS1flQjW8WCA7tfOy9rLOON5NNHQAszV4SFVh4=;
	b=vh3LYBm9xqV+/Uq6hslzANV2nirm9RJYB5aL/GH3UqohlDLKsKF4+sUilRikTyXENh
	+tuaE0B39SGESvQTPZoqo+CzTq+F9EY+J1wpcZJI+U8Gpr18nQkIYNILpk5qS5E4r4rG
	L9hroW/m8D7F4NNrNTvfbp98OkUvGNJRlEz90OPheinNzPP1lqt2fsDXJfgyvk3gBl7b
	+YlhvAwF2sh2Alk76+26pr0tFq99YwK66i9Cej+ZGS87xZ/RVxvpWMGy1xqzUE1RzDRu
	1V96XdRQYt30HJ0dspNsrWv4d7NU1wgtwoMv5yIe4SYOQCYQCwNBrOo+SypIqBOLXzgb
	n0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wW/MoSS1flQjW8WCA7tfOy9rLOON5NNHQAszV4SFVh4=;
	b=OSGH5jU0Rm2Pc+VDMi12G1C/2hnKC1WFLFwQVq9aamRlRwlGcLqubDfAT1kcGsMie3
	aGR07kAacoLDuTURXfXG9+9OTKhkkeoYC9YzGoRX6CaBdZsgiIm1HOWUkN2t/P2Qzywf
	Rfp9WoWlFZIwK15liEqvkoWE62ekLV6RQ/YQrHejT90z2kJ3Ul5l9OjAo8lhKd9Xoa8M
	77gClMvLz7xgeIUMP6fT+nH86p439HQOUSmSU1mqHLA97uQq1Sy6zz0Oeq89JnMniiMu
	Ql1P7/2+u3qWkC1BA+uBd9EmlOB40oy2wURKfVTb/6LtQx0Rk5OydB4vu++/MlukD9DW
	Jp5A==
X-Gm-Message-State: APjAAAW26LQ+XkiMG0XzTdjgbJFNtOfUp1ZzPRavae4Vn2xhz+lLjK/6
	YLt2EAwdQngvy2ouARQTb6FjItxeuBMLpHgnfcwpbA==
X-Google-Smtp-Source: APXvYqwo0Lffrb2lFnEi2191xmGykfcdJi50Xv1qepDH7egCMc74NDfzpQ0dHroAPc4XB1AKGc6U0QlNBSpNEzXKaWQ=
X-Received: by 2002:a24:55d8:: with SMTP id e207mr258269itb.119.1554263476745; 
	Tue, 02 Apr 2019 20:51:16 -0700 (PDT)
MIME-Version: 1.0
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
	<a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
	<6068e963-94c1-7225-2c60-9ae027c74639@windriver.com>
	<CAPoiz9yat-4XRgSFikh5PxrsgVpRAWNi2dx1O0+_iHyVR529Ag@mail.gmail.com>
	<20190402194738.GZ4664@bill-the-cat>
	<56e2b936-177c-7066-99c0-bb46854daa4b@gmail.com>
	<20190403004550.GB4664@bill-the-cat>
In-Reply-To: <20190403004550.GB4664@bill-the-cat>
From: Jon Mason <jdmason@kudzu.us>
Date: Wed, 3 Apr 2019 03:51:05 +0000
Message-ID: <CAPoiz9zYfcUJKOdix+1depKWUp5HBnNuSon0DvKKQLA6aKpdTQ@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	akuster808 <akuster808@gmail.com>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] Git commit process question.
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
X-List-Received-Date: Wed, 03 Apr 2019 03:51:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 3, 2019 at 7:45 AM Tom Rini <trini@konsulko.com> wrote:
>
> On Tue, Apr 02, 2019 at 02:24:51PM -0700, akuster808 wrote:
> >
> >
> > On 4/2/19 12:47 PM, Tom Rini wrote:
> > > On Tue, Apr 02, 2019 at 04:45:16AM +0000, Jon Mason wrote:
> > >> On Tue, Apr 2, 2019 at 6:41 AM Mark Hatle <mark.hatle@windriver.com> wrote:
> > >>> On 4/1/19 6:20 PM, akuster808 wrote:
> > >>>>
> > >>>> On 4/1/19 4:02 PM, Richard Purdie wrote:
> > >>>>> On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
> > >>>>>> Hello,
> > >>>>>>
> > >>>>>> I have noticed a large number of git commits with no header
> > >>>>>> information being accepted.
> > >>>>> Can you be more specific about what "no header information" means? You
> > >>>>> mean a shortlog and no full log message?
> > >>>> Commits with just a "subject" and signoff. No additional information
> > >>> If you can convey the reason for the change in just the subject, that is
> > >>> acceptable.. but there is -always- supposed to be a signed-off-by line according
> > >>> to our guidelines.
> > >>>
> > >>> So if you see this, I think we need to step back and figure out where and why
> > >>> it's happening and get it resolved in the future.
> > >>>
> > >>> (Places I've seen in the past were one-off mistakes and clearly that -- so it
> > >>> wasn't anything that we needed to work on a correction.)
> > >>>
> > >>> --Mark
> > >>>
> > >>>> We tend to reference back to how the kernel does things.
> > >>>>
> > >>>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> > >>>> These two sections in particular.
> > >>>>
> > >>>>
> > >>>>     2) Describe your changes
> > >>>>
> > >>>> Describe your problem. Whether your patch is a one-line bug fix or 5000 lines of
> > >>>> a new feature, there must be an underlying problem that motivated you to do this
> > >>>> work. Convince the reviewer that there is a problem worth fixing and that it
> > >>>> makes sense for them to read past the first paragraph.
> > >>>>
> > >>>>
> > >>>> along with this section.
> > >>>>
> > >>>>
> > >>>>     14) The canonical patch format
> > >>>>
> > >>>> This section describes how the patch itself should be formatted. Note that, if
> > >>>> you have your patches stored in a |git| repository, proper patch formatting can
> > >>>> be had with |git format-patch|. The tools cannot create the necessary text,
> > >>>> though, so read the instructions below anyway.
> > >>>>
> > >>>> The canonical patch subject line is:
> > >>>>
> > >>>> Subject: [PATCH 001/123] subsystem: summary phrase
> > >>>>
> > >>>> The canonical patch message body contains the following:
> > >>>>
> > >>>>       * A |from| line specifying the patch author, followed by an empty line
> > >>>>         (only needed if the person sending the patch is not the author).
> > >>>>       * The body of the explanation, line wrapped at 75 columns, which will be
> > >>>>         copied to the permanent changelog to describe this patch.
> > >>>>       * An empty line.
> > >>>>       * The |Signed-off-by:| lines, described above, which will also go in the
> > >>>>         changelog.
> > >>>>       * A marker line containing simply |---|.
> > >>>>       * Any additional comments not suitable for the changelog.
> > >>>>       * The actual patch (|diff| output).
> > >>>>
> > >>>>
> > >>>>     - Armin
> > >> There are existing git hooks that can be used to detect and fail to
> > >> merge patches like this.  For Linux, I have the following in
> > >> .git/hooks/pre-commit
> > >> #!/bin/sh
> > >> exec git diff --cached | scripts/checkpatch.pl -
> > > FWIW, over in U-Boot land I do:
> > > ./scripts/checkpatch.pl -q --git origin/master..
> > > as part of checking things prior to pushing to master.
> > Having hooks is fine but after the fact. It puts the burden back on the
> > Layer maintainer to resolve. If we think more info is better, it needs
> > to happen at time of change submittal.
>
> Note that I'm not talking about a hook, I'm talking about what's part of
> my CI process.  And when something pops up there is when I grab the
> patch in question and push back on the submitter.

Exactly!  I do the same things for the Linux stuff I own.  I'll do a
git-am, then redir the output and publicly shame them.  Public shaming
is a vastly underrated method of behavior modification.

Thanks,
Jon

>
> --
> Tom

