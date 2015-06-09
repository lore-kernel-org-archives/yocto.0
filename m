Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16241E0096A; Tue,  9 Jun 2015 01:31:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 187 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Jun 2015 01:31:13 PDT
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E46B4E00496
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 01:31:13 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t598Rxt6000596
	for <yocto@yoctoproject.org>; Tue, 9 Jun 2015 10:28:04 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Tue, 9 Jun 2015 10:27:58 +0200
From: Peter Bergin <peter.bergin@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Python3 failure using ctypes
Thread-Index: AdCijjC84rVA5NwYQ8OM32IUS6li8g==
Date: Tue, 9 Jun 2015 08:27:58 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C822E98@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.236.6.200]
MIME-Version: 1.0
Subject: Python3 failure using ctypes
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
X-List-Received-Date: Tue, 09 Jun 2015 08:31:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

we are currently migrating from daisy to fido and I have experienced troubl=
e with the package python3-ctypes. When I try to import the ctypes library =
on target I get the following output:

root@petber2:~# python3
Python 3.3.3 (default, Jun  8 2015, 11:21:29)
[GCC 4.9.2] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import ctypes
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python3.3/ctypes/__init__.py", line 7, in <module>
    from _ctypes import Union, Structure, Array
ImportError: No module named '_ctypes'

The root cause of this is an error during the build of Python3. From tmp/wo=
rk/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r1.0/temp/log.do_co=
nfigure:

DEBUG: Executing shell function do_configure
autoreconf: 'configure.ac' or 'configure.in' is required
NOTE: _ctypes failed to autoreconf

The targeted machine for us is i.Mx6 built with the Freescale community BSP=
 but I have also been able to reproduce the same thing with just building c=
ore-image-base for qemux86 only appending python3-ctypes.

Anyone having an idea around this error?

Regards,
/Peter






Peter Bergin



peter.bergin@tritech.se
+46 733 35 21 05


www.tritech.se
+46 31 763 38 00
Nordstadstorget 6
SE-411 05 G?teborg, Sweden

