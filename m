Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DCF5E00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:28:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 699B7F81237; Thu, 14 Feb 2013 10:28:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5768EF81235;
	Thu, 14 Feb 2013 10:28:37 -0700 (MST)
Message-ID: <511D1ED9.4020609@mlbassoc.com>
Date: Thu, 14 Feb 2013 10:28:57 -0700
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
	<511D155A.4060304@mlbassoc.com>
	<CAJTo0Lacok_G7hbBXptLM5easV_9t+pwjX+4S8js2XtmLmfX=Q@mail.gmail.com>
	<511D19D7.8020706@mlbassoc.com>
	<CAJTo0LbdXMeryivrYXYDJ-KPgL7ortMZucMB5bq_boSnSVw5dg@mail.gmail.com>
In-Reply-To: <CAJTo0LbdXMeryivrYXYDJ-KPgL7ortMZucMB5bq_boSnSVw5dg@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Feb 2013 17:28:39 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-14 10:16, Burton, Ross wrote:
> On 14 February 2013 17:07, Gary Thomas <gary@mlbassoc.com> wrote:
>> Thanks, that does look [mostly] better, but I'm still getting some
>> warnings/errors:
>>
>> matchbox-wm: unable to open theme:
>> /usr/share/themes/Clearlooks-DarkOrange/matchbox/theme.xml
>
> Did you revert the other change you made that modified the matchbox theme?
>
>> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:58: Clearlooks
>> configuration option "sunkenmenu" is not supported and will be ignored.
>> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:59: Clearlooks
>> configuration option "menuitemstyle" is not supported and will be ignored.
>> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:60: Clearlooks
>> configuration option "listviewitemstyle" is not supported and will be
>> ignored.
>> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:61: Clearlooks
>> configuration option "progressbarstyle" is not supported and will be
>> ignored.
>>
>> Maybe these are GTK-3 elements?
>
> That's a gtk+2 theme, but it's possible that it targets an older or
> newer version of the clearlooks engine.  And people said that GTK+2
> theming was great...  If it looks acceptable you could ignore it, as
> chasing this could be less than trivial and quite dull - theme engines
> are not versioned so unless the theme has some documentation, you'll
> be searching through the clearlooks commit log.

For the moment, I'll just ignore these.  I'm pretty happy with how it
looks and I now understand a bit more about how to experiment with these.

Thanks again

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

