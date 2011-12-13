Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33B7E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:41:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBDNfDb6015252
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Dec 2011 15:41:13 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.98) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 13 Dec 2011 15:41:13 -0800
Message-ID: <4EE7E298.5030905@windriver.com>
Date: Tue, 13 Dec 2011 18:41:12 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EE7E0B6.5020009@linux.intel.com>
In-Reply-To: <4EE7E0B6.5020009@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-libc-headers 2.6.37
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
X-List-Received-Date: Tue, 13 Dec 2011 23:41:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-13 6:33 PM, Darren Hart wrote:
> We currently build at least some MACHINES with 2.6.37 of
> linux-libc-headers. This can cause problems for newer packages (such as
> connman) that expect more recent headers (if_alg.h is missing prior to
> 2.6.39). While the proper fix is to ensure these packages can cope with
> older headers, for MACHINES shipping 3.0+ kernels, seems to me we should
> be using the linux-libc-headers matching the kernels. I know this has
> come up in the past, but I don't recall if we have clearly stated and
> justified what our policy is here.

They should match were possible. I updated master to have 3.0 and 3.1
headers and no longer have .37 as the default.

Where is the 2.6.37 trickling in ? i.e. which boards/branch ?

Bruce

>
> Any thoughts on this?
>


