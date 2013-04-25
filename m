Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D18E01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:49:24 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 94DA5F811DB; Thu, 25 Apr 2013 08:49:24 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3FECBF81188;
	Thu, 25 Apr 2013 08:49:23 -0600 (MDT)
Message-ID: <51794282.90801@mlbassoc.com>
Date: Thu, 25 Apr 2013 08:49:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
	<CAJTo0LbzYsOdZ_We_q6VsdfgrdGU9syaRDyXJxe-eu_tAjS0Mw@mail.gmail.com>
In-Reply-To: <CAJTo0LbzYsOdZ_We_q6VsdfgrdGU9syaRDyXJxe-eu_tAjS0Mw@mail.gmail.com>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 14:49:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-25 08:25, Burton, Ross wrote:
> Hi Jon,
>
> On 25 April 2013 15:10, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
>> In my current situation, I have a small read-only image where I can't afford
>> to ship pkg data, and wanted to gather this info on the host side of things.
>> I assume this information is tracked somewhere in the poky build directory,
>> but I'm having some trouble finding it.
>>
>> Could someone kindly point me towards this information or the documentation
>> section(s) that I may have overlooked.
>
> In tmp/work/[machine]/[image]/[version]/ you'll find
> installed-pkgs.txt and complementary-pkgs.txt, which should be exactly
> what you want.

True, but the installed-pkgs.txt file only contains the names, not the
version information (at least with opkg).  I suppose you could write a
script to use this file as a starting point, then look through the packages,
e.g. tmp/deploy/ipk/*, to find the actual version used.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

