Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4422E00B9C; Tue, 19 Jan 2016 23:33:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0071]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 619B0E0073D
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 23:33:33 -0800 (PST)
Received: by mail-vk0-f47.google.com with SMTP id e185so269507vkb.1
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 23:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FS8Yj2+Rgh+q4m74ZtydrsP343S6WLeLsgjlNT7/Eps=;
	b=KK2F0ScUto57Yxu2QH+vzn8czMAOeVw034wtyWbo9LjMUn3DTwnE++VhEv2xQW7qW5
	AuEGwhJOxcquU2xWGXgpMzRkSn77uBuNnzUR1QO/t6k2lIkG85cGEL82Zwa1zk0JSf69
	ygngiC7jgQJgRexd4SUf4bt5NHH0ISyswh+udFCdxerPOvhfq0m4ojS9ZwXf1rbpuXda
	xmdrwm04uZWqJurtBKyjFM+zIPi2qyQoLdMcoPy1XYfZOGXw9lybxZii7lynvFEdrQM1
	e5CTCeVk8x1JzX2eZ8GANEBYKnPRrhw/BBmNuRfy6h1RDbpwSnuNq3ZbP6FFH82pYMJO
	mG5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=FS8Yj2+Rgh+q4m74ZtydrsP343S6WLeLsgjlNT7/Eps=;
	b=WIdf6bcx5Hj/ndRQHUlc+V4ZEykz9kikMYgcQZT51OuVu2OhtrQIYdZPVRFDokFX4s
	CnbtYQBtmPA2w5Eb0UClGW9MT8NUl1EKYzf6AOhvGFXM/Pe3NeicVGeDyL5iSP9FXeq+
	1RbHoLW0StKUGVqW3vrjzzE5D2JUgoqAmWd4T6fv3w+68XQm73zl875IYSsudm6Y9kZq
	EJIcbwId2h2SCrA5faaRiR+F4ZrmmrdHO9l+PvCYnuxioctvBViGpNxFXUCAg4ywMmMS
	WVpGptAYLn5XUd5savdvQLE3vwT7Mgs+TDB5SetNBiUahCf3FbWExmd2POJfZV7U5LW0
	WQNA==
X-Gm-Message-State: ALoCoQlBiC3IoDDt2wSmmZDyFwUIZND6VLmKQNIpCQs1/96SeQa2BkxOwxC8SsAzAwYLyi7nsTjlcGczTV1tssKqD44D+RgQrQ==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr23314113vkx.81.1453275213195;
	Tue, 19 Jan 2016 23:33:33 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Tue, 19 Jan 2016 23:33:33 -0800 (PST)
Date: Wed, 20 Jan 2016 13:03:33 +0530
Message-ID: <CALLyC8Sr5oGiUvTB4X0uWJmDii4rZmcxqmM9pKQTVAAxOYfp9Q@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: when two append/inc files are there which one it will prefer
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
X-List-Received-Date: Wed, 20 Jan 2016 07:33:35 -0000
Content-Type: multipart/alternative; boundary=001a1143873ed7eff60529bf000f

--001a1143873ed7eff60529bf000f
Content-Type: text/plain; charset=UTF-8

Hi,
     This must very basic question but i want to know if i have two
.bbappend / .inc files are present in different layer. yocto prefer which
.bbappend/.inc file? from layer  priority comes in to picture.


thanks and regards
vivek

--001a1143873ed7eff60529bf000f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0This must very basic question =
but i want to know if i have two .bbappend / .inc files are present in diff=
erent layer. yocto prefer which .bbappend/.inc file? from layer =C2=A0prior=
ity comes in to picture.</div><div><br></div><div><br></div><div>thanks and=
 regards</div><div>vivek =C2=A0</div></div>

--001a1143873ed7eff60529bf000f--
