Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51E09E00C43; Wed,  6 Mar 2019 08:47:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CC3E0049A
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:47:33 -0800 (PST)
Received: by mail-io1-f65.google.com with SMTP id x3so10771872ior.6
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TsTbhzjv2r4V4i4w7JrrYC7n/npzQpDlQOr6Ogl6e0c=;
	b=R20agEUe1LZpEgTFuDZr43rEiMSTbs9qDvM0SXdFILuyjd1q4ltlvTHI/W5PDpovC6
	jcoKEHVAE07ELacVm5bPdSeIbFSYUHEntNPOgSLnh0Fuogqexzo2Q0HdBzr9NN/mVbEo
	O8n5R5DbzWgSiOefjg+yz3TaPYIFqI43b3DJq5aBsAdfj65Tktt310hgn9kDaZHZPYeN
	p3B2tE+zp/AnS0CKHzXg2MLabTkkyTnaJSOkLw54Epex9ucaZUKiGjHap1Oz1+SYw2v5
	NeP8NHd0B1I1HILrIOPJhaGLuQnT/XctObglLAdrzkvtz5qln9MXOHgIED4T6OD4L1pZ
	SN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TsTbhzjv2r4V4i4w7JrrYC7n/npzQpDlQOr6Ogl6e0c=;
	b=Bq3cVhuyvb4q6BS3fDbje/FhuZQVIyI+G2BTcpGyK1WkqjhjSYPjKXfnxuk+q5UEI4
	uadNc1m9Xeo9sg0iyiTxlOqottPsvcZg2AqhGINcTXdDzQjDA2+9hd/3Ks0ceYGDtC+K
	4H3MjvwiAFImaUAMAPTuYjBhcZ/UzsZwSexGtOS1Vxs3mIw05F3eXwPYlQkssB+IgKlf
	4fJ3nL0SS8SoI9aVBZOgdfd4ky8oTookmHdMeptFsuYNskDNLTLNmgE0wABsOsegetKk
	yzi/9FtzZ+DE9nCNYSmKEATB65Y98kHG5GdqEOWBNrrogqhYE//7wPdOKRf4BmYAL5T7
	Cdrw==
X-Gm-Message-State: APjAAAXZYIs+xahaZjcQ0KxqvAsBPEjkY/jgTmq8fDQchhYjCBLgyzsq
	YkxmO4u5KyIm9ic7EcxAi4F1LzAhed0=
X-Google-Smtp-Source: APXvYqzj4bo9ZcdrHPtNbUq7hwZfSKO5Ho0R4owLJ3Mo9W5JTmsmf3VmPzqznPUyAeFm8w6UYf17tA==
X-Received: by 2002:a5e:d50b:: with SMTP id e11mr3574533iom.53.1551890852811; 
	Wed, 06 Mar 2019 08:47:32 -0800 (PST)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.116.254.195])
	by smtp.gmail.com with ESMTPSA id v14sm700227iol.61.2019.03.06.08.47.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Mar 2019 08:47:32 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Wed,  6 Mar 2019 11:47:26 -0500
Message-Id: <cover.1551890688.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/4] meta-yocto-bsp/poky: update kernel to 5.0
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
X-List-Received-Date: Wed, 06 Mar 2019 16:47:34 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

This is a follow on to my oe-core series that introduces the 5.0
kernel. Once that is merged (and all outstanding issues resolved),
these can be applied to make the default 5.0 for poky and the
reference BSPs.

The removal of 4.18 from master will follow once everything is updated.

Cheers,

Bruce

The following changes since commit bbcc844c89493841d002cddb00a537a069b278e2:

  machine: bump preferred version to 5.0 (2019-03-06 11:37:45 -0500)

are available in the Git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  meta-yocto-bsp: introduce 5.0 bbappend
  poky/kernel: make default 5.0

Kevin Hao (2):
  meta-yocto-bsp: Add the v5.0 kernel support for all the BSPs
  meta-yocto-bsp: Update the default kernel to v5.0 for the non-x86 BSPs

 meta-poky/conf/distro/poky.conf               |  2 +-
 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |  2 +-
 .../linux/linux-yocto_5.0.bbappend            | 27 +++++++++++++++++++
 5 files changed, 31 insertions(+), 4 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend

-- 
2.19.1


