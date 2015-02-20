Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A7CE002AC; Fri, 20 Feb 2015 06:44:29 -0800 (PST)
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
	*      [212.227.15.19 listed in list.dnswl.org]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91EE3E00288
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 06:44:26 -0800 (PST)
Received: from mail-we0-f169.google.com ([74.125.82.169]) by mail.gmx.com
	(mrgmx002) with ESMTPSA (Nemesis) id 0LomJ1-1XvXsI0HUJ-00grXV for
	<yocto@yoctoproject.org>; Fri, 20 Feb 2015 15:44:25 +0100
Received: by wesw55 with SMTP id w55so5988841wes.5
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 06:44:24 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.180.171.35 with SMTP id ar3mr20767718wic.24.1424443464286;
	Fri, 20 Feb 2015 06:44:24 -0800 (PST)
Received: by 10.194.39.169 with HTTP; Fri, 20 Feb 2015 06:44:24 -0800 (PST)
Date: Fri, 20 Feb 2015 15:44:24 +0100
Message-ID: <CAAKMwiqm0iwzPjUsX127nk==hgQ0OcrrXFnG6brfhAF+DbO5Xg@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:8SX08AiFLp+ccyIyyItReUekR0MzpjaSAbTPTuOx8QVZgFQrml4
	WRCEwAzU4sZ+0BwseruCfdAlX5Q1FhQ2BxyNcX5B6/vE9bRHJMdNkc2pK/g0bukMYSFJ/S4
	enB7VJ0fAol1S4o1kkNHTAgIIvDN67B6WE3nCRp1tHhPGQTaarXDep2HOFmtWpcUqGWQO61
	pj1WbopwutQ068Z5rYaXA==
X-UI-Out-Filterresults: notjunk:1;
Subject: WARNING: Could not copy license file LICENSE -> Downloaded archive structure?
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
X-List-Received-Date: Fri, 20 Feb 2015 14:44:29 -0000
Content-Type: multipart/alternative; boundary=001a1135e78eb10b94050f8616d5

--001a1135e78eb10b94050f8616d5
Content-Type: text/plain; charset=UTF-8

Hi,

I working on a smstools3 recipe.

after running bitbake smstools3

I got following
WARNING: Could not copy license file LICENSE: [Errno 2] No such file or
directory:
'/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools3-3.1.15/LICENSE'
Function failed: smstools3: LIC_FILES_CHKSUM points to an invalid file:
.../yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools3-3.1.15/LICENSE

After looking for the LICENSE found it under
.../yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools/LICENSE

It seams the reason is the Package structure of the smstools3-3.1.15.tar.gz.
it is

smstools3-3.1.15.tar.gz.
---smstools3
-------src
-------scripts
-------examples
-------doc
-------uninstall.sh
-------README
-------package.sh
-------Makefile
-------LICENSE

with a struktur (2) like

smstools3-3.1.15.tar.gz.
---smstools3-3.1.15
-------src
-------scripts
-------examples
-------doc
-------uninstall.sh
-------README
-------package.sh
-------Makefile
-------LICENSE

it works fine.

Any idea how I can configure my recipe that that it works with the original
package structure?

Kai Ulrich

--001a1135e78eb10b94050f8616d5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I working on a smstools3 recipe=
.<br><br>after running bitbake smstools3<br><br>I got following <br>WARNING=
: Could not copy license file LICENSE: [Errno 2] No such file or directory:=
 &#39;/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-po=
ky-linux/smstools3/3.1.15-r0/smstools3-3.1.15/LICENSE&#39;<br>Function fail=
ed: smstools3: LIC_FILES_CHKSUM points to an invalid file: .../yocto/dizzy/=
poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools3-3.1.=
15/LICENSE<br><br></div><div>After looking for the LICENSE found it under .=
../yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0=
/smstools/LICENSE</div><div><br></div><div>It seams the reason is the Packa=
ge structure of the smstools3-3.1.15.tar.gz.<br></div><div>it is<br><br></d=
iv><div>smstools3-3.1.15.tar.gz.<br>---smstools3<br>-------src<br>-------sc=
ripts<br>-------examples<br>-------doc<br>-------uninstall.sh<br>-------REA=
DME<br>-------package.sh<br>-------Makefile<br>-------LICENSE<br><br></div>=
<div>with a struktur (2) like <br><br>smstools3-3.1.15.tar.gz.<br>---smstoo=
ls3-3.1.15<br>-------src<br>-------scripts<br>-------examples<br>-------doc=
<br>-------uninstall.sh<br>-------README<br>-------package.sh<br>-------Mak=
efile<br>-------LICENSE<br><br></div><div>it works fine.<br></div><div><br>=
</div><div>Any idea how I can configure my recipe that that it works with t=
he original package structure?<br></div><div><br>Kai Ulrich<br></div><div><=
br><br></div></div>

--001a1135e78eb10b94050f8616d5--
