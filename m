Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D8D5E00994; Thu, 16 May 2019 04:44:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B35CEE0096F
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 04:44:25 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id m140so5674651itg.2
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 04:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7a0xb9WD8vdMk2fO0Iymr2lc/LNHi3+EsZzrZb5LJ6Q=;
	b=olhtA+GH5hG1hm8+cJSWryCI8hqWvmG0FkH79U+Xfy/FB20H5S8RYY7NmthSrJq0Wm
	oNL2FvzGPf2/jcvNvzCvsdfBGroU1LXoS8D/aDRuFuZ44zJxI8aIY5HHmJSFHLYOp6NN
	Vleg3cb3IsUgcUpmlsl6rEww9k0Pp/EAnibj23Qigt5h6vCiVGMgUcnQA3moR4l2P2jj
	jcCDfUvxuFyfDRV/SReqt/f81LB11Z3gP87+uvs8kKV6BIefCdubfF1xjjEVVF5RBbEz
	D7f6n5XqdoIeMgL0gbYzpuk7/y9GbhBYK/AJ7BGqDTP1DBlUNtLTvcYePgL+I57+lYiX
	ddGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7a0xb9WD8vdMk2fO0Iymr2lc/LNHi3+EsZzrZb5LJ6Q=;
	b=BzD663daLpZFcGfhuMRMibPpZgXhmVHkGpft1PCxQJqxzYqupVs6GpWgyxAEVu/zPA
	v5Q+qDbJ6OUa4LqXAgCMtCPkDMhm08qk8nflgpRjpRyWmqpxfxa+Q4Pr4B1HsXKPVMkI
	cFxuNqeHk5tJSwnBwZJrrWeItugQpywMKTMHRKbnmkuwsPbznftxUIGx16in4R2ImfKl
	1s2PrXaK7qPnsU/Mpw2/XJuLiPzqaqJv9g9OZDTAdaMAC3FXm7NnRNkHi8v7xjd1+ppG
	SZCe1HbZ0MA5pP+ExiDxixnmPctPdQsNuGwXxejlGqSPzb2/woQApXNd8A9Uy9RBS1uq
	/YCA==
X-Gm-Message-State: APjAAAVCY2Co0eVG/py+uy5GN3pQR2WEEwXvO0BHqyx/rNd6AS58od32
	KbDWeX3pV2MxbbIXgDFwgpoP9+CH2fUMsv3phj7TAexN
X-Google-Smtp-Source: APXvYqz8KeWkJZ0czKLby7bhU06tIji01ZToUOKtD3CGe+9eYGggrANRimCO0ZOA20SsThNRdZOyz9I1lrOTpDQQLrE=
X-Received: by 2002:a24:3342:: with SMTP id k63mr11547815itk.130.1558007064986;
	Thu, 16 May 2019 04:44:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a507:0:0:0:0:0 with HTTP; Thu, 16 May 2019 04:44:24
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 16 May 2019 21:44:24 +1000
Message-ID: <CAA=hcWSyDHVjj7HCDJUWQ8iodS9-THnKT6m4oz8vr4ihFPa4ag@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Support NAND Flash
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
X-List-Received-Date: Thu, 16 May 2019 11:44:27 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Anyone used NAND Flash PARALLEL 48TSOP? Which (defconfig) kernel
device driver needs be enabled to support it?

Thank you.

- jupiter

