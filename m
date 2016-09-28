Return-Path: <romil1@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 406C3E00C6E; Wed, 28 Sep 2016 03:07:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romil1[at]gmx.de)
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2365]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Sep 2016 03:07:08 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C3AE00C45
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 03:07:07 -0700 (PDT)
Received: from [93.129.82.104] by 3capp-gmx-bs26.server.lan (via HTTP); Wed,
	28 Sep 2016 12:02:02 +0200
MIME-Version: 1.0
Message-ID: <trinity-02d343ba-ad0c-42e7-a7ed-aacfddc85929-1475056922373@3capp-gmx-bs26>
From: romil1@gmx.de
To: yocto@yoctoproject.org
Date: Wed, 28 Sep 2016 12:02:02 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:lJP1S/iPFQz7q+PDDsoyaiFwKUi8RbrApGGZXKjzMgg
	dDVco/10slMhtV6yHLaV7DhlvPhihEA70GfMxOf+v99PiBsCCZ
	jveOX7O0fBXBBzu+daC5juzp76PqMM+cQx6X8mkm/oybebVsaZ
	1lMke49Gv0Ya+BadROAKA8CLkuufQnaI4WIZE1u7rHEg9W029p
	h/Mmnu5O26I4D/B3aQpRK2W42YCoHFSqj1Mm1GyVOOro4iT0BK
	FQqwqBDn6XDxLGP7wsI9k35fwcwc8wR5S/T2e0E3EjEMKzQrn7 DURSTc=
X-UI-Out-Filterresults: notjunk:1;V01:K0:OD6A36WWcXA=:b5WXcZ9QSxVgEnpa3qxhEr
	mQllworlGtMNRIbYRgIQl4b7hioQZKDoQqfTXLuB1tGn3EClgtJOQpOtkMBGz1zqgHGxLoYru
	zHTM/UnYG6SA5F8+EfhYcihMxBui0M3yKCghYVQl5ez1LV1jyJMEgXZSPVppWq57CWiUmwPix
	3k0/gvQhljt0cxjgvnb/6t37m3VInPEHf3BhsQNmqyLzJlNUMaFLi+LbbQHBluv3edzaOCJvb
	KM2Zm5EkJ3a7TXO37/i4uIw0LmBs2IiDOCUGc4G/SS1Jj/ElBjX/IXuVt/gEcw2cUqASJh2re
	RuHqFJvm6o8PXvvmAl4G8YWGkvYJsS8Y1JD7aJQJ6KZp6OrrxWyiIiESJnuVspjfzC5TNe+ju
	qBpyjtR6JdnZTZhUZKc1e6fHQscp+n02PlZxD3HZZlZDmPMhvVWNi+DSR5QvQLi9hjaW7CphW
	nrW0oTH2rQ==
Subject: [meta-raspberry] No spi, i2c when booting with uboot (RPI 3)
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
X-List-Received-Date: Wed, 28 Sep 2016 10:07:10 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello,</div>

<div>&nbsp;</div>

<div>when Im booting my rpi3 (B Rev 1.2) without u-boot&nbsp;erverything works fine. I can see spi and i2c in dmesg.</div>

<div>&nbsp;</div>

<div>But when I boot with u-boot (KERNEL_IMAGETYPE = &quot;uImage&quot;), spi and i2c seem to be disabled.</div>

<div>I dont see anything with spi or i2c in dmesg.</div>

<div>&nbsp;</div>

<div>In both cases I use the same cmdline and device-tree (bcm2710-rpi-3-b.dtb).</div>

<div>&nbsp;</div>

<div>I noticed something strange in the boot messages:</div>

<div>When bootings with u-boot i can see-&gt;&nbsp;Machine model: Raspberry Pi 3 Model B</div>

<div>Without u-boot it is-&gt;&nbsp;Machine model: Raspberry Pi 3 Model B Rev 1.2</div>

<div>&nbsp;</div>

<div>Why is there a difference when Im using the same device-tree? Could this be the reason why spi and i2c is disabled?</div>

<div>&nbsp;</div>

<div>Thx for helping,</div>

<div>Romil</div></div></body></html>

