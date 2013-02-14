Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1359AE003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:08:22 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7CFD9F81232; Thu, 14 Feb 2013 08:08:22 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 961EBF811E8;
	Thu, 14 Feb 2013 08:08:20 -0700 (MST)
Message-ID: <511CFDF8.9000005@mlbassoc.com>
Date: Thu, 14 Feb 2013 08:08:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
In-Reply-To: <CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Control over Sato theme
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
X-List-Received-Date: Thu, 14 Feb 2013 15:08:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-14 08:00, Burton, Ross wrote:
> On 14 February 2013 13:24, Gary Thomas <gary@mlbassoc.com> wrote:
>> My system has a single GUI program and I'd like to change the "feel"
>> (aka theme).  For example, I'd like to change the colors around (black
>> backgrounds, light foregrounds, etc), as well as things like the size
>> and color of sliders, etc (it's a very restricted environment and I want
>> the feel to reflect that).
>>
>> I think I still need the Sato basics as I need some minimal window manager
>> services like popup keyboards, etc.
>
> Messing with the gtk+ theme is the right thing to do, and you can
> change the theme whilst still using the rest of the Sato environment.
>
> Either dig into the Sato theme more, or there's a lot of GTK+ 2 themes
> at http://art.gnome.org/themes/gtk2 (and other locations) that will
> work just fine.

This is a great resource and many of them look perfect for my needs.

What's the best way to install/use one of these? (while I may have been
using X since version 10.2, I seldom mess with such things and don't
really know the best starting point)

For example, I downloaded 'ClearLooks Dark Orange' which gave me a single
file "Clearlooks-DarkOrange/gtk-2.0/gtkrc".  How do I install this and
make it stick on my target?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

