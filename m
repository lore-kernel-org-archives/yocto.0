Return-Path: <jfdavis@anuvainnovations.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BCF4E00B30; Thu, 30 Jul 2015 14:18:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A7EEE00B18
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 14:18:39 -0700 (PDT)
Received: by ykay190 with SMTP id y190so44516716yka.3
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 14:18:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=iUVfp2gcthyk/smTXShvmpDryQrDbPvV+SVSiTq8FV4=;
	b=l6TKJIlPq8urhWiP7DFw4etLUHzglvNRLCP6dsS4vdofQVGTn1Zge3DuAVOZNS++8M
	cR7KUvxLMAE3mrxU1ZS+08n3ey08/GXFCF6qD8t1Lq+a2keYiEtmt50q3oHSPKWi+jRs
	WEbop7srfbVHYeR6X7XqJU/Rjm0uAmsBdYI2AGK1Sz9TQ7Th6kOkmalzyGrqYigrH5dU
	45pe8GKTN7oy3z+NxIobGope3VZ2NaMSpUQYLcbc9H3Vs/8KCwHJyvcPi4/Q1RP7s/56
	S9349O+H+adZi9+yaP/QfjmcYZSV7w9jTF5sdP72B5JknIKdSqlr/9zwazQbQvp0VXv7
	TIdg==
X-Gm-Message-State: ALoCoQlvV7jKhPlL4ib/HtHG0mdOtIjOm4nflvkNhzXjWKZqBVnx62BMeuIMnUtJbvdSyGHw/wuA
MIME-Version: 1.0
X-Received: by 10.13.204.150 with SMTP id o144mr54191683ywd.54.1438291118472; 
	Thu, 30 Jul 2015 14:18:38 -0700 (PDT)
Received: by 10.37.44.137 with HTTP; Thu, 30 Jul 2015 14:18:38 -0700 (PDT)
Date: Thu, 30 Jul 2015 17:18:38 -0400
Message-ID: <CAPTvctUNu_z7UMuBvFvSB6YUyDueBcx3chjn5pV0YgLDf+BSvw@mail.gmail.com>
From: John Davis <jfdavis@anuvainnovations.com>
To: yocto@yoctoproject.org
Subject: beaglebone black and lcd
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
X-List-Received-Date: Thu, 30 Jul 2015 21:18:42 -0000
Content-Type: multipart/alternative; boundary=001a114e43a633731f051c1e3f40

--001a114e43a633731f051c1e3f40
Content-Type: text/plain; charset=UTF-8

Hello

What mailing list would be good for talking about beaglebone black and 4D
systems LCD? This list or the meta-ti list?

I'm new to beaglebone black and yocto. I have managed to build and deploy a
sato build but it does not recognize the lcd cape.  I don't have a clue
where to begin and I'm looking for pointers.

From what I can tell there is a tilcdc driver which shows up in dmesg
output.  This might be the driver for the lcd or it might be a driver for
hdmi.  I don't have a hdmi cable yet to see if its using the hdmi port for
its display but I suspect so.

I also don't know if the kernel is configured to use the cape.  Is there a
way to run make menuconfig equivalent on the arm kernel in yocto?

Is there any howto or guide on getting the cape working with bbone black?

--
John F. Davis
cell: 919 888 8358

--001a114e43a633731f051c1e3f40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>What mailing list would be good f=
or talking about beaglebone black and 4D systems LCD? This list or the meta=
-ti list?</div><div><br></div><div>I&#39;m new to beaglebone black and yoct=
o. I have managed to build and deploy a sato build but it does not recogniz=
e the lcd cape.=C2=A0 I don&#39;t have a clue where to begin and I&#39;m lo=
oking for pointers. =C2=A0</div><div><br></div><div>From what I can tell th=
ere is a tilcdc driver which shows up in dmesg output.=C2=A0 This might be =
the driver for the lcd or it might be a driver for hdmi.=C2=A0 I don&#39;t =
have a hdmi cable yet to see if its using the hdmi port for its display but=
 I suspect so.</div><div><br></div><div>I also don&#39;t know if the kernel=
 is configured to use the cape.=C2=A0 Is there a way to run make menuconfig=
 equivalent on the arm kernel in yocto?</div><div><br></div><div>Is there a=
ny howto or guide on getting the cape working with bbone black?</div><div><=
br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>=
<div dir=3D"ltr">--</div><div dir=3D"ltr">John F. Davis<div>cell: 919 888 8=
358</div></div></div></div></div></div>
</div></div>

--001a114e43a633731f051c1e3f40--
