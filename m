Return-Path: <Moritz.Porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF867E00D31; Mon, 27 May 2019 08:05:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F83E00D30
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 08:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1558969528;
	bh=kGLUO+6kzyKrzS1V40SJdMuzHCApDvw3YLST4u887VY=;
	h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
	b=h8FBn/zJQCn9sKzmo1GN+fEKUW3HWco17UQHCSLG2wxV5k0MWZstl+6AUWqg7AWGg
	61CJElTno0Ocfg5loxtVpkLk8lr15ViHHECT/8GqNYUypRA5LNyMLhc1hob7ZspAj/
	LM9GOuS7S321WYdgjKQzkJV2yITNbgnKTgDktvoU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.152.229.14] ([80.152.229.14]) by web-mail.gmx.net
	(3c-app-gmx-bs16.server.lan [172.19.170.68]) (via HTTP);
	Mon, 27 May 2019 17:05:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16>
From: "Moritz Porst" <Moritz.Porst@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 27 May 2019 17:05:28 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <9ac8b53d-84f5-6ee0-d445-57335f8f0836@googlemail.com>
References: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
	<9ac8b53d-84f5-6ee0-d445-57335f8f0836@googlemail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:xgApYPRdnrPLbPaLkzMLK7x+8OvoTcOg1tTwTMaCSl1VYez1xeSa1PTd34fjuUvTA0z4z
	Y1of4NB5mWLObNAo7MZ5o19FFjOkmaNeQpmLhlGEJC+wWbuYSo770MT0/ZzhWGaYlWkoTw2CVHKw
	A+ClQENfk/0z3H6dfiy5XIZH16v7qIfoApIfrkgwaySYA/2cOsMzbMdteoo78lbgaZFSBeep4Ig3
	sKmmlWfdAuMF2iCxONH5aRQFW5ihw3qjaZ3P16/uO92wVHQ+R+A1I3RrX+S0gz/P3hfNGgCJSfgI
	40=
X-UI-Out-Filterresults: notjunk:1;V03:K0:/2Q6oAma8O0=:rsGsXtLgjHapPAiYKbehuk
	8CiIKA+vbmPtvDcP/QDQS495I3BWZ0BfhP/DVssnCs0zzEnuF5RFwct8eg1Et3UeYv4Xdgskt
	0qQk/PiOn8oql6XRwqU0YSa0f18BgHcUM0wni3Vg84rlhRNDqCTPayP1vHabshGr+aoJANZtq
	pOFE0dam8dw6DCYb77KmRH3NixPl3KFQlPqvql9YvmSz3QKQ+Ui5MCnEeZcUYCIp/TeaJAiqx
	RKWJX10QxBBwtRHfkrb2iCFkBXVwQzX1O4jpxbFlgOGlH9pno02pYV6ANx1nNvL6d5ctpyi6L
	5CFet+274zGiovR0bRnQkUiBpijhEMddwxYGClTVSYTMXIQA8sWMIwLe4bRvQYuIEPV6vm5Co
	9KkNmbv/FwOlWJCXBfzNVIlMDOCQSyQGMAbs1b54bVmx22HmMIrWO225DhsmxcWlJNB4izuUD
	Gr+mI0dPNP+eo90yFea56URtJLKsYTCY+/QTKAUep6YOb7Ghvr+D2SyvesJIEDDkksfekRPc5
	JfIHBlFWNJIbAcweLUEgFGBn/sjRy8309SzNblgg2z+y7zp9jFiLsb9G+Xm8Oon0ycg+2D+iB
	+g0hzNIbq6/UdIcJNoR7Z5aJFrbjNweW3w0EiREF+SE6S5odPVODTI3w==
Subject: Re: [meta-swupdate] build fails under thud
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
X-List-Received-Date: Mon, 27 May 2019 15:05:31 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>Hi Matthias</div>

<div>&nbsp;</div>

<div>Thank you very much for your help, this is not mentioned in the official repository.</div>

<div>I tried what you said. It enables me (even without .bbappend) to build the swupdate-image.</div>

<div>Now for the defconfig. I did it with a .bbappend the way the yocto documentation suggests (FILESEXTRAPATHS and SRC_URI) but which recipe do I need to append to? I thought just choose swupdate_git.bb, then swupdate_2018.11.bb. I always receive the following rootfs file:</div>

<div>&nbsp;</div>

<div>swupdate-image-ccns5.ext4.gz.u-boot&nbsp;&nbsp; (Clearly still uboot, I don&#39;t know why it managed to build though)</div>

<div>&nbsp;</div>

<div>Also I get the following warning on invoking bitbake for swupdate-image:</div>

<div>WARNING: /opt/thudPoky/meta-swupdate/recipes-support/swupdate/swupdate_2018.11.bb.do_compile is tainted from a forced run</div>

<div>&nbsp;</div>

<div>Finally I always end up with microcode.cpio in my /boot directory which comes from meta-intel. I guess swupdate would replace the initrd/initramfs ?</div>

<div>I put the following lines in my image description:</div>

<div>&nbsp;</div>

<div>INITRAMFS_IMAGE = &quot;swupdate-image-ccns5&quot;<br/>
INITRAMFS_IMAGE_BUNDLE = &quot;1&quot;</div>

<div>&nbsp;</div>

<div>Shouldn&#39;t they cause the swupdate-image to be bundled into the kernel, thus that if I build my image that I end up with the swupdate initramfs in my /boot directory ?</div>

<div>&nbsp;</div>

<div>Sorry for all the questions and thanks in advance !</div>

<div>&nbsp;</div>

<div>Best regards</div>

<div>Moritz</div>

<div>&nbsp;
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Montag, 27. Mai 2019 um 15:31 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Matthias Schoepfer&quot; &lt;matthias.schoepfer@googlemail.com&gt;<br/>
<b>An:</b>&nbsp;yocto@yoctoproject.org<br/>
<b>Betreff:</b>&nbsp;Re: [yocto] [meta-swupdate] build fails under thud</div>

<div name="quoted-content">
<div style="background-color: rgb(255,255,255);">
<p>Hi Moritz!</p>

<p>You need to configure swupdate kind of like the linux kernel with menuconfig:</p>

<p>bitbake -c menuconfig swupdate</p>

<p>do not forget to copy your config then into an bbappend to swupdate (defconfig).</p>

<p>Hope that helps,</p>

<p>Regards,</p>

<p>&nbsp;&nbsp; Matthias</p>

<div class="moz-cite-prefix">On 5/27/19 3:26 PM, Moritz Porst wrote:</div>

<blockquote>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hello</div>

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
</div>
</div>
&nbsp;

<fieldset class="mimeAttachmentHeader">&nbsp;</fieldset>
</blockquote>
-- _______________________________________________ yocto mailing list yocto@yoctoproject.org <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a></div>
</div>
</div>
</div>
</div></div></body></html>

