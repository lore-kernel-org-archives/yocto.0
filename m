Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728B2E0095D; Wed, 29 Apr 2015 10:52:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AB85E007B9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 10:52:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t3THqHvQ018263
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Apr 2015 10:52:17 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 29 Apr 2015 10:52:16 -0700
Message-ID: <55411A50.3030304@windriver.com>
Date: Wed, 29 Apr 2015 13:52:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <9F136EE5FB53D64397ED1089A0E760E0162CD671@SJEXCHMB12.corp.ad.broadcom.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162CD671@SJEXCHMB12.corp.ad.broadcom.com>
Subject: Re: Kernel customized do_fetch issue
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
X-List-Received-Date: Wed, 29 Apr 2015 17:52:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-29 01:39 PM, Joel (Xi Zhou) Zhou wrote:
> Hi all,
>
> I created a do_fetch() for checkout in-house git repo, which is working
> fine with OE.
>
> do_fetch() {
>
>      cd ${WORKDIR}
>
>      rm -rf ${PN}-${PV}
>
>      git clone ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk ${PN}-${PV}
>
>      cd ${PN}-${PV}
>
>      git checkout ${KBRANCH}
>
> }
>
> With Yocto, the do_fetch() does its job, but do_configure create an issue.
>
> do_configure_prepend() {
>
>      cp ${WORKDIR}/${KERNEL_CONFIG_FILE} ${S}/.config
>
>      oe_runmake oldconfig
>
> }
>
> The do_configure error message:
>
> | make: *** No rule to make target `oldconfig'.  Stop.
>
> Basically, the kernel source checkout by do_fetch() is delete/erase
> while running do_configure().
>
> I suspect some tasks between do_fetch and do_configure are doing some
> magic work of moving the kernel  source around.

It's better if you can post your entire kernel recipe, and what
branch/release you are using.

There are steps that move the kernel source into work-shared, so that
may be impacting your flow.

But the question has to be asked. Why exactly are you manually fetching
the kernel ? The fetcher can take care of most everything.

If you need to modify the source directory later, have a look at the
steps that I'm taking in kernel-yocto.bbclass, since that works properly
within the fetcher and build infrastructure.

Bruce

>
> Any suggestion?
>
> Thanks,
>
> Joel
>
>
>


