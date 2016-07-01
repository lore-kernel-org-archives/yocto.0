Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A26E00948; Fri,  1 Jul 2016 08:29:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BFCEE007E4
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 08:29:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u61FTApj032630
	for <yocto@yoctoproject.org>; Fri, 1 Jul 2016 16:29:10 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id WZWQIRbSK1ab for <yocto@yoctoproject.org>;
	Fri,  1 Jul 2016 16:29:10 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u61FT6ru032625
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 1 Jul 2016 16:29:07 +0100
Message-ID: <1467386946.8590.178.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Fri, 01 Jul 2016 16:29:06 +0100
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Yocto Project Status WW27
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
X-List-Received-Date: Fri, 01 Jul 2016 15:29:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Current Dev Position: YP 2.2 M2
Next Deadline: YP 2.2 M2 cut off would be: 7/18/16

SWAT team rotation: Armin -> Bill
(https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team)

Key Status/Updates:

* QA test report for 2.2 M1 is looking reasonable. There are some issues in toaster, 
  wic and eclipse but nothing that looks like it would block the milestone.

* The release is very “front loaded” with many things being targeted for M1, 
  then slipping to M2 and not many things targeted for M2/M3. We need to 
  get better at load balancing bugs.

Key YP 2.2 Dates:

YP 2.2 M1 release would be: 6/24/16
YP 2.2 M2 cut off would be: 7/18/16
YP 2.2 M2 release would be: 7/29/16
YP 2.2 M3 cut off would be: 8/29/16
YP 2.2 M3 release would be: 9/9/16
YP 2.2 M4 cut off would be: 10/3/16
YP 2.2 M4 release would be: 10/28/16

Tracking Metrics:    WDD 2718 (last week 2745)
(https://wiki.yoctoproject.org/charts/combo.html)

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

[If anyone has suggestions for other information you’d like to see on this weekly status update, let us know!]

