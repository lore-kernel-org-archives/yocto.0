Return-Path: <Moritz.Porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CCA1E00E07; Fri, 14 Jun 2019 01:15:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D35E00DA8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560500116;
	bh=uxjgewuGjdKiwfJhngC8pjoGSOPtEzgovjfJJwkYaig=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=YeJFgqZZCSQT2uy/7V2Pj/I/o8zH3MYT9dT1tkZI5IaTvqwyHhSA0IDhxRl1/PfiU
	eAz1uyMMKRmkNb79h7iwR/zRmiJ+z9DDXAevv3jOwe/EZcz2PkKAZRxaFYXiMXkR86
	FJY7aJZgbF+5i78vy9q8iyLaSjPVEbLBXBDEHvhw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.152.229.14] ([80.152.229.14]) by web-mail.gmx.net
	(3c-app-gmx-bs53.server.lan [172.19.170.137]) (via HTTP);
	Fri, 14 Jun 2019 10:15:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
From: "Moritz Porst" <Moritz.Porst@gmx.de>
To: yocto@yoctoproject.org
Date: Fri, 14 Jun 2019 10:15:16 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:FgKe07/iZzLKxaNeFArGPd5w/fHw6jpMel44SCF+WcXj4ykhhGhneL5nYSG78YCFshoPz
	Ba+daXMymR3YexfnKSujdLzpy0JFtvWuG5B+XSoSCtrVsbdft3ScBtvppweSyGJLoO6CblyRXNi+
	Tlx1kfNTS0eV6rZJPJAOmjCdINEBtXpbSeWXBFBzHLlt9Rwo2KHiAC1Yu4NNo5/wAUaYOoShT/PH
	BGqQJGX9ovsg+Tf2KttUemwqZROr/H/qJGYp6yUSjjCctlJvilbn2O2GXiPVdZ2Futc26ox8xVTV
	uo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:4YsqfH2JN0c=:ga091ZCPpI8sixJqKivGQh
	XQQgMyXfH4AKUBUUwQhd+qhhJ52Eou0PmMW/7aoouNBgrBmTUD61fS9A3cw/yZ03yfW4y4SCZ
	rD/TVqeEGUgTgKJ/beU/YMxBik1wRg9upXtfes+indh4PG+XJncmMAQ9zUHISWYr502f7hEND
	PRUCmIH6XCqlhfbrDSvPS5dkD1F8qrcx6BOffKKibfWe6Cx1Aovbt0VpMbjKYhiMVQP78iftd
	YVZlCACGD2GpIFu5Dg0Qu222u9q7rwEefYZj71CjrQSKoyB3V4K/dB5aY/sHzNZ0OSXgk2fgp
	KE6GkSluHx4hl4MBxdpx6OUwHDrwt9d44mBEkKnp74ndBWXaa1GXQRO298qgBsfbSt5Mag+0v
	KQxSkEfbSUCszBF9BCCN2lX+KLrQ15ve+XQ9Oh3lj/3A1zEG5r8l5ZoF2siLRdjrXEXg7Mn68
	VbA1P87a9shPUDHM+AwOe2CjVywhgea+36Uz8MjBy7B0McM8X7oQ/D23FnsRaUQ1hGUrGn7wc
	UMh+45jggd2EVMuN0EdZ8jZhcdQyOFUkvJcOtXDVLvkmo5YzM7+jKZ+IY8LslXenw6d/p6hM6
	ou4Dt7/K8bgjvc8TaHf8JS/kTOGuDErhbhTUNouvQ6r/9yN3m6LJx4sQ==
Subject: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Fri, 14 Jun 2019 08:15:19 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello,</div>

<div>&nbsp;</div>

<div>I am currently having trouble to get swupdate working properly.</div>

<div>
<div>My problem:</div>

<div>I can execute swupdate -i normally and if the update fits I have no problem. However if I abort the update while running (i.e. simulating a power cut) and then reboot I end up in a kernel panic: &quot;Unable to mount rootfs on unknown block&quot;. My understanding is that I should at least end up in a busybox or that the update is retried, but this does not happen.</div>

<div>I receive 1 error when updating which does not stop the update: &quot;Could not find MTD&quot;.</div>

<div>&nbsp;</div>

<div>My configuration:</div>
</div>

<div>I have a single rootfs and a separate boot partition. I build the initramfs using:</div>

<div>---</div>

<div>
<div>IMAGE_INSTALL = &quot;base-files &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; base-passwd &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; swupdate &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; busybox &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libconfig &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; util-linux-sfdisk &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mtd-utils &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mtd-utils-ubifs &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#36;{@bb.utils.contains(&#39;SWUPDATE_INIT&#39;, &#39;tiny&#39;, &#39;virtual/initscripts-swupdate&#39;, &#39;initscripts sysvinit&#39;, d)} &#92;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;</div>

<div>---</div>

<div>This is taken from swupdate-image. I include the same packages (via _append) in my base image, is this necessary ?</div>

<div>I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE = &quot;1&quot;</div>

<div>&nbsp;</div>

<div>Can you see a mistake I made ?<br/>
&nbsp;</div>

<div>Best regards</div>

<div>Moritz</div>
</div></div></body></html>

