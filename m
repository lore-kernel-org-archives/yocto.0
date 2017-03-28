Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D700E00B03; Tue, 28 Mar 2017 04:18:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.171 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80962E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 04:18:44 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id l43so99379646wre.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 04:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=K7vTc00zz1nISYreTqaPjt7RVuYLrNhDxufVizgSVCg=;
	b=HA3qofYS0SQINLvzAYURSwDWaGn6nNl/23Bs6cD0eDcT39rwAUoHzA4XUSVT45sh2Y
	q6HVNtL3OoWuOTpiuzR04BMU896vK+7qmyLz1rKhTln6mus/d8keeLU2mpZgC8ovB1/t
	gYxt0b1LzLP3PMJlr2J1tmYSafearrPZ8ytKfM1HweRSfjNkEghS+GE2iONZmd402FfJ
	wC33OyDMqCjf9Rt8cnlGV2azdVi73OXbYiWoip4xa6wuCBSABt+9T1rUcmmjsTSjpOOG
	mCtCwFdKOdKwLMDFoteTO96jN8EZVU0XeVxyNiq0eP+yz0oMzH72Jxo3OTaJD5z/a01y
	hHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=K7vTc00zz1nISYreTqaPjt7RVuYLrNhDxufVizgSVCg=;
	b=BFW8D2pW8zQChNfAEFUlhhGcxTDX8tHL+ZsJsCTUA0o2o5LGODY35URL+xC1jsAhE5
	3a7Us2+0ciILXBmR2UGl6NZ2pxubCOSVoeESfQcZA9WcwzWAVejRaGh1wF41fOVEpRDq
	z/zFC9ZbXLOKoAOzsNU+0hTUqUcozbr3UoKoRboBMSKBqO2BB4UxtakKWeIr118rxapl
	BSYr3wKgf9iRshYzbROxzJySTBxs1z2ULbbt+xeNR1MNPBnjSwWmFp3kLmu2b2LfBPsk
	oYzhsPlrzly7djldoelR/a2Z7oguCkjvLaKRpeQf7sWcFn+qFLb7AGq4DkCVQbTVzRva
	2SCA==
X-Gm-Message-State: AFeK/H13AzRs32OeNUvoO1nGvdNTwgBP665WWuEbd7hlsKg+zzoC/npNoJcuimOAH/UDvJyKJA4vUStcZQosJw==
X-Received: by 10.28.107.129 with SMTP id a1mr8886978wmi.47.1490699924160;
	Tue, 28 Mar 2017 04:18:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.163.6 with HTTP; Tue, 28 Mar 2017 04:18:43 -0700 (PDT)
From: Ran Shalit <ranshalit@gmail.com>
Date: Tue, 28 Mar 2017 14:18:43 +0300
Message-ID: <CAJ2oMh+=JeNZMXDV_rGjxYU5nBVKSPo9gwAP0wVEKBNrLGgcpw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: host sysroot
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
X-List-Received-Date: Tue, 28 Mar 2017 11:18:48 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to understand what's the purpose of host sysroot (in
/build/tmp/sysroots/) ?
I see it contains a set of libraries too. But for cross compiling an
application in host isn't all we need is toolchain and target sysroot
? If so, than what's the purpose of host sysroot ?

Thank you,
Ran

