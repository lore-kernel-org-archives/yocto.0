Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 684CAE00596
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 05:44:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q29Dhmba018742
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Mar 2012 05:43:50 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Mar 2012 05:43:48 -0800
Message-ID: <4F5A0913.20207@windriver.com>
Date: Fri, 9 Mar 2012 08:43:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
References: <4F59F59F.4040807@enea.com>
In-Reply-To: <4F59F59F.4040807@enea.com>
Cc: "yocto >> \"yocto@yoctoproject.org\"" <yocto@yoctoproject.org>, "Stenberg,
	Daniel" <Daniel.Stenberg@enea.com>
Subject: Re: yocto and LTSI
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Mar 2012 13:44:00 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-03-09 07:20 AM, David Nyström wrote:
> Hi All,
>
> Whats yoctos take on LTSI ?
>
> http://git.linuxfoundation.org/?p=ltsi-kernel.git;a=summary
> http://lwn.net/Articles/484337/
>
> I've noticed that LTT-ng and other kernel patches are independently
> ported and maintained by the yocto project.
> Are there any plans for yocto to have ltsi-kernel patches as upstream ?

We'll be syncing up with the ltsi kernel parts over the summer.
But yes, LTSI will be one of the sources used for yocto kernel trees.

Cheers,

Bruce

>
> Best Regards,
> David Nyström
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


