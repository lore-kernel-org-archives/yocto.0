Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAE0E00815; Tue, 10 Feb 2015 10:02:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D602E005A9
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 10:02:10 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[172.16.1.11])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YLF6Q-0008Nu-UW; Tue, 10 Feb 2015 18:00:03 +0000
Message-ID: <54DA4799.7000008@twobit.us>
Date: Tue, 10 Feb 2015 13:02:01 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Icedove/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1422459365-22900-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1422459365-22900-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][ 0/4] More whack-a-mole with version numbers.
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
X-List-Received-Date: Tue, 10 Feb 2015 18:02:17 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Forgot to copy the maintainer ... again :)

On 01/28/2015 10:36 AM, Philip Tricca wrote:
> This is another round of renaming the meta-selinux bbappends to use
> wild cards. The three recipes renamed here had no patches to port.
> They're basically 3-4 line recipes that enable SELinux or add a 
> config file. Per previous guidance I've removed PRs so hopefully
> this is still the right thing to do.
> 
> One oddity here is the change made to the ustr recipe. It was using
> a variable I've never seen before and failing to fetch the SRC_URI.
> I think this variable was a typo and after changing ${BPV} -> ${PV}
> the expected behavior was restored.
> 
> Philip Tricca (4):
>   sysklogd: Use wildcard for version and remove PR.
>   dhcp: Use wildcard for version number.
>   coreutils: Use wildcard for version and remove PR.
>   ustr: Fix use of bad variable in SRC_URI.
> 
>  recipes-connectivity/dhcp/dhcp_%.bbappend       |    3 +++
>  recipes-connectivity/dhcp/dhcp_4.3.0.bbappend   |    3 ---
>  recipes-core/coreutils/coreutils_%.bbappend     |    1 +
>  recipes-core/coreutils/coreutils_8.22.bbappend  |    3 ---
>  recipes-extended/sysklogd/sysklogd_%.bbappend   |    1 +
>  recipes-extended/sysklogd/sysklogd_1.5.bbappend |    3 ---
>  recipes-extended/ustr/ustr_1.0.4.bb             |    2 +-
>  7 files changed, 6 insertions(+), 10 deletions(-)
>  create mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
>  delete mode 100644 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
>  create mode 100644 recipes-core/coreutils/coreutils_%.bbappend
>  delete mode 100644 recipes-core/coreutils/coreutils_8.22.bbappend
>  create mode 100644 recipes-extended/sysklogd/sysklogd_%.bbappend
>  delete mode 100644 recipes-extended/sysklogd/sysklogd_1.5.bbappend
> 


