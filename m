Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8155E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 00:13:05 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AD0CC40047;
	Tue, 11 Dec 2012 08:37:04 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 09:13:00 +0100
Message-Id: <cover.1355213278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 0/3][eclipse-poky] Add option to allow building from local repo
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
X-List-Received-Date: Tue, 11 Dec 2012 08:13:06 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

as Paul requested I've signed-off the patches. Other than that it's still
the rebased patch series from PATCHv2.

Best regards,
	 Timo

From the original cover letter:
<snip>
if you build eclipse-poky with the provided build script it will always use
the upstream version of the IDE.
During development I wanted to use my local repository to make sure that my
changes don't break the build system. Therefor I added an option to the build
script to allow building from the local eclipse-poky git repository.
</snip>

Timo Mueller (3):
  scripts/build.sh: Added function to use the local repository for
    building
  scripts/build.sh: Added help option to the cmdline
  script/build.sh: Added option to enable building from local
    repository.

 scripts/build.sh |   30 ++++++++++++++++++++++++++----
 1 files changed, 26 insertions(+), 4 deletions(-)

-- 
1.7.7.6


