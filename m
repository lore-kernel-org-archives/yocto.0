Return-Path: <b.weissbach@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69166E00A2F; Thu, 22 May 2014 08:38:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.weissbach[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 358 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 08:38:41 PDT
Received: from mail-wg0-f48.google.com (unknown [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6DA6E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 08:38:41 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id b13so3507846wgh.31
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 08:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=0kZc0gu7MJg7o1sbpXqvYtOy4B17rPIhWjCoeRBTDFE=;
	b=Is5hcO4qFQ1JapBcEyhSg09vuKNHkO0D7BG0F2OXDmaQU8oYI08C5jK8k6TRJlm7Rv
	deo5KnpjWOy7wEWiyhMafFrMuamLZzsR8jhle5CcQqHtnMeQubgjlgg2e941QdCwik7S
	4zk9OgzucULu+apFdD5HxhJh+vnt3JGwl0/0zEo5IcyCeVCsjKdqnUDewunGI4QLj4Rn
	LKGdpvPUEhwuB0+V3xnGDudii5JCP+8LEYwxPDtRNz9pz5UlZCHCV0yC1ZkuX2jaHzxw
	8yy9EGhGi6dK1aZ55GF5qkMaI1e9bhttPkPuXZNA5TRwIY6BMr+BmsyA4257WKb+z5TP
	YYhw==
X-Received: by 10.180.206.205 with SMTP id lq13mr17267951wic.11.1400772761781; 
	Thu, 22 May 2014 08:32:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.129.74 with HTTP; Thu, 22 May 2014 08:32:21 -0700 (PDT)
From: =?UTF-8?Q?Bastian_Wei=C3=9Fbach?= <b.weissbach@gmail.com>
Date: Thu, 22 May 2014 17:32:21 +0200
Message-ID: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: QT5 for gernericX86
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
X-List-Received-Date: Thu, 22 May 2014 15:38:45 -0000
Content-Type: multipart/alternative; boundary=001a11c382d4e0900404f9fed22d

--001a11c382d4e0900404f9fed22d
Content-Type: text/plain; charset=UTF-8

Hey Guys,

I'm trying to build a Linux for a generic X86 system with QT5.

I've tried to go the simple way. I cloned the nessesary layers (meta-intel
and meta-qt5). Then I selected  "intel-corei7-64" as MACHINE and
added cinematicexperience to my image. Then I build core-image-minimal.

But when I try to start Qt5_CinematicExperience (on the target) it failed
because of the missing xcb plugin.

Is there anything I missed?

Thanks for your help!

--001a11c382d4e0900404f9fed22d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Guys,<div><br></div><div>I&#39;m trying to build a Lin=
ux for a generic X86 system with QT5.=C2=A0</div><div><br></div><div>I&#39;=
ve tried to go the simple way. I cloned the nessesary layers (meta-intel an=
d meta-qt5). Then I selected =C2=A0&quot;intel-corei7-64&quot; as MACHINE a=
nd added=C2=A0cinematicexperience to my image. Then I build core-image-mini=
mal.=C2=A0</div>

<div><br></div><div>But when I try to start=C2=A0<span style=3D"background-=
color:rgb(249,249,249)"><font color=3D"#000000" face=3D"monospace, Courier"=
><span style=3D"line-height:1.1em">Qt5_CinematicExperience (on the target) =
it failed=C2=A0</span><span style=3D"line-height:14.300000190734863px">beca=
use</span><span style=3D"line-height:1.1em">=C2=A0of the missing xcb plugin=
.=C2=A0</span></font></span></div>

<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Is there anything I missed?=C2=A0</span></font></span></div>

<div><span style=3D"background-color:rgb(249,249,249)"><font color=3D"#0000=
00" face=3D"monospace, Courier"><span style=3D"line-height:1.1em"><br></spa=
n></font></span></div><div><span style=3D"background-color:rgb(249,249,249)=
"><font color=3D"#000000" face=3D"monospace, Courier"><span style=3D"line-h=
eight:1.1em">Thanks for your help!<br>

</span></font></span></div></div>

--001a11c382d4e0900404f9fed22d--
