Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0ECB44C800BA
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2011 07:22:16 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q3oyx-0008E4-9K
	for yocto@yoctoproject.org; Sun, 27 Mar 2011 14:22:11 +0200
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2011 14:22:11 +0200
Received: from gmane by host-82-135-33-74.customer.m-online.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2011 14:22:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 27 Mar 2011 15:21:58 +0300
Organization: Reliable Embedded Systems
Message-ID: <imna56$d09$1@dough.gmane.org>
References: <iml25p$l8j$1@dough.gmane.org>
	<20110327053222.GA22396@sakrah.homelinux.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: host-82-135-33-74.customer.m-online.net
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <20110327053222.GA22396@sakrah.homelinux.org>
Subject: Re: internal compiler error with qt building poky-image-lsb-sdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 27 Mar 2011 12:22:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Khem,

On 03/27/2011 08:32 AM, Khem Raj wrote:
> On (26/03/11 17:53), Robert Berger wrote:
>> Hi,
>>
>> The short version:
>>
>> With commit f8539239bc473279cc475b07c22e1e96514c6d2f Thu Mar 24 13:03:50
>> 2011 +0000 both beagleboard and routerstationpro fail to build due to an
>> internal compiler error:
>>
>> ../../include/QtCore/../../src/corelib/tools/qstring.h:187:17: note: the
>> mangling of 'va_list' has changed in GCC 4.4
>> graphicsview/qgridlayoutengine.cpp:1553:1: internal compiler error: in
>> build_abbrev_table, at dwarf2out.c:9806
> 
> Can you try after addding the following to the failing recipe with 
> 
> CXXFLAGS := "${@oe_filter_out('-feliminate-dwarf2-dups', '${CXXFLAGS}',
> d)}"

I'm sorry I can't try right now, since I'm out of office for a week and
training people in Embedded Linux ;)

I can give it a try earliest in the week of 3rd of April.

Maybe someone else could try in the meantime. It's really easy to reproduce.
*) Just check out the latest from git
*) build poky-image-lsb-sdk for beagleboard

... and wait some hours ...

Regards,

Robert

> 
> -Khem

..."At Group L, Stoffel oversees six first-rate programmers, a
managerial challenge roughly comparable to herding cats." - The
Washington Post Magazine, June 9, 1985

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



