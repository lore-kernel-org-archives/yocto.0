Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6906DE00792
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 12:09:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2BJ9YCD012161
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Mar 2014 12:09:34 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 11 Mar 2014 12:09:34 -0700
Message-ID: <531F5F68.1030207@windriver.com>
Date: Tue, 11 Mar 2014 15:09:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Andy Ng <andreas2025@gmail.com>, <yocto@yoctoproject.org>
References: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
In-Reply-To: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
Subject: Re: Working with a git'ed kernel on the server
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
X-List-Received-Date: Tue, 11 Mar 2014 19:09:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-11 03:07 PM, Andy Ng wrote:
> Hello list,
>
> I have a git'ed kernel on a server. When I do make "push" changes to the kernel
> and then I try bitbake core-image-minimal on my local host, the build
> process does not pick up the
> changes from the server. I just do bitbake virtual/kernel -c cleanall
> to force it to get my latest kernel from the server.
>
> Is there any way to make the recipe to sync to the server every time i
> make a build?

Set your SRCREV to ${AUTOREV}, and you'll get what you want.

Bruce

>
> Best regards,
> Andy
>


