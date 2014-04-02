Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D30D2E00B7B
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 17:50:01 -0700 (PDT)
Received: (qmail 21364 invoked by uid 1003); 2 Apr 2014 00:50:00 -0000
Received: from unknown (HELO ?10.16.32.157?)
	(philip@opensdr.com@64.186.172.226)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	2 Apr 2014 00:50:00 -0000
Message-ID: <533B5EB4.2000703@balister.org>
Date: Tue, 01 Apr 2014 17:49:56 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Jonathan Austin <jonathan.austin@arm.com>
References: <533AE7CE.6070708@arm.com>
In-Reply-To: <533AE7CE.6070708@arm.com>
X-Enigmail-Version: 1.6
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: ADT/SDK and cmake - generating the toolchain/cmake config
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
X-List-Received-Date: Wed, 02 Apr 2014 00:50:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/01/2014 09:22 AM, Jonathan Austin wrote:
> Hi all,
> 
> The ADT documentation walks you through building an 'app' using
> autoconf/make, and the environment setup script that is created as part
> of the SDK build contains all the necessary autofoo/environment
> variables. This is great, and I've worked through the autotools example
> happily. Thanks :)
> 
> What I can't find, though, is anything that does the equivalent for
> cmake. I'm new to cmake so could be missing something obvious, but after
> seeing the 'environment-setup-TARGET' files (the ones at
> /opt/poky/1.5.1/) I thought there might also be a cmake toolchain file
> (toolchain-TARGET.cmake, for example) or some other cmake-foo.
> 
> I can see that cmake support was merged for Eclipse/ADT, so it seems
> like cmake could be supported 'outside the IDE', but I can't quite see
> how what I ought to twiddle to do this. I found the tantalizingly named
> 'cmake_do_generate_toolchain_file()' and all the other relevant stuff in
> meta/classes/cmake.bbclass, but I don't know what the 'right' way to
> propagate all that stuff into the SDK/ADT would be.
> 
> Any help with getting started would be greatly appreciated.

This toolchain file builds gnuradio from an SDK:

https://github.com/gnuradio/gnuradio/blob/master/cmake/Toolchains/oe-sdk_cross.cmake

Does this help?

Philip

> 
> Thanks
> Jonny
> 

