Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6978BE00C5D; Wed,  6 Apr 2016 02:07:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D7B6E00B37
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 02:07:16 -0700 (PDT)
Received: from [10.1.1.92] (c-d1b2e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.178.209]) by mx.zohomail.com
	with SMTPS id 1459933635177471.04469962085284;
	Wed, 6 Apr 2016 02:07:15 -0700 (PDT)
From: Martin Bergek <martin@spotwise.com>
Message-Id: <246B01F2-8EE3-4593-B1E8-E5785B7FA082@spotwise.com>
Date: Wed, 6 Apr 2016 11:07:10 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-Zoho-Virus-Status: 1
Subject: [oe] Problem building apache2 with php5
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
X-List-Received-Date: Wed, 06 Apr 2016 09:07:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I created an image in more than a year ago with apache2 and php5. Now =
when I pull in all updates since then I realise that mod_php has been =
moved from the modphp recipe in meta-webserver to the php recipe in =
meta-oe.

I have created a php_5.6.12.bbappend file in which I have=20

	PACKAGECONFIG_append =3D " apache2=E2=80=9D

Not entirely sure if this is the way to do it but when I try to build =
the php recipe I get a bunch of errors (see below) and would really =
appreciate some pointer on how to do it.

Would it be easier to build nginx with php support?


In file included from =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/mod_php5.c:26:0:
| =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/php_apache.h:24:19: fatal error: httpd.h: No =
such file or directory
| compilation terminated.
| In file included from =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/apache_config.c:25:0:
| =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/php_apache.h:24:19: fatal error: httpd.h: No =
such file or directory
| compilation terminated.
| Makefile:474: recipe for target 'sapi/apache2handler/mod_php5.lo' =
failed
| make: *** [sapi/apache2handler/mod_php5.lo] Error 1
| make: *** Waiting for unfinished jobs....
| Makefile:478: recipe for target 'sapi/apache2handler/apache_config.lo' =
failed
| make: *** [sapi/apache2handler/apache_config.lo] Error 1
| =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/php_functions.c:33:23: fatal error: =
ap_config.h: No such file or directory
| compilation terminated.
| Makefile:480: recipe for target 'sapi/apache2handler/php_functions.lo' =
failed
| make: *** [sapi/apache2handler/php_functions.lo] Error 1
| =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/php=
-5.6.12/sapi/apache2handler/sapi_apache2.c:41:23: fatal error: =
ap_config.h: No such file or directory
| compilation terminated.
| Makefile:476: recipe for target 'sapi/apache2handler/sapi_apache2.lo' =
failed
| make: *** [sapi/apache2handler/sapi_apache2.lo] Error 1
| WARNING: exit code 1 from a shell command.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at =
/home/martin/Yocto/poky/rpi/tmp/work/x86_64-linux/php-native/5.6.12-r0/tem=
p/log.do_compile.2418)



