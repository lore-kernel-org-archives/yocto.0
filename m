Return-Path: <lists@webconect.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7AF8E00956; Tue, 14 Jun 2016 00:37:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1056]
X-Greylist: delayed 1301 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Jun 2016 00:37:01 PDT
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5F7E007DA
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 00:37:01 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>)
	id 1bCiZC-000Nez-Gg; Tue, 14 Jun 2016 09:15:18 +0200
Received: from 77-58-230-166.dclient.hispeed.ch ([77.58.230.166]
	helo=webconect.local) by asmtp012.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>)
	id 1bCiZC-000Lge-Cl; Tue, 14 Jun 2016 09:15:18 +0200
X-Authenticated-Sender-Id: lists@webconect.ch
Date: Tue, 14 Jun 2016 09:15:18 +0200
From: Elias Diem <lists@webconect.ch>
To: yocto@yoctoproject.org
Message-ID: <20160614071518.GA14846@webconect.local>
Mail-Followup-To: yocto@yoctoproject.org,
	Urs =?utf-8?Q?F=C3=A4ssler?= <urs@bitzgi.ch>
MIME-Version: 1.0
Cc: Urs =?utf-8?Q?F=C3=A4ssler?= <urs@bitzgi.ch>
Subject: Customization for nginx
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
X-List-Received-Date: Tue, 14 Jun 2016 07:37:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline

Hi

With jethro, I used to use the following .bbappend to use
my config for nginx:

<file name="nginx_1.9.5.bbappend">
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

</file>

My nginx.conf was inside the corresponding files directory.

Since krogoth, which uses nginx 1.9.14, this does not seem 
to work any more. My config file is not used any more. The 
.bbappend file how has the name nginx_1.9.14.bbappend of 
course.

What could be the reason for this?

Or, alternatively: where can I debug this?


-- 
Greetings
Elias



