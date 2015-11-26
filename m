Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FEE0E00BD5; Thu, 26 Nov 2015 05:41:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5FBE00B7D
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 05:41:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tAQDfQjO021159
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Nov 2015 05:41:26 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 26 Nov 2015 05:41:25 -0800
To: Deepika Teriar <deepteriar@gmail.com>, <yocto@yoctoproject.org>
References: <CAM_pFj_cwoDAC30cBcPB1besMJwZuO=mh6E4-n8Q5=5=2j_VWg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56570C02.4050709@windriver.com>
Date: Thu, 26 Nov 2015 08:41:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAM_pFj_cwoDAC30cBcPB1besMJwZuO=mh6E4-n8Q5=5=2j_VWg@mail.gmail.com>
Subject: Re: Copying the kernel in the poky directory
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
X-List-Received-Date: Thu, 26 Nov 2015 13:41:31 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-11-26 02:39 AM, Deepika Teriar wrote:
> Hi
>
> I am customizing yocto for beaglebone black
> I do not want my kernel to get downloaded from the git after I clean the
> build directory. So i have kept the linux-kernel directory with the name
> kernel-3.14.29 in the poky directory.
> And in the linux-yocto_3.14.bb <http://linux-yocto_3.14.bb> file i have
> changed SRC_URI *from:*
>
> SRC_URI =
> "git://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
> <http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta>"
>
> *to :*
>
> SRC_URI = "file://${COREBASE}/kernel-3.14.29"
>
> On compiling core-image-minimal I am getting the following error
> *
> ERROR: ExpansionError during parsing
> /home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb
> <http://linux-yocto_3.14.bb>: Failure expanding variable do_patch:
> ExpansionError: Failure expanding variable SRCPV, expression was
> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> Fetcher failure: SRCREV was used yet no valid SCM was found in SRC_URI
>
> *
> Can any one tell me the error?

You still need the git protocol, the fetcher can't determine what to
do with the SRCREV.

Try:

SRC_URI = 
"git://${COREBASE}/kernel-3.14.29;protocol=file;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"

Bruce

>
> Thanks
> Deepika
>
>
>
>


