Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAAAAE0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 13:51:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3AKoPnr018470
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Apr 2012 13:50:25 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Apr 2012 13:50:25 -0700
Message-ID: <4F849D09.7070806@windriver.com>
Date: Tue, 10 Apr 2012 16:50:17 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
In-Reply-To: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Reconfiguring the kernel
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
X-List-Received-Date: Tue, 10 Apr 2012 20:51:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-10 04:40 PM, Chris Tapp wrote:
> I think this is a summary of the steps needed to reconfigure the kernel,based on the instructions in the 6.0.1 dev manual:
>
> 1) bitbake linux-yocto -c clean
> 2) bitbake linux-yocto -c menuconfig
> 3) bitbake linux-yocto -c compile -f
> 4) bitbake linux-yocto
>
> However, the bzimage in tmp/deploy/images is the same as the one that I had before I executed the above. I'm not sure if the md5sum is the same (will check next time round the loop), but it certainly doesn't seem to pick up the new configuration that I'm generating within menuconfig.
>
> If I use 'cleanall' in step 1 (as shown in the manual) then I do get a new image, but at the expense of having to download the kernel branch again (even with a DL_DIR set). Can I get away with just using 'clean' if I do something else as well ?

This is likely:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2256

Which is still pending resolution.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


