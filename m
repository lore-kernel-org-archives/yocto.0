Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E33E0049F
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 00:32:19 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TGm6Q-0006nv-Kh; Wed, 26 Sep 2012 08:32:14 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <34F347852CDC4B699F8565643D33E53B@intel.com>
Date: Wed, 26 Sep 2012 08:32:12 +0100
Message-Id: <5BB2B8A2-CD8B-4F0C-B7AE-FBED8ED8077B@keylevel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
	<34F347852CDC4B699F8565643D33E53B@intel.com>
To: Ross Burton <ross.burton@intel.com>
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
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 26 Sep 2012 07:32:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 25 Sep 2012, at 23:12, Ross Burton wrote:

> On Tuesday, 25 September 2012 at 21:51, Chris Tapp wrote:
>> I'm trying to build gstreamer to run on a system that does not have =
x11 (for audio and to stream video). It seems as if =
gst-plugins-good-id3demux needs x11:
>> ...
>> ERROR: Required build target 'task-sjs' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['task-sjs', =
'gst-plugins-good-id3demux', 'pulseaudio', 'consolekit', =
'virtual/libx11']
>=20
> I'm not entirely sure why a demuxer is depending on pulseaudio, but =
you'll hit this somewhere else.
>=20
> pulseaudio's build dependency on consolekit is entirely spurious and =
I've fixed this in master.  pulseaudio-server then has a runtime =
dependency on consolekit which you could argue should be a recommends - =
in Guacamayo for now we're just removing that dependency as we're not =
using consolekit.


Thanks Ross. Is the reference to librsvg in gst-plugins-bad similar? =
This pulls in gtk+ (which will not build for my DirectFB distro), but it =
still builds if I remove it.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




