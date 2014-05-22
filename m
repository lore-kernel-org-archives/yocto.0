Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C4AE00B85; Thu, 22 May 2014 03:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 314 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 03:03:39 PDT
Received: from mail-ee0-f50.google.com (unknown [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30CCEE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:03:39 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id e51so2437081eek.37
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=53vhlyCa2DCQM/gN6S0EQpD1ZW+PzUtMgVYJiA1OssE=;
	b=mwJWyvn8ZKEovyJ/NLrX2bgfDTcnDhiGYWuo9Mi80BOptaPjG39IF/86oX16il9T6R
	YavFAMxvZGmRHJsER+O6YYw9v65Eomodmb1DMT6qt7JCPXhbCVuMQVHeX55hXAyWX3OP
	Yn57mX/ROMOSfDFft8o3NMqXMw9ewrXIJd75SXT0zNzqYW8vKl4eQGuOn3sV5oyEJXQ+
	cwAxH2yiPT9uNn5T/QKcT9OmNc7uDGMB6letLUv9VtSUbGcU/dGETFKEKpvlZnqde9VR
	gyF+CJDakKGlSFh99oOSqTlvycE79m8PQu6QOD8IXQTZV0pajS5kXfkTdb+63gRToROr
	l5zw==
X-Gm-Message-State: ALoCoQnJM6M48kH235t4vGCCc6ZziGb3MsIv5PJ6ARZN1C4kYp1Rltz//j86vGdsxBsRJwzaMWxN
X-Received: by 10.14.225.65 with SMTP id y41mr12228517eep.75.1400752704596;
	Thu, 22 May 2014 02:58:24 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id 44sm18526404eer.35.2014.05.22.02.58.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 02:58:23 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 11:58:18 +0200
Message-Id: <cover.1400744551.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 0/4] Add cmake error to build failure dialog
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
X-List-Received-Date: Thu, 22 May 2014 10:03:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

when problems occured during configuring the project with CMake we
showed a messge dialog with a generic 'build failed' method. In
parallel the reason for the error was captured in the configuration
console. But as the dialog did not contain any note on the existence
of this console the user might end up with no hint on what went wrong
and how he can fix it.

To help the user fix syntax errors or other errors with CMake the
error is captured and added to the message dialog. While complete
CMake log is still available in the configuration console, the dialog
now contains all information on what went wrong, e.g.
CMake Error at CMakeLists.txt:8 (include_directoriesBOGUS):
  Unknown CMake command "include_directoriesBOGUS".

01..03: Enable logging the stderr from CMake to a console while
capturing it in a string
04: Add the reported CMake error to the configuration error dialog

Best regards,
Timo

Timo Mueller (4):
  plugins/cmake: Allow multiple targets when logging process output
  plugins/cmake: Enable separate capturing of cmake stderr
  plugins/cmake: Use generic output stream
  plugins/cmake: Add cmake error message to error dialog

 .../managedbuilder/YoctoCMakeMessages.properties   |  2 +-
 .../managedbuilder/job/ExecuteConfigureJob.java    | 12 +++++---
 .../cmake/managedbuilder/util/SystemProcess.java   | 34 ++++++++++++++++++----
 3 files changed, 38 insertions(+), 10 deletions(-)

-- 
1.9.0


