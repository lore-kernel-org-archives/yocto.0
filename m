Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BDC2E00B51; Thu, 30 Mar 2017 01:58:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3497CE009A5
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 01:57:56 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 2284F260F91
Message-ID: <1490864272.11772.18.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Yuvarajesh Valleru <yv@iseg-hv.de>, yocto@yoctoproject.org
Date: Thu, 30 Mar 2017 10:57:52 +0200
In-Reply-To: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Parse error: unable to parse line
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
X-List-Received-Date: Thu, 30 Mar 2017 08:58:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-03-30 at 10:14 +0200, Yuvarajesh Valleru wrote:
> Hi,
> 
> I am new to yocto. I was building an example recipe 'helloworld' and 
> have a parse error. but could not find the solution
> 
> here is the error:
> 
> cc@cc:~/src/oe-core/build$ bitbake helloworld
> Loading cache: 100% |############################################| Time: 
> 0:00:01
> Loaded 3468 entries from dependency cache.
> ERROR: ParseError at 
> /home/cc/src/oe-core/build/../layers/meta-iseg/recipes-ics/helloworld/helloworld_1.0.bb:1: 
> unparsed line: '﻿SUMMARY = "hello world program"'
> 
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> 
> 
> what would be the mistake in the recipe. please find the recipe, source 
> and pro files below
> 
> helloworld_1.0.bb recipe:
> 
> SUMMARY = "hello world program"
> HOMEPAGE = "http://www.yoctoproject.org/"
> SECTION = "network"
> LICENSE = "CLOSED"
> inherit qt4e
> 
> SRC_URI = " \
>      file://helloworld.pro \
>      file://helloworld.cpp \
>      "
> 
> S = "${WORKDIR}"
> 
> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>      "
> 
> do_compile() {
>          ${CC} helloworld.cpp -o helloworld
> }
> 
> do_install() {
>          install -d ${D}${bindir} ${D}${docdir}/helloworld
>          install -m 0644 helloworld
> 

braces is missing here.

> helloworld.cpp file:
> 
> #include <QTextStream>
> 
> int main(int argc, char *argv[])
> {
>      Q_UNUSED(argc);
>      Q_UNUSED(argv);
> 
>      QTextStream cout(stdout);
> 
>      cout << "Hello World" << endl;
>      return 0;
> }
> 
> helloworld.pro file:
> 
> QT += core
> QT += gui
> QT += widgets
> TARGET = helloworld
> CONFIG += console
> 
> TEMPLATE = app
> 
> SOURCES += helloworld.cpp
> 
> Could you plese help me with the solution.
> 
> Thank you,
> 
> Yuvi
> 
> 
> 
> 

