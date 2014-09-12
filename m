Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF670E00799; Fri, 12 Sep 2014 08:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD1DE006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 08:51:12 -0700 (PDT)
Received: from [50.153.135.139] (helo=[172.16.1.11])
	by smtp.twobit.us with esmtpsa (TLSv1:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1XST2N-0004lo-7D; Fri, 12 Sep 2014 15:45:27 +0000
Message-ID: <54131665.6090909@twobit.us>
Date: Fri, 12 Sep 2014 11:51:01 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Icedove/24.7.0
MIME-Version: 1.0
To: Xin.Ouyang@windriver.com
References: <1410177817-19839-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1410177817-19839-1-git-send-email-flihp@twobit.us>
X-Enigmail-Version: 1.6
X-SA-Exim-Connect-IP: 50.153.135.139
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/3] Version number cleanup
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
X-List-Received-Date: Fri, 12 Sep 2014 15:51:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello Xin,

Just noticed that you pushed these patches to the meta-selinux repo but
with your name and a slightly different commit message in one case.
Other than forgetting to copy you on my initial message to the list was
there a problem with my patches? Just want to be sure that the next time
I send out patches I get them right if there was in fact an issue with
these ones.

Thanks,
Philip

On 09/08/2014 08:03 AM, Philip Tricca wrote:
> Patch set to use wildcards in the version numbers of the at and shadow
> bbappends and to remove the 3.4 kernel bbappend.
> 
> Philip Tricca (3):
>   shadow: Use wildcard for version number in bbappend.
>   at: Use wildcard for version number in bbappend.
>   linux-yocto: Remove bbappend for old 3.4 kernel.
> 
>  recipes-extended/at/at_%.bbappend               |    7 +++++++
>  recipes-extended/at/at_3.1.14.bbappend          |    7 -------
>  recipes-extended/shadow/shadow_%.bbappend       |    5 +++++
>  recipes-extended/shadow/shadow_4.1.4.3.bbappend |    5 -----
>  recipes-kernel/linux/linux-yocto_3.4.bbappend   |    7 -------
>  5 files changed, 12 insertions(+), 19 deletions(-)
>  create mode 100644 recipes-extended/at/at_%.bbappend
>  delete mode 100644 recipes-extended/at/at_3.1.14.bbappend
>  create mode 100644 recipes-extended/shadow/shadow_%.bbappend
>  delete mode 100644 recipes-extended/shadow/shadow_4.1.4.3.bbappend
>  delete mode 100644 recipes-kernel/linux/linux-yocto_3.4.bbappend
> 


