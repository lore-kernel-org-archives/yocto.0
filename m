Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816C0E005B4; Wed, 31 Dec 2014 01:42:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF24E002F9
	for <yocto@yoctoproject.org>; Wed, 31 Dec 2014 01:41:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBV9fDSu006780; Wed, 31 Dec 2014 09:41:13 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id F9ABifXH-eGn; Wed, 31 Dec 2014 09:41:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBV9eugW006773
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 31 Dec 2014 09:41:08 GMT
Message-ID: <1420018893.25779.12.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: peterengcomau001@adam.com.au
Date: Wed, 31 Dec 2014 09:41:33 +0000
In-Reply-To: <a271ef72b7b9e3175419d6d8ffbb59e5bf6d0065@webmail.adam.com.au>
References: <a271ef72b7b9e3175419d6d8ffbb59e5bf6d0065@webmail.adam.com.au>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libm implementation issue
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
X-List-Received-Date: Wed, 31 Dec 2014 09:42:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-12-30 at 20:09 +1030, peterengcomau001@adam.com.au wrote:
> 
> I have some software that uses specific mathematical functions. When I
> attempt to compile them with the Yocto cross-compile tools, the
> functions are not recognised. E.g. 'pow' in <math>
> According to website https://wiki.yoctoproject.org/wiki/Minimal_Image,
> not all eglibc features are installed as standard, and that I should
> alter my local.conf file. I have added the following:
> 
> DISTRO_FEATURES_LIBC  += " libc-libm "
> DISTRO_FEATURES_append = " ${DISTRO_FEATURES_LIBC} "

By default the libc we build is fully featured. The only time we cut
down the libc by default is when you use DISTRO = "poky-tiny". Are you
using poky-tiny?

If you're not, the most likely issue you didn't see pow and friends
would be a missing linkage against libm (-lm on the commandline for
gcc/ld).

Cheers,

Richard


