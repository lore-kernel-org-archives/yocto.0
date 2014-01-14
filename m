Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CACAE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:55:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 66799F811E7; Tue, 14 Jan 2014 06:55:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6F2B4F811DC;
	Tue, 14 Jan 2014 06:55:47 -0700 (MST)
Message-ID: <52D541E5.3040401@mlbassoc.com>
Date: Tue, 14 Jan 2014 06:55:49 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <52D536A0.5060307@mlbassoc.com>	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>	<52D53908.30304@mlbassoc.com>	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>	<52D53D02.1050207@mlbassoc.com>
	<20140114134754.GD3717@jama>
In-Reply-To: <20140114134754.GD3717@jama>
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
X-List-Received-Date: Tue, 14 Jan 2014 13:55:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-14 06:47, Martin Jansa wrote:
> On Tue, Jan 14, 2014 at 06:34:58AM -0700, Gary Thomas wrote:
>> On 2014-01-14 06:32, Burton, Ross wrote:
>>> On 14 January 2014 13:18, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>>       I don't understand why this happens though as the gst-plugins-base
>>>>>       recipe uses PKGCONFIG to control this:
>>>>>          PACKAGECONFIG ??= "${@base_contains('DISTRO___FEATURES', 'x11',
>>>>> 'x11', '', d)}"
>>>>>          PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x
>>>>> --disable-xvideo,virtual/__libx11 libxv libsm libice"
>>>
>>>
>>> Check that gst-plugins-base resolved PACKAGECONFIG hasn't been
>>> explicitly set somewhere (again, use bitbake -e gst-plugins-base).
>>
>> Not sure exactly what you mean, but this showed nothing as well:
>>     $ bitbake -e gst-plugins-base | grep PACKAGECONFIG
>
> nothing? It should show at least assignment of empty value and a lot of
> PACKAGECONFIG usages.

Sorry, no, when x11 is missing, I only get this error:

[gthomas@titan imx6_test]$ bitbake -e gst-plugins-base
NOTE: Started PRServer with DBfile: /home/local/imx6_test/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 45092, PID: 22974
Loading cache: 100% |####################################################################################| ETA:  00:00:00
Loaded 1564 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb DEPENDS on or otherwise requires it)
ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
ERROR: Required build target 'gst-plugins-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['gst-plugins-base', 'virtual/libx11']

If I have x11 in DISTRO_FEATURES, I get a full dump and the grep shows something:

[gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep PACKAGECONFIG
# $PACKAGECONFIG [7 operations]
PACKAGECONFIG=" pango x11"
[gthomas@titan imx6_test]$

Note this is using Poky master that's about a week old, but I doubt that
anything has changed in this realm.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

