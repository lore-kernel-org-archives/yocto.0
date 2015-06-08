Return-Path: <rene.fichter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2801E009D4; Mon,  8 Jun 2015 01:16:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7E7EE0097D
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 01:16:29 -0700 (PDT)
Received: by lbcmx3 with SMTP id mx3so75589619lbc.1
	for <yocto@yoctoproject.org>; Mon, 08 Jun 2015 01:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=4AxCSlerRyzTRYjWFFgcJJE+6TzzU3EenysRBD8f/oQ=;
	b=AyZqauFyhFSSqUdlPnPcznElIMXa+dBqEzajaiECr31+T4eSN8TLlKrqxR8UvL2Wij
	LiYVGm7+zrKAUY+4XjkRnlsw835cBwO5GSyAd0ES03pGDM8Bn0IsecHM70Pxjm9CE7Gy
	R+KcXOw1lQe5py1pi8GxqtYPnROIj4uL4PA7COmubRzC3Y9RXIdAaHDFIyj5mcePwDbr
	+cMJpPd8jL7Ufpd1+mmcgIR1AHXiE3n2tDaHklALiovlXP2fet5Nm7LVRAvJsvFRH2aL
	QAW8UlR+HHPtwvdFkn6vzGmlKkZlyXDVxx3emoDdphZNUj5s9NMGOUjqBWPHAd8K+vE/
	M7pw==
X-Received: by 10.152.21.97 with SMTP id u1mr15190963lae.71.1433751387152;
	Mon, 08 Jun 2015 01:16:27 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Ren=C3=A9_Fichter?= <rene@fichter.se>
Date: Mon, 08 Jun 2015 08:16:16 +0000
Message-ID: <CA+QjDd+LY_42+9UO+zxE_x_bEa5gO9cATRjy_Ztd3t=aNXgMhw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error in reference manual - nativesdk.bbclass
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
X-List-Received-Date: Mon, 08 Jun 2015 08:16:31 -0000
Content-Type: multipart/alternative; boundary=089e0141a09a20a77c0517fd42bd

--089e0141a09a20a77c0517fd42bd
Content-Type: text/plain; charset=UTF-8

Hi,
I think I've found some non-updated writings in the reference manual
regarding the change from postfix "nativesdk" to prefix (see
section 5.2.2.3).

In section 7.78 it says:
"Create a myrecipe-nativesdk.bb recipe that inherits the nativesdk class."

And in section 9.2 Errors and Warnings (very minor though):
"non -dev/-dbg/-nativesdk package contains symlink .so: <packagename> path
'<path>' [dev-so]"

Regards,
Rene

--089e0141a09a20a77c0517fd42bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I think I&#39;ve found some non-updated writings i=
n the reference manual regarding the change from postfix &quot;nativesdk&qu=
ot; to prefix (see section=C2=A05.2.2.3).</div><div><br>In section 7.78 it =
says:<br>&quot;Create a <a href=3D"http://myrecipe-nativesdk.bb">myrecipe-n=
ativesdk.bb</a> recipe that inherits the nativesdk class.&quot;<div><br></d=
iv><div>And in section 9.2 Errors and Warnings (very minor though):<br></di=
v>&quot;non -dev/-dbg/-nativesdk package contains symlink .so: &lt;packagen=
ame&gt; path &#39;&lt;path&gt;&#39; [dev-so]&quot;<br><div><br></div></div>=
<div>Regards,</div><div>Rene</div></div>

--089e0141a09a20a77c0517fd42bd--
