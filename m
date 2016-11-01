Return-Path: <Swapna.Gurumani@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D074E00509; Tue,  1 Nov 2016 11:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [198.175.253.37 listed in list.dnswl.org]
Received: from email.microchip.com (exsmtp01.microchip.com [198.175.253.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B5BE0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:45:03 -0700 (PDT)
Received: from CHN-SV-EXMX05.mchp-main.com ([fe80::88ec:a5e:b3b2:e58]) by
	CHN-SV-EXCH01.mchp-main.com ([fe80::9840:ffdf:ec5:1335%29]) with mapi
	id 14.03.0181.006; Tue, 1 Nov 2016 11:45:03 -0700
From: <Swapna.Gurumani@microchip.com>
To: <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] how to copy a tar file to Root file system
Thread-Index: AdIz3RmoIOKxDAIqRCm8SCX7sc6E+wAQVLEAAAxww2D//7a5gIAAbtBw///KQID//8OtMA==
Date: Tue, 1 Nov 2016 18:45:02 +0000
Message-ID: <061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
	<7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.215.90]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 18:45:08 -0000
X-Groupsio-MsgNum: 32748
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_061E8AE63BCA5A41B92BC90F19C8225237AE761CCHNSVEXMX05mchp_"

--_002_061E8AE63BCA5A41B92BC90F19C8225237AE761CCHNSVEXMX05mchp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Every step I take close, I take 2 back :(
My bb now looks like the one attached. I had to add each folder for FILES_$=
{PN} contrary to your advice otherwise I got the following error:
ERROR: crank-1.0-r2 do_package: QA Issue: crank: Files/directories were ins=
talled but not shipped in any package:
  /opt
  /opt/crank
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
crank: 2 installed and not shipped files. [installed-vs-shipped]



I am now getting the following error:
ERROR: crank-1.0-r2 do_install: Function failed: do_install (log file is lo=
cated at /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortex=
a5hf-neon-poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457)
ERROR: Logfile of failure stored in: /home/swapna/workspace/work/yocto/poky=
/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r2/temp/=
log.do_install.26457
Log data follows:
| DEBUG: Executing shell function do_install
| cp: cannot stat '/home/swapna/workspace/work/yocto/poky/build-atmel/tmp/w=
ork/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r2/crank': No such file or=
 directory
| WARNING: /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cort=
exa5hf-neon-poky-linux-gnueabi/crank/1.0-r2/temp/run.do_install.26457:1 exi=
t 1 from 'cp -a --no-preserve=3Downership /home/swapna/workspace/work/yocto=
/poky/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r2/=
crank /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5h=
f-neon-poky-linux-gnueabi/crank/1.0-r2/image/opt/'
| ERROR: Function failed: do_install (log file is located at /home/swapna/w=
orkspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gn=
ueabi/crank/1.0-r2/temp/log.do_install.26457)
ERROR: Task 1082 (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/re=
cipes-qt/apps/crank_1.0.bb, do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3806 tasks of which 3805 didn't need to be r=
erun and 1 failed.
No currently running tasks (3034 of 4662)

Summary: 1 task failed:
  /home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/recipes-qt/apps/cr=
ank_1.0.bb, do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



Also if I look into the=20
/home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon=
-poky-linux-gnueabi/crank/1.0-r2
It is empty.
Could you please help me with this?
Regards
Swapna



-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, October 31, 2016 11:59 PM
To: Swapna Gurumani - C40450 <Swapna.Gurumani@microchip.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] how to copy a tar file to Root file system

On Tue, 01 Nov 2016 04:03:58 Swapna.Gurumani@microchip.com wrote:
> With the attached recipe I get the following error:
> ERROR: crank-1.0-r0 do_package: QA Issue: crank: Files/directories=20
> were installed but not shipped in any package: /opt
>   /opt/sb_launch.sh
>   /opt/clear_buffers
>   /opt/runsb.sh
>   /opt/README.txt

Ah, I think you need this line first in do_install:

    install -d ${D}/opt/crank

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

--_002_061E8AE63BCA5A41B92BC90F19C8225237AE761CCHNSVEXMX05mchp_
Content-Type: application/octet-stream; name="crank_1.0.bb"
Content-Description: crank_1.0.bb
Content-Disposition: attachment; filename="crank_1.0.bb"; size=935;
	creation-date="Tue, 01 Nov 2016 03:00:21 GMT";
	modification-date="Tue, 01 Nov 2016 18:35:01 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiQ3JhbmsgaG9tZSBhdXRvbWF0aW9uIGRlbW8iCkxJQ0VOU0UgPSAiQ0xP
U0VEIgoKUEFDS0FHRVMgPSAiJHtQTn0iCgpQUiA9ICJyMiIKREVQRU5EUyA9ICJ0c2xpYiBhbHNh
LWxpYiIKU1JDX1VSSSA9ICJmaWxlOi8vY3JhbmstdiR7UFZ9LnRhci5neiIKClMgPSAiJHtXT1JL
RElSfS9jcmFuay12JHtQVn0iCgppbmhlcml0IHBrZ2NvbmZpZwoKRklMRVNfJHtQTn0gPSAiIFwK
ICAvb3B0L2NyYW5rL0hvbWUtODAwLyogXAogIC9vcHQvY3JhbmsvSG9tZS04MDAvLiogXAogIC9v
cHQvY3JhbmsvTGF1bmNoZXIyMDE2X1NvZnR3YXJlUmVuZGVyZXIvKiBcCiAgL29wdC9jcmFuay9M
YXVuY2hlcjIwMTZfU29mdHdhcmVSZW5kZXJlci8uKiBcCiAgL29wdC9jcmFuay9saW51eC1zYW1h
NWQtYXJtbGUtZmJkZXYtb2JqLyogXAogIC9vcHQvY3JhbmsvbWVkX2RlbW9fMjAxNi8qIFwKICAv
b3B0L2NyYW5rL21lZF9kZW1vXzIwMTYvLiogXAogIC9vcHQvY3JhbmsvV2FzaGluZ01hY2hpbmVf
VjIvKiBcCiAgL29wdC9jcmFuay9XYXNoaW5nTWFjaGluZV9WMi8uKiBcCiAgL29wdC9jcmFuay9j
bGVhcl9idWZmZXJzIFwKICAvb3B0L2NyYW5rL2xheWVyLWVuYWJsZSBcCiAgL29wdC9jcmFuay9S
RUFETUUudHh0IFwKICAvb3B0L2NyYW5rL3J1bl9oYS5zaCBcCiAgL29wdC9jcmFuay9ydW5zYi5z
aCBcCiAgL29wdC9jcmFuay9ydW5zYi00ODAuc2ggXAogIC9vcHQvY3Jhbmsvc2JfbGF1bmNoLnNo
IFwKICAvb3B0L2NyYW5rL3NiZGVtby5zaCBcCiIKZG9faW5zdGFsbCgpIHsKICAgICBpbnN0YWxs
IC1kICR7RH0vb3B0L2NyYW5rCiAgICAgY3AgLWEgLS1uby1wcmVzZXJ2ZT1vd25lcnNoaXAgJHtX
T1JLRElSfS9jcmFuayAke0R9L29wdC8KICAgICBpbnN0YWxsIC1tIDA3NTUgJHtXT1JLRElSfS9j
cmFuayAke0R9L29wdC9jcmFuay8KfQo=

--_002_061E8AE63BCA5A41B92BC90F19C8225237AE761CCHNSVEXMX05mchp_--
