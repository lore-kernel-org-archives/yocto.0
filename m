Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C27DE00CAE; Mon, 22 Feb 2016 22:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6627CE00C9A
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 22:18:13 -0800 (PST)
Received: by mail-vk0-f47.google.com with SMTP id k196so153507364vka.0
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 22:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=E0RxxJ4ywnXMXMsE2DPpgGUnanTVmsPRie54Vshu7uk=;
	b=IufDr/tfx2vwm9IJjPswHJNRF1PozZBBKAKAZIvIKtzIZebg2rgutTs80RrC7znPX/
	6UXcCw77y4jJ3G5qtMQshBUCSf13lrG15cjzq7hu6Ojo6RmH9psj/qs+gSymKE7J4CEL
	hlYPz5dCMwyL+lKdjjuwbbBfhLYQROI4AUZ2eiuBjsPI06qDJtkin3kSGY+H1UKxW4kG
	1L8Nz53+NhiZ7LB5Lw/AWWAAUJbJoANu49sxX2auDY1e7qsRhRkwkohhExewQCyh3Jfs
	AS6q5cqxDfCs4n2WnDcjxcbpydty33GW48UTe6UpYDNCzhiYEfr0idQXwlmxj5m2Q/8z
	1YWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=E0RxxJ4ywnXMXMsE2DPpgGUnanTVmsPRie54Vshu7uk=;
	b=EEkJuuaOBbn6RwF80Vb6eH53xo1zu4pwhqBNQami6HvRK0YpZqEM1dYz251m4OfB4f
	zAhuA8BLKVKmEIu0qt2EoGeR4aVYkXC3LIEnUJpV9m5Iqt5StJ535Pnr1uIVxqjFstEo
	mpY2V5Vhut7JFZSGO72xbebS4Ai5W4fiYBcMSWiqGvd13/MvtcSKlJ8m4ex+iyIRlvRC
	5EhudewjR1cC1iNmyb0Z3dHaGmwz1VqhWwEsUdVYJfwKX+9NwMdsFZtNWPOaasiWbhky
	ax2SCunGgL+8a4z4DhpUqMtAU2xZtJzszaytb+Jio/f1WvfqKQmLsiFidLH2+/iBm09m
	qSeg==
X-Gm-Message-State: AG10YOQLoN0+hHNSCrpSTUoKloFOSLcEa0h6/FHzmGhWbFLdPy8xM9WcA6CAEg3qOhS6YlAYZ+zVINZB93n+zA==
MIME-Version: 1.0
X-Received: by 10.31.141.194 with SMTP id p185mr23840702vkd.57.1456208293336; 
	Mon, 22 Feb 2016 22:18:13 -0800 (PST)
Received: by 10.159.39.3 with HTTP; Mon, 22 Feb 2016 22:18:13 -0800 (PST)
Date: Tue, 23 Feb 2016 14:18:13 +0800
Message-ID: <CACjDgAP4Xv=HdLw3OD0_FQ798Scbj7JYJQXaugxJg62vpkr8wQ@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SquashFs Root with Writable OverlayFS ?
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
X-List-Received-Date: Tue, 23 Feb 2016 06:18:15 -0000
Content-Type: multipart/alternative; boundary=001a114262140b1f17052c69eab3

--001a114262140b1f17052c69eab3
Content-Type: text/plain; charset=UTF-8

Dear all,

I have read the online yocto documentation and still quite confused as to
how to go about doing this?  I am working on X86 SOC with 16GB msata SSD

1) How do I build the SquashFS?
2) Do I need to have one partition to store the SquashFS and another for
the OverlayFS
3) Is there a step by step tutorial anywhere?

Thank you for assisting.

Cheers,
Albert.

--001a114262140b1f17052c69eab3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,<div><br></div><div>I have read the online yocto =
documentation and still quite confused as to how to go about doing this?=C2=
=A0 I am working on X86 SOC with 16GB msata SSD</div><div><br></div><div>1)=
 How do I build the SquashFS?</div><div>2) Do I need to have one partition =
to store the SquashFS and another for the OverlayFS</div><div>3) Is there a=
 step by step tutorial anywhere?</div><div><br></div><div>Thank you for ass=
isting. =C2=A0</div><div><br></div><div>Cheers,</div><div>Albert.</div></di=
v>

--001a114262140b1f17052c69eab3--
