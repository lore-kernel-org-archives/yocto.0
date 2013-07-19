Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC1C2E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 15:38:39 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id ox1so3788186veb.27
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 15:38:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ArYjNQkYGcJTk9MkHLgCclCkYTANexC9UyhA4CGBe5I=;
	b=gRAfHfXi+1dkTJE8JDc16VBdjhnaiYshbKgAN9nN1ABPS0n2Sq2vA1rp2Bg/1V50Nm
	yBCJgO/9t+f+LzerQ0K9cDtGlX+eHqr99hirtI1o1f68q6pP+yVffJlMEfo63+ZLmkWP
	XVkd+GpXOzhYsvMu2JHHiAy3XnAujUhGrMU4OdbU8s70HnHfHORh3UVDIUI16Lfx2Ley
	QIsDoJH26dhBXus0F/PfyqnEpcB6wgxHzqBaahKlXUQG6St2rPdvc985bVg11Rf2IM/j
	X0dMXT29mqFsxcpXm2N2idAl/BVgc3eUuN2CXzHBqEwqFW65piKlnP7vEbJ0UndB42xG
	O7bA==
MIME-Version: 1.0
X-Received: by 10.52.66.242 with SMTP id i18mr5281345vdt.3.1374273518476; Fri,
	19 Jul 2013 15:38:38 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Fri, 19 Jul 2013 15:38:38 -0700 (PDT)
Date: Fri, 19 Jul 2013 15:38:38 -0700
Message-ID: <CAPhnLPCRRORNpdxAsFZ8foqGXH_41eOe0mrfOiUAm1g1QQi4fA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnaxeXpWxTtmR5wHOCcvX20StKnHC7mL7jghet1xwsEmFYVukWU988l02ASyMEehL6LBrJS
Subject: Where in the world is the 1.5_M2 release?
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
X-List-Received-Date: Fri, 19 Jul 2013 22:38:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We have built out and tested the 1.5 milestone 2 release and after
quite a bit of discussion have decided not to release it. I want to
spend a few moments to explain what happened with M2 and why this is
actually a good thing.

One of the things that we wanted to do early in the 1.5 time period is
upgrade the toolchain. Whenever you do a major upgrade of something
that just about everything requires, you end up exposing a lot issues.
In the case of M2 this caused quite a number of issues, most of which
have been already sorted out in master. (see
https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1
for the full details).

Specifically, this upgrade caused two very major issues:

- Two of the four core BSPs failed to boot. This was a combination of
an updated gcc not playing nice with an updated kernel. This has been
fixed.

- udev-cache failed for all poky-lsb images (and the build appliance).
This was fixed at:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=f1f5f7d3b45adb4e6d52dec11462fa658ccda1ec

With the average Yocto Project release build containing 14 machine
types, with multiple distro definitions (poky, poky-lsb, poky-tiny) we
build out a very large number of build artifacts (the average size is
about a quarter terabyte of build artifacts). With this many
artifacts, the QA task is herculean. The time needed to fix these
issues would have pushed out an rc2 spin of M2 into the M3 time
period, and this would have greatly impacted our QA effort on M3. As
we've fixed these issues in master and as M3 is quickly approaching it
made little sense to release something of limited utility.

So, while I'm a bit disappointed that we've missed this milestone,
it's actually a good thing, in that, a very vital piece of OE-Core was
upreved early enough in the 1.5 cycle so that any issues that is
caused can and will be resolved early. In the end, this will make 1.5
a better release.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

