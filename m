Return-Path: <laurent.joli@kapelse.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28165E008E4; Fri, 23 Mar 2018 07:09:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.120.128.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 600 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Mar 2018 07:09:07 PDT
Received: from stripper.pharmagest.com (stripper.pharmagest.com
	[176.120.128.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B31DBE008A2
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 07:09:07 -0700 (PDT)
Received: from 127.0.0.1 (localhost [127.0.0.1])
	by stripper.pharmagest.com (Postfix) with ESMTP id 2AC176B23EA
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:59:06 +0100 (CET)
X-MIB-FROM: laurent.joli@kapelse.com
X-MIBTO: BKix6Fn39KkNW6xZDl6cUwBEMlwkHw1v0T/KRO0nYQo=
Received: from localhost ([127.0.0.1])
	by stripper.pharmagest.com (MIBD SMTP Server 4.0.0000) with SMTP ID 272
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:59:03 +0100 (CET)
Received: from vm-shunter1-prd.sim.pharmagest.com
	(vm-shunter1-prd.sim.pharmagest.com [172.19.32.61])
	by stripper.pharmagest.com (Postfix) with ESMTP id E547F6B2399
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com
	(vm-zimbranemta1-prd.sim.pharmagest.com [172.19.32.35])
	by vm-shunter1-prd.sim.pharmagest.com (courriel) with ESMTP id
	BBEBF80AACE3
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:39:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	C306E80DFC
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10032)
	with ESMTP id Vx3d8qeBBPrU for <yocto@yoctoproject.org>;
	Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	42CFE80E79
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10026)
	with ESMTP id TLZhCkveFklM for <yocto@yoctoproject.org>;
	Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Received: from vm-zimbranestore2-prd.sim.pharmagest.com (unknown
	[172.19.32.41])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	2B17D80E7D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 14:39:26 +0100 (CET)
Date: Fri, 23 Mar 2018 14:39:26 +0100 (CET)
From: Laurent JOLI <laurent.joli@kapelse.com>
To: yocto@yoctoproject.org
Message-ID: <1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
In-Reply-To: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
References: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
MIME-Version: 1.0
X-Mailer: Zimbra 8.7.1_GA_1670 (ZimbraWebClient - FF59 (Linux)/8.7.1_GA_1670)
Thread-Topic: Add lib to meta-qt5
Thread-Index: er7iejBdaQjPl+57FjNd46qK7FgLGw==
Subject: Add lib to meta-qt5
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
X-List-Received-Date: Fri, 23 Mar 2018 14:09:09 -0000
Content-Type: multipart/alternative; 
	boundary="=_c13d92a3-6a5a-4e85-8bbb-c74833cb6122"

--=_c13d92a3-6a5a-4e85-8bbb-c74833cb6122
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

I'm working with an old version of YOCTO, jethro 2.0. 
And I want to produce an SDK of QT5, version 5.5.1. 

So, I add the layer meta-qt5 on YOCTO for build the following recipe : 

https://github.com/meta-qt5/meta-qt5/tree/jethro 

meta-toolchain-qt5 

My question is : 

How to add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5 ? 

thanks by advance. 

--=_c13d92a3-6a5a-4e85-8bbb-c74833cb6122
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: Arial, Helvetica, sans-serif; font-s=
ize: 10pt; color: #000000"><div>Hello,<br data-mce-bogus=3D"1"></div><div><=
br data-mce-bogus=3D"1"></div><div>I'm working with an old version of YOCTO=
, jethro 2.0.<br data-mce-bogus=3D"1"></div><div>And I want to produce an S=
DK of QT5, version 5.5.1.<br data-mce-bogus=3D"1"></div><div><br data-mce-b=
ogus=3D"1"></div><div>So, I add the layer meta-qt5 on YOCTO for build the f=
ollowing recipe :<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"=
1"></div><div>https://github.com/meta-qt5/meta-qt5/tree/jethro<br data-mce-=
bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>meta-toolchain-q=
t5<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>M=
y question is :</div><div><br data-mce-bogus=3D"1"></div><div> How to add a=
n lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5 ?<br data-mc=
e-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>thanks by adva=
nce.<br data-mce-bogus=3D"1"></div></div></body></html>

--=_c13d92a3-6a5a-4e85-8bbb-c74833cb6122--
