Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7061DE00828; Wed,  1 Apr 2015 05:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A041AE006E9
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 05:34:04 -0700 (PDT)
Received: by lbbug6 with SMTP id ug6so34949072lbb.3
	for <yocto@yoctoproject.org>; Wed, 01 Apr 2015 05:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PI5cGvpy14QYaDapVaqkjuS1UsUV1FcM60r2K8D8E94=;
	b=0cZdNtbMFTnh4oKaO7+W8AElcrbiWRzBedVtw9EyXsM9Qj2lTD/1+Oz6VTihmJrbC/
	aSPs7c5o1lfLr/BVq5AfODvQNPVPwsch609vBnTc43nAini1Bbh7n7thMPFI4VDgx/Zy
	lKsXbisUb+GLCD++Qyl+bLWYkEoZf/xpLfW70OXDPFdqTLQo5EqSC9tjL911lcnDIDgu
	SYyoWGYuQ+SbzHQULnDCoFEGzst8RDxJG7DNUCZwddvLkRCMUFwZOpzTDE8lvQHidQnn
	9t3P7abqTFL3BHwCxCn9TMD/PKbUNT2qaA6IobjFqTh3JDUuIcFt6iR5MxwxKEFEmhWf
	Vc8g==
MIME-Version: 1.0
X-Received: by 10.112.8.76 with SMTP id p12mr31922714lba.29.1427891643157;
	Wed, 01 Apr 2015 05:34:03 -0700 (PDT)
Received: by 10.114.60.19 with HTTP; Wed, 1 Apr 2015 05:34:03 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1504010722160.13136@localhost>
References: <alpine.LFD.2.11.1503311824570.28969@localhost>
	<551B4086.8050200@windriver.com>
	<alpine.LFD.2.11.1504010306190.24212@localhost>
	<551BD3A5.8020807@windriver.com>
	<alpine.LFD.2.11.1504010722160.13136@localhost>
Date: Wed, 1 Apr 2015 08:34:03 -0400
Message-ID: <CADkTA4Pw2M6aLuhjEmpWb4MMNdSTrAbYrdTrn8q3atokJsqp3Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Wed, 01 Apr 2015 12:34:07 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 1, 2015 at 7:24 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Wed, 1 Apr 2015, Bruce Ashfield wrote:
>
>> On 2015-04-01 3:07 AM, Robert P. J. Day wrote:
>> > On Tue, 31 Mar 2015, Bruce Ashfield wrote:
>> >
>> > > On 2015-03-31 6:26 PM, Robert P. J. Day wrote:
>> > > >
>> > > >     oh, what fresh hell is this?
>> > > >
>> > > > ... snip ...
>> > > > NOTE: Preparing RunQueue
>> > > > NOTE: Executing SetScene Tasks
>> > > > NOTE: Executing RunQueue Tasks
>> > > > ERROR: Function failed: do_validate_branches (log file is located at
>> > > > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524)
>> > > > ERROR: Logfile of failure stored in:
>> > > > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524
>> > > > Log data follows:
>> > > > | DEBUG: Executing shell function do_validate_branches
>> > > > | NOTE: Setting branch meta to
>> > > > 9e70b482d3773abf92c9c5850e134cbca1d5651f
>> > > > | fatal: A branch named 'meta-orig' already exists.
>> > > >
>> > > >     this is building core-image-minimal for qemux86, and i'm assuming
>> > > > this is not fedora rawhide related.
>> > >
>> > > You've got a borked tree sitting in work-shared. If you clean-all
>> > > and start again, does it show up ?
>> > >
>> > > If it repeats, then it very well could be the version of git in
>> > > rawhide that is causing the issue.
>> >
>> >    i started with a fresh build, got a validate_branches error, and
>> > used "bb" to dump the log file for that step:
>>
>> There's definitely something wrong or a strange integration between
>> the version of git and that tree.
>>
>> Without a place to poke at this, there's not much I can say about
>> actually changing that behaviour.
>>
>> All my local builds are green, all the yocto release builds are green,
>> etc, so this is somehow specific to your build and location
>> environment.
>>
>> This is on a fully up to date master ?
>
> ... snip ...
>
>   yup. and i realize that fedora rawhide isn't supported here, but if
> there's something funky about fedora rawhide that's causing this, best
> to figure it out earlier than later. i'll try more testing later, but
> i've redone this test three times, same result each time.


I completely agree .. better to sort this out sooner rather than later, I'm just
trying to narrow down on a  configuration that allows me to see the problem
and poke at the smouldering pile. If git is doing something different now, it
won't be hard to fix, but hands on, versus code inspection, is the real
trick here.

Bruce

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

