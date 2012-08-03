Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F54E00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 07:06:48 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 86E8BF81213; Fri,  3 Aug 2012 08:06:48 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 17989F8120B;
	Fri,  3 Aug 2012 08:06:47 -0600 (MDT)
Message-ID: <501BDAFD.8010409@mlbassoc.com>
Date: Fri, 03 Aug 2012 08:06:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nxgj8hhK+7da3YEdg9euVFPn59ft95+NQoFxjuAo1YFZQ@mail.gmail.com>
In-Reply-To: <CANwz6nxgj8hhK+7da3YEdg9euVFPn59ft95+NQoFxjuAo1YFZQ@mail.gmail.com>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Fri, 03 Aug 2012 14:06:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-08-03 07:59, Edward Vidal wrote:
> Hello
>
> On 2012-08-03 07:19, Edward Vidal wrote:
>>/  Hello,
> />/  I too am interested in the pandaboard with yacto.
> />/  I added meta-ti to conf/bblayes.conf
> />/  I have tried master and git branch 30fb40.
> />/  Did you have to make any changes to meta-ti?
> />/  I get the following
> />/    MACHINE=pandaboard bitbake -v core-image-sato
> />/  Pseudo is not present but is required, building this first before the main build
> />/  DEBUG: Removed the following variables from the environment: LESSOPEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2, XDG_RUNTIME_DIR,
> />/  QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOSTNAME, HISTCONTROL, MAIL, LS_COLORS
> />/  DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)
> />/  DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
> />/  DEBUG: Adding layer /home/vidal/poky/meta
> />/  DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
> />/  DEBUG: Adding layer /home/vidal/poky/meta-yocto
> />/  DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
> />/  DEBUG: Adding layer /home/vidal/poky/meta-ti
> />/  DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
> />/  ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2] No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf'
> />/  Any help will be appreciated.
> />/  thanks
> /
> Did you actually download meta-ti into your /home/vidal/poky tree?
>
> Yes I used the commands
> git clone  git://github.com/Angstrom-distribution/meta-ti.git <http://github.com/Angstrom-distribution/meta-ti.git>
> cd meta-ti
> git branch 30fb40
> cd ../meta-ti
> git log
> commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795
> Author: Andreas Müller <schnitzeltony@googlemail.com <mailto:schnitzeltony@googlemail.com>>
> Date:   Mon Jul 9 14:35:36 2012 +0200
>
>      netbase: follow oe-core to v5.0
>
>      Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com <mailto:schnitzeltony@googlemail.com>>
>      Signed-off-by: Denys Dmytriyenko <denys@ti.com <mailto:denys@ti.com>>
>
> commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc
> Author: Andreas Müller <schnitzeltony@googlemail.com <mailto:schnitzeltony@googlemail.com>>
>
> The errors above was that I was running as another user
> After fixing bblayes.conf
> MACHINE=pandaboard bitbake -v core-image-sato
> Pseudo is not present but is required, building this first before the main build
> Loading cache: 100% |###########################################| ETA:  00:00:00
> Loaded 60 entries from dependency cache.
> ERROR: This recipe does not have the LICENSE field set (cloud9-gfx-image)-:--:--
> ERROR: Unable to parse /home/ame/poky/meta-ti/recipes-misc/images/cloud9-gfx-image.bb <http://cloud9-gfx-image.bb>: Exited with "1"
> ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-image)
> ERROR: This recipe does not have the LICENSE field set (cloud9-image)
> ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-image)
> ERROR: Command execution failed: Traceback (most recent call last):
>    File "/home/ame/poky/bitbake/lib/bb/command.py", line 84, in runAsyncCommand
>      self.cooker.updateCache()
>    File "/home/ame/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
>      if not self.parser.parse_next():
>    File "/home/ame/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_next
>      self.virtuals += len(result)
> UnboundLocalError: local variable 'result' referenced before assignment
>
>
> Summary: There were 6 ERROR messages shown, returning a non-zero exit code.
> git clone  git://github.com/Angstrom-distribution/meta-ti.git <http://github.com/Angstrom-distribution/meta-ti.git>
> cd meta-ti
> git branch 30fb40
> Thanks

Check the README

I normally add this to local.conf to work around these problems:
   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

