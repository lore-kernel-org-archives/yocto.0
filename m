Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63F8BE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:07:45 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2834AF811EB; Tue, 14 Jan 2014 06:07:45 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C6ED0F811E7;
	Tue, 14 Jan 2014 06:07:42 -0700 (MST)
Message-ID: <52D536A0.5060307@mlbassoc.com>
Date: Tue, 14 Jan 2014 06:07:44 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 13:07:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build QTE with a distribution that does not include x11.
However, I'm getting this error:

ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb DEPENDS on or otherwise requires it)
ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
NOTE: Runtime target 'qwt-e' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qwt-e', 'qt4-embedded', 'gst-plugins-base', 'virtual/libx11']
ERROR: Required build target 'my-qte-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['my-qte-image', 'packagegroup-core-qt4e', 'qwt-e', 'qt4-embedded', 'gst-plugins-base', 'virtual/libx11']

I don't understand why this happens though as the gst-plugins-base
recipe uses PKGCONFIG to control this:
   PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"
   PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x --disable-xvideo,virtual/libx11 libxv libsm libice"

How can the depencency on virtual/libx11 still be there if DISTRO_FEATURES does not contain x11?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

