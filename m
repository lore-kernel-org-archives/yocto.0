Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E5BE014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:04:09 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id jw11so323426veb.32
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4weCCs3T59jMVK75pTUQNvQiXUyBJpKFtFLpZdMtGTo=;
	b=MrctrhEh+Dst9PsVX2Ll1iRBhzSCuFFTO4JJSfa32SWFfP50HKtcaz6y3iPkYc04xT
	y6l02qWRp1pgyPyaXGZeX4iLMujkFMSThVYh8GiZZGY0Cw3vBkSGbnoR0WvOHXDOdQd/
	tBbRfBULdClGH/tRuZ6mCZcNdo4AwN8Qxz5iKW8KpoHwvS0pI2VBmco8cj1c1Q2Mqi+w
	FTm3moQdcF4PQUh4S2RjGgh/m/2ymv2VblnaE2jdiCGPv0hDVE3MiTWR8UhuB6MEuGTD
	XEkPGZ+904aBn4I2ZjzELgKNZULqggyDYzWqrcyhKxwM9vGv3AnZ954ODlO8NFgFqMzm
	3PFA==
MIME-Version: 1.0
X-Received: by 10.220.70.212 with SMTP id e20mr3096720vcj.45.1372316648841;
	Thu, 27 Jun 2013 00:04:08 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Thu, 27 Jun 2013 00:04:08 -0700 (PDT)
Date: Thu, 27 Jun 2013 09:04:08 +0200
Message-ID: <CAFMfyzLw9nOseL_zBZ8BDLOf2EqRp3rKpnN+QEdBB534q5Usvg@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: First UBI build
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
X-List-Received-Date: Thu, 27 Jun 2013 07:04:14 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8ef85fa5e504e01d5e83

--047d7b3a8ef85fa5e504e01d5e83
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I had great success and actually feel yocto with building images. Now I
want to run the image from the flash drive and trying to build a UBIFS but
I get strange errors which I didnot get when I am building a normal tar.gz
file for the SDCARD. The error is as follows... Can you guys please tell me
what is the new stuff I had to add to overcome this issue?

*| Size after prelinking 276884.*
*| Error: min. I/O unit was not specified (use -h for help)*
*| ERROR: Function failed: do_rootfs (log file is located at
/home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)
*
*ERROR: Task 7
(/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu.bb, do_rootfs) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 5188 tasks of which 4394 didn't need to be
rerun and 1 failed.*
*No currently running tasks (5187 of 5189)*
*
*
*Summary: 1 task failed:*
*  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu.bb, do_rootfs*
*Summary: There was 1 WARNING message shown.*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*

Cheers.
Sati

--047d7b3a8ef85fa5e504e01d5e83
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>I had great success and actual=
ly feel yocto with building images. Now I want to run the image from the fl=
ash drive and trying to build a UBIFS but I get strange errors which I didn=
ot get when I am building a normal tar.gz file for the SDCARD. The error is=
 as follows... Can you guys please tell me what is the new stuff I had to a=
dd to overcome this issue?</div>
<div><br></div><div><div><i>| Size after prelinking 276884.</i></div><div><=
i>| Error: min. I/O unit was not specified (use -h for help)</i></div><div>=
<i>| ERROR: Function failed: do_rootfs (log file is located at /home/damarl=
a/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/r=
ootfs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)</i></div>
<div><i>ERROR: Task 7 (/home/damarla/openYocto/poky/meta-skidata/recipes-sm=
artcpu/images/<a href=3D"http://rootfs-smartcpu.bb">rootfs-smartcpu.bb</a>,=
 do_rootfs) failed with exit code &#39;1&#39;</i></div><div><i>NOTE: Tasks =
Summary: Attempted 5188 tasks of which 4394 didn&#39;t need to be rerun and=
 1 failed.</i></div>
<div><i>No currently running tasks (5187 of 5189)</i></div><div><i><br></i>=
</div><div><i>Summary: 1 task failed:</i></div><div><i>=A0 /home/damarla/op=
enYocto/poky/meta-skidata/recipes-smartcpu/images/<a href=3D"http://rootfs-=
smartcpu.bb">rootfs-smartcpu.bb</a>, do_rootfs</i></div>
<div><i>Summary: There was 1 WARNING message shown.</i></div><div><i>Summar=
y: There was 1 ERROR message shown, returning a non-zero exit code.</i></di=
v></div><div><br></div><div>Cheers.</div><div>Sati</div></div>

--047d7b3a8ef85fa5e504e01d5e83--
