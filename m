Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFC1E00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 15:55:32 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TGe27-0003h5-9F; Tue, 25 Sep 2012 23:55:15 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1988742.vVm7Lma6pF@helios>
Date: Tue, 25 Sep 2012 23:55:12 +0100
Message-Id: <15C9364B-70BF-47BD-811C-2A1B021A345F@keylevel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
	<34F347852CDC4B699F8565643D33E53B@intel.com>
	<1988742.vVm7Lma6pF@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: How can I build gstreamer and its plugins without x11?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Sep 2012 22:55:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 25 Sep 2012, at 23:21, Paul Eggleton wrote:

> On Tuesday 25 September 2012 23:12:12 Ross Burton wrote:
>> On Tuesday, 25 September 2012 at 21:51, Chris Tapp wrote:
>>> I'm trying to build gstreamer to run on a system that does not have =
x11
>>> (for audio and to stream video). It seems as if =
gst-plugins-good-id3demux
>>> needs x11: ...
>>> ERROR: Required build target 'task-sjs' has no buildable providers.
>>> Missing or unbuildable dependency chain was: ['task-sjs',
>>> 'gst-plugins-good-id3demux', 'pulseaudio', 'consolekit',
>>> 'virtual/libx11']
>> I'm not entirely sure why a demuxer is depending on pulseaudio, but =
you'll
>> hit this somewhere else.
>>=20
>> pulseaudio's build dependency on consolekit is entirely spurious and =
I've
>> fixed this in master.  pulseaudio-server then has a runtime =
dependency on
>> consolekit which you could argue should be a recommends - in =
Guacamayo for
>> now we're just removing that dependency as we're not using =
consolekit.
> Hmm, I think an item that fell off my todo list was to make the =
gstreamer=20
> pulseaudio dependency conditional on pulseaudio being in =
DISTRO_FEATURES after=20
> I added that feature. I think we should still do that, not sure if =
it's too=20
> late for the current development cycle though - at least it's not too=20=

> intrusive since pulseaudio is a backfilled feature.

I've removed the gst-plugins-good dependency on pulseaudio but I've now =
got a problem with gtk+ being pulled in. I tried removing the deps on =
gconf and gtk+ but gtk+ is still being built. I've tried looking at the =
.dot file for gst-plugins-good, but I can't see why it's still there...

>=20
> Paul Eggleton
> Intel Open Source Technology Centre

Chris Tapp

opensource@keylevel.com
www.keylevel.com




