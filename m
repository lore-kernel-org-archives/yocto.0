Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe02.domain01.net (STOEXHUBFE02.domain01.net
	[83.145.59.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D1B8E01507
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 03:29:54 -0700 (PDT)
Received: from android-17c990e6fd634c9c.lan (83.252.255.124) by
	stoexhubfe02.domain01.net (10.12.10.7) with Microsoft SMTP Server (TLS)
	id 8.3.279.1; Wed, 18 Sep 2013 12:29:50 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <3955475.5Ihbqp1Ot3@helios>
References: <E51394554A503C4E852F9BEE46B03E8DEFE76C@TI-ODIN.tasernet.com>
	<20130918084756.GA12397@ad.chargestorm.se>
	<3955475.5Ihbqp1Ot3@helios>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Wed, 18 Sep 2013 12:29:49 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Brad Litterell
	<brad@evidence.com>
Message-ID: <fc0ae1c2-ebef-4e22-ae99-a72c0e224ecc@email.android.com>
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QMake & externalsrc incompatible?
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
X-List-Received-Date: Wed, 18 Sep 2013 10:29:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit



Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>On Wednesday 18 September 2013 10:47:56 Anders Darander wrote:
>> * Brad Litterell <brad@evidence.com> [130917 21:20]:
>> > I have a number of QT components that have qmake style .pro files.
>> > 
>> > In my recipe I inherit both externalsrc & qmake2.  I'm using qmake2
>based
>> > on the quicky sample recipe since I don't need X11 or the other GUI
>> > libraries.
>>
>> I've got a similar recipe setup for some of my coworkers. The main
>> difference being that we're inheriting qt4e instead of qmake2.
>> 
>> > In the bitbake work folder, the generated run.do_configure script
>> > resembles
>> > this:
>> > 
>> > cd
>/home/brad/ecom/build/toolchain/work/.../ecomapi-2.0-r0/ecomapi-2.0/
>> > ...
>> > PROFILES="`ls *.pro`"
>> > 
>> > This is the location where a tarball would normally be unpacked,
>but in
>> > this case I'm using externalsrc and the source files are not here. 
>> > Therefore the ls *.pro doesn't return anything for the automatic
>profile
>> > detection and the build fails.
>> > 
>> > My recipe is very simple (removing the description & licensing):
>> > 
>> > PV = "2.0"
>> > inherit externalsrc qmake2
>> > S = "${OEBASE}/ecomapi"
>> 
>> To make it work correctly, I used:
>> 
>> S := "${THISDIR}/chargemanager"
>> B := "${S}"
>> 
>> You shouldn't need to use :=, I was required to do that as I needed
>to
>> use THISDIR (and thus I need the expansion to occur immediately).
>> 
>> Just setting S wasn't enough for me, I needed to also define B. Note,
>> though, that this means that you can't build your recipe for multiple
>> arch's etc.
>
>This just looks like the value of PROFILES in qmake_base.bbclass needs
>to be 
>fixed to look in ${S} instead of the current directory (which would be
>${B}). 
>I'm not sure if any other tweaks would be needed for qmake to allow S
>!= B 
>though.

Thanks for the ideas. I might be able to have a look at this next week, unless someone beats me to it. 

Cheers, 
Anders 

-- 
ChargeStorm AB / eStorm 

