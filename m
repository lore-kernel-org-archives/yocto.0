Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8C41E008DC; Wed,  4 Mar 2015 13:35:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B5BE00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 13:35:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t24LZE2I027419
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Mar 2015 13:35:14 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 4 Mar 2015 13:35:14 -0800
Message-ID: <54F77A6C.2090901@windriver.com>
Date: Wed, 4 Mar 2015 16:34:36 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503041007020.13143@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503041007020.13143@Device-040570>
Subject: Re: should YP docs explain "type=kmeta" and "destsuffix="?
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
X-List-Received-Date: Wed, 04 Mar 2015 21:35:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-04 10:10 AM, Robert P. J. Day wrote:
>
>    i see that the meta-xilinx layer takes advantage of extending the
> search path for features directories with things like:
>
> SRC_URI = " \
> git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=https;branch=${KBRANCH} \
>                  file://xilinx-base;type=kmeta;destsuffix=xilinx-base \
>                  file://0001-ARM64-Add-new-Xilinx-ZynqMP-SoC.patch \
>    ... etc etc ...
>
> and the above is processed from kernel-yocto.bbclass with:
>
> # check the SRC_URI for "kmeta" type'd git repositories. Return the name of
> # the repository as it will be found in WORKDIR
> def find_kernel_feature_dirs(d):
>      feature_dirs=[]
>      fetch = bb.fetch2.Fetch([], d)
>      for url in fetch.urls:
>          urldata = fetch.ud[url]
>          parm = urldata.parm
>          if "type" in parm:
>              type = parm["type"]
>          if "destsuffix" in parm:
>              destdir = parm["destsuffix"]
>              if type == "kmeta":
>                  feature_dirs.append(destdir)
>
>      return feature_dirs
>
> i see no mention of this feature in any of the YP docs ... is it meant
> to be used by normal developers, so that it should be explained?

It's not really a typical developer option. It is for maintaining a
separate repository of meta-data, and then allowing the tools and
kernel to use that meta data as part of the build.

Only someone maintaining (and sharing) a large set of their own
kernel fragments would be interested in this.

So I'm on the fence if it is worth documenting, but lean towards
at least mentioning it and offering a simple use case.

Bruce

>
> rday
>


