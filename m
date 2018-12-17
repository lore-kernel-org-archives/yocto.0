Return-Path: <qgoues@actia-pcs.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC9BCE00C1E; Mon, 17 Dec 2018 08:29:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.210.137.238 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 1802 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Dec 2018 08:29:26 PST
Received: from mail.monsoft.com (mail.monsoft.com [62.210.137.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DFA8E00B92
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 08:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=actia-pcs.fr; s=mail;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=IClMe/naJFHwYuXJ4oh8meEvBU3YV5cKnFEOU9WK6nM=;
	b=Jbhlk7d74M2zNR/RKGKdNC2eV4sWn4b3v5/2gJyrhSbTv8qoTlWg5BkXd63ktfuo3DAicMUmt0Pdf
	b8CB+6Sa2M/mQRbXirGltRPTIeknziDqs6E3liSjcQiSpDCIYAiZgAHkPAU66/KPLulgEsUeHbsck+
	SvmZods0cGL2d0M0=
X-Footer: YWN0aWEtcGNzLmZy
Received: from [192.168.0.17] ([193.248.59.28])
	(authenticated user qgoues@actia-pcs.fr)
	by mail.monsoft.com (Kerio Connect 9.2.7 patch 3) with ESMTPSA
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	for yocto@yoctoproject.org; Mon, 17 Dec 2018 16:59:21 +0100
To: Yocto Project Discussion <yocto@yoctoproject.org>
From: =?UTF-8?B?US4gR291w6hz?= <qgoues@actia-pcs.fr>
Message-ID: <2a3791ee-a3b0-2afa-4f06-c3c552636f31@actia-pcs.fr>
Date: Mon, 17 Dec 2018 16:59:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: RDEPENDS error for itstool recipe
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
X-List-Received-Date: Mon, 17 Dec 2018 16:29:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I am trying to create the recipe for the package itstool (available 
https://github.com/itstool/itstool) for Yocto.

Here is my recipe file (itstool_git.bb):

----------------------------------------------------------------------------------------------------------------------

SUMMARY = "Translate XML with PO files using W3C Internationalization 
Tag Set rules"
HOMEPAGE = "https://github.com/itstool/itstool"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=59c57b95fd7d0e9e238ebbc7ad47c5a5"
DEPENDS = ""

inherit autotools pkgconfig distro_features_check

SRCREV = "bc5724ed98eb591d4b82dff1b4b47ed77ec47eda"
SRC_URI = "git://github.com/itstool/itstool.git"

S = "${WORKDIR}/git"

RDEPENDS_${PN} = "python"

-----------------------------------------------------------------------------------------------------------------------

Unfortunately when i try to compile this package with "bitbake itstool", 
I get the following error:

ERROR: itstool-git-r0 do_package_qa: QA Issue: /usr/bin/itstool 
contained in package itstool requires tmp/hosttools/python, but no 
providers found in RDEPENDS_itstool? [file-rdeps]
ERROR: itstool-git-r0 do_package_qa: QA run found fatal errors. Please 
consider fixing them.
ERROR: itstool-git-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: 
tmp/work/corei7-64-poky-linux/itstool/git-r0/temp/log.do_package_qa.13188
ERROR: Task 
(custom-meta/recipes-devtools/itstool/itstool_git.bb:do_package_qa) 
failed with exit code '1'

Do you know how I can solve my issue ?

I am building this recipe for a processor intel core i7 x86 64-bit.

Thanks in advance

Quentin




