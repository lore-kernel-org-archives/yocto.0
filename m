Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BEE1E007A0; Fri, 22 Aug 2014 05:49:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19517E00796
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 05:49:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7MCndpM011982
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Aug 2014 05:49:41 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 22 Aug 2014 05:49:39 -0700
Message-ID: <53F73C54.60803@windriver.com>
Date: Fri, 22 Aug 2014 08:49:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Sona Sarmadi <sona.sarmadi@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48256DB954@SESTOEX04.enea.se>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48256DB954@SESTOEX04.enea.se>
Subject: Re: kernel patches
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
X-List-Received-Date: Fri, 22 Aug 2014 12:49:55 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-08-22 08:17 AM, Sona Sarmadi wrote:
> Hi all,
>
> I wonder how you handle the kernel patches?
>
> I want to apply a security kernel patch to Linux-yocto 3.10  which is used by Romely:
>
> meta-inte/meta-romley/conf/machine/romley-ivb.conf:PREFERRED_VERSION_linux-yocto ?= "3.10%"
>
> For me the obvious way to fix this is:
> 1) Create >> "poky/meta/recipes-kernel/linux/files" directory and add the patch file there
>
> 2) modify: poky/meta/recipes-kernel/linux/linux-yocto_3.10.bb
>
>
> -SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> +SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta \
> +          file://Fix_for_CVE-2014-0196_pty_layer_race_condition.patch \
> +          "
>
> Please let me know if this is the correct way. And also let me know if I upstream this kernel patch to yocto, will yocto accept it (if the patch looks correct of course). Please let me know if you prefer to apply security patches to kernels in some different way.

If this is for your own local builds, a layer with a bbappend and the
patches is a better idea.

For the main linux-yocto recipes, everything is maintained in the
git repositories, not patched at build time, so changes go to the
linux-yocto mailing list, and I merge them from there.

On this particular topic, I already track all the -stable updates for
our linux-yocto kernels, and CVEs are picked up by -stable. So there's
a process in place to get security related fixes into the linux-yocto
trees.

I'm a few releases behind at the moment, due to a 2 week vacation,
but 3.4, 3.10 and 3.14 will all be updated shortly.

If you do notice a CVE that isn't part of the k.org -stable updates,
that is or more interest, and we should nominate it for -stable upstream
and have it flow to all kernels via that process.

Bruce

>
> Thanks
> BR - Sona
>


