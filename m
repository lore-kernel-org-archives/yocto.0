Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67CA2E008D9; Fri,  5 Dec 2014 06:21:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6DF1E008A7
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 06:21:47 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 67F3CF81199; Fri,  5 Dec 2014 07:21:47 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 56B6EF81188;
	Fri,  5 Dec 2014 07:21:45 -0700 (MST)
Message-ID: <5481BF8F.4030403@mlbassoc.com>
Date: Fri, 05 Dec 2014 07:22:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>	<4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>	<4B07ADD556F70043925DA2E9C5D4346D2FDB562272@MSXBEBVT12.planar.net>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A75@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A75@MSSRVS5.atlas.de>
Subject: Re: u-boot precompiled ?
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
X-List-Received-Date: Fri, 05 Dec 2014 14:21:55 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-12-05 05:48, Matthias.Heise@atlas-elektronik.com wrote:
> Hello Matt,
>
> thanks very much for your reply, I was able to create a simple patch changing an u-boot setting as test and “bbappended” it. I just didn’t believe before that the various u-boot
> settings are “hard-coded” but they obviously are in the “<board>.h”, so patching it seems to be the only way for changing settings from within yocto, right?

What U-Boot settings are you asking about?

> *Von:*Matt Schuckmann [mailto:Matt.Schuckmann@planar.com]
> *Gesendet:* Donnerstag, 4. Dezember 2014 18:31
> *An:* Heise, Matthias; yocto@yoctoproject.org
> *Betreff:* RE: u-boot precompiled ?
>
> Mat,
>
> I’m fairly new to OpenEmbedded (4 months now and I still feel like a noobi but I’m trying to give back while the pain is still fresh in my mind)
>
> For something like u-boot it kind of depends on what your changing. If you need to change the u-boot code and the changes are small then typically you’d create a patch f for your
> changes and then make them part of a .bbappend in your layer for the recipe. There are examples on the net for how to create a .bbappend and reference the patch file.
>
> Generally your .bbappend can be as simple as:
>
> FILESEXTRAPATHS_prepend = “:${THISDIR}/files”
>
> SRC_URI += “files://xyzzy.patch”
>
> Where your patches are in subdirectory of your recipe directory.
>
> Remember that generally recipes are about how to obtain the code, build it and package it for distribution, you can do recipes that deal with a pre-built binary but that is
> generally not the case.
>
> Hope this helps,
>
> Matt S.
>
> *From:*yocto-bounces@yoctoproject.org <mailto:yocto-bounces@yoctoproject.org> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Matthias.Heise@atlas-elektronik.com
> <mailto:Matthias.Heise@atlas-elektronik.com>
> *Sent:* Thursday, December 04, 2014 1:49 AM
> *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> *Subject:* Re: [yocto] u-boot precompiled ?
>
> Even if this is a stupid question a little advise would be nice … like “don’t ask so stupid questions, go read this and that” or something… no time ? Should I rather unsubscribe
> from this list until I’m an expert?
>
> *Von:*Heise, Matthias
> *Gesendet:* Mittwoch, 3. Dezember 2014 15:15
> *An:* 'yocto@yoctoproject.org'
> *Betreff:* u-boot precompiled ?
>
> Hi all,
>
> I’m still trying to find out basic things about getting a system up and running. This question is about U-Boot, is it right that for example for my wandboard a pre-compiled *.imx
> is just downloaded ?
>
> So if I want to make settings to U-Boot I make them directly in the source, compile it and re-direct in a recipe to take that new file as bootloader ? Or can I make the settings
> within a recipe and I just didn’t find the spot ?
>
> Thanks for your time,
>
> Regards
>
> Mat
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

