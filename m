Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EFCE00BAE; Tue, 10 Jun 2014 08:14:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 1284 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jun 2014 08:14:41 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C661E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:14:41 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 6CE38212E369
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 14:40:10 +0000 (UTC)
Message-ID: <539718B9.9030604@mindchasers.com>
Date: Tue, 10 Jun 2014 10:39:53 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>	<20140610103736.GC24880@gmail.com>
	<CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
In-Reply-To: <CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 15:14:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/10/2014 07:25 AM, Christian Ege wrote:
>
> Am 10.06.2014 12:38 schrieb "Paul Barker" <paul@paulbarker.me.uk
> <mailto:paul@paulbarker.me.uk>>:
>  >
>  > On Mon, Jun 09, 2014 at 03:52:50PM -0700, Marlon Smith wrote:
>  > > Hi everyone,
>  > >
>  > > I'm developing a product that will run on a custom i.MX6 board and I'm
>  > > trying to decide whether to use Yocto or Ubuntu (there's a version of
>  > > Ubuntu packaged for the Wandboard that will run on our board).  The
>  > > board will run our own custom app, and we'll modify the Linux kernel to
>  > > support our hardware.
>  > >
>  > > Ubuntu seems like it would be ready to go - just put it on an SD card,
>  > > boot the board, compile the app and create a new SD card image from the
>  > > result to use for manufacturing.


How dp you plan to sell/market/license your Ubuntu based machine?

Would you become an Ubuntu hardware partner? 
http://www.ubuntu.com/partners/find-a-partner/hardware

The scope of this partnership seems to be servers and desktops.  I 
assume they also have something in the works for smart phone partners.

However, I'm guessing you're building something that doesn't fit these 
categories.

I remember seeing various demo images over the years of Ubuntu running 
on embedded hardware, but it always seems to fizzle out.  EmbeddedUbuntu 
on the Ubuntu Wiki was last updated in 2009.

But maybe you're talking with people at Canonical and they are telling 
you something different? If so, please share.  	

Phillip brought up licensing issues, and I'm wondering whether you can 
roll an "Ubuntu Linux" box without Canonical being on board.


>  > >
>  > > Yocto seems like it would be easier to remove unneeded packages from,
>  > > and easier to cross-compile the application for.  This means we could
>  > > have a smaller SD card image in the end.
>  > >
>  > > What are your thoughts on this?
>  >
>  > Philip has already mentioned license compliance in his reply, I'd
> like to add a
>  > couple of other points:
>  >
>  > - In addition to a smaller image, you should have less services
> running by
>  >   default and so lower power usage.
>  >
> This is because yocto splits documentation and not needed stuff in
> separate packages. In ubuntu you have to remove a lot of stuff.
>  > - It's much easier to do consistent, reproducible image builds which
> include
> This us a major feature. You can build the whole image by Jenkins or any
> other build server.
>  >   your own packages. Rather than having a series of steps such as
> installing
>  >   Ubuntu on an SD card, booting, installing required additional packages,
>  >   downloading your source code to the card, building and then
> installing, you
>  >   just do 'bitbake my-image' and everything you need is encoded in
> recipe files
>  >   which you can keep under version control. There's less chance for
> human error
>  >   to creep in.
>  >
>  > - You don't need to install the toolchain on the board itself, you
> can do the
> You can even create your own toolchain with all needed headers. And it
> is damn easy to remote debug your application from eclipse for example.
>  >   system build on a separate machine and not pollute the SD card
> image with the
>  >   history of building your software. It saves you the time of going
> through and
>  >   removing the things you need to build your software but aren't
> needed to run
>  >   it, which you'll probably end up doing to reduce the image size.
>  >
>  > - You'll have a great community of people doing similar things with
> the Yocto
> +1
>  >   Project. I don't know of a similar community for modifying Ubuntu
> SD card
>  >   images in this fashion.
>  >
> And you can fine tune all those recipe and build for example a hard
> float or a softfloat image.
>
> It is a little bit hard to get started but if you get familiar with
> this. There is no alternative :)
>
> --
> Christian Ege
>  > Hope this helps,
>  >
>  > --
>  > Paul Barker
>  >
>  > Email: paul@paulbarker.me.uk <mailto:paul@paulbarker.me.uk>
>  > http://www.paulbarker.me.uk
>  >
>  > --
>  > _______________________________________________
>  > yocto mailing list
>  > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>  > https://lists.yoctoproject.org/listinfo/yocto
>  >
>
>
>


