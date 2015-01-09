Return-Path: <javier.b.perez.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B85E00922; Fri,  9 Jan 2015 09:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 367B6E0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:07:25 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 09:07:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="438588819"
Received: from unknown (HELO jbperezh-mobl4.amr.corp.intel.com)
	([10.255.34.120])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2015 08:54:48 -0800
From: "Javier B. Perez" <javier.b.perez.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jan 2015 11:07:06 -0600
Message-Id: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.9.3
X-Mailman-Approved-At: Sun, 11 Jan 2015 22:02:59 -0800
Cc: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
Subject: [PATCH 0/4] Changes to the autobuilder's steps to select auto.conf variables and 'images' values from the force build GUI.
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
X-List-Received-Date: Fri, 09 Jan 2015 17:07:29 -0000

From: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>

With these changes in the autobuilders' steps you can select the image, 
the preferred kernel provider, the type of packages and the target machines 
of the force build GUI.
It also includes a buildset example to use these properties.

Javier B Perez Hernandez (4):
  Added the 'multiple' and 'default' options for the
    ChoiceStringParameter.
  Added support for the custom_images property of the force build GUI
  Added support in CreateAutoConf.py for GUI properties 'packages' and
    'machine'
  Example of buildset to select auto.conf variables and 'images' from
    force build GUI.

 buildset-config.examples/build-image-machine.conf  | 43 ++++++++++++++++++++++
 .../site-packages/autobuilder/Autobuilder.py       | 13 +++++--
 .../autobuilder/buildsteps/BuildImages.py          |  2 +
 .../autobuilder/buildsteps/CreateAutoConf.py       |  4 ++
 4 files changed, 59 insertions(+), 3 deletions(-)
 create mode 100644 buildset-config.examples/build-image-machine.conf

-- 
1.9.3


