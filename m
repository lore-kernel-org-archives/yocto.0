Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76888E00970; Thu, 30 Mar 2017 02:04:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [213.174.32.97 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26D0E00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 02:04:54 -0700 (PDT)
Received: from mailin03.ims-firmen.de ([192.168.1.143])
	by mailout02.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1ctW0j-0000wB-lT; Thu, 30 Mar 2017 11:04:53 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin03.ims-firmen.de with esmtpsa
	(UNKNOWN:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1ctW0j-0000UG-8N; Thu, 30 Mar 2017 11:04:53 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 218AB5057FE;
	Thu, 30 Mar 2017 11:04:53 +0200 (CEST)
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>, yocto@yoctoproject.org
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
	<1490864272.11772.18.camel@collabora.co.uk>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <76fabb22-50be-0fcd-1377-79b49e5fb052@iseg-hv.de>
Date: Thu, 30 Mar 2017 11:03:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490864272.11772.18.camel@collabora.co.uk>
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
X-List-Received-Date: Thu, 30 Mar 2017 09:04:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Thank you and sorry. But i haven't miss the braces in the .bb file.



Am 30.03.2017 um 10:57 schrieb Fabien Lahoudere:
> On Thu, 2017-03-30 at 10:14 +0200, Yuvarajesh Valleru wrote:
>> Hi,
>>
>> I am new to yocto. I was building an example recipe 'helloworld' and
>> have a parse error. but could not find the solution
>>
>> here is the error:
>>
>> cc@cc:~/src/oe-core/build$ bitbake helloworld
>> Loading cache: 100% |############################################| Time:
>> 0:00:01
>> Loaded 3468 entries from dependency cache.
>> ERROR: ParseError at
>> /home/cc/src/oe-core/build/../layers/meta-iseg/recipes-ics/helloworld/helloworld_1.0.bb:1:
>> unparsed line: '﻿SUMMARY = "hello world program"'
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>> what would be the mistake in the recipe. please find the recipe, source
>> and pro files below
>>
>> helloworld_1.0.bb recipe:
>>
>> SUMMARY = "hello world program"
>> HOMEPAGE = "http://www.yoctoproject.org/"
>> SECTION = "network"
>> LICENSE = "CLOSED"
>> inherit qt4e
>>
>> SRC_URI = " \
>>       file://helloworld.pro \
>>       file://helloworld.cpp \
>>       "
>>
>> S = "${WORKDIR}"
>>
>> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>>       "
>>
>> do_compile() {
>>           ${CC} helloworld.cpp -o helloworld
>> }
>>
>> do_install() {
>>           install -d ${D}${bindir} ${D}${docdir}/helloworld
>>           install -m 0644 helloworld
>>
> braces is missing here.
>
>> helloworld.cpp file:
>>
>> #include <QTextStream>
>>
>> int main(int argc, char *argv[])
>> {
>>       Q_UNUSED(argc);
>>       Q_UNUSED(argv);
>>
>>       QTextStream cout(stdout);
>>
>>       cout << "Hello World" << endl;
>>       return 0;
>> }
>>
>> helloworld.pro file:
>>
>> QT += core
>> QT += gui
>> QT += widgets
>> TARGET = helloworld
>> CONFIG += console
>>
>> TEMPLATE = app
>>
>> SOURCES += helloworld.cpp
>>
>> Could you plese help me with the solution.
>>
>> Thank you,
>>
>> Yuvi
>>
>>
>>
>>


