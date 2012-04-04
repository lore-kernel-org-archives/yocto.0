Return-Path: <SRS0=diF0FZ=CK=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout16.eigbox.net (bosmailout16.eigbox.net [66.96.184.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF37AE0137C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 20:49:23 -0700 (PDT)
Received: from bosmailscan11.eigbox.net ([10.20.15.11])
	by bosmailout16.eigbox.net with esmtp (Exim) id 1SFHDn-0002GF-2H
	for yocto@yoctoproject.org; Tue, 03 Apr 2012 23:49:23 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan11.eigbox.net with esmtp (Exim) id 1SFHDm-0007I0-NU
	for yocto@yoctoproject.org; Tue, 03 Apr 2012 23:49:22 -0400
Received: from bosauthsmtp15.eigbox.net ([10.20.18.15])
	by bosimpout02.eigbox.net with NO UCE
	id tfpN1i0050KWaAJ01fpNSa; Tue, 03 Apr 2012 23:49:22 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=ezw8LHFQp/lSHt//sRtX8Q==:17 a=mn2ndCrYJZwA:10 a=Na1N3YiFAQsA:10
	a=-Cc4rfkGnqMA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10
	a=_yYzlHR1iaECE4_SQPgA:9 a=Jlm9htDHZUXWCUiCglUA:7 a=wPNLvfGTeEIA:10
	a=6thTdk0GfRoQwv0zj4iWMg==:117
X-EN-OrigOutIP: 10.20.18.15
X-EN-IMPSID: tfpN1i0050KWaAJ01fpNSa
Received: from pool-108-25-202-179.atclnj.east.verizon.net ([108.25.202.179]
	helo=[192.168.1.3]) by bosauthsmtp15.eigbox.net with esmtpa (Exim)
	id 1SFHDm-00068g-FE
	for yocto@yoctoproject.org; Tue, 03 Apr 2012 23:49:22 -0400
Message-ID: <4F7BC4C0.10601@mindchasers.com>
Date: Tue, 03 Apr 2012 23:49:20 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120310 Thunderbird/11.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.202.179
X-EN-OrigHost: pool-108-25-202-179.atclnj.east.verizon.net
Subject: beta bug? MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS doesn't seem to work right...
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
X-List-Received-Date: Wed, 04 Apr 2012 03:49:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I set MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "bogus" in my local.conf.

This var is used in core-image-minimal; it's assigned to 
RRECOMMENDS_task-core-boot inside task-core-boot.bb.

Per the yocto glossary: "... the image will build if a file in this list 
is not found. "

But it doesn't build:

**********************

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'bogus' (but 
/opt/beta/yp-beta/meta/recipes-core/tasks/task-core-boot.bb RDEPENDS on 
or otherwise requires it)
NOTE: Runtime target 'bogus' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bogus']
NOTE: Runtime target 'task-core-boot' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['task-core-boot', 'bogus']
ERROR: Required build target 'core-image-minimal' has no buildable 
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal', 
'task-core-boot', 'bogus']

************************


Seems like a bug?


Note, MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS worked fine with a valid recipe.





