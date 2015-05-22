Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AD3E009E6; Fri, 22 May 2015 15:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB86E009CA
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:25:02 -0700 (PDT)
Received: by ieczm2 with SMTP id zm2so40972244iec.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7FMBggyiqBhSDyRBR/ZdKEUDLCJh4moyUvuTijqyPbs=;
	b=ZhYThMritTb7XuzhTONIR8L8fJBqLnHf76uoLXwgAZK1q4vFfJzhRGz6zMh5ddt9+7
	9VBGImnPbs53qh6gP0IDWlEweDCUy6TGHCvLZn+tUBguvARGvhqGpDf6uaBz638IG1Dt
	GU/wLXq7nq1iCQSsXdLkucXp6osiFehV0/eqdV3S4dirG2apYhDMc1hr79TizaSSnNXt
	eFIvdXKl8punxnpK+EDKq7cweMfB1JTfJkHX/Rp/bXiVL+Qysbdy8jRIqwm9uk6Bpb6L
	btBasNTJiB0HcMoxEzrvQlH6n2J/eWB39Y2TK6QctbejG15/cgl6w8ku72ZymYxjHTEG
	6v4Q==
X-Received: by 10.50.176.228 with SMTP id cl4mr8627655igc.2.1432333500890;
	Fri, 22 May 2015 15:25:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.134 with HTTP; Fri, 22 May 2015 15:24:30 -0700 (PDT)
In-Reply-To: <55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
	<CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
	<55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 22 May 2015 15:24:30 -0700
Message-ID: <CAK8F28nzBnuc+kSA6HTBVO_y1qd4HUafPSuo0oeOsUidvH3t6w@mail.gmail.com>
To: randy.e.witt@linux.intel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Fri, 22 May 2015 22:25:06 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, May 18, 2015 at 10:13 PM,  <randy.e.witt@linux.intel.com> wrote:
> The idea is that an sdk will comprise of a manifest(contains list of
> sstate items in the sdk) and some location that contains the items in the
> manifest. So to update the sdk you would run a command and give it the
> location of the manifest and sstate, and it would make your sdk match what
> is in the manifest.
>
> So the sstate could be hosted on a webserver, nfs, locally, etc.
Thanks Randy.

I stepped through the process of making an extensible SDK based on my
image.  Is the conf/locked-sigs.inc file the manifest you mentioned?

Unfortunately, devtool is failing for me ("ImportError: No module
named site"...looks like the SDK is missing a python library?) but it
is great to at least be able to build it and get a sense of the
contents.

I'm uploading my sstate to a server so theoretically updating would be
a process of grabbing items from this server cache into the
'sstate-cache' directory within the SDK?  If I needed a new package
not originally included in the SDK, I would do something like devtool
get opencv-dev?

Thanks for any insights.  I realize this is work-in-progress so I'm
just looking to get a sense of how things might work.

--Ash

