Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1326FE01398
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 21:27:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBE5RVVj020521
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Dec 2011 21:27:31 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 13 Dec 2011 21:27:31 -0800
Message-ID: <4EE833C1.9010705@windriver.com>
Date: Wed, 14 Dec 2011 00:27:29 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EE7E3F3.8010003@linux.intel.com>
In-Reply-To: <4EE7E3F3.8010003@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using yocto/standard by default
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
X-List-Received-Date: Wed, 14 Dec 2011 05:27:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-13 6:46 PM, Darren Hart wrote:
> We hit another lock-step SRCREV bug earlier on the FRI2 BSP. This was
> due mostly to my pushing the efi changes to meta-intel too early - but,
> it highlights a maintenance step that I believe could be eliminated for
> most boards.
>
> We have a yocto/standard/fri2 branch, but it doesn't contain any
> additional changes over yocto/standard/base. If we were to make
> yocto/standard/base the default for KBRANCH, shouldn't we be able to
> eliminate all the BSP branches that are identical to
> yocto/standard/base? This would significantly reduce the number of
> SRCREV updates that are required and likely reduce the number of
> Autobuilder failures we experience as a result. Seems like it would also
> help make the git tree easier to deal with.
>
> Any opinions here?

It's a valid config, and something that works now. So there's no
reason to not use it. New branches can be created IF a board really
does need to merge conflicting patches. The emgd stuff was a problem
and required branches, but if we have nothing like that, squashing the
branches is a nice simplification.

Cheers,

Bruce

>


