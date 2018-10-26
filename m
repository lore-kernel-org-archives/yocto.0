Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F279DE00BC4; Fri, 26 Oct 2018 06:54:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356D2E00A4F
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 06:54:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9QDs4XB001424
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 26 Oct 2018 06:54:04 -0700 (PDT)
Received: from [128.224.22.92] (128.224.22.92) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 26 Oct 2018 06:54:03 -0700
To: =?UTF-8?Q?M=c3=a5ns_Zigher?= <mans.zigher@gmail.com>, Yocto discussion
	list <yocto@yoctoproject.org>
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
	<CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
Date: Fri, 26 Oct 2018 09:54:03 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
Subject: Re: [SDK] including kernel devsrc to the SDK failes
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
X-List-Received-Date: Fri, 26 Oct 2018 13:54:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 10/26/2018 4:28 AM, Måns Zigher wrote:
> So it looks like the number of /bin/awk have increased so the patch will 
> fix one problem but there is more to fix. I have a "workaround" even 
> though I am not so sure it is a workaround or not. The problem is fixed 
> adding to kernel-devsrc.bbappend
> 
> do_install_append() {
> # This fixes the rpm dependency failure on install of kernel-devsrc 
> depending on /bin/awk
> cd ${D} || true
> for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
> sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
> done
> }
> 
> The original solution can be found at
> 
> https://gerrit.automotivelinux.org/gerrit/gitweb?p=AGL/meta-agl.git;a=blobdiff;f=meta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-staging_%25.bbappend;h=43fa494a26c132b875c177acf0389163d5e34c06;hp=b2e5431400acef0a5372e5490ac4f464482d4b3b;hb=4bfc821810cdee47611c6d3e94d771971f51fa75;hpb=1cf6b17fd15fde569374c85d4df722784f4e9c67
> 
> The best solution might be to add kernel patches but since the number of 
> /bin/awk have increased I think that this is fine in the kernel universe 
> but a problem in poky universe. So by adding it to kernel-devsrc it will 
> make sure that when the kernel get's tainted in the future it will not 
> break the rpm build. This is a "bug" only when using rpm ipk will not 
> detect it as a problem.

I'm ok with this type of solution as well, since this is similar
to what we've had to do with perf in the past (sed and modify versus
patching). I can always patch and fix things in linux-yocto, but then
another other kernel still suffers the issue.

It would be better if folks with this problem also send patches upstream
to allow us to vary the location of awk via a variable, since that would
eventually fix all kernels without needing any modifications .. but that
is a medium term time play, versus doing the sed operation.

If you have a patch to kernel-devsrc in master, feel free to send it
and cc' me, and I can pull it into my queue, test and then send it in
my next pull request.

Bruce

> 
> BR
> Måns Zigher
> 
> Den tors 25 okt. 2018 kl 13:19 skrev Måns Zigher <mans.zigher@gmail.com 
> <mailto:mans.zigher@gmail.com>>:
> 
>     Hi,
> 
>     I am trying to add the kernel devsrc to the SDK but I am getting the
>     following error
> 
>     Problem: conflicting requests
>        - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.imx8mqevk
> 
>     I have applied the following patch to try and fix this problem.
> 
>     http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=8af11c1cdd8fa08217e702b57cf96e9030db52b2
> 
>     I have verified that it was applied and run kernel-devsrc works. The
>     error is from do_populate_sdk and I am suspecting that the problem
>     is related to me using rpm. I believe rpm might be to smart in this
>     case detecting the dependency and resulting dnf from failing when
>     running the task do_populate_sdk. Any suggestion on how to get
>     forward on this error. I would like to run dnf manually to check any
>     dependency of the kernel-devsrc rpm package but cannot figure out how.
> 
>     BR
>     Måns Zigher
> 
> 
> 

