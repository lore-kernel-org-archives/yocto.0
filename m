Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6057E00970; Thu, 30 Mar 2017 03:12:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [213.174.32.97 listed in dnsbl.sorbs.net]
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B83F6E00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 03:12:32 -0700 (PDT)
Received: from mailin04.ims-firmen.de ([192.168.1.144])
	by mailout02.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1ctX4B-0000pw-kv; Thu, 30 Mar 2017 12:12:31 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin04.ims-firmen.de with esmtpsa
	(UNKNOWN:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1ctX4B-0001UV-AR; Thu, 30 Mar 2017 12:12:31 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id B6DB650D4F5;
	Thu, 30 Mar 2017 12:12:30 +0200 (CEST)
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
	<CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com>
	<13bc9cc1-e108-db9c-c78a-58b08023acdd@iseg-hv.de>
	<1490865053.11772.20.camel@collabora.co.uk>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <682ba285-da42-c79a-6cbf-aa5f5b09d3df@iseg-hv.de>
Date: Thu, 30 Mar 2017 12:11:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490865053.11772.20.camel@collabora.co.uk>
Subject: Re: Parse error: unable to parse line and new error arm-linux-gnueabi-gcc : helloworld.cpp 'no such file or directory'
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
X-List-Received-Date: Thu, 30 Mar 2017 10:12:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you. By typing the code again the eroor solved. but an another error.

Should i post in new mail or here is ok.

error:

ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log 
file is located at 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742)
ERROR: Logfile of failure stored in: 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742
Log data follows:
| DEBUG: Executing shell function do_compile
| arm-angstrom-linux-gnueabi-gcc: error: helloworld.cpp: No such file or 
directory
| arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
| compilation terminated.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742)
ERROR: Task 
(/home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/helloworld_1.0.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 591 tasks of which 584 didn't need to be 
rerun and 1 failed.
NOTE: Writing buildhistory

Summary: 1 task failed:
/home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/helloworld_1.0.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Am 30.03.2017 um 11:10 schrieb Fabien Lahoudere:
> The line is parsed here.
> Did you copy paste the quote from a tutorial on internet?
> Sometime encoding lead to such issues.
>
> On Thu, 2017-03-30 at 11:00 +0200, Yuvarajesh Valleru wrote:
>> No,
>> Sorry. I haven't left it. The please find the file below:
>> SUMMARY = "hello world program"
>> HOMEPAGE = "http://www.yoctoproject.org/"
>> SECTION = "network"
>> LICENSE = "CLOSED"
>> inherit qt4e
>>
>> SRC_URI = " \
>>      file://helloworld.pro \
>>      file://helloworld.cpp \
>>      "
>>
>> S = "${WORKDIR}"
>>
>> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>>      "
>>
>> do_compile() {
>>          ${CC} helloworld.cpp -o helloworld
>> }
>>
>> do_install() {
>>          install -d ${D}${bindir} ${D}${docdir}/helloworld
>>          install -m 0644 helloworld ${D}${bindir}
>> }
>>
>> Am 30.03.2017 um 10:56 schrieb Burton, Ross:
>>> On 30 March 2017 at 09:14, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
>>>> SUMMARY = "hello world program"
>>>> HOMEPAGE = "http://www.yoctoproject.org/"
>>>> SECTION = "network"
>>>> LICENSE = "CLOSED"
>>>> inherit qt4e
>>>>
>>>> SRC_URI = " \
>>>>      file://helloworld.pro \
>>>>      file://helloworld.cpp \
>>>>      "
>>>>
>>>> S = "${WORKDIR}"
>>>>
>>>> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>>>>      "
>>>>
>>>> do_compile() {
>>>>          ${CC} helloworld.cpp -o helloworld
>>>> }
>>>>
>>>> do_install() {
>>>>          install -d ${D}${bindir} ${D}${docdir}/helloworld
>>>>          install -m 0644 helloworld
>>>>
>>> Did you leave out the trailing } here in the real file?
>>>
>>> Ross
>>   


