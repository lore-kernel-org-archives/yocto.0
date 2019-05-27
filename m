Return-Path: <Moritz.Porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B044E00C7D; Mon, 27 May 2019 06:26:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B148E0053F
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 06:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1558963608;
	bh=Wvk2MkiskvHz7L0B00BBKDT87alKXhJzyVj0Du7078s=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=B1GbJaiGcOJjpUu70Jyzyrvkj2qxHH9NNvQskYwNz8972pCLtKDlEdNGvZbi6WYv/
	HlJig2ZJPVpmyxiJUUT/X2K1A5iag7YPPgaCeCSHhZK4dKYtrCAsDikTg7WdelDswk
	cbDv/Mk5ui/k8jJzyZqHZLOsWI7w1YjvTgbGzwhI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.152.229.14] ([80.152.229.14]) by web-mail.gmx.net
	(3c-app-gmx-bs16.server.lan [172.19.170.68]) (via HTTP);
	Mon, 27 May 2019 15:26:48 +0200
MIME-Version: 1.0
Message-ID: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
From: "Moritz Porst" <Moritz.Porst@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 27 May 2019 15:26:48 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:DbLpygWyv3wq3v5dn/omRFE8qcrojdSTXM5uCRe7ErqkwcJaMreVS5sKo1TOZA2/FnqLZ
	6av1aQqPmKVR+AazXkiSkrMgu3smX1IezqjYUdJF8k2KQTCKbCZbu62zWNhcK2MXc0vH9WP0Up3s
	cwBcj7COttvmGqW3iacClCukwxbwMUKPNG7biNWbBXY/KyYHb0xnIySl4ilvm3kGIjqYkK3+Nq+k
	RfY/XP5zmOvvoL7866PVmNAHKojN6i70FbusZSGNMCyOec8ueKGL5xpwEIJym0q0czRnZQILDZne
	ZY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:edIYGZGa98Q=:9iSpt3nQOy5vngsX3qPLLZ
	ysboLvuBfnh9OHb+atQvKQZAzzrAfhtckue4ILWLkA4u+m7lk+b3UUiNYK3Xdj0EQEx2/bz8O
	o6tD+Ryp6ePFN0BRaKKpAjxVNX9IGDbl3g8zLgBV6eMyb4/1jyyi3e+PK+y1jfP+W44mRWoxP
	mSsEY19GcmgapnbmIevOiHKdBhsv1t5+Bpqqsa6oxhgDc6/Enfc7mLeQv8FCCnA5YKPHzP3IO
	qf8rsB30wZAA75oBy1/EAdUnAIhhyN4fIKr8FmgUaTI/fCMncOKjBeGtx+ameYMmE9u3TDksz
	Z+VevwCI500d0Updn9/EDbNtmK7B1vo/9c5Y4/qeyYeSSZ4mfysL3aGPOZ5Pjmvzs4Z7uOR6N
	9M15tMwMKj/zDw+jwfacFVublczBwkG1riVmMXAndIKosjeq39ZnAUW/HK5dk8LyzwFTDEPXy
	89V8nB5kuhKm/RdP9OQZPI7mGVk/WxwjHFVN+uZsdy+mhbrInGRxe3etpxj4+TOcveXW0nYY0
	hSzXWcvzOX/9zv4ZEH8ggV1kxgs1QWcQtjqPoUti2M0uoh4pMW7npFhDRw4XUMHAYqtzoSAtP
	HHXJXoBfLlI6PicbbYRDK6Pc+LXARc0fhkIVJO93tj1u5XUSFNJz2oSg==
Subject: [meta-swupdate] build fails under thud
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
X-List-Received-Date: Mon, 27 May 2019 13:26:50 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello</div>

<div>&nbsp;</div>

<div>I want to create an update mechanism for our embedded system. I chose swupdate because it is very well documented and seems flexible.</div>

<div>When trying to build swupdate-image it fails with several undefined references, just a few as example:</div>

<div>&quot;&quot;&quot;</div>

<div>
<div>/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld: bootloader/lib.a(uboot.o): in function &#96;bootloader_env_set&#39;:<br/>
&#124; uboot.c:(.text.bootloader_env_set+0x40): undefined reference to &#96;fw_env_open&#39;<br/>
&#124; /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld: uboot.c:(.text.bootloader_env_set+0xf8): undefined reference to &#96;fw_env_write&#39;</div>

<div>&quot;&quot;&quot;</div>

<div>I see lots of &quot;uboot&quot; in the trace, but to my understanding swupdate should also work with grub which I enabled using:</div>

<div>EFI_PROVIDER = &quot;grub-efi&quot;&nbsp;&nbsp;&nbsp; (First tried to use PREFERRED_PROVIDER_virtual/bootloader, but this doesn&#39;t work with EFI booting)</div>

<div>When I want to enable &quot;uboot&quot; this way, bitbake tells me there is no uboot.</div>

<div>&nbsp;</div>

<div>I know there is also the option of writing my own init scripts but this would be just reinventing the wheel (given there is an swupdate available) and probably more error-prone than a grown update tool. Thus I would like to get swupdate to work.</div>

<div>&nbsp;</div>

<div>Any ideas ?</div>

<div>&nbsp;</div>

<div>Best regards</div>

<div>Moritz</div>
</div></div></body></html>

