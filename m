Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6283E0082E; Mon, 23 Jan 2017 06:11:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EB5EE00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:11:27 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id j18so110870965ioe.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=78nyJOyJ/Oj7rjn3EcJsV0Gb1pI9modl6I6QXe/8SHM=;
	b=aUncLKwoF9QuuQIMbCbqfzmtPbxpeyF7TpOn3SyaSzAwBHuo0562VsT8VzU8gz72fH
	zw/2ZYxm9oDCO2LywMImcfQyucPml+QN2YEwpElOUF9BC4Hw++rEw4wTbjth+D8M5Tnh
	Tk7S7Xj8QlWHF3+PCpJ9u2a3023rZhfITC7QEGwlOaRst9eHoNsiS+F6KQirWAAAxuKY
	gJPPj3eNdOenrK8IXMw1+LshcjWpV7KYVQU+MmmRaWeBdJadYKTYGxFqNtsPa6rP/XGA
	48iSvJAhBt5UIFGjIYj4VYa9m264ou1CoobV0zPCeVKNXtccCerD3Z7kBGV0RggJChWV
	R30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=78nyJOyJ/Oj7rjn3EcJsV0Gb1pI9modl6I6QXe/8SHM=;
	b=WAKAVrhEFWPY0f4RlDgAlHWqYXPPGkxu8fOZzQgvRLXqfy2EVH5V34RdBW2FLQCKGX
	QUryrUZmsXVjus8KjoUGK8hpNN2f/7rDBlV+aewr+ZmScu7woa4blS1vZSFJUbviYUIE
	/ZnZ/9P1Bn1N7VTPaw9mtfQgtro/ClOoc3SDd4Dj2940eL8UcKGYG6ilXg9OVa/JK5YM
	K4FKVErc9uqZwcb1/HIiQjs/CbFj7tQcIuPD/juH4TlPzSU1ULLXIkxE+woVqXyvqz4o
	+uln9m8ZBu9f/cbpnyGp8auWJ2yUU4jk4EzRJUXWvUR1na2/nvE76R9bfWwcqbDStT4y
	XbRA==
X-Gm-Message-State: AIkVDXIayQaJ+S3Q73/HWs7o2VRlLkn5p7/Mf7KtMssgLKKumbgQnxDZwEdH6FZauG2V1jST
X-Received: by 10.107.2.138 with SMTP id 132mr22986458ioc.67.1485180687004;
	Mon, 23 Jan 2017 06:11:27 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8FC12.dip0.t-ipconnect.de.
	[93.232.252.18]) by smtp.gmail.com with ESMTPSA id
	x197sm6462963ite.17.2017.01.23.06.11.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 23 Jan 2017 06:11:25 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 15:11:18 +0100
Message-Id: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [yocto-kernel-cache][PATCH 0/1] features: enable tpm
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
X-List-Received-Date: Mon, 23 Jan 2017 14:11:29 -0000

This was tested with the yocto-4.8 branch and linux-yocto 4.8.17 under
qemu with TPM provided by swtpm, but can and should also get merged
into the yocto-4.9 and master branches.

The feature intentionally enables all current TPM drivers. A real
production kernel should be more selective.

Patrick Ohly (1):
  meta: add TPM feature

 features/tpm/tpm.cfg | 18 ++++++++++++++++++
 features/tpm/tpm.scc |  4 ++++
 2 files changed, 22 insertions(+)
 create mode 100644 features/tpm/tpm.cfg
 create mode 100644 features/tpm/tpm.scc

base-commit: 3edb4de355873d32da9307a011adea2542bd05a7
-- 
git-series 0.9.1

