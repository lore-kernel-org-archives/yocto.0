Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EB64E00D61; Fri, 31 May 2019 05:21:42 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76610E00D52
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 05:21:41 -0700 (PDT)
Received: by mail-it1-f171.google.com with SMTP id m3so15356307itl.1
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 05:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8MsC/tFe7K16NzLkQveN7LbbvARrpyLO1q4ja6Lw3NU=;
	b=QvP/5kD3hFs04FloMWfYoeR+1/WXvaUliBPmeJnEDG9yivkqxPrNkxLlqdTLPzFF2G
	MvG5ZQItEi/Q6+ryi5MGxbakJ82rykzruMObu1V8r5tO2WaCwiPhwJhh0vCJMGN7+vhK
	WcobJQod4IjzhZLCnZFaq0O+CAzmwSXEqatiWIEh5ptGtDcsiWcz3uPX5q91lVGTEJjz
	tzAagB8/Fkd4qowEnYGvOcormMJxKeTsmWLCRdzAYrzvfy6noS+3ZCGTFoTujlUtA5Jn
	5ogKzSR8unRQ5Z9OrygZCPIM0JLGzSKfTB3a82fhCAugabPAtwApGk62SCQff0JifrGn
	Wqvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8MsC/tFe7K16NzLkQveN7LbbvARrpyLO1q4ja6Lw3NU=;
	b=asWlKkRNw1BtuSY/494joLbyKS8FGs640KCUyOGMYHps2j0rH2sUKLcl1D3p8gOOVc
	fM4UPq8B5anFZxP7cqePuAO4O71gPL+OjE1linM2BRUecrEXtVGroEyfUUbnC2TNfYGE
	5usk25qHfoVX81Jzb5C5bUGfeB4D9rHTmBsWalhC+XHBsPnfnVClC86DnzvwpMhKAgUb
	wydgLvvd/BXu0MdNeRbKDwFul06GflgxPsvM1ixTPljUlO04LZLSDMAW0oKjKCe2xoKL
	wu4QOFlTvQ1ejQzHOHRFQUItPf6na/LTyjH+bBsSarttJMdcR12NDuMafi1a5Mrx2Qik
	Ds5Q==
X-Gm-Message-State: APjAAAWzo+73wn/wlRCPkIZmflkn1QPow1wr8DiP5jTp0p9LYAtOYaxt
	j5FbZ3jQlqb23YVz3lEd8UeqpmzjHWFeYjf0LbyAJu2k
X-Google-Smtp-Source: APXvYqwyvEA7D3djekzo0sKDL3jtJOO0MsOPhA0CVgqd73QtiQ6AguSl8pjdJ9J1kaJpuuUMNFxdekENIMwbWn8kuOY=
X-Received: by 2002:a02:70d6:: with SMTP id f205mr6450888jac.138.1559305300737;
	Fri, 31 May 2019 05:21:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Fri, 31 May 2019 05:21:40
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 31 May 2019 22:21:40 +1000
Message-ID: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to extract files from wic.gz image?
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
X-List-Received-Date: Fri, 31 May 2019 12:21:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

What command and tools to extract files from Yocto / bitbake image
such as dev-image-20190528085324.rootfs.wic.gz?

I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.gz
to IMX, I was advised to extract the archive and use "uuu <script
name>" or "uuu u-boot-dtb.imx" to get bootloader work first.

Thank you.

- jupiter

