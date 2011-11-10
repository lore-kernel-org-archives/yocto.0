Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D4C5E00307
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 18:10:26 -0800 (PST)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 09 Nov 2011 18:10:24 -0800
Received: by ggnv5 with SMTP id v5so4765343ggn.25
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 18:10:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.173.74 with SMTP id bi10mr6137125igc.4.1320891021332; Wed,
	09 Nov 2011 18:10:21 -0800 (PST)
Received: by 10.50.40.194 with HTTP; Wed, 9 Nov 2011 18:10:21 -0800 (PST)
Date: Wed, 9 Nov 2011 18:10:21 -0800
Message-ID: <CAPhnLPB2Q1wu4yv6Sp6TfyAra1n45KAqhBgwdenhNoUtdvm6sQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: Core Team Meeting Minutes: Nov 9th 2011
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
X-List-Received-Date: Thu, 10 Nov 2011 02:10:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

Core Team Meeting:
Attending: Shane, Dongxiao, Edwin, Dexuan, Ke, Lianhao, Robert,
ScottG, Saul, Beth, Jaijun
Scribe: Beth

1.0.2 Status
-----------------
We're attempting to get a clean 1.0.2 build, however this weekend we
ran into a bitbake db locking issue and we're currently running into
some libtool-native issues. (possibly undefined macro:
AM_INIT_AUTOMAKE)
Josh and Beth have been looking at this to try to get out a good
1.0.2. Beth has been able to replicate libtool-native issue on the
autobuilder and will spend some time on it tonight.

Autobuilder Update
---------------------------
- We have new ways of viewing autobuilder status
- RSS feed: http://autobuilder.yoctoproject.org:8010/rss
- Freenode IRC bot: yocto-ab-bot@#yoctobuildstatus
- maillist: yocto-builds@yoctoproject.org

1.2 Status
---------------
- Please review the Yocto Project Schedule @
https://wiki.yoctoproject.org/wiki/Yocto_1.2_Schedule
- Please update Song and Saul on status of activities by Monday AM PST
- We will be using bugzilla as the primary place to update status of features
- Put as much design info into bugzilla as appropriate (link to wiki,
if it's too large, otherwise, place it in the bug report)

ARs:
-------
- All: Please subscribe to build status updates in one of the ways
provided above and spend more time identifying/fixing failures the AB
identifies
- Dongxiao: Nov 30 meeting: Multilib demo
- When we have time: Try samba profiling on windows machine.
- When we have time: Do various profiling eliminating samba or NFS to
see where NAS performance issue lies (Samba or NFS?)
- Song: Legal review of 'Building NAS with Yocto'

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

