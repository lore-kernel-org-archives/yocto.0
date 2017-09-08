Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E3CE00CD2; Fri,  8 Sep 2017 13:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79C2E00B01
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 13:01:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v88K1irK004469
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 8 Sep 2017 13:01:44 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 8 Sep 2017 13:01:43 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Organization: Wind River Systems
Message-ID: <05185903-5cae-aef9-af73-2d498a3208be@windriver.com>
Date: Fri, 8 Sep 2017 15:01:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
Subject: [meta-selinux] Update in progress [resend]
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
X-List-Received-Date: Fri, 08 Sep 2017 20:01:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

(resend, sorry for the noise, I used Joe's old email addr.)

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

