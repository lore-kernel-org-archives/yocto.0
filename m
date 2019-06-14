Return-Path: <Moritz.Porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78250E00E1B; Fri, 14 Jun 2019 03:24:56 -0700 (PDT)
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
	*      [212.227.17.21 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Jun 2019 03:24:55 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37359E00E0D
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 03:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560507894;
	bh=Cz1ICACMV5d1HQu6PWOv3gKtVgkDuMcLJBe6Hqe7P1w=;
	h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
	b=fUJWScYCkUuznE170CYWt9hKV/Lu628KliI3hgeDLcm91pydhm9rMYX7pqWn+mEWt
	zMSSbR/H+aQFfgNrJnpbRFCBaEg7fPC4bchYJI86K7LjmC6BXa36v+WRmpe0jaML6B
	O5gvfoVMfQaSlltGoA6TjeZcM52Y7z1PSbxED3Bs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.152.229.14] ([80.152.229.14]) by web-mail.gmx.net
	(3c-app-gmx-bs22.server.lan [172.19.170.74]) (via HTTP);
	Fri, 14 Jun 2019 12:19:51 +0200
MIME-Version: 1.0
Message-ID: <trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
From: "Moritz Porst" <Moritz.Porst@gmx.de>
To: yocto@yoctoproject.org
Date: Fri, 14 Jun 2019 12:19:51 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:VG5uM2pKukJade5626vBFVOFPB80N4fH0ezhFsH/PfB9VpS567ZeH6k8U2zbsK0Nh9CaT
	trJ64ZzV2tFgIZWhCGg59AELZr6guw4hbyVPqAv/rEH+GLQh8fAIaECkEQlJMBwtkj7+BUkjFhSt
	YpTGDpk34RUPZ/Bq5oAiBSihySLbaEbbjtiTgwfMiwId6RgTCWPddwLItvrMzCUvz4IQp4iSgl9h
	SG+60OR1OczfT6fpZkd2uIWEUSI/1lURIYk2Q+ti6qgNCAdvjloGUV1MxtWZC7DrE7SXPx0e2SRG
	rM=
X-UI-Out-Filterresults: notjunk:1;V03:K0:lqlJ+u/Mpcg=:bhdqpTLrxIZDdSlqhDsTgb
	6hxVJYGTsQZo4+dZJBqiBxZUM+Bfr2tNkgz3fQ8x2nnpC/ZVxCt6hb2gH6Jo95FrxYemMLpI6
	LDNOLXIcd+e+VC5C/xmMBJCemVEwiCh6OH8VWfRtRH7yfY1AhUxiyR3sAKe6mvr2d/z419geS
	F2C2wSTcx6SrSs3TBKOLRNxXgGMb9s17d/Cg/p0uECaMHMdHI/qnaISmUd9HJIQZyf8FNZcYQ
	8iN6Ga9tjzSaDCn5yHWnaD3G6XC7H8+FVJrvm9xCauFdznikg5NvG+NttrANabwC9e6yeDbX7
	zuS3giY2gRMO+Nrv87dK2L0QS78ZNrrISbtUZtE2nuWSRU7UPbYpwgEZG5uuTZ3tdgtjjSB90
	t0eWHqg3CcpKDfBgXZuGevQ83oLo+sljsz4TGPPYXpKO2U6vqzZnOOWFmo3X9G1C6ft8ClpMq
	ha2FVKQp6/oJkfZeF6VPbu8sC2X4L41LF4OaY1rvmofqShzUbVpIVC3+D3hxsPJd2zvigKgi2
	hu4yD7R5c4JXQKOlV7Oa6wXB7ebWzI2+E/eRhJ3QLR7ji+dBDQhuejzuymZjFC79rGygcR7o9
	ak17QfrIxhMXKINftN1TXATqjzwPLaEOWYa13O62X00OJofKID1z/gMw==
Subject: Re: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Fri, 14 Jun 2019 10:24:56 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>(Sorry, the answer should go to everyone)</div>

<div>Thanks for your response, unfortunately it didn&#39;t work out for me.</div>

<div>Because I am not 100% sure whether I did the correct thing I describe it:</div>

<div>In my layer I went to recipes-kernel/kernel/files, here I added a file defconfig which I filled with the content of your config-initramfs</div>

<div>my linux-yocto_%.bbappend, residing one level lower (kernel), got this file added so it reads (in its entirety):</div>

<div>
<div>&nbsp;</div>

<div>FILESEXTRAPATHS_prepend := &quot;&#36;{THISDIR}/&#36;{PN}:&quot;</div>

<div>SRC_URI += &quot;file://0001-sdcard-power-management-off.patch&quot;<br/>
SRC_URI += &quot;file://defconfig&quot;</div>

<div>&nbsp;</div>

<div>However I *also* have a file called defconfig in meta-swupdate which is basically the swupdate config that comes from menuconfig. I let this untouched but since this is not the kernel defconfig I guess you didn&#39;t mean this file ?</div>

<div>&nbsp;</div>

<div>Additionally I can&#39;t mount the rootfs with the failed boot so I cannot access the dmesg log file. Any advice here ?</div>

<div>&nbsp;</div>

<div>Best regards</div>

<div>Moritz</div>

<div>&nbsp;</div>
</div>

<div>&nbsp;</div>

<div>&nbsp;
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Freitag, 14. Juni 2019 um 11:00 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Zoran Stojsavljevic&quot; &lt;zoran.stojsavljevic@gmail.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Moritz Porst&quot; &lt;Moritz.Porst@gmx.de&gt;<br/>
<b>Cc:</b>&nbsp;&quot;Yocto Project&quot; &lt;yocto@yoctoproject.org&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [yocto] [meta-swupdate] failed update leads to kernel panic</div>

<div name="quoted-content">&gt; However if I abort the update while running (i.e. simulating a power cut)<br/>
&gt; and then reboot I end up in a kernel panic: &quot;Unable to mount rootfs on<br/>
&gt; unknown block&quot;. My understanding is that I should at least end up in a<br/>
&gt; busybox or that the update is retried, but this does not happen.<br/>
<br/>
You missed to attach failed dmesg while the system booted and aborted.<br/>
Nevertheless, I expect problem with your defconfig, which does NOT<br/>
have options set for initramfs. These ones:<br/>
<a href="https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs" target="_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs</a><br/>
<br/>
Please, could you add these one to your current .config, this might<br/>
very well solve your problem.<br/>
<br/>
Best Regards,<br/>
Zoran<br/>
_______<br/>
<br/>
On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst &lt;Moritz.Porst@gmx.de&gt; wrote:<br/>
&gt;<br/>
&gt; Hello,<br/>
&gt;<br/>
&gt; I am currently having trouble to get swupdate working properly.<br/>
&gt; My problem:<br/>
&gt; I can execute swupdate -i normally and if the update fits I have no problem. However if I abort the update while running (i.e. simulating a power cut) and then reboot I end up in a kernel panic: &quot;Unable to mount rootfs on unknown block&quot;. My understanding is that I should at least end up in a busybox or that the update is retried, but this does not happen.<br/>
&gt; I receive 1 error when updating which does not stop the update: &quot;Could not find MTD&quot;.<br/>
&gt;<br/>
&gt; My configuration:<br/>
&gt; I have a single rootfs and a separate boot partition. I build the initramfs using:<br/>
&gt; ---<br/>
&gt; IMAGE_INSTALL = &quot;base-files &#92;<br/>
&gt; base-passwd &#92;<br/>
&gt; swupdate &#92;<br/>
&gt; busybox &#92;<br/>
&gt; libconfig &#92;<br/>
&gt; util-linux-sfdisk &#92;<br/>
&gt; mtd-utils &#92;<br/>
&gt; mtd-utils-ubifs &#92;<br/>
&gt; &#36;{@bb.utils.contains(&#39;SWUPDATE_INIT&#39;, &#39;tiny&#39;, &#39;virtual/initscripts-swupdate&#39;, &#39;initscripts sysvinit&#39;, d)} &#92;<br/>
&gt; &quot;<br/>
&gt; ---<br/>
&gt; This is taken from swupdate-image. I include the same packages (via _append) in my base image, is this necessary ?<br/>
&gt; I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE = &quot;1&quot;<br/>
&gt;<br/>
&gt; Can you see a mistake I made ?<br/>
&gt;<br/>
&gt; Best regards<br/>
&gt; Moritz<br/>
&gt; --<br/>
&gt; _______________________________________________<br/>
&gt; yocto mailing list<br/>
&gt; yocto@yoctoproject.org<br/>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a></div>
</div>
</div>
</div></div></body></html>

