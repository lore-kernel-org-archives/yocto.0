Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9987CE007A0; Mon, 30 Mar 2015 10:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 765DCE00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 10:10:54 -0700 (PDT)
Received: by pddn5 with SMTP id n5so65496416pdd.2
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 10:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=XtlpoOA0RZhzQoUQlcjgyoOWVb7k7pDuUnpcYlC46uw=;
	b=QLRbod4p4mk0T0a+OV0FzjSrj8nl87M/x3XxEXI5JXTvjWWusiXT6NTua8SUA6bp5L
	s8PuwybS+//yV4cGwemgtIMaWZfWSRu/Ri+IxvIAP/tHqi5yYbnU8A1IgnwCqM1Htsel
	ANCxnve5WTNmOmkHiAKN9lPzz/3fCbUzjMANmGmbaHR/DJH0RMjm/K+kfI9rxO6jZTRN
	q9/KpOMNT6s/jRXuWfNlbO7bcdNAMatYC38HWBy2c46CdHGJQ/keBv8n0ByWpXd0LHrh
	UuBfiMTZjL8CXTzrFYcOSRb8FEDWvlDnm3jsxWHEvSH3MErSxF9+xAjjXuvWZHwmN90x
	yZoQ==
X-Gm-Message-State: ALoCoQnjc3djF6xuwljgZHznXabzzqrJie4VKzFP7A4N4Pc5dwllQAGNyCGATUtk+soewf1b33qO
X-Received: by 10.68.114.194 with SMTP id ji2mr60853198pbb.132.1427735454397; 
	Mon, 30 Mar 2015 10:10:54 -0700 (PDT)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id
	fk4sm11240504pbb.80.2015.03.30.10.10.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Mar 2015 10:10:53 -0700 (PDT)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 4E14F56153B; Mon, 30 Mar 2015 16:43:53 +0100 (BST)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Mar 2015 16:43:51 +0100
Message-Id: <1427730231-16511-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [autobuilder 1/1] UploadToasterEventlog: fix bitbake eventlog file path
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
X-List-Received-Date: Mon, 30 Mar 2015 17:10:58 -0000

From: Alexandru Damian <alexandru.damian@intel.com>

The UploadToasterEventlog looks the file up in the wrong
directory, and this patch fixes that.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 .../site-packages/autobuilder/buildsteps/UploadToasterEventlog.py       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
index a1e480f..81d8ed8 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
@@ -36,7 +36,7 @@ class UploadToasterEventlog(ShellCommand):
         self.layerversion_core = self.getProperty("layerversion_core")
         self.filepath=os.path.join(os.path.join(
                             self.workerdir, self.buildername),
-                            "build/bitbake_eventlog.json")
+                            "build/build/bitbake_eventlog.json")
 
         if int(self.layerversion_core) < 4:
             self.command = "echo 'Skipping Step.'"
-- 
1.9.1


