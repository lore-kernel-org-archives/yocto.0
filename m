Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7322AE00777; Tue, 10 Mar 2015 06:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47599E00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:58:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2ADwDjF013032
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Mar 2015 06:58:13 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 10 Mar 2015 06:58:12 -0700
Message-ID: <54FEF84C.6060306@windriver.com>
Date: Tue, 10 Mar 2015 09:57:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Jeff Melville <dev@jeffmelville.com>, <yocto@yoctoproject.org>
References: <CAH7sbrwoZsNe39fv2UsL3K3jW__pAefeezUt0Z7a1vMXrUWTBA@mail.gmail.com>
In-Reply-To: <CAH7sbrwoZsNe39fv2UsL3K3jW__pAefeezUt0Z7a1vMXrUWTBA@mail.gmail.com>
Subject: Re: do_kernel_configme error when patches create directories
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
X-List-Received-Date: Tue, 10 Mar 2015 13:58:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-10 09:49 AM, Jeff Melville wrote:
> I'm using a Yocto flow to build for the Zynq with the meta-xilinx with
> some customizations:
> - I'm using a bbappend to replace the linux-xlnx 3.14 kernel with one
> that has had mainline changes from 3.14.17 merged in.
> - I added a task between patch and configure for applying the Xenomai
> kernel patches and running the Xenomai prepare_kernel script.
>
> All layers are on the dizzy branch. The linux-xlnx recipe inherits
> from linux-yocto but obtains the metadeta from an out of tree source
> using a SRC_URI append with type=kmeta. This ends up getting copied
> into the kernel tree with during the kernel_configme task. This is my
> first time working with a kernel recipe in the linux-yocto style so
> I'm still coming up to speed a bit.
>
> The problem arises because the Xenomai patch process creates
> additional directories in the Linux tree. As part of the
> kernel_configme task, the kgit-meta script will attempt to use the
> last unversioned directory returned by 'git ls-files -o --directory'
> as the metadata directory, which does not work.
>
> Two questions:
> 1) What is the best short term way for me to work around this?

Write a _append to the do_kernel_checkout that removes the extra
directories. But since I have no idea what the directories are
used for .. that may or may not be a good thing.

> 2) Is there a way to patch the meta directory detection in kgit-meta
> to make it more robust against false detections?

Its software, so everything is possible :) But that code was written to
free ourselves from being locked to the meta-data directory needing
to match the meta-data repo/branch name, and to not introduce yet
another arcane variable to the build process.

If I tweak this yet again, other use cases will potentially break, so
it has to be carefully done.

I have some ideas on how to do this though .. can you open an
enhancement request in the yocto bugzilla and assign it to me ?

Cheers,

Bruce


>
> Thanks,
> Jeff
>


