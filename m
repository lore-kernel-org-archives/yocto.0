Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0662E00A18; Thu,  2 Mar 2017 22:55:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F434E0094C
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 22:55:08 -0800 (PST)
Received: by mail-io0-f171.google.com with SMTP id l7so69193068ioe.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 22:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=8kFQ8Lo0hT98e/FndMpsbZImpkKdTSSuEAV1Y+OyaSs=;
	b=GVBUlvHJrV5yTVKQjgrmGB6yqyPQdQKRKUq9faYWoZh+ZMx5chPr5H0Wijhhx4FMlb
	qr2XxxUvnXvffXyt7/SZGCnALLmXWc6dzEUG9ez+ZCYZP3p1j81hXYK48WTuaWqwcZhe
	JS0PYqoTycAaKUZHUUe59TLmW0r82CucbX4dT9Mb1MynTLfAWwO/EtY7H1rYUJ411Sda
	7ONosfyXeuseG86wavEhnxvuoXIxL4iIpRCJOBtamGDTlx7xjUtqm+9np6S9GFIFKwHu
	kMt2bg9SN2+3C9M+beuvkuAtiQAeDmk9NwskNdkNZ4g4FjzAxIBzMF2spg5T7pP7T3po
	eFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=8kFQ8Lo0hT98e/FndMpsbZImpkKdTSSuEAV1Y+OyaSs=;
	b=f/DRWw4FnhDrKfmbH4L6LJRZrEWd8KdAzxq/uLh5C3Fl9UAOsD3a4V3Nm1N5fqwNvb
	hiRHAxsKUF3B68OjP9SZ+esmho2ZSpdMP7BgtV2vMLKeWSqlh0S5fb5myNx+GeYyS6rW
	MOkjvpjwoIL3nYA1yxMH16902Ni1PpO43bJvMAn+QEfS5bXVnJkY902/q68Dt59Jdjus
	u6zzDq4ZPonT9OvBsUuswjbwYtsP25QqxT4H4VoNilTmeqXSDiq9fnDNH3XFrv5MNbsf
	SATJk1Te7AbyARfQefMlwIx76mqNT43k/gfsMC2GSJZeNVLdahSND111zdpyeSDwF45N
	shaA==
X-Gm-Message-State: AMke39mMbZP3r9tu6Fh3mSIzOvQFs2diAOYyUUpbUAI5ix6nnmV5gSNgcxoS/8cMuDvi7Q==
X-Received: by 10.107.57.86 with SMTP id g83mr1418048ioa.123.1488524108197;
	Thu, 02 Mar 2017 22:55:08 -0800 (PST)
Received: from linux-uys3.suse ([45.72.250.10])
	by smtp.gmail.com with ESMTPSA id e79sm586630ite.23.2017.03.02.22.55.06
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Mar 2017 22:55:07 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Mar 2017 01:54:53 -0500
Message-Id: <20170303065454.27692-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH v5 0/1] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Fri, 03 Mar 2017 06:55:11 -0000

Here is my v5 of this patch, based on feedback from earlier reviews.

Changes since v4:
	- in addition to generating a -gpt.img (and creating a simpler symlink
	  to it) also create a -boot.img in the deploy directory and create a
	  simpler symlink to it for each build

Changes since v3:
        - I sent the wrong file when emailing v3


Changes since v2:
        - change commit message and call the "old" layout "legacy parameter"
          format instead of "rk-boot" format
        - rename generate_rk3288_image() to generate_rk3288_loader1_image()
        - leave any older gpt image files (with datestamp) in the deploy
          directory but just move the symlink so it always points to the most
          recent

        - leave size variable as GPTIMG_SIZE
        - leave the boot image name as BOOT_IMG since trying to add ${MACHINE}
          and ${DATETIME} causes the build to fail with "the basehash value
          changed... metadata is not deterministic...". I think what was
          wanted was that older gpt image files be left around, and this new
          logic does that in a different way and maintains a symlink to the
          latest

Changes since v1:
        - break large commits into smaller ones
        - rename the class and improve the commit message

Trevor Woerner (1):
  classes: rockchip-gpt-img: add

 classes/rockchip-gpt-img.bbclass | 143 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100644 classes/rockchip-gpt-img.bbclass

-- 
2.12.0.rc1.48.g076c053


