Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B88F1E00CFF; Fri, 10 Nov 2017 23:01:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Nov 2017 23:01:06 PST
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F84DE00CEF
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 23:01:06 -0800 (PST)
Received: from [10.175.196.237] ([37.123.169.62]) by cmsmtp with SMTP
	id DPkseszT7meZUDPkteypsT; Sat, 11 Nov 2017 07:59:03 +0100
To: yocto@yoctoproject.org
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <e6e4817d-6807-d710-2ecd-cfb79505c135@emagii.com>
Date: Sat, 11 Nov 2017 07:59:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfL8BQ/53tqpjKaXw1BxcgjFRrSP9pFpBc08muQyIZriRK4gsIL9X8iONpiFUblm2CCaNZZHR5+3FRl8b8LdGh5YyvtK98BkIrcQAS32L0OuVUp+5SY7v
	sXLM8N7dah+Ilwd/hyeqdTPm+GfAocLnnW97wqJOY12GgWCTq530WVW+
Subject: busybox->coreutils: How replace single Busybox program with same from coreutils
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
X-List-Received-Date: Sat, 11 Nov 2017 07:01:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Adding a third party package to the rootfs, and some of their scripts
will break due to the busybox version of certain applications
do not support all the switches.

Rather that rewriting those scripts (forcing me to maintain them)
I would like to replace the busybox version of selected applications
with the coreutils version.

I would like to avoid adding other coreutils applications to the rootfs,
since their is a requirement for a small rootfs.
The core functionality is to be in a cramfs, so deleting files 
postinstall is not working.

One application is "od" or octal dump.

My first try was a bbappend with
ALTERNATIVE_PRIORITY[od]	= "100"

Since the busybox version has priority "50", the coreutils version 
should be choosen, but the rootfs still choose the busybox version.

I then added "coreutils" to my image.
This, I expected would add all the applications in the coreutils
package so I set

ALTERNATIVE_PRIORITY[<app>]	= "5"
for all applications supported by busybox,
and
ALTERNATIVE_PRIORITY[<app>]	= "0"
for all applications not supported by busybox (and not needed by me)
in the (vain) hope that this would result in the application not beeing
included in the rootfs.

The result was that the rootfs now included the coreutils
version of the desired application.

Unfortunately this also resulted in all applications with priority "0"
being included in the rootfs as well.

Have not tried with any other value but a quick inspection of the python 
code led me to believe that there is no value which will make

===============================================================
SUGGESTION:
I think it would be a good addition to the class, if you could specify a 
priority which excluded the application from the rootfs.
"0", "-1" or "No" would be good values
===============================================================

Other alternatives I am thinking of is to add to the 
coreutils_%.bbappend file.

FILES_${PN}-<app> = " ${bindir}/<app>"
or maybe
FILES_${PN}-<app> = " ${bindir}/<app>.coreutils"

Have not tested this yet, but this I guess may result in the application
beeing present in two packages.

Is the following valid?

FILES_${PN} = " ${bindir}"
FILES_${PN}-od = " ${bindir}/od.${BPN}"

Will it create two packages, each with their own "od", or will
the second statement override the first so that "od" is only
present in the coreutils-od package?

===============================================================
I could always create a do_install_append and install the applications
as something else

do_install_append () {
	install	-m 0755 <x>/od		${D}/usr/local/bin/od
}
FILES_${PN}-od = " /usr/local/bin/od"
===============================================================
Fully replacing the do_install is yet another alternative.
Since the coreutils
===============================================================
Checking the meta/recipes-core/coreutils/coreutils_8.27.bb
it might be as easy as replacing the bindir_progs variable
only listing those applications I want.

bindir_progs = "od install mktemp"
ALTERNATIVE_${PN} = "od install mktemp"
===============================================================
Any other ideas?

Is overriding busybox with the "real" application documented somewhere?
If not, maybe it should be.

Overriding coreutils with busybox is easily found when googling.

Best Regards
Ulf Samuelsson

