Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 938B2E00B72; Mon,  9 Nov 2015 04:36:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B0AAE00B05
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 04:36:53 -0800 (PST)
Received: by lbces9 with SMTP id es9so27757151lbc.2
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 04:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sdieRrqM71zmGSM5Gq0Y6VWo8C9EZVUlJJS0B3SKcPI=;
	b=zwl7wcdM0rdj97nM5JqupxCxPWP0xyYwRTKpq5jPrXwswKJPV913TVjagBTb4gibxg
	jOs1tm8XMzNLOpW1g5pLow+6sHvlzj0DpXUI3YJQ/z1TOyuATEwaQwlWmqboIUyEAvRe
	RYMoqnzVJh04hytjSqJTe4n4ALjVP7sJgS4LQHxFbIoDbcN5JD3mD0AswfHHSYnAkCrn
	wf40DTgCYKcHYtD1jqPrTsP9GcTuKLolQ/mc4qJQi1ZOwoLBxuy2Ug2gm4cLQa/4x9D5
	1rS30aMC+f4XwNPI4GwIDRTClrTJHI1bWz1GNZSRDlxvmPQaBXfkMYRWRzb2pU/CcMwc
	m0WA==
MIME-Version: 1.0
X-Received: by 10.112.159.2 with SMTP id wy2mr13877615lbb.102.1447072613003;
	Mon, 09 Nov 2015 04:36:53 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Mon, 9 Nov 2015 04:36:52 -0800 (PST)
Date: Mon, 9 Nov 2015 12:36:52 +0000
Message-ID: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 12:36:55 -0000
Content-Type: multipart/alternative; boundary=001a11c240d00ff91005241ad95d

--001a11c240d00ff91005241ad95d
Content-Type: text/plain; charset=UTF-8

Hi,

binutils is failing to compile.  I'm using tip of fido branch.  Error
message is:

|
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:
In function 'fibheap_replace_key_data':
|
/home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:38:24:
error: 'LONG_MIN' undeclared (first use in this function)
|  #define FIBHEAPKEY_MIN LONG_MIN

I've tracked it down to the fact that libiberty is the only component that
doesn't define HAVE_LIMITS in config.h, so I assume this part of the
configure is failing for some reason.

Anyone else seen this, or have an idea on how to fix this?

Cheers,
Martin.

--001a11c240d00ff91005241ad95d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>binutils is failing t=
o compile.=C2=A0 I&#39;m using tip of fido branch.=C2=A0 Error message is:<=
br><br>| /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/=
cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiber=
ty/fibheap.c: In function &#39;fibheap_replace_key_data&#39;:<br>| /home/ma=
rtint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-ne=
on-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:38:2=
4: error: &#39;LONG_MIN&#39; undeclared (first use in this function)<br>|=
=C2=A0 #define FIBHEAPKEY_MIN LONG_MIN<br><br>I&#39;ve tracked it down to t=
he fact that libiberty is the only component that doesn&#39;t define HAVE_L=
IMITS in config.h, so I assume this part of the configure is failing for so=
me reason.<br><br></div>Anyone else seen this, or have an idea on how to fi=
x this?<br><br></div>Cheers,<br></div>Martin.<br><div><div><div><br><br><br=
><br></div></div></div></div>

--001a11c240d00ff91005241ad95d--
