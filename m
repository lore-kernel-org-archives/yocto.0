Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0813CE00E44; Thu, 15 Dec 2016 17:50:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4889E00E44
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 17:49:58 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id n6so75042689qtd.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 17:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=blsC4mXYmJ2LW4M7QbWU7ZWuzVb3uzzV/EuLqNBgecY=;
	b=fyMFQu0aq3QSUZybDCnpXEo8CahKDX8PRIOUYTvSGqlhyTtUE/xRb+SNzgSe8Atf5H
	IaYn2+Kq3ydD/mazNqO84SDNg31HlwGAX1Psx4BplYNMhKCdldPhJg8QaK2z4sNmvfK8
	cfNWuTY1iTzjMHMrQVroHuhjOIAcs0EmGhhrSbGZQXvsJUEWgTxkQH34iAVBZplRxn8t
	pxPPw96yWYYeBmAbyeey1aU1oO75HejNl8mcJxN9uDKS7bA4K4yw26nAmiP5ELJWaDyA
	XRj9FBupZD/yEJ3HL6JGtQ6xOksxStamRNLkG7XfTKsvmf5VDAHh+3Q1BjzSMv9B8duW
	9l0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=blsC4mXYmJ2LW4M7QbWU7ZWuzVb3uzzV/EuLqNBgecY=;
	b=XQHzbDxkEMM1Jm7tNtDlSp8t1b4J3XQRr72w6r09RxK/Ui+Qw9xuODrdNlQuXg8dmo
	UcXZERRnFu7Gi0NS1yl81Le1nFakfo67jr/otnWn3+kuBkznVh4Xs+WlfQbxibltZ87o
	Ry+WJyWGG79HMDagIfy8NWLoUgLcl8ZrpTwIVb0DTjIHUyNrbp//v2bULDEzkHb1705K
	AXYQGPzFyrp2L1N3YgMNzVSlZXk9l2mm6EGt0CyVrV25fKtMtRVkWJpjKW+5AXVOlPaP
	AP5ojGe4RcrWNhIN8jh/Egk0uy231CBwqbtxj8PQqbphk6aBgswYpZ7twl89tWywuz+r
	xSlA==
X-Gm-Message-State: AIkVDXJzIfVnV6xMW6vXTXOLmqVqJjWQJmZR8fzCdH2OjgZ31COVsMEiXdn5GmlGbgtYEpS7l6xbnMHz7xkJcQ==
X-Received: by 10.237.61.202 with SMTP id j10mr479498qtf.121.1481852997536;
	Thu, 15 Dec 2016 17:49:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.246 with HTTP; Thu, 15 Dec 2016 17:49:56 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Dec 2016 23:49:56 -0200
Message-ID: <CAF3SDA5aT3hw-52qMVe+ZLgJ2ZSBv1MTPPdTru=u7aoPUgR7Ow@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: distutils break my shebang, what to do?
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
X-List-Received-Date: Fri, 16 Dec 2016 01:50:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I've been trying to install cxxtest to nativesdk. After done I went to
run`cxxtestgen` and got a "bad interpreter" error from bash. I look at
the script and there was "#! python" at first line.

I know that this is something that distutils does. I also know that
SDK ships its own python interpreter. So what is the right way to
approach this problem?

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

