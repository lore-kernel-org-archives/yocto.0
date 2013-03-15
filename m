Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFD60E00770;
	Fri, 15 Mar 2013 07:46:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2FEkvnB003297
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Mar 2013 07:46:57 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 15 Mar 2013 07:46:57 -0700
Message-ID: <5143345E.9070703@windriver.com>
Date: Fri, 15 Mar 2013 07:46:54 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <cover.1363347615.git.insop.song@gmail.com>
	<a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
In-Reply-To: <a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] add scheedtool-dl for testing sched_deadline use jiri's github as a main repo
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
X-List-Received-Date: Fri, 15 Mar 2013 14:47:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-15 04:47 AM, Insop Song wrote:
> ---
>   recipes-extended/images/core-image-realtime.bb |    1 +
>   recipes-tools/schedtool-dl/schedtool-dl.bb     |   23 +++++++++++++++++++++++
>   2 files changed, 24 insertions(+)
>   create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb
>
> diff --git a/recipes-extended/images/core-image-realtime.bb b/recipes-extended/images/core-image-realtime.bb
> index 624aacf..386b16b 100644
> --- a/recipes-extended/images/core-image-realtime.bb
> +++ b/recipes-extended/images/core-image-realtime.bb
> @@ -8,5 +8,6 @@ EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
>   IMAGE_INSTALL = "\
>   	${CORE_IMAGE_BASE_INSTALL} \
>   	rt-app \
> +	schedtool-dl \
>   	libgcc \
>   	"

This part of the patch is still a problem, so I'll drop  it on merge.
We still need to rationalize why we can't extend the oe-core
rt images:

./recipes-rt/images/core-image-rt.bb
./recipes-rt/images/core-image-rt-sdk.bb

For this addition. Until we work through that, you can carry a local
patch, or add the tools back via your local.conf adding it to IMAGE_INSTALL.

> diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb b/recipes-tools/schedtool-dl/schedtool-dl.bb
> new file mode 100644
> index 0000000..6b298f1
> --- /dev/null
> +++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
> @@ -0,0 +1,23 @@
> +DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
> +SECTION = "devel"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
> +PR = "r1"
> +
> +SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
> +SRCREV = "${AUTOREV}"

We also want to lock down the SRCREV vs autorev. I'd expect that going 
forward,
you can maintain/update this once we've merged it, so when a SRCREV
is known to be good, you can send update patches with the new values
(just like I do with linux-yocto in oe-core). But in the general case,
we want to have consistent and reproducible builds and to do that,
we need a well defined SRCREV.

So one more version of the series and we should be good (you can
drop the image addition as part of that) .. sorry for all the
iterations, the first merges always take the longest.

Cheers,

Bruce

> +
> +S = "${WORKDIR}/git"
> +
> +do_compile() {
> +	oe_runmake
> +}
> +
> +do_install() {
> +     	install -d ${D}${bindir}
> +     	install -m 0755 schedtool ${D}${bindir}
> +}
> +
> +FILES_{PN} = "${bindir}/schedtool"
> +
> +PARALLEL_MAKE = ""
>


