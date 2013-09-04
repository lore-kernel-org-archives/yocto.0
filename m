Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB8F5E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 00:53:14 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id eh20so7050578obb.1
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 00:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JsqizPjkcaS6WlcfnC44Vib1jYIODOgQ9XbrwyGhwMg=;
	b=m0ug9mvHC4AGL3xOW01XGWeHy/RLW51w4kiyllB1gSYwTwODuROptnKog94q0wc5mD
	hC6JdHKqXOIQEO9THJiZU7OiZ5X32yPkevynA7Z99iiAKVhWQvlZPWxt8JRL6yC9zuE8
	F+JWP0v2KrYhAWWvkNR+JD/RF6igdAfNJ5wzO7p2+iTMJdmMUwx35hRcixRnFbHp4kFd
	pwpcHGmjhIPx35PcYdZmRlKbctO/+G2SdD4SQdt2tqrjLaoyQYn0qF6+ZNOc223DE0pZ
	CfUc+OVD3OTAUesIpuGPTZ2hNvg5MAtVBWFpO6J0nAH+6wjfROvc8PFZ+u2ppAYNthSr
	2IHA==
MIME-Version: 1.0
X-Received: by 10.182.225.162 with SMTP id rl2mr1143595obc.72.1378281193882;
	Wed, 04 Sep 2013 00:53:13 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 4 Sep 2013 00:53:13 -0700 (PDT)
Date: Wed, 4 Sep 2013 09:53:13 +0200
Message-ID: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: libtool problem?
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
X-List-Received-Date: Wed, 04 Sep 2013 07:53:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I recently discovered that our populated SDK can not properly
build much at all :(
libtool complains about .la files that have been moved and not being
able to find dito.
The rootfs builds fine however. What I did noticed was that in our .la
files we get lines like this:

dependency_libs=' =/usr/lib/libxcb.la =/usr/lib/libXau.la =/usr/lib/libXdmcp.la'

Is that '='-sign really supposed to be there? Is that why many builds
fails to properly locate the .la files?

Thanks.
Hans

