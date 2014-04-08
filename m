Return-Path: <wpdster@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE78CE00CBF
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 16:03:50 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id p10so1611080pdj.40
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 16:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=B66cH/Fl7BriPJwmvWJtRBjqgjnl4MobAgGWEIwQ09w=;
	b=YTpdYSnr6q9oF1w86xqVj5vqeGMfkU2Z4dmxcZbeYkjqiCsqaZgVzm+0zAskh97JDT
	ey4fBdAuPpf/uYTBbnn8RLrU/S4lZ//eSq9AqW9c7SkrdIVnaVoLcMBHUs4hnzpXRNFO
	bQBccHsY1vfVx2/peyE0Z2HT6duB6E8e8+2fLgttraguLic7GMaYLKOJ5Sue1a1LnKTR
	z2qi7FbuP6zY/CsXkPLdsii/IJZZfGx3oDJN6i4ny18lQqQEjVHJTO2oP/qHX3K1DnR3
	Ul2fASU2ECA8G2pJZn/euZKilOXMejzGyXZ786mK4D6qwQqfaQNH1FmYQnhH4OZ2qJKg
	5KDA==
X-Received: by 10.68.105.36 with SMTP id gj4mr7795866pbb.64.1396998230001;
	Tue, 08 Apr 2014 16:03:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Tue, 8 Apr 2014 16:03:19 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 8 Apr 2014 19:03:19 -0400
Message-ID: <CAF_dkJBmwwiaC0Kna5rrZ2J_WnKYz9gvTU55xBXCkEyxoZ88yQ@mail.gmail.com>
To: gstreamer-devel <gstreamer-devel@lists.freedesktop.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	gstreamer-embedded@lists.freedesktop.org
Subject: Squeezing a gstreamer video pipeline into the smallest footprint possible
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
X-List-Received-Date: Tue, 08 Apr 2014 23:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a ridiculously pinhole sized memory footprint into which I
would like to squeeze a gstreamer based video pipeline.  I am looking
for tips on what I can do to minimize the footprint as much as
possible for my Yocto based system.

Looking at the rootfs, I see that libgstaudio is included.  Can
anybody give me any tips on how I might exclude that from my system?
At worst, I suppose I could write a post install task that simply
removes it from the rootfs, but that feels unduly hackish to me.

Also, I tried adding a .bbappend file with --disable-theora,
--disable-vorbis, etc... added, but when I looked at the resulting
config.status file, I found my --disable-theora & --disable-vorbis
options in ac_cs_config, followed by --enable-theora and
--enable-vorbis.

Adding insult to injury, the resulting compressed rootfs was 100 bytes
longer than before :-)  (The part of me that enjoys ironic humor,
laughed heartily at that. The part of me that is just trying to
squeeze this image into my 6MB partition wept.)

Is there a way to configure gstreamer with just the set of 3 or 4
plugins I really need?  Can I compile static libraries and link them
into into my own static application?

Any tips?

Thanks.

--wpd

