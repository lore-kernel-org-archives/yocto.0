Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87789E006F7; Fri,  4 Jul 2014 03:21:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35BB5E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 03:21:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s64ALCH4013786
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Jul 2014 03:21:12 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 4 Jul 2014 03:21:12 -0700
Message-ID: <53B68016.7000808@windriver.com>
Date: Fri, 4 Jul 2014 18:21:10 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAMCfZKF_XTjxmJ9Z59x9eQq2AG8339ibnHentOHkfd=F9A33vQ@mail.gmail.com>
In-Reply-To: <CAMCfZKF_XTjxmJ9Z59x9eQq2AG8339ibnHentOHkfd=F9A33vQ@mail.gmail.com>
Subject: Re: Changing SysVinit default runlevel
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
X-List-Received-Date: Fri, 04 Jul 2014 10:21:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/04/2014 06:12 PM, Diego Sueiro wrote:
> Folks,
>
> Despite of using ROOTFS_POSTPROCESS_COMMAND to change /etc/inittab, is there
> another method provided by build system to set the default runlevel.

Yes, I think so, you can edit:

meta/recipes-core/sysvinit/sysvinit-inittab/inittab

Or maybe a better way is add sysvinit-inittab_2.88dsf.bbappend to your
local layer, and add another inittab to the layer, too.

// Robert

>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
> <http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>
>

