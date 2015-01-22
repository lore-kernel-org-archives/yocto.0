Return-Path: <xxultz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF097E00902; Thu, 22 Jan 2015 03:41:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xxultz[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D788E0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 03:41:53 -0800 (PST)
Received: by mail-qc0-f172.google.com with SMTP id i8so720181qcq.3
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 03:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DZ6ndabIxyoVDRnXkbS7A3bS3+HwgvMxe18hs9cv7SA=;
	b=rjblRVbdkhDzejbOrnL5uKNKmaEviIeb7MoJc6jRvZ9W1n2EbgDwGf+g5sBDp2SGM7
	G5k6dmUtfPv+/IZQ2lSIhjOBKDQV6lB8Eg5OzbU2Gp3rUj0zD2gow66wo/kgkKWKG+al
	Y04PYAL7lfDQzlv9CXmNHCGPlYtP7gPRZxhmTyNOQao6Q6udnxAGPVNUNQcg54p21oP7
	nck7KjEZu+PlIjmBdQIV3ebq10NiLQaqLjzByCVWNna7eZDSCrAH3s89omXZ9QliBUhI
	1Xfn6P7/+ASIztjZ+6DTqqfFsnH+bnEKt4X8H27OVnsHFxUMhbad/n1YnEEk4MP4BmOq
	oOfw==
MIME-Version: 1.0
X-Received: by 10.224.60.66 with SMTP id o2mr1541662qah.25.1421926912003; Thu,
	22 Jan 2015 03:41:52 -0800 (PST)
Received: by 10.140.39.202 with HTTP; Thu, 22 Jan 2015 03:41:51 -0800 (PST)
Date: Thu, 22 Jan 2015 09:41:51 -0200
Message-ID: <CAMkbQegMCbT_PsfgtkL9AT3vBH=c0iXgNAkfBnUvZPUjjdn4fQ@mail.gmail.com>
From: Christian Schultz <xxultz@gmail.com>
To: yocto@yoctoproject.org
Subject: Installing a Yocto image on BeagleBone Black MMC
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
X-List-Received-Date: Thu, 22 Jan 2015 11:41:55 -0000
Content-Type: multipart/alternative; boundary=001a11c3ea847c95f5050d3c281b

--001a11c3ea847c95f5050d3c281b
Content-Type: text/plain; charset=UTF-8

Hello

I'm new to Yocto, I baked a core-image-minimal and booted it via SD Card on
my BeagleBone Black. I erased the contents on the MMC in order to boot from
SD Card.
I'm searching for instructions on how do I install or flash the MMC with
the Yocto image I created, in order to boot the image without the SD Card,
but I can't find how to do it, anyone knows where I can find such
instructions?

Thank you for any help!

--001a11c3ea847c95f5050d3c281b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>I&#39;m new to Yocto, I baked a c=
ore-image-minimal and booted it via SD Card on my BeagleBone Black. I erase=
d the contents on the MMC in order to boot from SD Card.</div><div>I&#39;m =
searching for instructions on how do I install or flash the MMC with the Yo=
cto image I created, in order to boot the image without the SD Card, but I =
can&#39;t find how to do it, anyone knows where I can find such instruction=
s?</div><div><br></div><div>Thank you for any help!</div></div>

--001a11c3ea847c95f5050d3c281b--
