Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1FDE0059B
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:40:06 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 14:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102158076"
Received: from unknown (HELO [10.255.14.103]) ([10.255.14.103])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 14:40:05 -0800
Message-ID: <4F29BF45.8060008@linux.intel.com>
Date: Wed, 01 Feb 2012 14:40:05 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2012 22:40:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 01/02/12 14:26, Darren Hart wrote:
> ranpwd is used to generate random strings of various types, including
> passwords, UUIDs, and MAC addresses.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 ++++++++++++++++++++
>   1 files changed, 23 insertions(+), 0 deletions(-)
>   create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>
> diff --git a/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
> new file mode 100644
> index 0000000..66fcc26
> --- /dev/null
> +++ b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
> @@ -0,0 +1,23 @@
> +DESCRIPTION = "Random password generator"
> +#SECTION = "utilities"

We may as well delete this line, no?

> +LICENSE = "GPLv2+"
> +LIC_FILES_CHKSUM = "file://ranpwd.c;beginline=1;endline=11;md5=0e8585e19117526efedfaeb50c345d7a"
> +PR = "r0"
> +
> +inherit autotools
> +
> +SRC_URI = "git://git.zytor.com/utils/ranpwd.git"
> +SRCREV = "b62aab579e288715b82d5575befaa2b8ff210c2b"
> +
> +S=${WORKDIR}/git

Variable assignments are usually quoted.

S = "${WORKDIR}/git"

> +
> +do_configure_prepend () {
> +	if [ ! -e acinclude.m4 -a -e aclocal.m4 ]; then
> +		cp aclocal.m4 acinclude.m4
> +	fi
> +}
> +
> +do_install() {
> +	install -d ${D}/${bindir}
> +	install -m 0755 ${S}/ranpwd ${D}/${bindir}/ranpwd
> +}

-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

