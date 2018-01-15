Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E36C7E00DA5; Mon, 15 Jan 2018 06:17:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2158AE0085E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 06:17:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2018 06:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,363,1511856000"; d="scan'208";a="10925848"
Received: from mkchalla-mobl1.gar.corp.intel.com (HELO [10.249.67.240])
	([10.249.67.240])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2018 06:17:44 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: Isaac Nickaein <nickaein.i@gmail.com>
References: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
	<C0207330DF60C5409302EC78C3FE68F34B0AAD@PGSMSX105.gar.corp.intel.com>
	<CA+NJmkdJnEUdxrUZDTrE-nDWrNsVweovs-VTuxkxwUL2wCc5hQ@mail.gmail.com>
Message-ID: <5843f4b7-ecc9-4195-42a4-e7ea69bd2e2e@intel.com>
Date: Mon, 15 Jan 2018 22:17:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CA+NJmkdJnEUdxrUZDTrE-nDWrNsVweovs-VTuxkxwUL2wCc5hQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: conf/machine/<machine.conf> in my custom layer doesn't get parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 14:17:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/15/2018 09:13 PM, Isaac Nickaein wrote:
> Hi Anuj,
> 
> On Mon, Jan 15, 2018 at 4:00 PM, Mittal, Anuj <anuj.mittal@intel.com> wrote:
>> Have you defined BBPATH in your layer.conf correctly?
> 
> 
> I guess so. Here is relevant lines in layer.conf for BBPATH:
> 
> # We have a conf and classes directory, add to BBPATH
> BBPATH .= ":${LAYERDIR}"
> 
> # We have recipes-* directories, add to BBFILES
> BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>         ${LAYERDIR}/recipes-*/*/*.bbappend \
>         ${LAYERDIR}/*.bb"
> 
> BBFILE_COLLECTIONS += "samim-saba"
> BBFILE_PATTERN_samim-saba = "^${LAYERDIR}/"
> BBFILE_PRIORITY_samim-saba = "99"
> 
> 
> And this is the layout of conf directory of my layer:
> 
> yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-samim-saba/conf$ find
> .
> ./layer.conf
> ./machine
> ./machine/colibri-imx6.conf

I hope that this machine name, colibri-imx6, isn't being used in some
other included layer as well ...

meta-freescale-3rdparty/conf/machine/colibri-imx6.conf? Can you try
changing the name?

Thanks,
Anuj

> yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-smim-saba/conf$
> 



