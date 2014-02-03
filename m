Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC27E00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 09:05:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EF871F811D8; Mon,  3 Feb 2014 10:05:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D23AFF8119A;
	Mon,  3 Feb 2014 10:05:53 -0700 (MST)
Message-ID: <52EFCC78.90405@mlbassoc.com>
Date: Mon, 03 Feb 2014 10:06:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com>	<52EFC3AC.9030601@googlemail.com>
	<CACP9YJd4-fp+Pzj+2S7jPUV525T28Px1at4ikza33e9sERszNA@mail.gmail.com>
In-Reply-To: <CACP9YJd4-fp+Pzj+2S7jPUV525T28Px1at4ikza33e9sERszNA@mail.gmail.com>
Subject: Re: File not found when trying to run an executable not build by Yocto
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
X-List-Received-Date: Mon, 03 Feb 2014 17:05:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-02-03 09:59, David Welch wrote:
>
>
>
> On Mon, Feb 3, 2014 at 4:28 PM, Christian Ege <k4230r6@gmail.com <mailto:k4230r6@gmail.com>> wrote:
>
>     Hi,
>>     Hi,
>>
>>     I am building an image for an embedded system using the chiefriver and kernel 3.12.9.  I am using Ubuntu as our base system.
>>
>>     The image builds and boots fine which is great but we have some binaries built on Ubuntu which must run on the Yocto image.  When we copy these across and try and run them we
>>     get a "File Not Found" error.
>>
>>     Why would this be?  Doing file on our ubuntu executables we get:
>>
>>     /bin/true: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24,
>>     BuildID[sha1]=0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82, stripped
>>
>     Just for the sake of completeness:
>     - Have you either copied the files to /usr/bin or using ./executable_name?
>     - Have you made a chmod+x executable_name before?
>
>
> I was using ./.  The files are executable.

Most likely cause is a missing library.  Try running 'ldd' on your file,
it should tell you what's missing if that's the case.

>
>
>     Sometimes transfering files over ftp in ASCII mode results in funny behaviours....
>
>
> Scp'ed so should be fine.
>
>
>     regrads,
>     Christian
>
>>     The Yocto executables are the same except instead of GNU/Linux 2.6.24 it is 2.6.16.  It that a problem?
>>
>>     Also, on ubuntu we are running libc-2.17 but on Yocto it is libc-2.18.  Is that a problem?
>>
>>     Thanks for any assistance,
>>     Dave

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

