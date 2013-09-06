Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 652D4E013AD
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 03:11:10 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id g12so3688110oah.34
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2013 03:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=G+vJ0Wxw7ZkH5d5/hojtWojxpBEPtOogjKuNdcp4pyA=;
	b=R4fpcoQavC5KeM1JR0Vf2c7AZK1A7/EN2uxXUq3DeBZvZlYSROdMVNFSNffZ1oFrYh
	LA+JqcjmWjre5X5vVzw8/o1rmpHVZEgyLR7xEZ0bwvAeDPmcmWcNcx8YViFdL2ofssuC
	HfXisRg2SmkTlfJXwDUlPjD0FHU+h0dmtIUHq/r2jQ6Ebsv3FVSnFve4GkTVh+I1tADk
	BzNOxfZXsxzI+JpNbnzFpxQPlVP4kofH5qGBLSjGiZGvw2Dzu1QEC5+8QGoxB677weT7
	pF3u9oXhR+of9Kjijuj2/TJomUPdRTigg8Z7VkHBkULm5fcccjrPsmZHHH75mL+Xm49M
	w9bw==
MIME-Version: 1.0
X-Received: by 10.60.65.37 with SMTP id u5mr17117oes.72.1378462269708; Fri, 06
	Sep 2013 03:11:09 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Fri, 6 Sep 2013 03:11:09 -0700 (PDT)
In-Reply-To: <1378461230.32427.104.camel@ted>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
	<CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
	<CAFyqS9rQ8vNtCtQO-MYQ2Jbr8xHmH-k1JjS6D__ic6PrOfN5Dg@mail.gmail.com>
	<CAFyqS9o+HWcMBBD_=E4Bm-XSO5U0yKmJRtE4RbotiKCdABWO2Q@mail.gmail.com>
	<CAFyqS9rvkdVYnAb2tJdaNaoxav5_5QcPNG0-mxrWN1-qamHcKw@mail.gmail.com>
	<CAFyqS9rJG0T1EAVZ=eTBpoOhO-FVjs28S8eWRtohF3hLzZg1+A@mail.gmail.com>
	<1378455954.32427.92.camel@ted>
	<CAFyqS9oSKq4JTTiO9auGpw2XK_z5kfxKnh766gyRQQ1jxntDwg@mail.gmail.com>
	<1378461230.32427.104.camel@ted>
Date: Fri, 6 Sep 2013 12:11:09 +0200
Message-ID: <CAFyqS9qu4fkB1sYx_mUTV4AXd4JW_PvGZS7Np9X0r=NHYByQ7A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Fri, 06 Sep 2013 10:11:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2013 at 11:53 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2013-09-06 at 10:59 +0200, Hans Beck=E9rus wrote:
>> On Fri, Sep 6, 2013 at 10:25 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>> > On Thu, 2013-09-05 at 17:44 +0200, Hans Beck=E9rus wrote:
>> >> I have now prepared a patch that will fix this problem i Yocto. Since
>> >> no one (so far) commented on this issue I interpreted the silence as
>> >> that nothing has been done about this bug.
>> >
>> > I think that coming up to release, we've all be focusing on that. Once
>> > you'd identified a specific issue like this, filing a bug report in th=
e
>> > bugzilla can be a good way of getting people's attention, particularly
>> > when you have a patch.
>> >
>> > The key question is the help message:
>> >
>> >  --with-libtool-sysroot=3DDIR Search for dependent libraries within DI=
R
>> >                        (or the compiler's sysroot if not specified).
>> >
>> > so yes, this sounds like a genuine bug in libtool. Would you like to
>> > send a patch to the OE-Core mailing list which adds your patch, along
>> > with a description of the problem in the commit messages, a proper pat=
ch
>> > header (description and Upstream-Status:) and signed-off-by line?
>> >
>> > If you do, I think we'll likely include it. If not, it will need to wa=
it
>> > for someone to turn this into a full commit which might take a little
>> > longer but it does look like a good change.
>> >
>> Hi Richard, I am fully aware that people are currently on their toes
>> for the upcoming release.
>> I did not mean to sound harsh, if that was how it came out, I am truly
>> sorry. It is just that I am used to quick feedback :) and since I
>> heard nothing I though maybe this problem is to specific for anyone to
>> actually comment on it.
>
> It wasn't harsh, I just want to make sure you know you're not being
> ignored, fixes for issues like this are much appreciated and key to
> improving the project. Equally, there aren't enough hours in the day for
> us to do everything, we try our best! :)
>
>>  As I said, this is really a bug in libtool so
>> the best solution would of course be an upstream fix.
>
> Agreed, however I know first hand how hard it is to get fixes into
> libtool. So we're prepared to put this one with the other libtool fixes
> we have.
>
>>  But I needed a
>> solution to this much quicker than that. I am not really expecting
>> Yocto to fix a libtool problem. I only wished to flag for the problem
>> and provide the patch if more people stumble into the same issue. And
>> sure, I can try to post this patch in a proper way. I will probably
>> mess it up, but there is a first time for everything ;)
>
> Indeed, the first time you do this its quite daunting but equally, we'll
> do our best to help you through it and its not actually so bad. I'm
> suggesting you do go through the process since if you then later have
> other changes, you'll be more likely to submit them too and I would
> encourage people to do that.
>
>>  Is there some
>> document that describes the exact procedure for sending a patch for
>> review in Yocto?
>
> http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#how-to-su=
bmit-a-change
>
> Don't worry about maintainers and so on for this one, just send it to
> the OE-Core list.
>
>>  I guess you also wish to have some ticket id or
>> something to connect it to?
>
> Its not essential in a case like this where the issue is now well
> understood.
>
>> As it stands right now we have a .bbappend to workaround this so there
>> is really no panic.
>
> If its going to be in the release which I'd like it to be, I could do
> with it sooner than later though. If you don't have the time, fair
> enough but it does seem like a good fix.
>

Ok, I will see what I can do. I guess ch3.9+ch3.9.2 is what I need to
walk through.

> Cheers,
>
> Richard
>
>
>

