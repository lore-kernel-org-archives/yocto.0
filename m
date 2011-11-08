Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28935E013B5
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 13:17:05 -0800 (PST)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 08 Nov 2011 13:17:04 -0800
Received: by gyh20 with SMTP id 20so1637125gyh.25
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2011 13:17:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.12.131 with SMTP id y3mr51542417igb.39.1320787023684; Tue,
	08 Nov 2011 13:17:03 -0800 (PST)
Received: by 10.50.40.194 with HTTP; Tue, 8 Nov 2011 13:17:03 -0800 (PST)
Date: Tue, 8 Nov 2011 13:17:03 -0800
Message-ID: <CAPhnLPCKxivJQtQJ23=f4Y7GmPAoHZ2FncB0KT4GUu+t-qiUtA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: New ways of keeping up with the status of the build.
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
X-List-Received-Date: Tue, 08 Nov 2011 21:17:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've implemented two new ways of keeping up with the yocto
autobuilder's build status (other than the obvious way of looking at
autobuilder.yoctoproject.org:8010 of course)

First is through the yocto-builds@yoctoproject.org email list. If you
haven't joined it yet, please do. It's in testing phase right now and
only sends out the last 20 lines of the autobuilder log on a failure
and the URL to the steps that failed.
The second is through the #yoctobuildstatus irc channel. yocto-ab-bot
is the yocto-autobuilder IRC bot which announces build events to the
channel or via PM. I'm keeping it off of #yocto to keep it from
spamming the channel but it should be relatively low traffic. Again,
this is all still in testing phase, so things may change.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

