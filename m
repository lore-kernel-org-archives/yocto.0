Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7F74E011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 08:44:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r02GiC5Y010095
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 2 Jan 2013 08:44:12 -0800 (PST)
Received: from msp-dhcp10.wrs.com (172.25.34.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 2 Jan 2013 08:44:12 -0800
Message-ID: <50E463DE.4090300@windriver.com>
Date: Wed, 2 Jan 2013 10:44:14 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1212240604580.4904@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212240604580.4904@oneiric>
Subject: Re: where should "bitbake -c populate_sdk ..." be documented?
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
X-List-Received-Date: Wed, 02 Jan 2013 16:44:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/24/12 6:06 AM, Robert P. J. Day wrote:
>
>    at the moment, the only mention of that task is in the reference
> manual.  does it deserve additional coverage, perhaps in the ADT
> manual?  just asking.

I would recommend any place that mentioned "meta-toolchain" or variants as a way 
to generate the SDK that can be used by the ADT tooling.

Since the goal of the populate_sdk task (when used with an image) is the same as 
the stand-a-lone SDK recipes.

--Mark

> rday
>


