Return-Path: <fabian@opencode.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BDC1E008B4; Sun, 30 Nov 2014 05:32:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from vs248254.vserver.de (vs248254.vserver.de [62.75.248.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679F2E007C2
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 05:31:57 -0800 (PST)
X-No-Relay: not in my network
Received: from [192.168.1.18] (brsg-4dbbc051.pool.mediaWays.net
	[77.187.192.81])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: fabian@opencode.eu)
	by vs248254.vserver.de (Postfix) with ESMTPSA id F3A5D8B385D8
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 14:31:56 +0100 (CET)
Message-ID: <547B1C4C.4020309@opencode.eu>
Date: Sun, 30 Nov 2014 14:31:56 +0100
From: Fabian Schwartau <fabian@opencode.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <547B0458.1020604@opencode.eu>
In-Reply-To: <547B0458.1020604@opencode.eu>
Subject: Re: Qt5 xcb platform plugin missing
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
X-List-Received-Date: Sun, 30 Nov 2014 13:32:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I solved this problem my own: The package qtbase-plugins has to be added 
to the image to install the plugins.
I also had to add the package qtmultimedia-plugins to install gstreamer 
plugins and add the line
PACKAGECONFIG_append_pn-qtmultimedia = " gstreamer010 "
to my local.conf to add gstreamer support in qtmultimedia.
Is there a meta package to automatically include all this qt stuff? I 
don't care if the image gets 100MB larger.

Fabian

Am 30.11.2014 um 12:49 schrieb Fabian Schwartau:
> Hi everyone,
>
> I am trying to build an application using Qt5 Multimedia (playing a
> video). Yocto is latest 1.6. Qt and my application compile just fine but
> when I run the application I get this error:
> This application failed to start because it could not find or load the
> Qt platform plugin "xcb".
> Well, it is correct, the xcb plugin is missing on the installation. I've
> google now for hours but I cannot find a solution.
> When building qtbase the configure script says that xcb backend is enabled:
>      XCB .................. yes (system library)
>
> My Application DEPENDS and RDEPENDS on qtbase and qtmultimedia, is that
> correct?
> Additionally I have set in my local.conf:
> IMAGE_INSTALL_append = " qtbase qt3d qtconnectivity qtmultimedia
> qtserialport qtsvg qtx11extras qplayerexample"
> DISTRO_FEATURES_append = " x11 xcb"
> qplayerexample is my application.
> I am building core-image-x11, DISTRO is poky, MACHINE is beagleboard.
> What do I have to do to get the xcb plugin?
>
> What I was wondering: in the poky configuration of yocto 1.6 one of the
> default image features is wayland. I have no idea of wayland (yet) and
> would like to stick to x11 for now. My guess is, that this variable is
> overwritten because I am building core-image-x11. Is that correct?
>
> Fabian

