Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C15E3E01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 06:24:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 23DA9F81213; Fri,  3 Aug 2012 07:24:49 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 80D5CF8120B;
	Fri,  3 Aug 2012 07:24:47 -0600 (MDT)
Message-ID: <501BD126.5060100@mlbassoc.com>
Date: Fri, 03 Aug 2012 07:24:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nwYGvD2Mn9grjTDp2D9BpD7Uv218-noNtRTMYLQSA4EKQ@mail.gmail.com>
In-Reply-To: <CANwz6nwYGvD2Mn9grjTDp2D9BpD7Uv218-noNtRTMYLQSA4EKQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 13:24:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-03 07:19, Edward Vidal wrote:
> Hello,
> I too am interested in the pandaboard with yacto.
> I added meta-ti to conf/bblayes.conf
> I have tried master and git branch 30fb40.
> Did you have to make any changes to meta-ti?
> I get the following
>   MACHINE=pandaboard bitbake -v core-image-sato
> Pseudo is not present but is required, building this first before the main build
> DEBUG: Removed the following variables from the environment: LESSOPEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2, XDG_RUNTIME_DIR,
> QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOSTNAME, HISTCONTROL, MAIL, LS_COLORS
> DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)
> DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
> DEBUG: Adding layer /home/vidal/poky/meta
> DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
> DEBUG: Adding layer /home/vidal/poky/meta-yocto
> DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
> DEBUG: Adding layer /home/vidal/poky/meta-ti
> DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
> ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2] No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf'
> Any help will be appreciated.
> thanks

Did you actually download meta-ti into your /home/vidal/poky tree?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

