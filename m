Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3741CE01506
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 10:04:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CC0C5F81200; Fri,  5 Apr 2013 11:04:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 22313F811FF;
	Fri,  5 Apr 2013 11:04:15 -0600 (MDT)
Message-ID: <515F040F.40402@mlbassoc.com>
Date: Fri, 05 Apr 2013 11:04:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <515EC933.70305@mlbassoc.com>
In-Reply-To: <515EC933.70305@mlbassoc.com>
Subject: Re: Weird FILESPATH issue
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
X-List-Received-Date: Fri, 05 Apr 2013 17:04:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-05 06:53, Gary Thomas wrote:
> I'm trying to write a patch for this recipe:
>    meta/recipes-devtools/python/python-pygobject_2.27.91.bb
>
> I tried with a .bbappend that looks like this:
>    FILESEXTRAPATHS_append = ":${THISDIR}/${PN}-${PV}:${THISDIR}/${PN}"
>    SRC_URI_append = " file://fix-registration-warnings.patch "
>
> Also like this:
>    FILESPATH_append = ":${THISDIR}/${BPN}-${PV}"
>    SRC_URI_append = " file://fix-registration-warnings.patch "
> to which I get this error:
>    ERROR: Fetcher failure: Unable to find file file://fix-registration-warnings.patch anywhere. The paths that were searched were:
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject
>      /home/local/poky-multi/meta/recipes-devtools/python/files
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91
>      /home/local/p82_soft/downloads
>
> I think the problem is because the main recipe contains this line:
>    FILESPATH = "${FILE_DIRNAME}/python-pygobject:${FILE_DIRNAME}/files"
>
> How can I write my .bbappend file to pick up the patch from my [local] layer?
>
> Thanks
>
> n.b. isn't that 'FILESPATH' line in the main recipe rather unfriendly?
>

What I don't get is that I've done this exact same style of .bbappend for
other recipes and it works fine.  For example, I have this

   ${LAYER}/recipes-sato/gtk-engines/gtk-sato-engine_git.bbappend:
        FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
        SRC_URI_append = " file://adjust-sato-theme.patch "
        PACKAGE_ARCH = "${MACHINE_ARCH}"

This .bbappend file works perfectly :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

