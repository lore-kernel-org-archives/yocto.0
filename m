Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 360F7E00C52; Sat, 12 Aug 2017 01:34:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD26E00C0A
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 01:34:13 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id g71so26783180ioe.5
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 01:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QuLHv2qin9JnJEcIsrLT+gUAEc7WLb2GRfCxeZMZFRk=;
	b=w1iV9GmjXcs85MnrNlJUUFzdBqXYjRwDQvPcxc7q83y2eRmw3JibhcfaZK8MNMltut
	kUJWhD+YZQ5PEasMzrt/GnwVLgG98LRjFhesBri1H7IIjpuHaixviJtRd5gpP/gnMGAZ
	EKmFZdOeIFHM5RlcMa1zlcFjq+1N/y/+r3v0MunBJmS62v8eWyKiytMEVOeyKciWhXUC
	iQIa0Pdz7sw7daQLhooQUHkfYIZazAeNFS/hztRoNDspglCWpAMlHIk4VXe2g294ND4B
	bfvnE3APYg6DKS7i9aJp7tHMhnsUJTuLcSnnBWoFz/SZVRCJSy5mNCM3+c+bwMnigrWC
	2rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QuLHv2qin9JnJEcIsrLT+gUAEc7WLb2GRfCxeZMZFRk=;
	b=JueubCQjZ5J7Dpr3Meeb76nfEQQxqQFK3be1O1vhh7UagHeGqzTyjnu+nr2fzAc2xi
	npz3xw5KjPaDUuJeCrLpbenOOVQ8mz2WZmUAt8mudQskRqx7uG+yhaSnqox0QA+xpeHO
	RtAAupF2nY94uYA7oE2RvgWMlv80IS8XyW1WnuUUGMJCm14PHr+vb+j0NSGWCnVL4Fvy
	Zi/+32BYsLaD9QI7arc0bFPzdwkVDjI1tUN+peRSgT5bUrdg1fsrpUJrM+BkfR9KTENV
	DDnBLVKWMtXVWux8VszubxVfpwmZvpdNQnfh/z0AAscp8BB/0edxF/f+Eeqv77+fOy4z
	Xp9Q==
X-Gm-Message-State: AHYfb5gHXHJLI4M8cyZcAljFLm6NE07xo7yzcn0qQ8uN83gXXTJWtYBO
	XZDxpiKEXDosT8QhN/vIdk6xwFiT2/3U
X-Received: by 10.107.25.137 with SMTP id 131mr14357589ioz.153.1502526852778; 
	Sat, 12 Aug 2017 01:34:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.141.19 with HTTP; Sat, 12 Aug 2017 01:33:42 -0700 (PDT)
In-Reply-To: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Sat, 12 Aug 2017 11:33:42 +0300
Message-ID: <CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sat, 12 Aug 2017 08:34:14 -0000
Content-Type: multipart/alternative; boundary="001a113fd62e53612305568a4bcc"

--001a113fd62e53612305568a4bcc
Content-Type: text/plain; charset="UTF-8"

On 12 August 2017 at 11:08, mohammed aqdam <mohammedaqdam@gmail.com> wrote:
>
> to enable camera i was trying with rpi-test-image, after adding
> meta-openembedded layer into bblayer.conf, when i run bitbake i got
> this errors...
>
> root@(none):/u/hope_poky/poky_for_mon/poky/build# bitbake -k
rpi-test-image
> Parsing recipes: 100%
>
|###################################################################################################################################|
> Time: 0:05:39
> Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
> targets, 159 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
>
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/
packagegroup-rpi-test.bb
> RDEPENDS on or otherwise requires it)


When you add a layer into your setup you should read the layer  README for
the instructions and dependencies. In his case meta-raspberrypi README says
that you need meta-oe, meta-multimedia, meta-networking and meta-python
layers but looking at your build info...

> meta
> meta-poky
> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
> meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

... it looks like meta-multimedia, meta-python and meta-networking layers
(all part of meta-openembedded repo) are missing from bblayers.conf.

Hope this helps,
  Jussi

--001a113fd62e53612305568a4bcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>On 12 August 2017 at 11:08, mohammed aqdam &lt;<a href=
=3D"mailto:mohammedaqdam@gmail.com">mohammedaqdam@gmail.com</a>&gt; wrote:<=
br>&gt;<br>&gt; to enable camera i was trying with rpi-test-image, after ad=
ding<br>&gt; meta-openembedded layer into bblayer.conf, when i run bitbake =
i got<br>&gt; this errors...<br>&gt;<br>&gt; root@(none):/u/hope_poky/poky_=
for_mon/poky/build# bitbake -k rpi-test-image<br>&gt; Parsing recipes: 100%=
<br>&gt; |#################################################################=
##################################################################|<br>&gt;=
 Time: 0:05:39<br>&gt; Parsing of 1518 .bb files complete (0 cached, 1518 p=
arsed). 2129<br>&gt; targets, 159 skipped, 0 masked, 0 errors.<br>&gt; NOTE=
: Resolving any missing task queue dependencies<br>&gt; ERROR: Nothing RPRO=
VIDES &#39;bigbuckbunny-1080p&#39; (but<br>&gt; /u/hope_poky/poky_for_mon/p=
oky/meta-raspberrypi/recipes-core/packagegroups/<a href=3D"http://packagegr=
oup-rpi-test.bb">packagegroup-rpi-test.bb</a><br>&gt; RDEPENDS on or otherw=
ise requires it)<br><br><br>When you add a layer into your setup you should=
 read the layer =C2=A0README for the instructions and dependencies. In his =
case meta-raspberrypi README says that you need meta-oe, meta-multimedia, m=
eta-networking and meta-python layers but looking at your build info...=C2=
=A0<br><br>&gt; meta<br>&gt; meta-poky<br>&gt; meta-yocto-bsp =C2=A0 =C2=A0=
=3D &quot;pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a&quot;<br>&gt; meta-=
raspberrypi =C2=A0=3D &quot;master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b=
&quot;<br>&gt; meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:=
a8b54e300be027fefe8a774ca1861d0fb8e80d99&quot;<br><br>... it looks like met=
a-multimedia, meta-python and meta-networking layers (all part of meta-open=
embedded repo) are missing from bblayers.conf.<div><br></div><div>Hope this=
 helps,<br>=C2=A0 Jussi<br><div><br></div></div></div>

--001a113fd62e53612305568a4bcc--
