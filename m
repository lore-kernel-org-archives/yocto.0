Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF126E00B58; Fri, 30 Oct 2015 05:39:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F2CE00B4A
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 05:39:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9UCda46031120
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 30 Oct 2015 05:39:36 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 30 Oct 2015 05:39:35 -0700
To: Edward Wingate <edwingate8@gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
	<CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
	<56321AB5.1050108@windriver.com>
	<CAGMdoF=2QJd1DEH7f7p7sRcMP56vz_pGx8VFUOANWt+fiMShTQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <563364F1.1050901@windriver.com>
Date: Fri, 30 Oct 2015 08:39:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAGMdoF=2QJd1DEH7f7p7sRcMP56vz_pGx8VFUOANWt+fiMShTQ@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Fri, 30 Oct 2015 12:39:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-10-29 03:06 PM, Edward Wingate wrote:
> On Thu, Oct 29, 2015 at 6:10 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> That's the kernel's configuration subsystem at play, it still has to
>> process the the defconfig (which was placed as .config before starting
>> the kernel build). Invalid options are removed, others are selected
>> by Kconfigs, etc. So what you end up with is the processed .config and
>> your old one in .config.old.
>
> Ah, OK, it's possible the option I wanted (CONFIG_REMOTEPROC) is not
> available for my machine (imx6/wandboard) and so removed.  Where can I
> look to see if a config option is valid for a particular
> machine/architecture?

I'm working on some patches that will show you that as part of the
configuration audit task (there's potentially a library I can
leverage) .. but for now, either looking at the Kconfig's or running
menuconfig are the best (brute force) way to find what is missing.

Bruce

>
> Thanks for the help.
>


