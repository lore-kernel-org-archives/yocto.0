Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BFDFE00D8D; Wed, 27 Apr 2016 04:39:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.47.247.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Apr 2016 04:39:31 PDT
Received: from mailrelay3.public.one.com (mailrelay3.public.one.com
	[195.47.247.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9827AE00D84
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 04:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=j86nRU3K5EgQLptSzZzvYAAyZsoeZ7Hj4JsqPQ/rA5E=;
	b=SoyokBVNi6I/CzqsqGe6mnr8Jz+J3kOmwmW7NCqIuM2xxUITvkvS9OBcoB1IT9durdq6L9AdOh2ms
	hRBtcLhQnmEn6xd4Sz/MSTPJ/FhP7FZxoCd86S3A+g9HP8ZxRXB+0oIVgyz0Hl2tKANe1vbpQlZfs4
	AgHYfscWLaHygGOk=
X-HalOne-Cookie: 661d3160cd00575a351778746d17819357653477
X-HalOne-ID: 8e3d59a4-0c6c-11e6-a8e4-b8ca3afa9d73
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter1.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 11:38:26 +0000 (UTC)
To: yocto@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <5720A4B2.2060509@visionweeding.com>
Date: Wed, 27 Apr 2016 13:38:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Manipulating code and Building in offline environment
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
X-List-Received-Date: Wed, 27 Apr 2016 11:39:33 -0000
Content-Type: multipart/alternative;
	boundary="------------000807030800030302070706"

--------------000807030800030302070706
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello

I have 2 questions

I have finally managed to build an image like I want it.


I consists of a kernel.

The ROS framework.

And our proprietary software under git control


What I want to achieve is the following:

When online it should fetch the latest commit (or what ever branch/tag) 
from our git repo.

It should be possible to take a laptop with a fresh checkout of all the 
software, go to the field where the is NO INTERNET access, and be able 
to patch our code on the spot ,and build fresh images, for the target.

When online in our office environment all our own software is correctly 
checked out from our git repo. and build. Beautifully.....

But when offline ( I disconnect the LAN ) I continually gets errors like 
“Failure expanding variable SRCPV” on our software modules.

I have following in build/conf/local.conf


BB_GENERATE_MIRROR_TARBALLS = "1"

INHERIT += "own-mirrors"

SOURCE_MIRROR_URL = "file://${DL_DIR}"


and I experimented with BB_FETCH_PREMIRRORONLY = "1"

with no appearent effect


So question 1:

How do I achieve the offline building. ?

Is should be possible - right ?


Question 2:

Where in the tree is the checked out source code located, that bitbake 
compiles from.



Kind regards

Lars Larsen



--------------000807030800030302070706
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <p style="margin-bottom: 0in; line-height: 100%">Hello</p>
    <p style="margin-bottom: 0in; line-height: 100%">I have 2 questions</p>
    <p style="margin-bottom: 0in; line-height: 100%">I have finally
      managed to build an image like I want it.</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
      I consists of a kernel.</p>
    <p style="margin-bottom: 0in; line-height: 100%">The ROS framework.</p>
    <p style="margin-bottom: 0in; line-height: 100%">And our proprietary
      software under git control</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
      What I want to
      achieve is the following:</p>
    <p style="margin-bottom: 0in; line-height: 100%">When online it
      should fetch the latest commit (or what ever branch/tag) from our
      git
      repo.</p>
    <p style="margin-bottom: 0in; line-height: 100%">It should be
      possible to take a laptop with a fresh checkout of all the
      software,
      go to the field where the is NO INTERNET access, and be able to
      patch
      our code on the spot ,and build fresh images, for the target.</p>
    <p style="margin-bottom: 0in; line-height: 100%">When online in our
      office environment all our own software is correctly checked out
      from
      our git repo. and build. Beautifully..... </p>
    <p style="margin-bottom: 0in; line-height: 100%">But when offline (
      I
      disconnect the LAN ) I continually gets errors like “Failure
      expanding
      variable SRCPV” on our software modules.</p>
    <p style="margin-bottom: 0in; line-height: 100%">I have following in
      build/conf/local.conf</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <p style="margin-bottom: 0in; line-height: 100%">BB_GENERATE_MIRROR_TARBALLS
=
      "1"</p>
    <p style="margin-bottom: 0in; line-height: 100%">INHERIT +=
      "own-mirrors" </p>
    <p style="margin-bottom: 0in; line-height: 100%">SOURCE_MIRROR_URL =
      <a class="moz-txt-link-rfc2396E" href="file://${DL_DIR}">"file://${DL_DIR}"</a></p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <p style="margin-bottom: 0in; line-height: 100%">and I experimented
      with BB_FETCH_PREMIRRORONLY = "1"</p>
    <p style="margin-bottom: 0in; line-height: 100%">with no appearent
      effect</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <p style="margin-bottom: 0in; line-height: 100%">So question 1:</p>
    <p style="margin-bottom: 0in; line-height: 100%">How do I achieve
      the
      offline building. ? </p>
    <p style="margin-bottom: 0in; line-height: 100%">Is should be
      possible - right ?</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
      Question 2:</p>
    <p style="margin-bottom: 0in; line-height: 100%">Where in the tree
      is
      the checked out source code located, that bitbake compiles from.</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <p style="margin-bottom: 0in; line-height: 100%">Kind regards</p>
    <p style="margin-bottom: 0in; line-height: 100%">Lars Larsen</p>
    <p style="margin-bottom: 0in; line-height: 100%"><br>
    </p>
    <title></title>
    <meta name="generator" content="LibreOffice 4.2.8.2 (Linux)">
    <style type="text/css">
	<!--
		@page { margin: 0.79in }
		p { margin-bottom: 0.1in; line-height: 120% }
		a:link { so-language: zxx }
	-->
	</style>
  </body>
</html>

--------------000807030800030302070706--
