Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7B59E00B30; Thu,  8 May 2014 09:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE22E0073A
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:53:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id E1C6A61485
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:49:06 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQVLNLD3-xNd for <yocto@yoctoproject.org>;
	Thu,  8 May 2014 18:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id B922761958
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:02 +0200 (CEST)
Received: from linuxdev.toradex.int (unknown [46.140.72.82])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 53B506193E;
	Thu,  8 May 2014 18:40:02 +0200 (CEST)
From: stefan@agner.ch
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu,  8 May 2014 18:44:24 +0200
Message-Id: <cover.1399561605.git.stefan@agner.ch>
X-Mailer: git-send-email 1.9.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: stefan@agner.ch
Subject: [yocto-autobuilder][PATCH v1 0/4] fixes for use with Angstrom
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
X-List-Received-Date: Thu, 08 May 2014 16:53:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan@agner.ch>

Hi folks,

We plan to make use of the Yocto Autobuilder at Toradex. I successfully
deployed an installation, however since we distribute an Anstrom based
BSP I had to adjust some files. With those patches and a custom layer
configuration (not included since quite ugly) I'm able to build our BSP.

Would be good to have those changes upstream. Especially the new way to
preserve the order of builders is more generic, however maybe not yet
perfect. I needed this especially since I build some other stuff using
POBBC (plain old build bot configuration :-)).

Just as a general question: What is planned with the autobuilder in 
general? Is there an integration planned with Toaster? As far as I can
see, since the build directory is recreated each time, this is not
really possible right now. It would need adjustment to the autobuilder
to start the toaster web interface for each builder, and clean/restart
builds in a way that doesn't interfere with Toaster. Any thoughts on
this?

--
Stefan

Stefan Agner (4):
  GetDistroVersion.py support for Angstrom distro version
  README: add high level overview, fix build slave description
  master.py/botmaster.py: use builders list for builders order
  GetDeployDir.py/PublishArtifacts.py: get deploy dir from bitbake

 README                                             |  8 ++--
 README-NEW-AUTOBUILDER                             | 11 +++++
 .../site-packages/autobuilder/Autobuilder.py       | 17 ++++----
 .../autobuilder/buildsteps/GetDeployDir.py         | 47 +++++++++++++++++++++
 .../autobuilder/buildsteps/GetDistroVersion.py     |  7 +++-
 .../autobuilder/buildsteps/PublishArtifacts.py     | 48 ++++++++++++----------
 .../buildbot/process/botmaster.py                  |  3 +-
 .../buildbot/status/master.py                      | 12 +-----
 8 files changed, 106 insertions(+), 47 deletions(-)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py

-- 
1.9.0


