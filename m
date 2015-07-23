Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75794E0097F; Thu, 23 Jul 2015 05:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7248FE00947
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 05:49:30 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 630A6F811DF; Thu, 23 Jul 2015 06:49:30 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 18699F811DE;
	Thu, 23 Jul 2015 06:49:30 -0600 (MDT)
Message-ID: <55B0E2DD.9010403@mlbassoc.com>
Date: Thu, 23 Jul 2015 06:49:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <mailman.5858.1437611001.2787.yocto@yoctoproject.org>
	<503364298.968011.1437654912024.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <503364298.968011.1437654912024.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 12:49:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-23 06:35, Edward Vidal wrote:
> bitbake core-image-sato failed with same error.
>
> | WARNING: exit code 1 from a shell command.
> | ERROR: oe_runconf failed
> | ERROR: Function failed: do_configure (log file is located at
> /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.27821)
> ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
> Waiting for 1 running tasks to finish:

There's no way to comment further without seeing the log file
mentioned above :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

