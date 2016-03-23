Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89CA7E004F1; Wed, 23 Mar 2016 08:45:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [93.174.104.90 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0053]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Mar 2016 08:45:45 PDT
Received: from smtp.tibbo.com (smtp.tibbo.com [93.174.104.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF955E00443
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 08:45:45 -0700 (PDT)
Received: (qmail 17532 invoked by uid 508); 23 Mar 2016 18:05:10 +0300
Received: from unknown (HELO ?192.168.75.150?)
	(dvorkin@tibbo.com@176.114.204.12)
	by smtp.tibbo.com with SMTP; 23 Mar 2016 18:05:10 +0300
To: yocto@yoctoproject.org
From: Dvorkin Dmitry <dvorkin@tibbo.com>
Message-ID: <56F2B897.7000208@tibbo.com>
Date: Wed, 23 Mar 2016 18:39:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.0
MIME-Version: 1.0
Subject: extra deploy for image
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
X-List-Received-Date: Wed, 23 Mar 2016 15:45:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello, guys!

I'm building the image and getting it in the .../deploy/
together with uImage, DTSes and modules (as separate files).
It's standard recipes behavior.

I need one more extra tool for the host system to build and place into 
..../deploy/
I created a recipe, added
///////////////////////////////////////
inherit deploy

do_deploy() {
}
do_deploy-native() {
  install ${S}/mytool ${DEPLOYDIR}/mytool
}
addtask deploy before do_build after do_compile
BBCLASSEXTEND = "native nativesdk"
//////////////////////////////////
into it's recipe, added

EXTRA_IMAGEDEPENDS += "mytool-native"

into myarch.conf
, build the image successfully. Image recipe (I see it) builds 
mytool-native also, but does not call deploy for it.

Do anybody knows how to deploy mytool-native together with my Linux 
image if mytool.bb is a separate recipe?

Thank you!

