Return-Path: <ed.laird@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1E50E0080A; Mon, 14 Nov 2016 13:39:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ed.laird[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84AC1E007D3
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 13:39:03 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id q130so112928270qke.1
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 13:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=gulqoVkT/2t9FgtbU5f5ehsuXYiHtRk2XwwPjgHmeuk=;
	b=EuPY+ZppHLzdhAnwmWf3aE0zzXxK4NyntOr08LamEcm4wMdVhkXISE0NpWFJClPmPS
	rfuY59Ikg+Af3czWPeLuw/77LEucwmggHl8sga+yOA0umTBuLxMhgYtSzTrzqHWIZIYE
	2SMKyTcSCnOlAP8Qmnf/9qii+81cD9zW2aGNOpAf66HLVr6QrORfHiwTqqJmns01FI1B
	Yl5PIE/uUvXsbFQ4o/8UupLXXJblD1jyHsvRbPueVKooRig5NAtzqHPeN2LAJ6LxFoSn
	BnoF1fQyetY/6qkwY55jdSUWaMb2BaoV55o5fbPTkxf+jns9lX+abWhBxpp0tqOQESJk
	2Fow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gulqoVkT/2t9FgtbU5f5ehsuXYiHtRk2XwwPjgHmeuk=;
	b=La7PBfchRtB0yosu8LlimdkgsGuWiGbMEEtF+QzpYNvScoASKUI60q6+fDhXRPOrDZ
	5MrJicomnDk2ldzdx01oKTMOs4HGth8nwvSfB/DUI42DGrTrQExl/KWgQMQO6v2pbVL6
	AvmRBDZIRFUbjDd8I6XYYO+EYyI9TJzxZrbOgGnj0XvhTg1WSwWj706GwObQHhLvORXi
	z3yUkStpLb/YcDAcYKc3fLysYj6e8/vpUUJ5bo59BqsofcqVvOSqqI7W0+7d/IdeCHG1
	jYLcybIPSSUHH7mGIfcp4n0QDPsmMWp1HgF/ZDGt7SjllCpobqnVcalLBqJaYXX1vg4Z
	LarQ==
X-Gm-Message-State: ABUngvc/V1ltwdujChAw4/FAa48gOZfMrchH61/YzaP4BoRrr4N4a2E6vFw1rD24FgrIYa0eKbAkksjnG/nQDg==
X-Received: by 10.55.174.135 with SMTP id x129mr20685950qke.133.1479159542293; 
	Mon, 14 Nov 2016 13:39:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.44.67 with HTTP; Mon, 14 Nov 2016 13:38:41 -0800 (PST)
From: Ed <ed.laird@gmail.com>
Date: Mon, 14 Nov 2016 16:38:41 -0500
Message-ID: <CADVcLZKghNEXi+XvdOpRJ7_EKhWAAg_UTXGnbAf5fMgBpQ9qmQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Out-of-tree module build against yocto kernel
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
X-List-Received-Date: Mon, 14 Nov 2016 21:39:05 -0000
Content-Type: multipart/alternative; boundary=94eb2c070d6215a7d4054149ab90

--94eb2c070d6215a7d4054149ab90
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I want to build an out-of-tree kernel module against my Yocto-generated
kernel (cross-compiled, not on the target).
I know that I can modify the hello-mod recipe to build it alongside the
Yocto image, but I'd strongly prefer not to; it's not a workflow that's
conducive to rapid iteration during development & test.

I've tried building against the kernel in
<TMP>/work-shared/<MACHINE>/kernel-source, to no avail. While I don't
understand everytihng that's going on, I suspect it has something to do
with how Yocto organizes kernel build artifacts (autoconf headers,
Module.symvers, conf stuff).

I've also tried building a SDK. By default that didn't seem to include
kernel headers, so I added kernel-devsrc to TOOLCHAIN_TARGET_TASK in
populate_sdk_base.bbclass. That seemed to get me kernel source w/ the SDK,
but I still haven't been able to successfully build against it.

A great deal of my troubleshooting has been driven by the a 2013 discussion
on this list that appeared to end inconclusively:
https://lists.yoctoproject.org/pipermail/yocto/2013-January/011564.html

Am I going about this in the right way? Am I just missing some
configuration/setup steps, or am I going about this all wrong? Everything
I'm trying feels clunky and hack-ish.

--=20
Ed Laird
On two occasions I have been asked,=E2=80=94"Pray, Mr. Babbage, if you put =
into the
machine wrong figures, will the right answers come out?" ... I am not able
rightly to apprehend the kind of confusion of ideas that could provoke such
a question.
=E2=80=94Charles Babbage, Passages from the Life of a Philosopher
<http://en.wikipedia.org/wiki/Charles_Babbage>

--94eb2c070d6215a7d4054149ab90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to build an out-of-tree kernel module against my Yo=
cto-generated kernel (cross-compiled, not on the target).<div>I know that I=
 can modify the hello-mod recipe to build it alongside the Yocto image, but=
 I&#39;d strongly prefer not to; it&#39;s not a workflow that&#39;s conduci=
ve to rapid iteration during development &amp; test.</div><div><br></div><d=
iv>I&#39;ve tried building against the kernel in &lt;TMP&gt;/work-shared/&l=
t;MACHINE&gt;/kernel-source, to no avail. While I don&#39;t understand ever=
ytihng that&#39;s going on, I suspect it has something to do with how Yocto=
 organizes kernel build artifacts (autoconf headers, Module.symvers, conf s=
tuff).</div><div><br></div><div>I&#39;ve also tried building a SDK. By defa=
ult that didn&#39;t seem to include kernel headers, so I added kernel-devsr=
c to TOOLCHAIN_TARGET_TASK in populate_sdk_base.bbclass. That seemed to get=
 me kernel source w/ the SDK, but I still haven&#39;t been able to successf=
ully build against it.</div><div><br></div><div>A great deal of my troubles=
hooting has been driven by the a 2013 discussion on this list that appeared=
 to end inconclusively:</div><div><a href=3D"https://lists.yoctoproject.org=
/pipermail/yocto/2013-January/011564.html">https://lists.yoctoproject.org/p=
ipermail/yocto/2013-January/011564.html</a></div><div><br></div><div>Am I g=
oing about this in the right way? Am I just missing some configuration/setu=
p steps, or am I going about this all wrong? Everything I&#39;m trying feel=
s clunky and hack-ish.<br clear=3D"all"><div><br></div>-- <br><div class=3D=
"gmail_signature">Ed Laird<br>On two occasions I have been asked,=E2=80=94&=
quot;Pray, Mr. Babbage, if you put into the machine wrong figures, will the=
 right answers come out?&quot; ... I am not able rightly to apprehend the k=
ind of confusion of ideas that could provoke such a question.<br>=E2=80=94C=
harles Babbage,=C2=A0Passages from the Life of a Philosopher<a href=3D"http=
://en.wikipedia.org/wiki/Charles_Babbage" title=3D"Charles Babbage" target=
=3D"_blank"></a></div>
</div></div>

--94eb2c070d6215a7d4054149ab90--
