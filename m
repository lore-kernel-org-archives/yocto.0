Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D1DE009A5; Tue, 28 Apr 2015 12:55:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7051AE00949
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 12:55:19 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so3720993qkg.1
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 12:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=FktqHUENdK0GU4ofGedF2vOZCksbVHNCFMJrZnDc5Ic=;
	b=I09ovKw5EYAUgmI7DFyTIxvXe/kZhz4UM+UNf3SpKRoni2lOMgYUw61wOHrkujP6r2
	1AxExY9osWt5Z2/fvWJJrIxfnu29YrdedKDyhzQVeJuHuXYD/pAYwKY96NGIj/eP2sJQ
	CdUmHC173laJxXUiSneku70sMz53AkQtKFWMCvDT9VcmWwYOSDo0JA95cj/I3KmE8OW7
	V7JwqkffuGS3SER5Wq3NxP3zQhm0NxDVGMZ0+bChB6xE3xGhwzdtTq67GZuAUQySi8Tb
	vh2ZOQ9RBBihgkbWbYR5MzkSD5+HtzKEoo+IUatp+gDvprJgFZ/Ci3TsfP37/eWROjx9
	sYGw==
X-Gm-Message-State: ALoCoQk3ZmjYJ0xr54zLjJXvPlQQhPj8pG2P20VsUJJXE1Dwvh+Pd7jBCvUJ4VHH5e1bLs5eECzX
X-Received: by 10.55.23.16 with SMTP id i16mr22534890qkh.14.1430250919459;
	Tue, 28 Apr 2015 12:55:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 28 Apr 2015 12:54:58 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Apr 2015 20:54:58 +0100
Message-ID: <CAJTo0LbHVrLM=Wt++3ue-VQ3KFB42tGaJUwFRW_UHfBDXuqc_w@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Moving GStreamer 0.10 to meta-multimedia
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
X-List-Received-Date: Tue, 28 Apr 2015 19:55:23 -0000
Content-Type: multipart/alternative; boundary=001a1146f4bafe93860514ce3d33

--001a1146f4bafe93860514ce3d33
Content-Type: text/plain; charset=UTF-8

Hi all,

This is basically a heads-up that we're working on moving GStreamer 0.10
out of oe-core[1] and into meta-multimedia, where anyone who still needs
0.10 can use and maintain them.

In case anyone out there using GStreamer 0.10 isn't aware, it's been
unmaintained since March 2013[2] and upstream there really mean that:

Last gstreamer commit on 0.10 branch: September 2013
gst-plugins-base: May 2013
gst-plugins-good: August 2013
gst-plugins-bad: August 2013
gst-plugins-ugly: July 2013

If your BSP vendor only ships GStreamer 0.10 plugins now is the time to
harass them about upgrading.

Ross

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=6294
[2]
http://lists.freedesktop.org/archives/gstreamer-announce/2013-March/000273.html

--001a1146f4bafe93860514ce3d33
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>This is basically a heads-up th=
at we&#39;re working on moving GStreamer 0.10 out of oe-core[1] and into me=
ta-multimedia, where anyone who still needs 0.10 can use and maintain them.=
</div><div><br></div><div>In case anyone out there using GStreamer 0.10 isn=
&#39;t aware, it&#39;s been unmaintained since March 2013[2] and upstream t=
here really mean that:</div><div><br></div><div>Last gstreamer commit on 0.=
10 branch: September 2013</div><div>gst-plugins-base: May 2013</div><div>gs=
t-plugins-good: August 2013</div><div>gst-plugins-bad: August 2013</div><di=
v>gst-plugins-ugly: July 2013</div><div><br></div><div>If your BSP vendor o=
nly ships GStreamer 0.10 plugins now is the time to harass them about upgra=
ding.</div><div><br></div><div>Ross</div><div><br></div><div>[1]=C2=A0<a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6294">https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D6294</a></div><div>[2]=C2=A0<a hre=
f=3D"http://lists.freedesktop.org/archives/gstreamer-announce/2013-March/00=
0273.html">http://lists.freedesktop.org/archives/gstreamer-announce/2013-Ma=
rch/000273.html</a></div></div>

--001a1146f4bafe93860514ce3d33--
