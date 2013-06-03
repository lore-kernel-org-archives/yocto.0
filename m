Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 882A3E003E3
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 08:44:24 -0700 (PDT)
Received: (qmail 1984 invoked by uid 1003); 3 Jun 2013 15:44:24 -0000
Received: from unknown (HELO ?172.31.50.170?)
	(philip@opensdr.com@198.82.21.107)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	3 Jun 2013 15:44:24 -0000
Message-ID: <51ACB9D5.90908@balister.org>
Date: Mon, 03 Jun 2013 11:44:21 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130311 Thunderbird/17.0.4
MIME-Version: 1.0
To: Arpit Jain <jain.arpit6@gmail.com>
References: <CAF_dhbe1mXEveAZz8V2LNPxcg55Ab_pQkyZM4hKcp7=a9PoM3w@mail.gmail.com>
In-Reply-To: <CAF_dhbe1mXEveAZz8V2LNPxcg55Ab_pQkyZM4hKcp7=a9PoM3w@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: Building own cmake based package using Yocto
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
X-List-Received-Date: Mon, 03 Jun 2013 15:44:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/03/2013 08:49 AM, Arpit Jain wrote:
> Hi,
> 
> I am trying to build a CMake based package using Yocto on Linux (SUSE Linux
> Enterprise Desktop 11 (x86_64)). I am trying to build (cross compile) for
> PowerPC.

Look at the cmake.bbclassfile. The gnuradio recipe in meta-oe uses this
class.

Philip



> I have specified MACHINE as "qemuppc" in local.conf file before command
> "bitbake -k core-image-minimal".
> 
> I have written a very simple recipe file to build my own package using
> cmake.
> 
> The file is as simple as do configure()
> {
>    cmake ..
> }
> 
> When I run bitbake -b <recipe file>, the build configuration kicks off
> and the package gets extracted.
> 
> To cross compile my package, it is picking the following
> compiler "/home/arpit/yocto/poky-dylan-9.0.0/build/tmp/sysroots/x86_64-linux/usr/bin/ppc603e-poky-linux/powerpc-poky-linux-gcc",
> which I suppose is correct.
> 
> However, following doubt I have:
> 1. The dependant libraries for package that it is picking has to be
> for PowerPC, but is picking x86_64 libraries like NetSNMP, FUSE.
> I guess these libraries should also be picked for PowerPC from Yocto
> compiled sources.
> Then the configuration stops with an error that "Sorry, could not find
> ncurses library   Please install it ".
> 
> Can you please suggest if I am doing something wrong.
> 
> Regards,
> Arpit
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

