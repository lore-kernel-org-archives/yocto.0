Return-Path: <Bjoern.Stenberg@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6E09CE0027F
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 07:20:06 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.298.4;
	Thu, 23 Aug 2012 16:20:04 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4331)	id 66E0D2867CE;
	Thu, 23 Aug 2012 16:20:05 +0200 (CEST)
From: =?UTF-8?q?Bj=C3=B6rn=20Stenberg?= <bjst@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 23 Aug 2012 16:19:59 +0200
Message-ID: <1345731602-47313-1-git-send-email-bjst@enea.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: bjst@enea.com does not designate
	permitted sender hosts)
Subject: [PATCH 0/3] RFC: Package testing
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
X-List-Received-Date: Thu, 23 Aug 2012 14:20:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

This is a first set of patches implementing the package testing concept
I proposed in=20
https://lists.yoctoproject.org/pipermail/yocto/2012-June/009443.html

In summary, the proposal creates a new package group called -ptest that
contains the test suites included with many source packages, compiled to
run on target.

Packaging the test suites sometimes requires patching makefiles to allow
test tools to be built on host but ran on target. And it sometimes
requires patching and/or translation of the test output to produce a
generic output format that can be automatically parsed. I have included
an example patch for bash that does just that.

I have also included "ptest-runnner", a simple script to find and run
all installed ptests.


Bj=C3=B6rn Stenberg (3):
  Add -ptest package group
  New recipe: ptest-runner
  Enabled bash-ptest

 meta/classes/distutils-common-base.bbclass         |    5 +++-
 meta/classes/image.bbclass                         |    6 +++-
 meta/classes/package.bbclass                       |    8 ++++-
 meta/classes/task.bbclass                          |    2 +-
 meta/conf/bitbake.conf                             |   14 ++++++++-
 .../bash/bash-4.2/build-tests.patch                |   29 ++++++++++++++++=
++++
 meta/recipes-extended/bash/bash-4.2/run-ptest      |    2 +
 .../bash/bash-4.2/test-output.patch                |   19 +++++++++++++
 meta/recipes-extended/bash/bash.inc                |   18 ++++++++++++
 meta/recipes-extended/bash/bash_4.2.bb             |    5 +++-
 .../ptest-runner/files/ptest-runner                |   16 +++++++++++
 .../ptest-runner/ptest-runner_1.0.bb               |   21 ++++++++++++++
 12 files changed, 136 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-extended/bash/bash-4.2/build-tests.patch
 create mode 100644 meta/recipes-extended/bash/bash-4.2/run-ptest
 create mode 100644 meta/recipes-extended/bash/bash-4.2/test-output.patch
 create mode 100644 meta/recipes-support/ptest-runner/files/ptest-runner
 create mode 100644 meta/recipes-support/ptest-runner/ptest-runner_1.0.bb

--=20
1.7.5.4


