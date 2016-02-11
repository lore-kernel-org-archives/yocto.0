Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7828E00C35; Thu, 11 Feb 2016 07:40:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7338FE00C1F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 07:40:02 -0800 (PST)
Received: by mail-vk0-f46.google.com with SMTP id k196so39348349vka.0
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 07:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SuxE4y02grwX1t7JzOqFKSz31cGStLn931q7y+jGrNQ=;
	b=zTcZyWqVYcBV86y0OcOZ7cPKVWEGAxXlYJNQCcMgKUdwr+Jb6LU0lTywUnxs+I3CA6
	b+BasKa9F7tJAromqTRkD+oXwsst/LK5gy9WCRKcwo7DLTPn73fI4LlAU7G5YvMzpF5F
	IueUAFg+9SzYvV/O17m/pz9UqQDdhbJQSsWoi8MMzCBpSWRx1Ze52flE5QMO/xNiY0g3
	oQVW7lunegQaU4urSafqcIiFKtZiaDg4O2J44QKy+Zqliowj7kpQH3GgwO+Zhue6DOgk
	hV2QZP4ZhNNuyXbcfUUPC1uXX5VHlal2miP/MOABmFbyfSGqpCpPnSce6raAenti0J7c
	N7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=SuxE4y02grwX1t7JzOqFKSz31cGStLn931q7y+jGrNQ=;
	b=ZEbIpocgzB9LU26Q3Da8dgZCltME3x91Tj7e1Yuf44AmQL65idVBSsdcTHC/RRuRMu
	4oQ/4bxAAXj+w9PuK5jXcd2EF0wxiI0QpOAOZ1i6LCU/Dbw2nPgTaHZrBs2BX2Er8Uef
	kh3cMl6YynwFLlKua95zpBEYk8bNbwYSLI2lTcuPsK63GHe2aZu8fRkNuB3ZpP8SstN1
	GiPP6WSnzgSnibnESYdirhyBEYnUuY26X6/xclW4XXRTOXTfTlogFeLJfajAt+/6V5rd
	tW2+ZCPHdvyPaOyN2HKsMxWxrkv9EjUxMyB3ckE6eIKf6ckgwiKxoYnPk5DymFQX4Q9m
	7q2w==
X-Gm-Message-State: AG10YOR1X0ffWAoIbdDbhZwpzfNQaz3NxJi+J3lv4IVy7Ce56KMjrGZIpcjdPeJcXvDEhhcgvdKI2ya45l4ZsQ==
MIME-Version: 1.0
X-Received: by 10.31.178.146 with SMTP id b140mr34656657vkf.108.1455205201569; 
	Thu, 11 Feb 2016 07:40:01 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Thu, 11 Feb 2016 07:40:01 -0800 (PST)
Date: Thu, 11 Feb 2016 21:10:01 +0530
Message-ID: <CALLyC8RLpNFDrr63E=+yt06RGUGVpqAzn4erwkyJ-LrHqwNOPw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to create do_populate_sysroot_append task
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
X-List-Received-Date: Thu, 11 Feb 2016 15:40:06 -0000
Content-Type: multipart/alternative; boundary=001a1144034c1d6a4a052b805d18

--001a1144034c1d6a4a052b805d18
Content-Type: text/plain; charset=UTF-8

Hi,
    I want to add some additional kernel files to sysroot directory . I
want to extend do_populate_sysroot task , I want to copy few more files in
to sysroot after do_populate_sysroot and before do_package. I tried to
create do_populate_sysroot_append() in recipe  but it is getting parsing
error . how could i add file in sysroot after populate_sysroot and before
do_package.

Thanks in advance
   Vivek

--001a1144034c1d6a4a052b805d18
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 I want to add some additional kernel=
 files to sysroot directory . I want to extend do_populate_sysroot task , I=
 want to copy few more files in to sysroot after do_populate_sysroot and be=
fore do_package. I tried to create do_populate_sysroot_append() in recipe =
=C2=A0but it is getting parsing error . how could i add file in sysroot aft=
er populate_sysroot and before do_package.</div><div><br></div><div>Thanks =
in advance</div><div>=C2=A0 =C2=A0Vivek</div></div>

--001a1144034c1d6a4a052b805d18--
