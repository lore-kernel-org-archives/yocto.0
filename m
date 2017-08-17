Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA771E00DE2; Thu, 17 Aug 2017 02:20:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1464 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Aug 2017 02:20:16 PDT
Received: from smtp.laposte.net (smtpoutz298.laposte.net [178.22.154.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74738E00D3D
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 02:20:16 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 65C6545D350
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1502960151; bh=CUGjP1TcA3ng1q3U5G2a5zTDkxAJaVqr2JkMxfOmDG8=;
	h=To:From:Subject:Date;
	b=f5pBwsyeG3f2fXvdBTqrNhzUtkLmB4w088XQPF+ldyAYvPtTvH/owobMbaHEkKeRg
	MVomyJq6RUEQsZA6A1Hrzk7dkbhME7a4lPawjLrousckF9vuR8EDruWCH5IQTdhNUo
	ax22U5QMUH4z0XO3hjZLPlFs/adRYtZqPe2+8N+QMKRgrfH4wRv0I6y1j7mtros4qd
	yjdcS4McvQvGYW4iwooCrpjzzPBSW00wVo8fZ1TvuhL3rAQXP7mqtcoZ+RMmpiONu9
	MN4PKVQWRYLtOm9XBJwqHCFr6FQSp1KZpa/Lm3GXbxd+pV99+pK1CuJfZPqJKVgzS7
	iSRZUy+PF39eg==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 570D545D3F4
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:55:51 +0200 (CEST)
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.laposte [10.128.63.4])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 5150A45D350
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:55:51 +0200 (CEST)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 443FC493315
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:55:51 +0200 (CEST)
Received: from [192.168.1.19] (ARennes-654-1-262-25.w2-13.abo.wanadoo.fr
	[2.13.73.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin003 (Postfix) with ESMTPSA id 138C2493305
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 10:55:51 +0200 (CEST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: idealsim <idealsim@laposte.net>
Message-ID: <0ee7bfc7-9aa1-f1b4-7455-337c7e7233b8@laposte.net>
Date: Thu, 17 Aug 2017 10:55:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-VR-SrcIP: 2.13.73.25
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelkedruddtuddgtdekucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepvffhuffkffgfgggtsegrtderredtfeejnecuhfhrohhmpehiuggv
X-VR-Cause-4: rghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecukfhppedvrddufedrjeef
X-VR-Cause-5: rddvheenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegludelvddrudeikedruddr
X-VR-Cause-6: udelngdpihhnvghtpedvrddufedrjeefrddvhedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgr
X-VR-Cause-7: phhoshhtvgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: [php7] packageconfig apache2 error
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
X-List-Received-Date: Thu, 17 Aug 2017 09:20:18 -0000
Content-Type: multipart/alternative;
	boundary="------------441B42FB3C8ADA6BA15D21DA"

--------------441B42FB3C8ADA6BA15D21DA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi i would like to add modphp to my image (pyro branch). For this i add 
this to my local.conf :

PACKAGECONFIG_append_pn-php = "apache2 pam"
IMAGE_INSTALL_append = "\
apache2 \
php \
php-cli \
"

But during the build of php (7.1.0 by default in pyro) i have this error 
during install :

/| 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/php-7.1.0/build/shtool 
install -c ext/phar/phar.phar 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin//
//|   page: php-config.1//
//| ln -s -f phar.phar 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin/phar//
//| Installing PDO headers: 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/ext/pdo///
//| //
//| Notice: unserialize(): Error at offset 394 of 2427 bytes in 
phar:///media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/build/pear/install-pear-nozlib.phar/PEAR/Config.php 
on line 1080//
//| ERROR: One of /home/modjo/.pearrc or 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/recipe-sysroot-native/usr/bin/../../etc//pear.conf 
is corrupt, please remove them and try againInstalling header files: 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php///
//| install: cannot stat 'libs/libphp5.so': No such file or directory//
//| WARNING: exit code 1 from a shell command.//
//| ERROR: Function failed: do_install (log file is located at 
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/temp/log.do_install.31439)//
//ERROR: Task 
(/media/modjo/data1TO/yocto/pyro/sources/meta-openembedded/meta-oe/recipes-devtools/php/php_7.1.0.bb:do_install) 
failed with exit code '1'//
//NOTE: Tasks Summary: Attempted 1283 tasks of which 1276 didn't need to 
be rerun and 1 failed./

To resolve this i change this line (in php.inc) :

/Line 179 install -m 755  libs/libphp5.so ${D}${libdir}/apache2/modules/

by this one :

/Line 179 install -m 755  libs/libphp7.so ${D}${libdir}/apache2/modules

/Perhaps this recipe need a patch ?

Modjo

--------------441B42FB3C8ADA6BA15D21DA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi i would like to add modphp to my image (pyro branch). For this i
    add this to my local.conf : <br>
    <br>
    PACKAGECONFIG_append_pn-php = "apache2 pam"<br>
    IMAGE_INSTALL_append = "\<br>
    apache2 \<br>
    php \<br>
    php-cli \<br>
    "<br>
    <br>
    But during the build of php (7.1.0 by default in pyro) i have this
    error during install :<br>
    <br>
    <i>|
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/php-7.1.0/build/shtool
      install -c ext/phar/phar.phar
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin</i><i><br>
    </i><i>|   page: php-config.1</i><i><br>
    </i><i>| ln -s -f phar.phar
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin/phar</i><i><br>
    </i><i>| Installing PDO headers:          
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/ext/pdo/</i><i><br>
    </i><i>| </i><i><br>
    </i><i>| Notice: unserialize(): Error at offset 394 of 2427 bytes in
phar:///media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/build/pear/install-pear-nozlib.phar/PEAR/Config.php
      on line 1080</i><i><br>
    </i><i>| ERROR: One of /home/modjo/.pearrc or
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/recipe-sysroot-native/usr/bin/../../etc//pear.conf
      is corrupt, please remove them and try againInstalling header
      files:          
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/</i><i><br>
    </i><i>| install: cannot stat 'libs/libphp5.so': No such file or
      directory</i><i><br>
    </i><i>| WARNING: exit code 1 from a shell command.</i><i><br>
    </i><i>| ERROR: Function failed: do_install (log file is located at
/media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/temp/log.do_install.31439)</i><i><br>
    </i><i>ERROR: Task
(/media/modjo/data1TO/yocto/pyro/sources/meta-openembedded/meta-oe/recipes-devtools/php/php_7.1.0.bb:do_install)
      failed with exit code '1'</i><i><br>
    </i><i>NOTE: Tasks Summary: Attempted 1283 tasks of which 1276
      didn't need to be rerun and 1 failed.</i><br>
    <br>
    To resolve this i change this line (in php.inc) :<br>
    <br>
    <i>Line 179 install -m 755  libs/libphp5.so
      ${D}${libdir}/apache2/modules</i><br>
    <br>
    by this one :<br>
    <br>
    <i>Line 179 install -m 755  libs/libphp7.so
      ${D}${libdir}/apache2/modules<br>
      <br>
    </i>Perhaps this recipe need a patch ?<br>
    <br>
    Modjo<br>
  </body>
</html>

--------------441B42FB3C8ADA6BA15D21DA--
