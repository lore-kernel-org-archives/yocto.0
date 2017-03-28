Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85CDFE00B01; Tue, 28 Mar 2017 03:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0014]
X-Greylist: delayed 8579 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 03:33:55 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13DFBE00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 03:33:55 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue101
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0LkPhj-1cHGyQ3eX5-00cMwA
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 12:33:53 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 28 Mar 2017 11:33:53 +0100
Organization: LN Systems Limited
Message-ID: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKnq+I7F0UGz9uWSCeLzaz8ae/FuA==
X-Provags-ID: V03:K0:PqVDqv8Yd+FkJJjN6Ez4QdWA6U461BD355cvgTXNidjFYwgd2QR
	EBikTfd6UwgTFS9X9nAHfYQx0uV/hynQxWeoCsYkpcmyKcyzfFoeAA2k1uN4Hmb/2yEz4Jf
	18/EJ18cD5HR83aQD00uQAAMlka4j+M0CtkUg4KNvhtf1kZIPOMVlyrw5C1nc3+XI0wtyI7
	D3vp0/MQeE30ScM47QFtA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:FycQ2z/b6Sk=:7A9rUCjds/8c1Ozevgnnbr
	hhUJL4gU2Mi/HiSCG+pwStT9SEGmSZh8kC5tmy4lSy2tRTK6FZeT2RctWB2BWvT77dkr5Hlcw
	vAk/EwIbTW2y/gDuazGJLBY5h3HR803MXCa60XfXCJY2KeV8YNlXKuM291XJYnAND+ThFtmXh
	If1u8BoATuB7XjxXB95XNJe5W6J6encHbed3+fDy+lijmLdr4thAw9xhqtvgM/oGIvlVzIxb6
	UFWWZpiIzDr8zWwpad68E5G0zpf1yofYEpMraubbaGnE/50ul1Uwb8YUqN4afu1/TiEXo/t+z
	47Oqg+G7Bj9Ysqnb2uXjCS/6Monh665CipBkbRFofptJ1pianQX92WkP9ZAvfgouW0KmtGGJF
	Rtk7n8tMCBOhBb4thJfavX2lqapwFwhDzMqWjsJUtMEuvk4VUFnAlh8C7cxV7ZUjBGsp1FfTi
	72gd49sUB1WBFdplWcrcra+/l7czXY+GZpnqex0q1zvAUk6bjxkBAA64K+JrkVgIcqO27A7Jn
	uk7rKyLpLWMZvYlQMyfSM7yo5DM9vF69/HweDPPEk3F+NkB6C+EOZDCXWOtrwqH7TCRanPHd1
	xK2q4oXcNox2tK7RhhlrLddf1Zfe8i2ziWUcE/1oLm/elBJah0npGl8MPzjyXOhe03QBo65EW
	CQU4SyhLivvtlbYkUPCfSrGVAR972zcRf701I5H9F0cAmEoKyJsrCNbgKOr+QnLOeE2cNOakb
	rO7kn1zfnrHhEFgr
Subject: Unpack hierarchy - jethro vs. krogoth
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Mar 2017 10:33:59 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Is there a change to recipe parsing and/or variables between jethro and
krogoth?
I'm migrating from the former to the latter and have hit a patch failure.
Looking at the unpacked source, jethro has the relevant file at
    build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/
whereas krogoth has it at
    build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/driver/

Indeed, all the sources have been unpacked under an additional 'driver'
directory level .e.g.
    src/driver/*  ->  3.0.2-r0/driver/driver/
    src/config/*  ->  3.0.2-r0/driver/config/
instead of 
    src/driver/*  ->  3.0.2-r0/driver/
    src/config/*  ->  3.0.2-r0/config/


The recipe includes
SRC_URI = "file://driver/*.c \
           file://driver/*.h \
           file://Makefile \
           file://COPYING \
          "
FILESEXTRAPATHS_prepend := "${BSPDIR}/../Apps/MyDriver/src:"
S = "${WORKDIR}"

As I say, it works on jethro...!





