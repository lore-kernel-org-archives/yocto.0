Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02AE6E00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 07:34:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2FEYHmC016798
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Mar 2013 07:34:17 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 15 Mar 2013 07:34:16 -0700
Message-ID: <51433167.2060009@windriver.com>
Date: Fri, 15 Mar 2013 07:34:15 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
References: <513F58FA.3080808@digitalendoscopy.de>
	<loom.20130315T095848-21@post.gmane.org>
In-Reply-To: <loom.20130315T095848-21@post.gmane.org>
Cc: yocto@yoctoproject.org
Subject: Re: building yocto image from git always switches branch
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
X-List-Received-Date: Fri, 15 Mar 2013 14:34:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-15 02:02 AM, Volker Vogelhuber wrote:
> Volker Vogelhuber <v.vogelhuber@...> writes:
>
>> When I change to the build directory and start building the image using
>> bitbake, there seems to be a git call somewhere in the recipes that
>> switches the branch of the poky git checkout back to master. Of course
>> that results in a total misbehaviour of the build process, as the
>> underlaying recipes changes during the build.
> It turned out, my own kernel recipe included
> recipes-kernel/linux/linux-yocto.inc
> which seems to require that the kernel is checked out from a git
> repository. After removing this include and only inherit from
> kernel.bbclass it worked as expected.

Interesting. Are you working out of yocto/oe-core master ? The linux
yocto kernel support should always fail if the kernel source dir
isn't a git repo (or convert it into one) and not impact the main
yocto/oe-core tree.

Cheers,

Bruce

>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


