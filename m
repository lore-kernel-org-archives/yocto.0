Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C426CE00953; Thu,  2 Apr 2015 12:09:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkarascybi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3F3E0094C
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 12:09:23 -0700 (PDT)
Received: by ignm3 with SMTP id m3so54311258ign.0
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 12:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ax90EtzgaJlfnylVOBOnsc10JFWcd1kFxsAyXRaH76g=;
	b=CuxJlHc2N1u3Dga59VP7yL9m5J06F/tPkciTO3qfLAPvhifW00Pa9gVUSISlU6JiEh
	lvR8JxpVqpy03AN4aiEnSj9lI0q+588DO3HmWl5xbBOpWM/KPP5cZlGEw+/upx80skkh
	i746umsWk+TNb8JfGta9CmtYRFmM2oVZLNLklyIHrMhHzAPyk9k1Qeq2CqcLiU9f4UNR
	xEXT1fV14nVXmOc0IHCN5i2ExO+oLU/qUvq1OIscEM06LPQSKmVDGLV5hUmOy5zpEYs9
	acpuquHRbVgeRbJneC+LlFH0KyHke2sXffOacAALNJFzQNIYHwg1jSSiw4L4zhlXVDEm
	sgJA==
MIME-Version: 1.0
X-Received: by 10.107.25.68 with SMTP id 65mr77238178ioz.44.1428001762767;
	Thu, 02 Apr 2015 12:09:22 -0700 (PDT)
Received: by 10.36.73.87 with HTTP; Thu, 2 Apr 2015 12:09:22 -0700 (PDT)
Date: Thu, 2 Apr 2015 15:09:22 -0400
Message-ID: <CADu_VSbVs6AT+8UCjuEeeSFKCNxLreBj-8Qd8r4RQFZjxN9avw@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Installing custom python packages
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
X-List-Received-Date: Thu, 02 Apr 2015 19:09:27 -0000
Content-Type: multipart/alternative; boundary=001a113fe548cefb490512c291ee

--001a113fe548cefb490512c291ee
Content-Type: text/plain; charset=UTF-8

How do I install a custom python package in yocto?  I've tried looking up
google but nothing comes up.  On my non-target machine I just do pip
install <package-folder>.  What do I put in my bb file?

Many Thanks

--001a113fe548cefb490512c291ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span>How do I install a custom python package in yoc=
to?<span>=C2=A0=C2=A0</span>I&#39;ve tried looking up google but nothing co=
mes up.<span>=C2=A0=C2=A0</span>On my non-target machine I just do pip inst=
all &lt;package-folder&gt;.<span>=C2=A0=C2=A0</span>What do I put in my bb =
file?<br><br></span></div><span>Many Thanks<br></span></div>

--001a113fe548cefb490512c291ee--
