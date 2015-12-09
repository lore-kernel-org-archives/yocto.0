Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81141E00ABE; Wed,  9 Dec 2015 12:01:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
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
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35BD1E0048C
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 12:01:02 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id mv3so779530igc.0
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 12:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=LFSK3PmmiY5aVFio2MCGf78f4ctfE5cnQrmKDEDg3/w=;
	b=gtfpuyshCkrSYN3+szZDqt+O3CkyT8wGg8ahV2dOrAViqdvAhxhIk8CmxNEYY2jb34
	CRGmEEXcXJEE7qw+aL4uRExe/tJ3UHTpRHmOEPqLNYJesmOoJbTnqi2hJ1W5LWrR6Msh
	/KgaxShXcIY/4GVh7ap7hbFU2VdA91g+WkmMwVwteGOALEgpaATthjJToD3Mos0H7ULX
	702JaJOWX2WoHilVR5L7pRXXpKqIQ5OdhFZ1wX/wLr3GTAymEa7pCZvgPpiR/h+rL+gT
	9aAqZLG05vOzeVPTEsXJvSsjLNFVS72O5Q25JpFliQVEbLxVZ6aZ5iozezpcHZY80A56
	mpvg==
X-Received: by 10.50.12.98 with SMTP id x2mr29244697igb.79.1449691262001; Wed,
	09 Dec 2015 12:01:02 -0800 (PST)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 09 Dec 2015 20:00:52 +0000
Message-ID: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Trying to add a recipe for ROOT
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
X-List-Received-Date: Wed, 09 Dec 2015 20:01:04 -0000
Content-Type: multipart/alternative; boundary=089e0122ea0cb4a9d605267c8c60

--089e0122ea0cb4a9d605267c8c60
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm trying to add a recipe for ROOT (from CERN) but I'm running into
various issues with just trying to get compilers working.

Current recipe:
https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb

Current log: https://gist.github.com/kratsg/cd3184a167676eb69067

Note that the goal is to have the bare-minimum with PyROOT (enable python
support). So I'm following:
- https://root.cern.ch/building-root
- https://root.cern.ch/build-prerequisites

Thanks,

Giordon

--089e0122ea0cb4a9d605267c8c60
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m trying to add a recipe =
for ROOT (from CERN) but I&#39;m running into various issues with just tryi=
ng to get compilers working.</div><div><br></div><div>Current recipe:=C2=A0=
<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/r=
oot/root_6.04.12.bb">https://github.com/kratsg/meta-l1calo/blob/master/reci=
pes-core/root/root_6.04.12.bb</a></div><div><br></div><div>Current log:=C2=
=A0<a href=3D"https://gist.github.com/kratsg/cd3184a167676eb69067">https://=
gist.github.com/kratsg/cd3184a167676eb69067</a></div><div><br></div><div>No=
te that the goal is to have the bare-minimum with PyROOT (enable python sup=
port). So I&#39;m following:</div><div>-=C2=A0<a href=3D"https://root.cern.=
ch/building-root">https://root.cern.ch/building-root</a></div><div>-=C2=A0<=
a href=3D"https://root.cern.ch/build-prerequisites">https://root.cern.ch/bu=
ild-prerequisites</a>=C2=A0</div><div><br></div><div>Thanks,</div><div><br>=
</div><div>Giordon</div></div>

--089e0122ea0cb4a9d605267c8c60--
