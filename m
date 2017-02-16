Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAC66E00510; Thu, 16 Feb 2017 06:58:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77968E00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:36 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id z61so1576831wrc.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=v4MCLivKRXzRnY3LLfTWsjdugmDtot0zdzb1UEB+k2k=;
	b=NtBkbONuJzoAV6spmg5pbzSg/NADc0IZacYiveIuRTzOa+Eifg7E5TzfTbGHOj63FW
	296TAoG1pSs7xqzTapVSoOK90Qlnw46ohAbECXwv0fEXegqA2fdEMVquzXK7Yno9oAb+
	/LtVCrsATmvcMfhHD/r+zKi8i6+m7Ms3DKfwhBk4Qe9FsdFExB0u9uAmHz65Y6IowrUp
	7fLKWPSfOnNPKovJUMKnT0fQuc+cnCC3eGetPLBr2F7DtVXJfLsXiTfZzVncHm06LjCX
	pyLxtE6AWVoRVDAH+WfwFZ7m2ObQoiH20OyleMggwkT7hry+DrRyczbq4TR9glVh9On+
	8EEQ==
X-Gm-Message-State: AMke39kA6UCLIbTdnaHD7b2Z11R2u+vBYGXOz5a9lqmMYGMyQVoKbY6m5sVRFjgWScEVNw==
X-Received: by 10.223.135.69 with SMTP id 5mr2841737wrz.174.1487257115658;
	Thu, 16 Feb 2017 06:58:35 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 8sm700233wmg.1.2017.02.16.06.58.34
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 06:58:34 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 14:58:27 +0000
Message-Id: <20170216145830.21766-1-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 0/3] fixes for when SWUPD_BUNDLES is undefined
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
X-List-Received-Date: Thu, 16 Feb 2017 14:58:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

The following set of patches were necessary for me to make meta-swupd
work again as we don't use SWUPD_BUNDLES.

Cheers,
Andre'


