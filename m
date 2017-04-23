Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FF25E007BA; Sun, 23 Apr 2017 07:35:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32278E00349
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 07:35:03 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id c45so97438184qtb.1
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 07:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NuUqcVZKoCjj60uiXpg92BpFQFisH9XKbC43wqJn+MI=;
	b=sqB8L/enLbNZkMNxm5jgJPsYjCTPBKEjdoNv4tDq70AA5h32EzpFFGVc25Zld6sXfl
	ssRcwEuQDwZyq70uWQiP0vV2saU32g3aFAHOotI0btAMaKpQpszy89SqYI6Hf0EtVAGX
	SlrXNPgH1XJMqOiMfExlxdaNLuovwiEy/1xM74SvNN7VlsYlXEtXD9XGkSxYAf3o6php
	H+uAj0RGuhrC1ekxVJvivL6I4Evlbp9MWiG3e7O1pobchjXFCaHxhgi46gnckXHtTvSu
	P399bZ0p6zozghTOvdw/N3ZkV+wDKxSqj+C++xyN5eEPSnKfV4oaVM3DI9PMYHsnjcRH
	e94g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NuUqcVZKoCjj60uiXpg92BpFQFisH9XKbC43wqJn+MI=;
	b=gE4ZsN/lpHmy93IqUCo5fAJIGd9+l98p8dtHLE1TtXS+dyVfqWyRprcPpa815DtBZr
	ToV7wPwYw9oNSxgikyvJ/nuwvR6HV0CuU5swlKDIPXhz2yxjxgtBuubffURMBEaZmwLs
	AmmYpG62arUNY5qPrxdDH/g80dlHgzjJcqQdt3h6jw9b3+B5S4fg0AdMiOSmNe4uAM+W
	UDNcMe8hDYwy+att9vmeiojTN0mZ8V/9RU5o7fF7j+NF2xmJMrrZ6Olg9rGPoe6CUjxK
	q2seRrenydjZo9/9lMeJCOveEn4EAZg2J4pdPczmHgVy0Z8vNGoGGQlnOE+F4oUwbArY
	8puQ==
X-Gm-Message-State: AN3rC/4kcr6ZNZtUXP0GV/d4u8lUMkiFfK/f3ObZPcq9TwkLLnrYLtZ6
	HRtmJAT6RShXavvkjxcNCaqbMlIJ7OD62h0=
X-Received: by 10.237.49.9 with SMTP id 9mr20554735qtg.291.1492958102791; Sun,
	23 Apr 2017 07:35:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.48.73 with HTTP; Sun, 23 Apr 2017 07:35:02 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Sun, 23 Apr 2017 16:35:02 +0200
Message-ID: <CAOsmwBS1n4eayjhZZZZ4-RpotTSryiDOEA-xRJK59aR-ypbxEw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with mesa and nvidia
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
X-List-Received-Date: Sun, 23 Apr 2017 14:35:06 -0000
Content-Type: multipart/alternative; boundary=94eb2c0c98a061abdf054dd665cf

--94eb2c0c98a061abdf054dd665cf
Content-Type: text/plain; charset=UTF-8

Hi, my goal is build the core-image-x11 using the nvidia drivers instead of
mesa. My recipe provides the following:

PROVIDES = "virtual/libgl virtual/libgles1 virtual/libgles2 virtual/egl"

and in my local.conf:

PREFERRED_PROVIDER_virtual/libgl = "nvidia-proprietary"
PREFERRED_PROVIDER_virtual/libgles1 = "nvidia-proprietary"
PREFERRED_PROVIDER_virtual/libgles2 = "nvidia-proprietary"
PREFERRED_PROVIDER_virtual/egl = "nvidia-proprietary"

Then I got the following:
Nothing RPROVIDES 'mesa-driver-i915'
Missing or unbuildable dependency chain was: ['core-image-x11',
'packagegroup-core-x11-base', 'packagegroup-core-x11-xserver',
'mesa-driver-i915']

Of course I dont need support for this intel card (and nothing but nvidia,
because my devices use nvidia).
In my custom layer where I can override everything from xorg recipes all
works as expected, but my intention is to build my image by using only the
meta-oe (because I will try to push my recipe to this layer).

I read all these x11 and xorg recipes but did not found mesa-driver-i915
neither something that can help me.

My actual recipe is https://pastebin.com/9VRuXWBU
It's not very complex, just download, compile kernel module and copy files.

My intention is that just modifying the PREFERED_PROVIDER the x11 image
will be built with mesa (by default) or with nvidia drivers.

I'm very new to yocto and maybe I didnt get the yocto philosophy yet so any
advice or tip will be very grateful.

Thank you!

--94eb2c0c98a061abdf054dd665cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, my goal is build the core-image-x11 using the nvidia d=
rivers instead of mesa. My recipe provides the following:<div><br></div><di=
v>PROVIDES =3D &quot;virtual/libgl virtual/libgles1 virtual/libgles2 virtua=
l/egl&quot;<br></div><div><br></div><div>and in my local.conf:</div><div><b=
r></div><div><div>PREFERRED_PROVIDER_virtual/libgl =3D &quot;nvidia-proprie=
tary&quot;</div><div>PREFERRED_PROVIDER_virtual/libgles1 =3D &quot;nvidia-p=
roprietary&quot;</div><div>PREFERRED_PROVIDER_virtual/libgles2 =3D &quot;nv=
idia-proprietary&quot;</div><div>PREFERRED_PROVIDER_virtual/egl =3D &quot;n=
vidia-proprietary&quot;</div></div><div><br></div><div>Then I got the follo=
wing:</div><div>Nothing RPROVIDES &#39;mesa-driver-i915&#39;<br></div><div>=
Missing or unbuildable dependency chain was: [&#39;core-image-x11&#39;, &#3=
9;packagegroup-core-x11-base&#39;, &#39;packagegroup-core-x11-xserver&#39;,=
 &#39;mesa-driver-i915&#39;]<br></div><div><br></div><div>Of course I dont =
need support for this intel card (and nothing but nvidia, because my device=
s use nvidia).</div><div>In my custom layer where I can override everything=
 from xorg recipes all works as expected, but my intention is to build my i=
mage by using only the meta-oe (because I will try to push my recipe to thi=
s layer).</div><div><br></div><div>I read all these x11 and xorg recipes bu=
t did not found mesa-driver-i915 neither something that can help me.</div><=
div><br></div><div>My actual recipe is=C2=A0<a href=3D"https://pastebin.com=
/9VRuXWBU">https://pastebin.com/9VRuXWBU</a></div><div>It&#39;s not very co=
mplex, just download, compile kernel module and copy files.</div><div><br><=
/div><div>My intention is that just modifying the PREFERED_PROVIDER the x11=
 image will be built with mesa (by default) or with nvidia drivers.</div><d=
iv><br></div><div>I&#39;m very new to yocto and maybe I didnt get the yocto=
 philosophy yet so any advice or tip will be very grateful.</div><div><br><=
/div><div>Thank you!</div></div>

--94eb2c0c98a061abdf054dd665cf--
