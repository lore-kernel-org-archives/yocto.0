Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D568FE00480; Tue, 24 Jan 2017 01:04:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BE9E0033D
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 01:04:18 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id c85so170526430wmi.1
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 01:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=6cEmuyswjFSis9Ld5lP3lvea9dGnJLQH58uBjiXNtog=;
	b=hAVB8N40ureMGL08/Ebw/dO+VGV82nDMJtTI5T0iMRkQuwpElVFPUQ/WdnMxj3LvV0
	XiUNWbXFHdox6F8ck9MdZd1yoKz2NaGdSPxAOeqN/ACShPfpXFMd5YP7EISzYudfwApP
	xDy+sADc2fOnEaHD5b/UeVqlkLFKgMMyKCoYGandaTTBhrBy+Vz7MTE/aXcOkMFWq9fu
	/MvGlb/BJp7T1/XTYzVMKmyL9IZCN+NU9xjRGlFxuJPHtvebBlfxIr7aauZcnMrxydoe
	ksj5mvZS8T9uZSjz71yCbHGuJsgghgYD9SRznLDyQh077MAs4XEjxvr95wildOUDBCxt
	lzcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6cEmuyswjFSis9Ld5lP3lvea9dGnJLQH58uBjiXNtog=;
	b=meXfHY7vGf8pczn6i4QekHJavRVZkr3uQOg5Ai34Khm7cV+zxfG3Q1o7yUrAoA7/58
	sjzx/6cf6vbawV+CRwRVdAnT9XwciJ7K2XGescSdcABU8eOGEGlqwAiOIFkoFFqQDWfa
	iLNXMzPdoSXc3gpl3xRFnztjlsQQvpTfKB46sX2mJUIY69esKWxIAy5FRWeaYP2bpO8y
	gZYQHNCvBjPKaKiGTtKyd5vXGTbiBBE4alOj4V7LOfQhDj+jsoZhu4HQfTKh3r+5/BW7
	6SFJc4eIXXx4xLJOWKzn5/5n/L6UBvCzZ4QDglRV5h5VI7Sh+WWQPK5zzw/BVoXCE1nI
	07NA==
X-Gm-Message-State: AIkVDXL5QDWFaCoLDbkCQ5LnSWO0ibaQQZKpg1lFNPleqMsxlW1JV+Jk4IgbdonuXlJ5eA==
X-Received: by 10.223.146.39 with SMTP id 36mr27916449wrj.85.1485248657867;
	Tue, 24 Jan 2017 01:04:17 -0800 (PST)
Received: from localhost.localdomain ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id q12sm8334453wmd.8.2017.01.24.01.04.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 01:04:17 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2017 10:03:30 +0100
Message-Id: <20170124090331.11228-1-freesilicon@gmail.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Tue, 24 Jan 2017 07:16:41 -0800
Subject: [PATCH 0/1] Add SSHD_CONFIG variable description
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
X-List-Received-Date: Tue, 24 Jan 2017 09:04:22 -0000

Add the SSHD_CONFIG variable description to the glossary. This variable is
introduced by the following patch series on OE-Core:

https://patchwork.openembedded.org/series/4904

David Vincent (1):
  ref-manual: New SSHD_CONFIG variable description

 documentation/ref-manual/ref-variables.xml | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

-- 
2.11.0


