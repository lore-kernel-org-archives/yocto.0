Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE155E00A8C; Thu, 29 Oct 2015 06:25:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 886 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Oct 2015 06:25:24 PDT
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4705E008AE
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 06:25:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9TDAamw031670
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 29 Oct 2015 06:10:36 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 29 Oct 2015 06:10:36 -0700
To: Edward Wingate <edwingate8@gmail.com>, "Daniel." <danielhilst@gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
	<CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56321AB5.1050108@windriver.com>
Date: Thu, 29 Oct 2015 09:10:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
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
X-List-Received-Date: Thu, 29 Oct 2015 13:25:26 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-10-29 03:22 AM, Edward Wingate wrote:
> On Tue, Oct 27, 2015 at 5:36 AM, Daniel. <danielhilst@gmail.com> wrote:
>> I suggest that you do an "bitbake -fc configure YOUR_KERNEL" and
>> inspect the .config WORKDIR folder. Is that yours .config?
>
> I'm not sure if this is the WORKDIR I'm suppose to be looking at, but
> after I ran that bitbake command, I found my defconfig in
> build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0
>
> It is also in .config.old in
> build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0/build
>
> The .config in in
> build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0/build
> is not mine.  My .config seems to have been renamed to .config.old and
> replaced with this one.

That's the kernel's configuration subsystem at play, it still has to
process the the defconfig (which was placed as .config before starting
the kernel build). Invalid options are removed, others are selected
by Kconfigs, etc. So what you end up with is the processed .config and
your old one in .config.old.

Cheers,

Bruce

>


