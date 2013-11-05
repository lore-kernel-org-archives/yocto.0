Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D64B6E01757
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 20:17:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id rA54HVud028911
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Nov 2013 20:17:32 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.17) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 4 Nov 2013 20:17:31 -0800
Message-ID: <5278715A.9060901@windriver.com>
Date: Mon, 4 Nov 2013 23:17:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Amit Kumar <Amit.Kumar@lntinfotech.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CEE454E0AA856348B2B4179B5CF987140C6E40473A@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <CEE454E0AA856348B2B4179B5CF987140C6E40473A@BLRINMSMBX01.bglrodc.lntinfotech.com>
Subject: Re: kernel config required for rt-kernel
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
X-List-Received-Date: Tue, 05 Nov 2013 04:17:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-04 9:45 PM, Amit Kumar wrote:
> Hi,
>
>             I need help to build a rt-kernel. Is anyone knows about the
> real-time kernel configurations? How can I build a real-time kernel?
>
> What all are the kernel configuration need to be enable for rt-kernel?

If you use the linux-yocto-rt recipe, you'll always get a baseline set
of known good -rt config values.

Adding your BSPs config values on top of that baseline is all that is
required to get started working with the integrated -rt kernel. (you
of course also need to make sure that typical kernel recipe elements
are done, like making your board compatible with the recipe and setting
an appropriate KBRANCH).

Cheers,

Bruce

>
> Thanks & Regards
>
> Amit K
>
>
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) may contain
> confidential or privileged information for the intended recipient(s).
> Unintended recipients are prohibited from taking action on the basis of
> information in this e-mail and using or disseminating the information,
> and must notify the sender and delete it from their system. L&T Infotech
> will not accept responsibility or liability for the accuracy or
> completeness of, or the presence of any virus or disabling code in this
> e-mail"
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


