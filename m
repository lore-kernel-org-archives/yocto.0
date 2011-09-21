Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8105FE004DD
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 06:03:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8LCxTgO015824
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 Sep 2011 05:59:29 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 21 Sep 2011 05:59:28 -0700
Message-ID: <4E79DFB0.3060405@windriver.com>
Date: Wed, 21 Sep 2011 08:59:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110918 Thunderbird/7.0
MIME-Version: 1.0
To: <niqingliang@insigma.com.cn>
References: <1316584904.17177.53.camel@localhost.localdomain>
In-Reply-To: <1316584904.17177.53.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: why the version of "linux-libc-headers-yocto_git" stay on 2.6.37 ?
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
X-List-Received-Date: Wed, 21 Sep 2011 13:03:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-21 02:01 AM, Ni Qingliang wrote:
> the linux-yocto was updated to 3.0.4, but why linux-libc-headers still
> 2.6.37?

They should match. In the past Khem has done the update on the
header packages, since there are nearly as many toolchain issues
with the headers as with the kernel.

I thought Khem was down as the maintainer for the libc-headers
package, but in my coffee deprived state I can't find evidence
of that.

I can bump the package, unless Khem wants to, or has different
plans.

Cheers,

Bruce

>
>


