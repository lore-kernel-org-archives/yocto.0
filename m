Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EF14E0070B; Sun,  1 Feb 2015 11:33:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E45EE00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 11:33:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0BAB827E157;
	Sun,  1 Feb 2015 19:33:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 7YExewrpXjEz; Sun,  1 Feb 2015 19:32:54 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 76E1727E152;
	Sun,  1 Feb 2015 19:32:54 +0000 (UTC)
Message-ID: <54CE7F17.4030102@dynamicdevices.co.uk>
Date: Sun, 01 Feb 2015 20:31:35 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Simon Bolek <simon.bolek@googlemail.com>
References: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
	<54CE5E14.3020500@dynamicdevices.co.uk>
	<CAEfap_BF2O2q=y5ZxOpZir3zZPY0yky2Guruy-fKARBpPTgq4w@mail.gmail.com>
In-Reply-To: <CAEfap_BF2O2q=y5ZxOpZir3zZPY0yky2Guruy-fKARBpPTgq4w@mail.gmail.com>
Cc: yocto@yoctoproject.org, peterengcomau001@adam.com.au
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Sun, 01 Feb 2015 19:33:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 01/02/2015 18:55, Simon Bolek wrote:
> Thanks!
> As for the examples. I cannot help directly, but i would read
> log.do_configure etc. files for details. You might find the reason
> there. Although I have to say, that my knowledge in yocto is at the
> beginners stadium at the moment ;-)
>
> cheers
> simon :-)

I think I've worked out what is happening here. The examples are being
built but not installed to the image folder in the do_install step and
thus there's nothing to package and the qtbase-examples package is ignored

I've committed a change to do_install_append() in a dizzy branch on a DD
fork of meta-qt5 which I think copies the files across correctly

@see:
https://github.com/DynamicDevices/meta-qt5/commit/21b9aef8c3246e9e0b7ec3026bd58d4c595fd5a9

 @@ -216,8 +216,13 @@ do_install_append() {
     # ERROR: objcopy failed with exit code 1 (cmd was
'arm-oe-linux-gnueabi-objcopy' --only-keep-debug
'/OE/oe-core/tmp-eglibc/work/armv5te-oe-linux-gnueabi/qtbase/5.0.1-r0.0/package/usr/bin/qmake'
'/OE/oe-core/tmp-eglibc/work/armv5te-oe-linux-gnueabi/qtbase/5.0.1-r0.0/package/usr/bin/.debug/qmake')
     rm -f ${D}/${bindir}/${QT_DIR_NAME}/qmake
     # install fonts manually if they are missing
-    if [ ! -d ${D}/${OE_QMAKE_PATH_LIBS}/fonts ]; then
-        cp -a ${S}/lib/fonts ${D}/${OE_QMAKE_PATH_LIBS}
+    if [ ! -d ${D}${OE_QMAKE_PATH_LIBS}/fonts ]; then
+        cp -a ${S}/lib/fonts ${D}${OE_QMAKE_PATH_LIBS}
+    fi
+    # install examples manually if they are missing
+    if [ ! -d ${D}${OE_QMAKE_PATH_EXAMPLES} ]; then
+        mkdir -p ${D}${OE_QMAKE_PATH_EXAMPLES}
+        cp -a ${S}/examples/* ${D}${OE_QMAKE_PATH_EXAMPLES}
     fi
 
     # Remove example.pro file as it is useless

Cheers,

Alex


