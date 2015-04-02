Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51C4AE00954; Thu,  2 Apr 2015 10:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F06E00952
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 10:58:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 06BACF811D7; Thu,  2 Apr 2015 11:58:02 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F1CEF811D7;
	Thu,  2 Apr 2015 11:58:02 -0600 (MDT)
Message-ID: <551D832F.8040808@mlbassoc.com>
Date: Thu, 02 Apr 2015 11:58:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <60F6FAE47D1BCE4380CC06D18F49789BB9B56426@NTXBOIMBX02.micron.com>
In-Reply-To: <60F6FAE47D1BCE4380CC06D18F49789BB9B56426@NTXBOIMBX02.micron.com>
Subject: Re: How to find libraries when building software
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
X-List-Received-Date: Thu, 02 Apr 2015 17:58:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-02 11:36, Andy Falanga (afalanga) wrote:
> HI,
>
> Thanks to Gary Thomas' response, I was able to get the python libraries from Boost built.  Now, when I'm building my own library, which requires libboost_python, the configure script isn't able to find it.  How do I work with these cross compilation environments?
>
> What I have is this.  I added the line below to local.conf as Gary instructed.
>
> PACKAGECONFIG_pn-boost = "python"
>
> I then ran
>
> bitbake core-image-minimal
>
> This built both python and the full set of boost (include libboost_python).  I see this in <output_dir>/sysroots/zc706-zynq7/usr/lib.  (In case it's relevant, this environment was constructed using /opt/yocto/poky-dizzy-12.0.1/oe-init-build-env.)  I then use a script that a co-worker wrote (quite simple) which configures the paths accordingly to use the cross compiler toolset.  My path is as follows:
>
> /home/afalanga/src/crisscross/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi:/home/afalanga/src/crisscross/tmp/sysroots/x86_64-linux/usr/bin:/opt/yocto/poky-dizzy-12.0.1/scripts:/opt/yocto/poky-dizzy-12.0.1/bitbake/bin:/opt/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin:/opt/petalinux-v2014.4-final/tools/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
>
> In my own library project, I run my configure script with this:
>
> ./configure --host=arm-poky-linux-gnueabi
>
> All is working quite well except that I run into this error:
> ...
> checking for Boost headers version >= 1.47.0... yes
> checking for Boost's header version... 1_56
> checking for the toolset name used by Boost for arm-poky-linux-gnueabi-g++... gcc49 -gcc
> checking boost/system/error_code.hpp usability... yes
> checking boost/system/error_code.hpp presence... yes
> checking for boost/system/error_code.hpp... yes
> checking for the Boost system library... yes
> checking boost/filesystem/path.hpp usability... yes
> checking boost/filesystem/path.hpp presence... yes
> checking for boost/filesystem/path.hpp... yes
> checking for the Boost filesystem library... (cached) yes
> checking boost/python.hpp usability... no
> checking boost/python.hpp presence... no
> checking for boost/python.hpp... no
> configure: error: cannot find boost/python.hpp
>
> I can find this file in <output_dir>/sysroots/zx706-zinq7/usr/include/boost, why can't the configure script?  What's wrong with how I've done things?  Or, and probably much more beneficial, when I say, "--host=arm-poky-linux-gnueabi" what does that actually mean?  Where are these things installed?  Why is it saying that it cannot find the header when I can?  The only rational explanation is that it's looking somewhere other than where I am.  Thus, I don't understand as much as I should.  What should I read in the manual?

Another thing to look at is the 'config.log' in your build
(for your "library" recipe).  It should tell you more about
why it can't find boost/python.hpp

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

