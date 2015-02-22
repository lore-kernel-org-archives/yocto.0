Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF0B9E006B5; Sun, 22 Feb 2015 07:33:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45682E003AB
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 07:32:58 -0800 (PST)
Received: from mail-wi0-f181.google.com ([209.85.212.181]) by mail.gmx.com
	(mrgmx103) with ESMTPSA (Nemesis) id 0Lk81O-1XoZoQ3Ooc-00c6p4 for
	<yocto@yoctoproject.org>; Sun, 22 Feb 2015 16:32:56 +0100
Received: by mail-wi0-f181.google.com with SMTP id r20so11810186wiv.2
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 07:32:56 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.180.171.35 with SMTP id ar3mr12992569wic.24.1424619176020;
	Sun, 22 Feb 2015 07:32:56 -0800 (PST)
Received: by 10.194.39.169 with HTTP; Sun, 22 Feb 2015 07:32:55 -0800 (PST)
Date: Sun, 22 Feb 2015 16:32:55 +0100
Message-ID: <CAAKMwipbvKwqWGbB1HMtxSEets6V7So1usw1dqqf6zw8OLbQ8g@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:DaK0JsMSzudyyCJlDnti2hlsZxKbQNjGUMgBil2ACUR1ggnZZIT
	KGD3Rz0OOCD0CdjalaNzk8CkJTYvH2ks2EUklwqAsAY4WfgJmg4fNGgfXek94vBvCZQvCNS
	6rtaVOsQfQHNfmIuh/8S2NPsoPEYov9rZWQdsz2QEc96Kva45QCfbyHz8KGV1vYKXQRKAoH
	Uv9l5VcZ5pXa4Y+3yNybw==
X-UI-Out-Filterresults: notjunk:1;
Subject: WARNING: QA Issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 22 Feb 2015 15:33:04 -0000
Content-Type: multipart/alternative; boundary=001a1135e78eed58b9050faeff58

--001a1135e78eed58b9050faeff58
Content-Type: text/plain; charset=UTF-8

Hi,


During a "bitbake  core-image-sato-sdk"
WARNING: QA Issue: smstools3 requires /bin/bash, but no providers in its
RDEPENDS [file-rdeps]

You can find the sources
https://github.com/kaiulrich/meta-smstools3

Any thing I can do against this?


Friendly regards
Kai

log.do_package_qa:
DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function do_package_qa
NOTE: DO PACKAGE QA
DEBUG: Executing python function read_subpackage_metadata
DEBUG: Python function read_subpackage_metadata finished
NOTE: Checking Package: smstools3-dbg
NOTE: i586-poky-linux-objdump -p
/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/packages-split/smstools3-dbg/usr/bin/.debug/smsd
NOTE: Checking Package: smstools3-staticdev
NOTE: Checking Package: smstools3-dev
NOTE: Checking Package: smstools3-doc
NOTE: Checking Package: smstools3-locale
NOTE: Checking Package: smstools3
NOTE: i586-poky-linux-objdump -p
/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/packages-split/smstools3/usr/bin/smsd
WARNING: QA Issue: smstools3 requires /bin/bash, but no providers in its
RDEPENDS [file-rdeps]
NOTE: DONE with PACKAGE QA
DEBUG: Python function do_package_qa finished
DEBUG: Executing python function sstate_task_postfunc
NOTE: Using umask 002 (not 22) for sstate packaging
DEBUG: Executing python function sstate_hardcode_path
NOTE: Removing hardcoded paths from sstate package: 'find
/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/sstate-build-package_qa/
\( -name "*.la" -o -name "*-config" -o -name "*_config" \) -type f | xargs
grep -l -e
'/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/sysroots/qemux86'
| tee
/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/sstate-build-package_qa/fixmepath
| xargs --no-run-if-empty sed -i -e
's:/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/sysroots/qemux86:FIXMESTAGINGDIRHOST:g''
DEBUG: Python function sstate_hardcode_path finished
DEBUG: Executing shell function sstate_create_package
DEBUG: Shell function sstate_create_package finished
DEBUG: Python function sstate_task_postfunc finished

--001a1135e78eed58b9050faeff58
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br><br></div><div>During a &quot;bitbake=C2=
=A0 core-image-sato-sdk&quot;<br>WARNING: QA Issue: smstools3 requires /bin=
/bash, but no providers in its RDEPENDS [file-rdeps]<br><br></div><div>You =
can find the sources <br><a href=3D"https://github.com/kaiulrich/meta-smsto=
ols3">https://github.com/kaiulrich/meta-smstools3</a><br><br></div><div>Any=
 thing I can do against this? <br><br></div><div><br></div><div>Friendly re=
gards<br></div><div>Kai<br></div><div><br></div><div>log.do_package_qa:<br>=
DEBUG: Executing python function sstate_task_prefunc<br>DEBUG: Python funct=
ion sstate_task_prefunc finished<br>DEBUG: Executing python function do_pac=
kage_qa<br>NOTE: DO PACKAGE QA<br>DEBUG: Executing python function read_sub=
package_metadata<br>DEBUG: Python function read_subpackage_metadata finishe=
d<br>NOTE: Checking Package: smstools3-dbg<br>NOTE: i586-poky-linux-objdump=
 -p /home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky=
-linux/smstools3/3.1.15-r0/packages-split/smstools3-dbg/usr/bin/.debug/smsd=
<br>NOTE: Checking Package: smstools3-staticdev<br>NOTE: Checking Package: =
smstools3-dev<br>NOTE: Checking Package: smstools3-doc<br>NOTE: Checking Pa=
ckage: smstools3-locale<br>NOTE: Checking Package: smstools3<br>NOTE: i586-=
poky-linux-objdump -p /home/kulrich/Develpment/yocto/dizzy/poky/build_test/=
tmp/work/i586-poky-linux/smstools3/3.1.15-r0/packages-split/smstools3/usr/b=
in/smsd<br>WARNING: QA Issue: smstools3 requires /bin/bash, but no provider=
s in its RDEPENDS [file-rdeps]<br>NOTE: DONE with PACKAGE QA<br>DEBUG: Pyth=
on function do_package_qa finished<br>DEBUG: Executing python function ssta=
te_task_postfunc<br>NOTE: Using umask 002 (not 22) for sstate packaging<br>=
DEBUG: Executing python function sstate_hardcode_path<br>NOTE: Removing har=
dcoded paths from sstate package: &#39;find /home/kulrich/Develpment/yocto/=
dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/sstate-b=
uild-package_qa/ \( -name &quot;*.la&quot; -o -name &quot;*-config&quot; -o=
 -name &quot;*_config&quot; \) -type f | xargs grep -l -e &#39;/home/kulric=
h/Develpment/yocto/dizzy/poky/build_test/tmp/sysroots/qemux86&#39; | tee /h=
ome/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux=
/smstools3/3.1.15-r0/sstate-build-package_qa/fixmepath | xargs --no-run-if-=
empty sed -i -e &#39;s:/home/kulrich/Develpment/yocto/dizzy/poky/build_test=
/tmp/sysroots/qemux86:FIXMESTAGINGDIRHOST:g&#39;&#39;<br>DEBUG: Python func=
tion sstate_hardcode_path finished<br>DEBUG: Executing shell function sstat=
e_create_package<br>DEBUG: Shell function sstate_create_package finished<br=
>DEBUG: Python function sstate_task_postfunc finished<br></div><div><br></d=
iv></div>

--001a1135e78eed58b9050faeff58--
