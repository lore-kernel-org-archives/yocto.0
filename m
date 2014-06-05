Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71004E00BB1; Thu,  5 Jun 2014 07:44:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353C0E00B85
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 07:44:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s55EiYAl011648
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Jun 2014 07:44:34 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 5 Jun 2014 07:44:33 -0700
Message-ID: <53908241.1060003@windriver.com>
Date: Thu, 5 Jun 2014 10:44:17 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Kashyap Gada <gada.kashyap@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CANJXcUYmMp5SzgBsr3icysjVqBDr8Ksz41141r1KQ6rtKSAUMQ@mail.gmail.com>
In-Reply-To: <CANJXcUYmMp5SzgBsr3icysjVqBDr8Ksz41141r1KQ6rtKSAUMQ@mail.gmail.com>
Subject: Re: Building for Boards not supported by Yocto Project
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
X-List-Received-Date: Thu, 05 Jun 2014 14:44:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-05 07:28 AM, Kashyap Gada wrote:
> Hello.
>
> I have successfully built and tested core-image-sato through the process
> given by the quick start guide at the yocto project website. Now I
> intend to build an image for a board which is not officially supported
> by yocto project. I have a FriendlyArm mini6410 whose BSP is available
> for linux.
>
> I would like to know how should I proceed further.
> Is it possible to use the same BSP without any changes and make an image
> using Yocto?

Using the Yocto BSP guide 
(http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html)
as a reference, you can create a minimal BSP layer for the board.

You don't have to do everything in the guide, but you do need to
have a machine definition, the userspace tuning and a custom kernel
recipe for the platform (i.e. you point at some vendor or project
tree that has all the required patches).

Unless the support for the board is already in the mainline kernel, and
then you can have a custom linux-yocto recipe to leverage the existing
configuration and code in the linux-yocto repository.

Cheers,

Bruce

>
> Kashyap Gada
>
>


