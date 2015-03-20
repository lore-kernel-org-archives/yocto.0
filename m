Return-Path: <joshua.lock@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47F98E00914; Fri, 20 Mar 2015 07:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B53DDE0090F
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 07:22:22 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: joshuagl) with ESMTPSA id 69B3A60062A
From: Joshua Lock <joshua.lock@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 20 Mar 2015 14:14:52 +0000
Message-Id: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH 0/2][autobuilder] Some fixes for PublishArtifacts
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
X-List-Received-Date: Fri, 20 Mar 2015 14:22:23 -0000

When deploying an autobuilder today I had to make a couple of changes to
for variables I'd set in config/autobuilder.conf to work.

The first patch for TMP_DIR seems good enough but the second for publishing
sstate I'm more than a little wary of, mainly because you have to enable
sharing sstate in two places (which is twice as many chances it'll be
misconfigured)...

Joshua Lock (2):
  PublishArtifacts.py: respect TMP_DIR if it's set
  PublishArtifacts: enable publishing of sstate

 .../autobuilder/buildsteps/PublishArtifacts.py     | 51 ++++++++++++++--------
 1 file changed, 33 insertions(+), 18 deletions(-)

-- 
2.1.0


