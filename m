Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14799E00303
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2011 18:55:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBH2tXOZ002735
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Dec 2011 18:55:33 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.78) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 16 Dec 2011 18:55:32 -0800
Message-ID: <4EEC04A3.4040305@windriver.com>
Date: Fri, 16 Dec 2011 21:55:31 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.25) Gecko/20111213 Thunderbird/3.1.17
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <ce764bbeb15baa4a42cd983807ea2fec6f8ac91e.1324085495.git.dvhart@linux.intel.com>
In-Reply-To: <ce764bbeb15baa4a42cd983807ea2fec6f8ac91e.1324085495.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][meta-kernel-dev] kern-tools: Include do_install() in bbappend
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
X-List-Received-Date: Sat, 17 Dec 2011 02:55:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-16 8:31 PM, Darren Hart wrote:
> do_install() has changed over versions of kern-tools, ensure this matches
> the latest sources as referenced by ${AUTOREV}. Without this, using
> this bbappend against older kern-tools recipes will fail in very strange
> and unexplainable ways. The edison recipe for example has:
>
> do_install() {
>          install -d ${D}${bindir}
>          for s in ${kern_tools_LIST}; do
>              install -m 0755 ${S}/git/tools/$s ${D}${bindir}
>          done
> }

We don't need this. As I mentioned in other email, meta-kernel-dev
works with master, not any particular branch.

Removing this bbappend is the right solution if you aren't on master.

Having this in the bbappend, simply means that when I change the install
next time .. this breaks again.

Bruce

>
> This resulted in do_kernel_configme failures:
>
> | mv: cannot stat `/usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*': No such file or directory
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Kishore Bodke<kishore.k.bodke@intel.com>
> ---
>   .../kern-tools-native_git.bbappend                 |    7 +++++++
>   1 files changed, 7 insertions(+), 0 deletions(-)
>
> diff --git a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> index 201ec7f..445b385 100644
> --- a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> @@ -5,3 +5,10 @@ LOCALCOUNT = "0"
>   # For local kern-tools work, fill in KERN_TOOLS_SRC and uncomment the SRC_URI
>   # KERN_TOOLS_SRC ?= /path/to/local/kern-tools-clone
>   # SRC_URI = "git://${KERN_TOOLS_SRC}"
> +
> +# This step has changed over versions of kern-tools, ensure this matches
> +# the latest sources as referenced by ${AUTOREV}
> +do_install() {
> +	cd ${S}/git
> +	make DESTDIR=${D}${bindir} install
> +}


