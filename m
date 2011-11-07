Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289AFE00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 08:06:02 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D063E166016D; Mon,  7 Nov 2011 09:06:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3D1CE166010C;
	Mon,  7 Nov 2011 09:06:00 -0700 (MST)
Message-ID: <4EB801E8.1060709@mlbassoc.com>
Date: Mon, 07 Nov 2011 09:06:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1111071058550.1246@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1111071058550.1246@localhost6.localdomain6>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: do all recipes really need LIC_FILES_CHKSUM?
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
X-List-Received-Date: Mon, 07 Nov 2011 16:06:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-11-07 09:01, Robert P. J. Day wrote:
>
>    current poky ref manual seems pretty adamant about need for
> LIC_FILES_CHKSUM:
>
> "Note that this variable is mandatory for all recipes, unless the
> LICENSE variable is set to "CLOSED".
>
> but there's at least one counter-example,
> meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb:
>
> =====
>
> DESCRIPTION = "A clock combined with a game of pong"
> LICENSE = "GPLv2+"
> DEPENDS = "virtual/libx11 xdmcp xau"
>
> SRC_URI = "file://pong-clock-no-flicker.c"
>
> S = "${WORKDIR}"
>
> do_compile () {
>          ${CC} -o pong-clock pong-clock-no-flicker.c `pkg-config --cflags --libs x11 xau xdmcp`
> }
>
> do_install () {
>          install -d ${D}${bindir}
>          install -m 0755 pong-clock ${D}${bindir}
> }
>
> =====
>
> so what's the story here?

I thought I saw an email saying that meta-demoapps was deprecated?
This recipe certainly should not build as is.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

