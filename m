Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E1AE0098E; Wed, 30 Apr 2014 12:21:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D847FE0096C
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 12:21:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3UJLnrj018272
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Apr 2014 12:21:49 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 30 Apr 2014 12:21:49 -0700
Message-ID: <53614D3F.6040005@windriver.com>
Date: Wed, 30 Apr 2014 15:21:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>	<ljlmib$45t$1@ger.gmane.org>	<53614482.8010102@windriver.com>
	<53614BFB.3070100@gmx.de>
In-Reply-To: <53614BFB.3070100@gmx.de>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Wed, 30 Apr 2014 19:21:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-30 03:16 PM, Neuer User wrote:
> Am 30.04.2014 20:44, schrieb Bruce Ashfield:
>> Can you send me your bblayers out of band ? I'm using meta-fsl-arm
>> and meta-fsl-arm-extra to get a build going, and running into
>> expansion errors in the kernel recipes. Rather than hunt around
>> more than necessary, I'll check against your layers.
>>
>> Bruce
>>
> Sure:
>
> LCONF_VERSION = "6"
>
> BBPATH = "${TOPDIR}"
> BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +
> '/../..')}"
>
> BBFILES ?= ""
> BBLAYERS = " \
>    ${BSPDIR}/sources/poky/meta \
>    ${BSPDIR}/sources/poky/meta-yocto \
>    \
>    ${BSPDIR}/sources/meta-openembedded/meta-oe \
>    ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
>    \
>    ${BSPDIR}/sources/meta-fsl-arm \
>    ${BSPDIR}/sources/meta-fsl-arm-extra \
>    ${BSPDIR}/sources/meta-fsl-demos \
>    ${BSPDIR}/sources/meta-openembedded/meta-ruby \
>    ${BSPDIR}/sources/meta-qt5 \
>    ${BSPDIR}/sources/meta-mylayer \
> "

Hrm. I have all the key layers right, which leaves me with the expansion
issue. The README indicates the danny branch for the meta-fsl-* layers,
is that what you are using ?

Bruce

>
>   Not sure that you need all. meta-ruby and qt5 is needed for my application.
>
>


