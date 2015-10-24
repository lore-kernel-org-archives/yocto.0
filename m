Return-Path: <s.mueller-klieser@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F04E00B53; Sat, 24 Oct 2015 08:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 584 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Oct 2015 08:28:06 PDT
Received: from root.phytec.de (mail.visioncatalog.com [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1878E00803
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 08:28:06 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 39109A001D1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 17:18:39 +0200 (CEST)
Received: from [172.16.10.21] ([172.16.10.21])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP2 HF590)
	with ESMTP id 2015102417182074-2288 ;
	Sat, 24 Oct 2015 17:18:20 +0200 
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Stefan_M=c3=bcller-Klieser?= <s.mueller-klieser@phytec.de>
Message-ID: <562BA139.60302@phytec.de>
Date: Sat, 24 Oct 2015 17:18:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP2
	HF590|December 11, 2014) at 24.10.2015 17:18:20,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP2 HF590|December 11,
	2014) at 24.10.2015 17:18:20,
	Serialize complete at 24.10.2015 17:18:20
Subject: problem with nativesdk host tools
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
X-List-Received-Date: Sat, 24 Oct 2015 15:28:09 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8; format=flowed

Dear community,

my problem: I want to provide a populate_sdk based toolchain for e.g. 
compiling a kernel. When using this sdk on a machine missing the 
ncurses-dev package, you can run "make menuconfig" through bitbake but 
not with the sdk. The sdk seems to ignore host dependencies and there 
are some bug tracker entries related to this. It does not seem to help 
to create:
recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
RDEPENDS_${PN} += "\
     nativesdk-ncurses \
     nativesdk-ncurses-dev \
"
as the corresponding changes to the include and library search path are 
not handled correctly. In meta-qt5 there is some larger effort 
undertaken resolving similar issues.
Can someone please clarify what the status concerning the host 
dependencies and the nativesdk is? Am I missing something? Is this a use 
case for the extensible sdk?

Thanks in advance!
Yours, Stefan

