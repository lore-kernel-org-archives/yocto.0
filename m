Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72099E00816
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:20:59 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E89CFF811E8; Tue, 14 Jan 2014 07:20:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 32B8AF811DC;
	Tue, 14 Jan 2014 07:20:55 -0700 (MST)
Message-ID: <52D547C9.3070703@mlbassoc.com>
Date: Tue, 14 Jan 2014 07:20:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
	<CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
In-Reply-To: <CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 14 Jan 2014 14:21:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-14 07:01, Nicolas Dechesne wrote:
>
> On Tue, Jan 14, 2014 at 2:55 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Sorry, no, when x11 is missing, I only get this error:
>
>
>
>     [gthomas@titan imx6_test]$ bitbake -e gst-plugins-base
>     NOTE: Started PRServer with DBfile: /home/local/imx6_test/cache/__prserv.sqlite3, IP: 127.0.0.1, PORT: 45092, PID: 22974
>     Loading cache: 100% |#############################__##############################__#########################| ETA:  00:00:00
>     Loaded 1564 entries from dependency cache.
>     NOTE: Resolving any missing task queue dependencies
>     ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/__recipes-multimedia/gstreamer/g__st-plugins-base_0.10.36.bb <http://gst-plugins-base_0.10.36.bb>
>     DEPENDS on or otherwise requires it)
>
>     ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>     ERROR: Required build target 'gst-plugins-base' has no buildable providers.
>     Missing or unbuildable dependency chain was: ['gst-plugins-base', 'virtual/libx11']
>
>     If I have x11 in DISTRO_FEATURES, I get a full dump and the grep shows something:
>
>     [gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep PACKAGECONFIG
>     # $PACKAGECONFIG [7 operations]
>     PACKAGECONFIG=" pango x11"
>     [gthomas@titan imx6_test]$
>
>
> pango looks suspicious here. it's not there by default. so something seems to be setting PACKAGECONFIG in your config, and that could be the root cause of your problem...

The error says nothing about pango, is only says that virtual/libx11
is missing.

That said, this was a problem of my own doing :-(  I have this in
gst-plugins-base_0.10.36.bbappend:
   # Enable extra plugins
   PACKAGECONFIG += "pango x11"

Sorry for all the noise.  It's still too bad that bitbake didn't really
help me find this, only spitting out those errors...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

