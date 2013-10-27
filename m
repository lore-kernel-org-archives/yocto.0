Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FFD4E01783
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 06:28:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BB079F811ED; Sun, 27 Oct 2013 07:28:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE79BF811EB;
	Sun, 27 Oct 2013 07:28:54 -0600 (MDT)
Message-ID: <526D151F.2080403@mlbassoc.com>
Date: Sun, 27 Oct 2013 07:29:03 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52282@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52282@BLRINMSMBX01.bglrodc.lntinfotech.com>
Subject: Re: telnetd is not running with "core-image-basic"
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
X-List-Received-Date: Sun, 27 Oct 2013 13:29:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-25 23:17, Amit Kumar wrote:
> Hi,
>       I tried to run the telnetd with "core-image-basic". I follow up the following step to enable the telnetd support in my layer.
> I have build the latest inetutils recipe with my layer, the latest version of inteutils is "intetutils_1.9.1". I have build the packages successful.
> But the telnetd is not available in my "core-image-basic". When i run the the image under QEMU, there is no telnetd under "/usr/sbin/" or "/usr/bin".
> It's not present at all.
>
> I have also tried to add the "initscript-telnetd" refer from meta-arago. But not succeed.
>
> Please guild me- how can i will get it with my core-image-basic image. Am i missing any step here for that?

Building the package is not enough by itself.  You need to get it added to the
image that you are using.  This can be done either at build time or at run time.

To add the package at build time, simply add this to your local.conf:
   CORE_IMAGE_EXTRA_INSTALL += "inetutils inetutils-telnetd"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

