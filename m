Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6632BE003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:48:07 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 207C2F81234; Thu, 14 Feb 2013 09:48:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E842F811DA;
	Thu, 14 Feb 2013 09:48:06 -0700 (MST)
Message-ID: <511D155A.4060304@mlbassoc.com>
Date: Thu, 14 Feb 2013 09:48:26 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
	<511CFDF8.9000005@mlbassoc.com>
	<CAJTo0LZQFUF07XwgBkdFBRE6T+mj5iRCqPOQt7XF_X6PE5pmWA@mail.gmail.com>
	<511D02FA.609@mlbassoc.com>
	<CAJTo0LZ5_tN0e_E9AHBDBLzKgNU9tuuV2TGgHrrPsYVtsuG-iQ@mail.gmail.com>
	<511D074E.7020402@mlbassoc.com>
	<CAJTo0LbKsTACcGn2+F4ZeVftaGpTnhB=tNCOCa3qUzkac9XKyQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbKsTACcGn2+F4ZeVftaGpTnhB=tNCOCa3qUzkac9XKyQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Feb 2013 16:48:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-14 08:53, Burton, Ross wrote:
> On 14 February 2013 15:48, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'm using 1.3+ (master from about a month ago) and there is such a file
>>
>> meta/recipes-sato/matchbox-sato/matchbox-session-sato/matchbox-session-sato.schemas
>>
>> How do I change this file to use the new theme?
>> Can I just change the file that becomes
>> (/etc/gconf/schemas/matchbox-session-sato.schemas)
>> in order to test the changes?
>
> Not without re-registering the schemas and rebooting - it's probably
> quicker to change that file in your overlay and re-build an image.
>
> If you've installed the theme already you can use gconftool on the
> device to make a one-off change:
>
> $ gconftool-2 --set --type string /desktop/poky/interface/theme
> Clearlooks-DarkOrange

OK, I've installed the theme into /usr/share/themes and changed the
one line in /etc/gconf/schemas/matchbox-session-sato.schemas from Sato
to Clearlooks-DarkOrange

Much closer.  Now the theme is being used (and it does suit me!)
but I'm also getting a lot of warnings:

   matchbox-wm: unable to open theme: /usr/share/themes/Clearlooks-DarkOrange/matchbox/theme.xml
   (matchbox-panel:29173): Gtk-WARNING **: Unable to locate theme engine in module_path: "clearlooks",
   (matchbox-desktop:29172): Gtk-WARNING **: Unable to locate theme engine in module_path: "clearlooks",
   ./client_gui.py:219: GtkWarning: Unable to locate theme engine in module_path: "clearlooks",

Can I get rid of these?  Should I bother?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

