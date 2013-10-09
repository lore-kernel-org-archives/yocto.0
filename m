Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F6AE01697;
	Wed,  9 Oct 2013 01:24:21 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hj8so281249wib.1
	for <multiple recipients>; Wed, 09 Oct 2013 01:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Y10Ku8s8vYYcvHb9zevAOZUVLg6MlGSE73D1outWJx4=;
	b=bHyO4Y2bLS5wRf0ZZuhRoaP00sM3WVThADMdT6KrmumsAF9Reo7dROd8srsHCJTveO
	CEaTWppruWT23C+pI4j3Gt1l/gpVLuM+Z0CodEY2OHgmnc22DQp4lrFiK+6guaxL6gfT
	6nNUbXqNqTEPXER5rcC4w/MHim3JcV6gAJwo+JjCtyY3ilLmS+20DhNvdNQOzZuMv9Hb
	6fqiOkGTGjGQUpayBA07aE52B3KaOmiNeCelRjM9CyPT83MN/xGrBfuJleWsaLJnQyea
	aSeuuV8xyag0/vlZpA0ewqT7QkJa6Jdj2HtR3c2NCz5oz8PwlCvlCJ97X9+Q0YNuRUbG
	zlMg==
MIME-Version: 1.0
X-Received: by 10.180.84.70 with SMTP id w6mr1676918wiy.2.1381307060558; Wed,
	09 Oct 2013 01:24:20 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 9 Oct 2013 01:24:20 -0700 (PDT)
Date: Wed, 9 Oct 2013 13:54:20 +0530
Message-ID: <CABHD4K92=qtjaCzmvRV9yAMhWk_uZjz60is1UomcoWn0qz5V1A@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: Is there anything like FILES_${PN}_append??
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
X-List-Received-Date: Wed, 09 Oct 2013 08:24:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have made some changes in .bb file related to openssh but this openssh
package is shared among variuos platforms and I want these changes to
be reflected
only to specific platform.

Now for variable SRC_URI ,I can do something like SRC_URI_append_xyz where
xyz is my platform where changes should be reflected.

Now there is one more Variable I added is FILES_${PN ,Now I wanted this variable
also to be xyz specific

So is there anything  like FILES_${PN}_append exist in yocto.

Or what other way to make it platform specific.

Thanks
Amit

