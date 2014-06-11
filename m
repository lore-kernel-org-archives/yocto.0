Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 899D7E00B7B; Wed, 11 Jun 2014 11:28:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 URI_HEX URI: URI hostname has long hexadecimal
	sequence
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191F4E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 11:28:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6F3B2F811DA; Wed, 11 Jun 2014 12:28:19 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9F53BF81188;
	Wed, 11 Jun 2014 12:28:16 -0600 (MDT)
Message-ID: <53989FC8.7080905@mlbassoc.com>
Date: Wed, 11 Jun 2014 12:28:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACwkBCTTVA7YCaxZ7UdTB6dDEjr+96PCzYsSHkJ+k-QC7MvMPw@mail.gmail.com>
In-Reply-To: <CACwkBCTTVA7YCaxZ7UdTB6dDEjr+96PCzYsSHkJ+k-QC7MvMPw@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Nothing RPROVIDES 'liborc-0.4'
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
X-List-Received-Date: Wed, 11 Jun 2014 18:28:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-06-11 12:17, Lukáš Novotný wrote:
> Hello everyone,
>
> I'm trying to build raspberry pi image that includes gstreamer1.0 and
> it's plugins. Packages built successfully, however when trying to
> build the image itself I get error:
>
> Nothing RPROVIDES 'liborc-0.4' (but
> /home/lukas/opt/yocto-daisy/poky/build-raspberrypi/recipes/images/rpi-retail-player-edited-20140611-195509.bb
> RDEPENDS on or otherwise requires it)
>
> Full output when using bitbake directly: http://pastebin.com/2mcUwzAm
>
> Searching for "liborc*" within tmp/deploy returns:
>
> ./rpm/armv6_vfp/liborc-test-0.4-0-0.4.18-r2.0.armv6_vfp.rpm
> ./rpm/armv6_vfp/liborc-0.4-0-0.4.18-r2.0.armv6_vfp.rpm
>
> I have tried also building from 'master' branch of both poky and
> meta-raspberrypi and I'm getting the same error. Any idea on what's
> going on and how to fix it?

What layer are these recipes (liborc,  rpi-retail-player-edited)
coming from?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

