Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7426E013AD
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 02:54:03 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r86A7CX8012898; Fri, 6 Sep 2013 11:07:12 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3W8M-WsdVppg; Fri,  6 Sep 2013 11:07:12 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r86A79Ua012891
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 6 Sep 2013 11:07:10 +0100
Message-ID: <1378461230.32427.104.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Fri, 06 Sep 2013 10:53:50 +0100
In-Reply-To: <CAFyqS9oSKq4JTTiO9auGpw2XK_z5kfxKnh766gyRQQ1jxntDwg@mail.gmail.com>
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
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 06 Sep 2013 09:54:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2013-09-06 at 10:59 +0200, Hans Beckérus wrote:
> On Fri, Sep 6, 2013 at 10:25 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > On Thu, 2013-09-05 at 17:44 +0200, Hans Beckérus wrote:
> >> I have now prepared a patch that will fix this problem i Yocto. Since
> >> no one (so far) commented on this issue I interpreted the silence as
> >> that nothing has been done about this bug.
> >
> > I think that coming up to release, we've all be focusing on that. Once
> > you'd identified a specific issue like this, filing a bug report in the
> > bugzilla can be a good way of getting people's attention, particularly
> > when you have a patch.
> >
> > The key question is the help message:
> >
> >  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
> >                        (or the compiler's sysroot if not specified).
> >
> > so yes, this sounds like a genuine bug in libtool. Would you like to
> > send a patch to the OE-Core mailing list which adds your patch, along
> > with a description of the problem in the commit messages, a proper patch
> > header (description and Upstream-Status:) and signed-off-by line?
> >
> > If you do, I think we'll likely include it. If not, it will need to wait
> > for someone to turn this into a full commit which might take a little
> > longer but it does look like a good change.
> >
> Hi Richard, I am fully aware that people are currently on their toes
> for the upcoming release.
> I did not mean to sound harsh, if that was how it came out, I am truly
> sorry. It is just that I am used to quick feedback :) and since I
> heard nothing I though maybe this problem is to specific for anyone to
> actually comment on it.

It wasn't harsh, I just want to make sure you know you're not being
ignored, fixes for issues like this are much appreciated and key to
improving the project. Equally, there aren't enough hours in the day for
us to do everything, we try our best! :)

>  As I said, this is really a bug in libtool so
> the best solution would of course be an upstream fix.

Agreed, however I know first hand how hard it is to get fixes into
libtool. So we're prepared to put this one with the other libtool fixes
we have.

>  But I needed a
> solution to this much quicker than that. I am not really expecting
> Yocto to fix a libtool problem. I only wished to flag for the problem
> and provide the patch if more people stumble into the same issue. And
> sure, I can try to post this patch in a proper way. I will probably
> mess it up, but there is a first time for everything ;)

Indeed, the first time you do this its quite daunting but equally, we'll
do our best to help you through it and its not actually so bad. I'm
suggesting you do go through the process since if you then later have
other changes, you'll be more likely to submit them too and I would
encourage people to do that.

>  Is there some
> document that describes the exact procedure for sending a patch for
> review in Yocto?

http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#how-to-submit-a-change

Don't worry about maintainers and so on for this one, just send it to
the OE-Core list.

>  I guess you also wish to have some ticket id or
> something to connect it to?

Its not essential in a case like this where the issue is now well
understood.

> As it stands right now we have a .bbappend to workaround this so there
> is really no panic.

If its going to be in the release which I'd like it to be, I could do
with it sooner than later though. If you don't have the time, fair
enough but it does seem like a good fix.

Cheers,

Richard




