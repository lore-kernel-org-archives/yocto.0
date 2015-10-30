Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A9C8E00B76; Fri, 30 Oct 2015 10:16:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 701FAE00B5D
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 10:16:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9UHGHHL005779
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 30 Oct 2015 10:16:17 -0700
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Fri, 30 Oct 2015 10:16:16 -0700
To: "Lorenz B." <lorenz.b.444+yocto@gmail.com>, <yocto@yoctoproject.org>
References: <CACwxUjmknKj2vU+zF30xjyE9XRZsaCf9WyX7=N-EyF+VxvJ6mg@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <5633A5E0.3080006@windriver.com>
Date: Fri, 30 Oct 2015 12:16:16 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CACwxUjmknKj2vU+zF30xjyE9XRZsaCf9WyX7=N-EyF+VxvJ6mg@mail.gmail.com>
Subject: Re: Toolchains of different architectures overwrite files
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
X-List-Received-Date: Fri, 30 Oct 2015 17:16:20 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/30/15 12:07 PM, Lorenz B. wrote:
> Hello,
> 
> I setup yocto (fido fa55b8e") with
> source oe-init-build-env build-qemu
> and changed MACHINE to "none" and PACKAGE_CLASSES to "package_ipk" in
> conf/local.conf
> 
> 
> built an arm and a mips toolchain with the following commands:
> export MACHINE=qemuarm; bitbake meta-toolchain
> export MACHINE=qemumips; bitbake meta-toolchain
> 
> Installed and reanmed the toolchains like this:
> ./poky-glibc-x86_64-meta-toolchain-armv5e-toolchain-1.8.1.sh -d poky
> mv poky poky-arm
> ./poky-glibc-x86_64-meta-toolchain-mips32r2-toolchain-1.8.1.sh -d poky
> mv poky poky-mips
> 
> 
> And created md5 sums from both x86_64-pokysdk-linux sysroots:
> cd poky-arm/sysroots/x86_64-pokysdk-linux
> find . -type f -exec md5sum {} \; > ../../../arm.md5
> cd -
> 
> cd poky-mips/sysroots/x86_64-pokysdk-linux/
> find . -type f -exec md5sum {} \; > ../../../mips.md5
> cd -

You can't just md5sum.  Different builds will generate different md5 sums due to
embedded data states, build stamps, build id, etc.

You need to actually use a program to compare the binaries themselves
(specifically the sections).

Anything that is taged with an arch type is specific to the target of your
compilation.  Anything else, the comparisons of the sections should be the same
within the limitations of those embedded components.  If there is a deviation,
then we should be able to look into it.. but the md5sum just says they were
built at different times to me -- and doesn't tell me there is a problem.

--Mark

> and finaly compared the two md5 files with
> colordiff -u arm.md5 mips.md5 | less -R
> to be sure that everything is equal. But to my surprise, it isn't equal.
> 
> There are some files which don't exist in the other toolchain in
> architecture specific directories which might be ok.
> But there are some files which would be overwritten if both toolchains
> are installed to the same location like the default /opt/poky/1.8.1.
> And for every toolchain I install the last one wins.
> 
> Do I use those toolchains in a wrong fashion if I install them all in
> the default path?
> And if not, why doesn't it bother that files are overwritten?
> 
> Best regards,
> Lorenz
> 
> 
> 


