Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98651E00B19; Mon, 14 Sep 2015 07:12:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4725DE00804
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 07:11:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8EEBogx016679
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Sep 2015 07:11:54 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 14 Sep 2015 07:11:53 -0700
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <55F6D5A6.2000607@windriver.com>
Date: Mon, 14 Sep 2015 10:11:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
Subject: Re: Warning about auto generated BSP description
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
X-List-Received-Date: Mon, 14 Sep 2015 14:12:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-09-13 04:15 PM, Paul D. DeRocco wrote:
> I'm getting the following warning:
>
> [kernel]: An auto generated BSP description was used, this normally
> indicates a misconfiguration.
> Check that your machine (chroma-bsp) has an associated kernel description.
>
> Googling turns up the information that this is sometimes a spurious error
> and nothing to worry about, because a full BSP description isn't strictly
> required. However, as far as I can see I do indeed have a BSP description.
> I built the BSP using the yocto-bsp tool. It created a
> linux-yocto-rt_3.14.bbappend (since I'm using the RT kernel), and the
> following files:
>
>      chroma-bsp.cfg
>      chroma-bsp.scc
>      chroma-bsp-preempt-rt.scc
>      chroma-bsp-standard.scc
>      chroma-bsp-tiny.scc
>      chroma-bsp-user-config.cfg
>      chroma-bsp-user-features.scc
>      chroma-bsp-user-patches.scc

The tool may have created these files, but the question is .. were they
actually used.

That's what the check in question is trying to determine.

Rather than fail to build, the tools (kernel, not yocto-bsp) will
generate a skeleton BSP, and start the build. Chances are that
skeleton BSP isn't what you want .. and that's what the tools are
warning.

Clearly the message still needs more tweaking, as do the docs.

>
> The bbappend refers to chroma-bsp-preempt-rt.scc and the last three
> (empty) files. chroma-bsp-preempt-rt.scc contains the requisite KMACHINE,
> KTYPE and KARCH, and includes chroma-bsp.scc, which refers to
> chroma-bsp.cfg. This seems to fit the definition of a "BSP description" in
> 3.4.5 of the Kernel Development Manual. The whole BSP tree is called
> "meta-chroma-bsp" and that is indeed listed in my bblayers.conf. So why is
> it complaining?

What release are you using ? If you check something in the kernel meta
directory, I can tell you if the warning is wrong, or something is 
really being missed.

The reason I asked about the release, is that the location of the kernel
meta directory will be in a different place between the various
releases. But it is always in the kernel source directory, whether it is
in work-shared, or in work. So if you head to that directory and look
for either .meta or .kernel-meta, you should see a file "top_tgt" in that
directory.

Look at the contents of that file. It should point to those generated
files you referenced above. If it doesn't .. they weren't used, and we
need to figure out why.

Cheers,

Bruce

>
> Also, I don't know that "Check that your machine has an associated kernel
> description" means. The term "kernel description" doesn't appear anywhere
> in the docs.
>


