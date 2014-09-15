Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C6AEE00849; Mon, 15 Sep 2014 16:18:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.48 listed in list.dnswl.org]
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B6DAE0077E
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 16:18:18 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id g18so3096612oah.21
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 16:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=eAV+ZgBle1nTrjCJbSTANX8IHBtFGPxuAg/em0v4j2E=;
	b=CaBY/ix2c/GociEqWJF39XGIR/6oFOUZsp0Of68+JjWSRtGWCLUbxpa3/OB2axdVjm
	rdC5DHjYllGFhIyTQ/+FCN590gOxWSbLiGHl9KxFN8wnyyUJ/H6A6D5VfdKUz4W4Yn2F
	KIFkzCROU2PsT5GDOQ6+/MtdEZHfMx1tWLDjjqFO2drh17B0AEngDBS1RHxaV+wpIepq
	RPezpldQo0rJZy9mT+UTyP7iskl3mo1+poggVCGAhjEAzEQnwj4jxrcRt+PAQe/ABSTZ
	TVR88jDryUmR44kmuTHd+tlE7uASaxL5YZ6njCvXd5Y4r1O5yZ6JXP/DQaR6SXkK6Z/z
	Ksvg==
MIME-Version: 1.0
X-Received: by 10.60.179.200 with SMTP id di8mr4779043oec.75.1410823097109;
	Mon, 15 Sep 2014 16:18:17 -0700 (PDT)
Received: by 10.202.169.82 with HTTP; Mon, 15 Sep 2014 16:18:17 -0700 (PDT)
Date: Mon, 15 Sep 2014 16:18:17 -0700
Message-ID: <CAMSG=xWG4j-eZRwzpA+CyaiKwcvc-t18fut+-vsGBL4cLFftwQ@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Eclipse plug-in
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
X-List-Received-Date: Mon, 15 Sep 2014 23:18:24 -0000
Content-Type: multipart/alternative; boundary=047d7bd6bd248b52a6050322d914

--047d7bd6bd248b52a6050322d914
Content-Type: text/plain; charset=UTF-8

I'm having issues getting the eclipse plug-in to work.  The script that
initializes the environment gets built properly, and I am able to run
"make" from the command line. But for some reason, Eclipse seems to be
configured incorrectly.

Background:
    |--- Kepler 4.3.2 installed.
    |--- Completed all of the steps in 4.2.2.1.2 from here
<http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#adt-eclipse>
(i.e.,
I configured Eclipse)
    |--- I installed the pre-built plugin from here
<http://downloads.yoctoproject.org/releases/eclipse-plugin/1.6/kepler/>.
    |--- Because I'm using the toolchain from within the build directory, I
followed these instructions
<http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#using-the-toolchain-from-within-the-build-tree>
.

[?] - At this stage, how can I confirm that the toolchain is built
properly? I can see the environment-setup script is there, and it properly
sets the environment. Is there anything else I should see to confirm?

Current steps:
1. Source the above-referenced environment-setup script, and then in that
same shell I open eclipse.
2. Set the "Toolchain Root Location" to the build directory, just above the
tmp directory, where above-referenced script is located.
3. Set the Sysroot Location to the appropriate directory.
**I am unable to set the Target Architecture - because the box is grayed
out. I don't know why this would be the case.**

When I hit "apply" I see this error:

Specified toolchain directory does not contain a toolchain
generated with "bitbake meta-ide-support"


What am I missing? Getting this Eclipse plug-in would be immensely helpful.
I appreciate all suggestions.

--047d7bd6bd248b52a6050322d914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m having issues getting the eclipse plug-in to work.=
 =C2=A0The script that initializes the environment gets built properly, and=
 I am able to run &quot;make&quot; from the command line. But for some reas=
on, Eclipse seems to be configured incorrectly.<div><br></div><div>Backgrou=
nd:</div><div>=C2=A0 =C2=A0 |--- Kepler 4.3.2 installed.</div><div>=C2=A0 =
=C2=A0 |--- Completed all of the steps in 4.2.2.1.2 from <a href=3D"http://=
www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#adt-eclipse">here<=
/a>=C2=A0(i.e., I configured Eclipse)</div><div>=C2=A0 =C2=A0 |--- I instal=
led the pre-built plugin from <a href=3D"http://downloads.yoctoproject.org/=
releases/eclipse-plugin/1.6/kepler/">here</a>.</div><div>=C2=A0 =C2=A0 |---=
 Because I&#39;m using the toolchain from within the build directory, I fol=
lowed <a href=3D"http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual=
.html#using-the-toolchain-from-within-the-build-tree">these instructions</a=
>.</div><div><br></div><div>[?] - At this stage, how can I confirm that the=
 toolchain is built properly? I can see the environment-setup script is the=
re, and it properly sets the environment. Is there anything else I should s=
ee to confirm?</div><div><br></div><div>Current steps:</div><div>1. Source =
the above-referenced environment-setup script, and then in that same shell =
I open eclipse.</div><div>2. Set the &quot;Toolchain Root Location&quot; to=
 the build directory, just above the tmp directory, where above-referenced =
script is located.</div><div>3. Set the Sysroot Location to the appropriate=
 directory.</div><div>**I am unable to set the Target Architecture - becaus=
e the box is grayed out. I don&#39;t know why this would be the case.**</di=
v><div><br></div><div>When I hit &quot;apply&quot; I see this error:</div><=
div><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-=
size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-b=
ottom:0px;color:rgb(0,0,0);line-height:19.600000381469727px">Specified tool=
chain directory does not contain a toolchain
generated with &quot;bitbake meta-ide-support&quot;</pre></div><div><br></d=
iv><div>What am I missing? Getting this Eclipse plug-in would be immensely =
helpful. I appreciate all suggestions.</div><div><br></div><div><br></div><=
div><br></div><div><br></div></div>

--047d7bd6bd248b52a6050322d914--
