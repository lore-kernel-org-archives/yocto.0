Return-Path: <kenny@understoryweather.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DC3AE00C76; Tue, 11 Jul 2017 22:23:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D58E00BD2
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 22:23:50 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id f68so3286025vkg.2
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 22:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=understoryweather-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=cBvRrdqGwNzOYMwFzAms0noOF9yEhHL9GdbkY+2NSIs=;
	b=kqzcLGw+8sqsLJOlZBwrAUb3s+syS54X+DPo3+hSIorMDh7Ar2iFSCd17qOQCQp/Yd
	0Gq13ItZOd0TKGWUL6JqKF7kamh2SWA+tes3STp6qe3x4GPSy+tZC8/Ww6AFsU7YUY/L
	ofOUfQtHzhDXPQABBVG8XSiv0v5GWy4Uo0oWCAjgWUCOoP5ei6QZqL9iolSo6FN60pIv
	f5aEr7YQHXTudBNsmwhi0zt9Clr7Gp0QP4QrbojEGfvO9L8PphXMTU3ec2b9o1gapARL
	4MHpNb1bV4/CLDawRjQ+c6vOGuPxYpVL0dpsnSgxl4xYVRYU2OMo5+y3i2U5GOMF+mMR
	pZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cBvRrdqGwNzOYMwFzAms0noOF9yEhHL9GdbkY+2NSIs=;
	b=pmXnCwR8wSwheL8iq+PJ3HPQfl+AwwOo6K47ZmgQsJX5LMKpQZc+ea56/5kjrYztDA
	WVT839PGHm5UqD9xAXtdDB2/kht07La5r9qLSBWmWdtb883tFvsF0iWPVl7YE82ZgM9a
	HXQJeVkm75RyQGlVs9CNZ/V2qJdD13VtoOTtdNniWfC6z+voCIeEmKg4f7Ibo7qzfuIW
	L0fIkEen1UwOsZaP2xqhXO0PMJLful3ySXAyWSezm+I312ozIYAr0Zy+RSSBLt6NLvSY
	CTuKrNWgnynXPgOxsM/U3PEyrm+xLXoKGT3lw3Ub/N0DJrXI7y2fHbtYFploD+BX2g07
	PhJw==
X-Gm-Message-State: AIVw112CajxUJjbQdai5H3oibN1d1B8KvJl9tHBfwjUnVKeJEwr5/PJU
	6jXbcRUQU3JeypAVEuMaWkKVtQOE3fWtdLY=
X-Received: by 10.31.152.213 with SMTP id a204mr309093vke.145.1499837029910;
	Tue, 11 Jul 2017 22:23:49 -0700 (PDT)
MIME-Version: 1.0
From: Kenny Koller <kenny@understoryweather.com>
Date: Wed, 12 Jul 2017 05:23:39 +0000
Message-ID: <CAPtqgUxdtgOZNVqRUjrGX6e-+e9Hd=zwac2-zDRUdWQSk=+8fw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Determining Load Addresses
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
X-List-Received-Date: Wed, 12 Jul 2017 05:23:52 -0000
Content-Type: multipart/alternative; boundary="001a1140eaf6639d8705541805f8"

--001a1140eaf6639d8705541805f8
Content-Type: text/plain; charset="UTF-8"

I'm trying to piece together the various load addresses used in the boot
sequence. I have built core-image-minimal for a Beaglebone. How can I
determine which load address and entry point is used when mkimage is called
for the kernel? Should I dig in to the recipe? Search some log files? I've
tried a few difference things without results.

Thanks.

--001a1140eaf6639d8705541805f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to piece together the various load addresse=
s used in the boot sequence. I have built core-image-minimal for a Beaglebo=
ne. How can I determine which load address and entry point is used when mki=
mage is called for the kernel? Should I dig in to the recipe? Search some l=
og files? I&#39;ve tried a few difference things without results.<div><br><=
/div><div>Thanks.</div></div>

--001a1140eaf6639d8705541805f8--
