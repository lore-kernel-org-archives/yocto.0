Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4879AE006DE
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 07:19:34 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F3A5BF81224; Thu, 21 Feb 2013 08:19:33 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 33442F81221;
	Thu, 21 Feb 2013 08:19:33 -0700 (MST)
Message-ID: <51263B0E.6020209@mlbassoc.com>
Date: Thu, 21 Feb 2013 08:19:42 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1711946.6ebLgJzAjK@fedora-fisso>
In-Reply-To: <1711946.6ebLgJzAjK@fedora-fisso>
Subject: Re: core-image-sato + firefox for pandaboard
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
X-List-Received-Date: Thu, 21 Feb 2013 15:19:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-21 07:52, Davide Soldan wrote:
> Hi to all!
> I'm new in building images with yocto for my pandaboard. Trying to build core-image-sato (http://maniacbug.wordpress.com/2012/08/03/pandayocto/) all works fine, but now I want to add some packages to this image.
> So proceeding like mentioned here https://lists.yoctoproject.org/pipermail/yocto/2012-May/009175.html, downloading meta-browser layer and adding this layer to build/conf/bblayers.conf and adding the package firefox to conf/build/local.conf I've got this error:
>
> ERROR: No recipes available for:
>    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
>    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-graphics/libxi/libxi_1.6.1.bbappend
>    /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-support/nspr/nspr_4.9.4.bbappend
>
> So I found, for example, gnome-settings-daemon under meta-openebedded (dependency declared in the README file of meta-browser). Adding the layer "meta-openembedded/meta-gnome" to build/conf/bblayers.conf to satisfy the gnome-settings-daemon dependency I've got the following different error:
>
> NOTE: Error expanding variable populate_packages
> NOTE: Error during finalise of /home/davide/yocto/poky-denzil-7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
> ERROR: Unable to parse /home/davide/yocto/poky-denzil-7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb

I was able to build this combo (master, not denzil) by only importing
the necessary recipes, not all of meta-gnome.  I just put them in a
local layer.

n.b. FireFox runs OK, but IMO [Google] Chromium is much snappier on the PandaBoard.
You should be able to build it using the same setup.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

