Return-Path: <daniel.kenji.morgan@gmail.com>
Received: from mail-da0-f47.google.com (mail-da0-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E552E006D2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 03:29:29 -0800 (PST)
Received: by mail-da0-f47.google.com with SMTP id s35so4200787dak.20
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 03:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:reply-to:organization:user-agent
	:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=jTw74jfvd/lG/pQxAKnCugUdCOEnKo4unvN3nwgxYKI=;
	b=GIKQpkiRL/vY9NjfCfzxQ5aIGG1WTrFPfCQnjM7CqrlirppZe/G8PV3Bjx8t+ksc28
	KtMEg2txnmn+Oi03HARKjxegI6BhzHZH9ax07JUcFYlifSWhe7O0qO4/SEgFC0sk7PFV
	/OGZJt+7UKRX4HNYZeU5M41WnKW6foGhzjYPH6ry7Sm36Wd5Ciq1A0JiKx8ZjunN2xrn
	i5AyAQlD/mZ47PNBkVzWYRr3BFxzfIyBltfcfL7yNnJLer98xY8VwOwICwma2I6DBU4p
	d9hLeYx37t7SaQoqz7wfcbAYHJcJMge2gqYvgogLWt9E2LR3v4FwAlF6yaBKo9ooYH74
	3K4Q==
X-Received: by 10.68.222.232 with SMTP id qp8mr3863240pbc.99.1359026969217;
	Thu, 24 Jan 2013 03:29:29 -0800 (PST)
Received: from [210.170.220.194] (PPPbm2.fukushima-ip.dti.ne.jp.
	[210.170.220.194])
	by mx.google.com with ESMTPS id ov4sm14724083pbb.45.2013.01.24.03.29.27
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 24 Jan 2013 03:29:28 -0800 (PST)
Message-ID: <51011B18.2070105@gmail.com>
Date: Thu, 24 Jan 2013 20:29:28 +0900
From: Daniel Kenji Morgan <daniel.kenji.morgan@gmail.com>
Organization: Daniel Kenji Morgan
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: do_package task of the kernel takes extremely long
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: daniel.kenji.morgan@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jan 2013 11:29:29 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

Hello,

I'm still fairly new to Yocto, and having some trouble with kernel
packaging taking an extremely long time.
I will try and keep details as simple as possible to explain my situation.

I am building images for the machine "imx6qsabrelite" in the
"meta-fsl-arm" BSP layer using Poky 1.3 (danny).
To make it easier to test out changes to the linux kernel source, I have
a copy of the source in a local subversion repository, which is checked
out to a local working copy.

I have created a kernel recipe to inherit "externalsrc" and set "S" to
the local working copy directory.
I have added a "configure_prepend" task to stage the build directory.
I use "bitbake core-image-minimal" to build the image.

Here is what I have found from checking the "do_package" task duration
of the kernel in the build stats:

1. Using a local working copy directory (subversion 1.6), the duration
exceeds 4000 seconds.

2. Using a local working copy directory (subversion 1.7), the duration
takes approximately 800 seconds.

3. Using the original kernel recipe which obtains the kernel source off
a Git repository from the internet, the duration takes approximately 400
seconds.

Checking the "do_package" task, it seems like all directories and
sub-directorys of the source are checked recursively in the process.
I think it's safe to say that the number of subversion administrative
directorys is affecting the "do_package" task duration.

Is there any way to make the "do_package" task ignore .svn
administrative directories?


