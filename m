Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37801E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:18:01 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 35DE9F811E7; Tue, 14 Jan 2014 06:18:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7DF84F811E7;
	Tue, 14 Jan 2014 06:17:58 -0700 (MST)
Message-ID: <52D53908.30304@mlbassoc.com>
Date: Tue, 14 Jan 2014 06:18:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
In-Reply-To: <CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 13:18:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-14 06:12, Nicolas Dechesne wrote:
>
> On Tue, Jan 14, 2014 at 2:07 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm trying to build QTE with a distribution that does not include x11.
>     However, I'm getting this error:
>
>     ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/__recipes-multimedia/gstreamer/g__st-plugins-base_0.10.36.bb <http://gst-plugins-base_0.10.36.bb>
>     DEPENDS on or otherwise requires it)
>     ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     NOTE: Runtime target 'qwt-e' is unbuildable, removing...
>     Missing or unbuildable dependency chain was: ['qwt-e', 'qt4-embedded', 'gst-plugins-base', 'virtual/libx11']
>     ERROR: Required build target 'my-qte-image' has no buildable providers.
>     Missing or unbuildable dependency chain was: ['my-qte-image', 'packagegroup-core-qt4e', 'qwt-e', 'qt4-embedded', 'gst-plugins-base', 'virtual/libx11']
>
>     I don't understand why this happens though as the gst-plugins-base
>     recipe uses PKGCONFIG to control this:
>        PACKAGECONFIG ??= "${@base_contains('DISTRO___FEATURES', 'x11', 'x11', '', d)}"
>        PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x --disable-xvideo,virtual/__libx11 libxv libsm libice"
>
>     How can the depencency on virtual/libx11 still be there if DISTRO_FEATURES does not contain x11?
>
>
> obvious question... are you sure DISTRO_FEATURES does not contain x11? did you define you own distro config? it is there by default, so unless you did something to remove it, it
> will be there.
>
> you can display the value of the variable with
>
> bitbake -e gst-plugins-base | grep ^DISTRO_FEATURES
>
> you can check the value of PACKAGECONFIG as well to get more information.

Yes, I explicitly removed this in local.conf:

[gthomas@titan imx6_test]$ tail -n5 conf/local.conf

# Enable local PR server - edit this to use a shared server
PRSERV_HOST = "localhost:0"

DISTRO_FEATURES_remove = "x11 wayland"

[gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep ^DISTRO_FEATURES
  ... nothing

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

