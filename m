Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D05E0047F
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:48:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 37A77F81232; Thu, 14 Feb 2013 08:48:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 06F45F811F7;
	Thu, 14 Feb 2013 08:48:10 -0700 (MST)
Message-ID: <511D074E.7020402@mlbassoc.com>
Date: Thu, 14 Feb 2013 08:48:30 -0700
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
In-Reply-To: <CAJTo0LZ5_tN0e_E9AHBDBLzKgNU9tuuV2TGgHrrPsYVtsuG-iQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Feb 2013 15:48:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-14 08:38, Burton, Ross wrote:
> On 14 February 2013 15:30, Gary Thomas <gary@mlbassoc.com> wrote:
>> I didn't find any mention of Sato in the matchbox-desktop-sato package,
>> but I did in matchbox-session-sato.  It was mentioned in
>> /etc/matchbox/session:
>>    exec matchbox-window-manager -theme Sato -use_desktop_mode decorated
>> -use_cursor $SHOWCURSOR $@
>
> Right, that's the window manager theme, not the widget theme.
>
> I typo'd, sorry, I meant matchbox-session-sato.  In master, there's a
> matchbox-session-sato/matchbox-session-sato.schemas which sets the
> default theme.  If you're using 1.3 or earlier, there's explicit
> gconftool calls you'll need to change.

I'm using 1.3+ (master from about a month ago) and there is such a file
   meta/recipes-sato/matchbox-sato/matchbox-session-sato/matchbox-session-sato.schemas

How do I change this file to use the new theme?
Can I just change the file that becomes (/etc/gconf/schemas/matchbox-session-sato.schemas)
in order to test the changes?

Are these processes documented somewhere (even out of band, e.g. on some
GNOME site, etc)?

Thanks for your time with this.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

