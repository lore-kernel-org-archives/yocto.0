Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6EEDE00AE4; Tue,  1 Dec 2015 09:16:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99025E00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 09:16:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tB1HGTVL004342
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 1 Dec 2015 09:16:34 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 1 Dec 2015 09:16:29 -0800
To: Stuart Weaver <Stuart.Weaver@datapath.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <2DCC166D4F5C8443941662E1E67FD5C178773046@LEICESTER.internal.datapath.co.uk>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <565DD5E7.8050809@windriver.com>
Date: Tue, 1 Dec 2015 12:16:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <2DCC166D4F5C8443941662E1E67FD5C178773046@LEICESTER.internal.datapath.co.uk>
Subject: Re: compiling out-of-tree modules with master
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
X-List-Received-Date: Tue, 01 Dec 2015 17:16:43 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 15-12-01 11:57 AM, Stuart Weaver wrote:
> Hi All,
>
> I’m currently merging my Yocto repo up to master (from Daisy). I’m
> having problems compiling some of the out-of-tree modules that we have
> which I’ve tracked down to the Makefiles looking for:
>
> include/generated/autoconf.h
>
> include/generated/uapi/linux/version.h
>
> Now I originally had to heavily patch these Makefiles to include
> variables like KERNEL_SRC and KERNEL_VERSION as they were just calling
> shell commands (e.g. echo uname –a). However the KERNEL_SRC is pointing
> to the new location of the source in ‘work-shared’ where none of the
> generated .h files are.


STAGING_KERNEL_BUILDDIR is what you want. That's where all the artifacts
of the build required for external module builds are placed.

Bruce

>
> Could someone inform on the differences in workflow and which variables
> I should be using to point to the build source of the kernel (i.e.
> work/corei7-intel-common-poky-linux/linuux-yocto/3.19.5…./linux-corei7-64-intel-common-standard-build)?
>
> *Best Regards,*
>
> *Stuart*
>
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
>
>


