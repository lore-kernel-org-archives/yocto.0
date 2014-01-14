Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26CFAE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:35:00 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C39E4F811E8; Tue, 14 Jan 2014 06:34:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE3C1F811DC;
	Tue, 14 Jan 2014 06:34:56 -0700 (MST)
Message-ID: <52D53D02.1050207@mlbassoc.com>
Date: Tue, 14 Jan 2014 06:34:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 14 Jan 2014 13:35:01 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-14 06:32, Burton, Ross wrote:
> On 14 January 2014 13:18, Gary Thomas <gary@mlbassoc.com> wrote:
>>>      I don't understand why this happens though as the gst-plugins-base
>>>      recipe uses PKGCONFIG to control this:
>>>         PACKAGECONFIG ??= "${@base_contains('DISTRO___FEATURES', 'x11',
>>> 'x11', '', d)}"
>>>         PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x
>>> --disable-xvideo,virtual/__libx11 libxv libsm libice"
>
>
> Check that gst-plugins-base resolved PACKAGECONFIG hasn't been
> explicitly set somewhere (again, use bitbake -e gst-plugins-base).

Not sure exactly what you mean, but this showed nothing as well:
   $ bitbake -e gst-plugins-base | grep PACKAGECONFIG

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

