Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C7E9E00CD2; Fri,  8 Sep 2017 12:57:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD18FE00B01
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 12:57:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v88JusM2022838
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Sep 2017 12:56:54 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 8 Sep 2017 12:56:53 -0700
To: Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <0ab5a9a3-d8c2-b1e0-1a54-2641427fbe86@windriver.com>
Date: Fri, 8 Sep 2017 14:56:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
Cc: Joe MacDonald <joe.macdonald@windriver.com>
Subject: [meta-selinux] Update in progress
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
X-List-Received-Date: Fri, 08 Sep 2017 19:57:03 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

I've started catching up on the past commits and trying to conform to the new
Yocto Project compatible checking scripts.  My current work in progress is
available in the "mgh/master-next" branch.

f1f0860 openssh: set ChallengeResponseAuthentication to no
24cce7b refpolicy: fix a typo in RDEPENDS
827b305 initscripts: use the 'i' option for restorecon command
eeb2c2f audit: fix the wrong packaging for auditd.service
2aadc0d audit 2.7.1 -> 2.7.6
beaaa37 attr: fix ptest failures when selinux enabled
e685cad README: Update and remove references to distros, replace w/ DISTRO_FEATURES
cb0d26c Refactor to conform to YP Compat requirements
ae9553c systemd: Remove inherit enable-selinux, obsolete

If you are interested, please try this layer (pay attention to the README file
and enabling/configuring is different then in the past).

As of my latest run, the reference policies are not working properly.  The git
based reference policy doesn't compile -- and the current version results in a
system I wasn't able to log-in to.

Help resolving this would be appreciated, and will get us closer to making this
'master' and not 'master-next'  :)

Thanks!
--Mark

