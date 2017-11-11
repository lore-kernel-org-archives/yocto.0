Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 464A4E00CFF; Fri, 10 Nov 2017 23:47:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC55E00CEF
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 23:47:24 -0800 (PST)
Received: from [10.175.196.237] ([37.123.169.62]) by cmsmtp with SMTP
	id DQVeet4pymeZUDQVeeyuJY; Sat, 11 Nov 2017 08:47:23 +0100
To: yocto@yoctoproject.org
References: <e6e4817d-6807-d710-2ecd-cfb79505c135@emagii.com>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <e8e8afa3-182d-0275-1aeb-4cf699091338@emagii.com>
Date: Sat, 11 Nov 2017 08:47:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <e6e4817d-6807-d710-2ecd-cfb79505c135@emagii.com>
X-CMAE-Envelope: MS4wfCxREEbaaLkUW3xnnY7snUrIkcazcnF4miiOYvjMsFg+oWbJAIVJPswy7NfrKR4iHVux1jpsqjCUhIzt5FDXAmdWXtpPQommf1LFnxu2dNugQx/kOR/2
	KLQ6qgIlE+GYDFeIZJ2zfohh7E6y8YIuMjStMn+o4mSXoBGzPeOmIddX
Subject: Re: busybox->coreutils: How replace single Busybox program with same from coreutils
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
X-List-Received-Date: Sat, 11 Nov 2017 07:47:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2017-11-11 07:59, Ulf Samuelsson wrote:
> Adding a third party package to the rootfs, and some of their scripts
> will break due to the busybox version of certain applications
> do not support all the switches.
> 
> Rather that rewriting those scripts (forcing me to maintain them)
> I would like to replace the busybox version of selected applications
> with the coreutils version.
> 
> I would like to avoid adding other coreutils applications to the rootfs,
> since their is a requirement for a small rootfs.
> The core functionality is to be in a cramfs, so deleting files 
> postinstall is not working.
> 
> One application is "od" or octal dump.
> 
> My first try was a bbappend with
> ALTERNATIVE_PRIORITY[od]    = "100"
> 
> Since the busybox version has priority "50", the coreutils version 
> should be choosen, but the rootfs still choose the busybox version.
> 
> I then added "coreutils" to my image.
> This, I expected would add all the applications in the coreutils
> package so I set
> 
> ALTERNATIVE_PRIORITY[<app>]    = "5"
> for all applications supported by busybox,
> and
> ALTERNATIVE_PRIORITY[<app>]    = "0"
> for all applications not supported by busybox (and not needed by me)
> in the (vain) hope that this would result in the application not beeing
> included in the rootfs.
> 
> The result was that the rootfs now included the coreutils
> version of the desired application.
> 
> Unfortunately this also resulted in all applications with priority "0"
> being included in the rootfs as well.
> 
> Have not tried with any other value but a quick inspection of the python 
> code led me to believe that there is no value which will make
> 
> ===============================================================
> SUGGESTION:
> I think it would be a good addition to the class, if you could specify a 
> priority which excluded the application from the rootfs.
> "0", "-1" or "No" would be good values
> ===============================================================
> 
> Other alternatives I am thinking of is to add to the 
> coreutils_%.bbappend file.
> 
> FILES_${PN}-<app> = " ${bindir}/<app>"
> or maybe
> FILES_${PN}-<app> = " ${bindir}/<app>.coreutils"
> 
> Have not tested this yet, but this I guess may result in the application
> beeing present in two packages.
> 
> Is the following valid?
> 
> FILES_${PN} = " ${bindir}"
> FILES_${PN}-od = " ${bindir}/od.${BPN}"
> 
> Will it create two packages, each with their own "od", or will
> the second statement override the first so that "od" is only
> present in the coreutils-od package?
> 
> ===============================================================
> I could always create a do_install_append and install the applications
> as something else
> 
> do_install_append () {
>      install    -m 0755 <x>/od        ${D}/usr/local/bin/od
> }
> FILES_${PN}-od = " /usr/local/bin/od"
> ===============================================================
> Fully replacing the do_install is yet another alternative.
> Since the coreutils
> ===============================================================
> Checking the meta/recipes-core/coreutils/coreutils_8.27.bb
> it might be as easy as replacing the bindir_progs variable
> only listing those applications I want.
> 
> bindir_progs = "od install mktemp"
> ALTERNATIVE_${PN} = "od install mktemp"
> ===============================================================
> Any other ideas?

This "bbappend" appears to give the right result in "coreutils",
but I am interested to know if there is a better method.


ALTERNATIVE_PRIORITY[od]	= "100"
ALTERNATIVE_PRIORITY[install]	= "100"
ALTERNATIVE_PRIORITY[mktemp]	= "100"

# For all other busybox applications
ALTERNATIVE_PRIORITY[<app>]	= "5"
# For all other applications
ALTERNATIVE_PRIORITY[<app>]	= "0"

bindir_progs	= " od install"

bindir_noprogs = " \
	arch expand runcon test \
	b2sum expr nice seq timeout \
	base32 factor nl sha1sum tr \
	base64.coreutils fmt nohup sha224sum truncate \
	basename fold nproc sha256sum tsort \
	chcon groups numfmt sha384sum tty \
	cksum head sha512sum unexpand \
	comm hostid paste shred uniq \
	csplit id pathchk shuf unlink \
	cut pinky sort uptime \
	df.coreutils join pr split users \
	dir lbracket.coreutils printenv stdbuf vdir \
	dircolors link printf sum wc \
	dirname logname ptx tac who \
	du md5sum readlink tail whoami \
	env mkfifo realpath tee yes \
	"

do_install_append() {
	for f in ${bindir_noprogs} ; do
		rm	-f	${D}${bindir}/$f
	done
}

ALTERNATIVE_${PN} = " ${bindir_progs} mktemp "

> 
> Is overriding busybox with the "real" application documented somewhere?
> If not, maybe it should be.
> 
> Overriding coreutils with busybox is easily found when googling.
> 
> Best Regards
> Ulf Samuelsson

Best Regards
Ulf Samuelsson

