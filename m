Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 241A9E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 12:25:54 -0800 (PST)
Received: by mail-gh0-f176.google.com with SMTP id g10so931599ghb.35
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 12:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=1GuzrlNFHO0s3f/n11tiv0xlF2xyMFSp27W2Gtf5tPs=;
	b=VOLEugK23MDget1S9CRK7NoF9i+pFJ2SnHDDdOaUw6XVAyj0eVvHYWFVmDaqFxVQtZ
	kiPBYt4eFKdrhGuHDlT5u2Cpr7DvDrEANj6bVzuUgFQTI+uG60X5gRcciK1iTmW9Gpot
	3jh5pvCLDr1Jn7UIAVMLDuEmUUr+OKeN87VY6kpdjvHf+gUpvJ6+FxAe6ppLYNIJwm3Q
	fw8DvOUgA6xKAlWCKzq0MuYKobqGy3VpfZWjdYWziBDPEKLxCqWTINLxALINLCJn6xzY
	WXFdxAp7ld3NwTaztZexUykU5rqTzRU1HKW5/ANm02ByaU9qKRejVNaOeeuu1NJxJlZF
	5YBw==
Received: by 10.236.131.138 with SMTP id m10mr22735035yhi.101.1354739153458;
	Wed, 05 Dec 2012 12:25:53 -0800 (PST)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id i26sm6227490yhc.10.2012.12.05.12.25.51
	(version=SSLv3 cipher=OTHER); Wed, 05 Dec 2012 12:25:52 -0800 (PST)
Message-ID: <50BFADD0.20606@gmail.com>
Date: Wed, 05 Dec 2012 15:25:52 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: problems adding extra packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Dec 2012 20:25:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In the past on denzil, I'd get images working then start adding specific 
packages like this:

LICENSE_FLAGS_WHITELIST = "commercial"
CORE_IMAGE_EXTRA_INSTALL ?= "gst-fluendo-mp3"
CORE_IMAGE_EXTRA_INSTALL ?= "web-webkit"
CORE_IMAGE_EXTRA_INSTALL ?= "myvideos"
CORE_IMAGE_EXTRA_INSTALL ?= "myaudios"

Today, I got chiefriver bsp working on my hardware and then wanted to 
add my video and audio files into the image along with extra software.  
It didn't get added and the image is basically the same size. No errors 
on just bitbaking again.  I was trying to avoid deleting tmp and 
starting over again.  Has something changed with Danny?

Along with the CORE_IMAGE_EXTRA_INSTALL additions, I added my layer in 
bblayer.conf to pick up myvideos, etc.

Jim A


