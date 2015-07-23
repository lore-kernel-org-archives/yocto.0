Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D02E009B3; Thu, 23 Jul 2015 08:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A0DE00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 08:11:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B8311F811E4; Thu, 23 Jul 2015 09:11:09 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4347FF811E4;
	Thu, 23 Jul 2015 09:11:09 -0600 (MDT)
Message-ID: <55B10410.2060904@mlbassoc.com>
Date: Thu, 23 Jul 2015 09:11:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <002d01d0c558$752dbcb0$5f893610$@neuf.fr>
In-Reply-To: <002d01d0c558$752dbcb0$5f893610$@neuf.fr>
Subject: Re: [meta-raspberrypi] raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 15:11:13 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-07-23 09:01, Herve Jourdain wrote:
> Hi,
>
> Not sure if it’s the case, because the config.log might give more details, but maybe you can try adding the following to your recipe :
>
> EXTRA_OECONF += “-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/ \
>
>                                        -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/"
>
> I needed that to compile other packages that were using EGL.

These should not be needed if you use DEPENDS correctly, bitbake
takes care of them for you.

>
> Once again, just a hint, no warranty whatsoever…
>
> BR,
>
> Hervé
>
> *From:*yocto-bounces@yoctoproject.org <mailto:yocto-bounces@yoctoproject.org> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Edward Vidal
> *Sent:* jeudi 23 juillet 2015 16:38
> *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> *Subject:* ***SPAM*** [yocto] raspberry Pi core-image-sato
>
> Hi Gary,
>
> Is this the log that you need?
>
> I also ran the  bitbake -DD core-image-sato and have the log for that run.
>
> | WARNING: exit code 1 from a shell command.
> | ERROR: oe_runconf failed
> | ERROR: Function failed: do_configure (log file is located at
> /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.9672)
> ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
>
> Let me know what I can provide.
>
> Thanks for the help
>
>   Regards,
>
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net <mailto:develone@sbcglobal.net>
> 915-595-1613
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

