Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4439E00547; Wed, 30 Jul 2014 15:14:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [84.234.17.171 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2326E0043F;
	Wed, 30 Jul 2014 15:14:45 -0700 (PDT)
Received: from [109.224.171.0] (port=36407
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1XCc8m-0000kY-6V; Wed, 30 Jul 2014 23:14:33 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <20140729154109.GB31587@dvhart-mac01.local>
Date: Wed, 30 Jul 2014 23:14:29 +0100
Message-Id: <9C9784A3-CA5B-4398-9D33-2D933F6CFC81@keylevel.com>
References: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
	<20140729154109.GB31587@dvhart-mac01.local>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1878.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel] Why won't my app use multiple threads under 'valleyisland'?
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
X-List-Received-Date: Wed, 30 Jul 2014 22:14:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 29 Jul 2014, at 16:41, Darren Hart <dvhart@linux.intel.com> wrote:

> On Thu, Jul 24, 2014 at 09:45:41PM +0100, Chris Tapp wrote:
>> I've got a recipe for an application. This has:
>>=20
>> 1) A main thread;
>> 2) An OpenGL ('X' / EGL) graphics rendering thread created using =
posix threads;
>> 3) As many threads as required from the graphics thread for GStreamer =
to service various pipelines.
>>=20
>> On a Cedartrail platform this happily uses multiple cores.
>=20
> Major difference here is graphics chip, cedartrail uses EMGD binary =
drivers,
> baytrail (valleyisland) uses the open source Intel i965 drivers.
>=20
> I recently (yesterday) updated meta-intel master and daisy to properly =
support
> video acceleration in gstreamer 1.0 - I don't know if this impacts you =
or not.

Thanks for the pointer. I'll give it a try and see if it makes a =
difference.

> However, if I use the same recipe under a 64-bit valleyisland build =
(daisy) it
>> only ever uses a single core (and virtually grinds to a halt).
>>=20
>> 'top' shows CPU usage for the application never goes above 25% =
(J1900, so four
>> cores available). Running four instances of 'yes' gets the total CPU =
usage to
>> 100%, so all the cores are available.
>=20
> Does /proc/cpu list four cores?

It does.

I've also found that running the GStreamer pipeline outside of (and at =
the same time as) my application works as expected - i.e. more CPU =
resources are used and the application runs at the target loop time, so =
the system can definitely do what I want...

> 'taskset' shows that the affinity mask for the application is not =
restricting
>> the set of available cores.
>>=20
>> Umm... Any ideas what's going on here?
>>=20
>> It looks as if GStreamer and OpenGL are fighting for access to =
something, but
>> the pipelines only render to 'fakesink' and 'appsink'.
>>=20
>=20
> I don't have any GL/GST development experience, so this is likely best =
taken to
> those respective lists.

Thanks, I've already tried that and not got anything back ;-)

> --
> Darren

Chris Tapp

opensource@keylevel.com
www.keylevel.com




