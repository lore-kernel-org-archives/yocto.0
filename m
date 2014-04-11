Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C43E00C38
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 21:15:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3B4FowU009625
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Apr 2014 21:15:50 -0700 (PDT)
Received: from server.local (128.224.20.58) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 10 Apr 2014 21:15:49 -0700
Message-ID: <53476D43.6030900@windriver.com>
Date: Fri, 11 Apr 2014 00:19:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>, <yocto@yoctoproject.org>
References: <2489555.PeAzndN2bA@koontz>
In-Reply-To: <2489555.PeAzndN2bA@koontz>
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Fri, 11 Apr 2014 04:16:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-04-10, 5:41 PM, Søren Holm wrote:
> Hi
>
> I have a linux-yocto_3.14.bbappend file in my local layer. Basically it just
> specifies the defconfig for the kernel.
>
> The problem now is just that defconfig is not used for the specific kernel.
> It's copied into ${WORKDIR} but never used.
>
> Have procedures on how to do this changed since dora - or is somthing broken?

Nothing has changed in this area, and it works here. Can you post
your defconfig, and machine you are building somewhere so I can try
it myself ?

Bruce

>
>


