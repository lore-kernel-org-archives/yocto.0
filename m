Return-Path: <tb@travelping.com>
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F47E011ED
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 08:03:30 -0800 (PST)
Received: from office.tpip.net (port-87-193-171-186.static.qsc.de
	[87.193.171.186])
	by mail.tpip.net (Postfix) with ESMTP id 7671D4F418;
	Thu, 20 Dec 2012 16:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 6A63042E83;
	Thu, 20 Dec 2012 17:03:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id CofdfJMIFtD2; Thu, 20 Dec 2012 17:03:27 +0100 (CET)
Received: from [192.168.14.111] (p4FEA4F5D.dip.t-dialin.net [79.234.79.93])
	by office.tpip.net (Postfix) with ESMTPSA id 5DBC042E2A;
	Thu, 20 Dec 2012 17:03:27 +0100 (CET)
Message-ID: <50D336CE.6060706@travelping.com>
Date: Thu, 20 Dec 2012 17:03:26 +0100
From: Tino Breddin <tb@travelping.com>
Organization: Travelping GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Jerrod Peach <peachj@lexmark.com>
References: <50D32FE8.7020506@travelping.com>
	<CA+QkY1Dt0tYj+iREYRNVGXsMmiuxBRMBpc1i9pZDatjjcYxSDw@mail.gmail.com>
In-Reply-To: <CA+QkY1Dt0tYj+iREYRNVGXsMmiuxBRMBpc1i9pZDatjjcYxSDw@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to update Git clone when rebuilding
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
X-List-Received-Date: Thu, 20 Dec 2012 16:03:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Jerrod,

That looks promising. Will try that once I can build again.

Thanks,
Tino

On 12/20/2012 04:38 PM, Jerrod Peach wrote:
> Tino,
> 
> SRCREV = "${AUTOREV}"
> 
> You can read a little more about that in these two docs:
> 
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-variables-glossary
> http://www.yoctoproject.org/docs/1.3/dev-manual/dev-manual.html#platdev-appdev-srcrev
> 
> Kind regards,
> 
> Jerrod
> 
> 
> On Thu, Dec 20, 2012 at 10:34 AM, Tino Breddin <tb@travelping.com> wrote:
> 
>> Hi,
>>
>> I've noticed that bitbake won't update a Git checkout of an
>> application referenced through a recipe when running a follow-up build.
>>
>> Is there some way to tell bitbake to check whether the remote Git
>> repository provides updates which should trigger a rebuild of the
>> application?
>>
>> Cheers,
>> Tino
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 

-- 
Tino Breddin
Technical Director

email: tb@travelping.com
mobile: +49-151-27054995

------------------- enabling your networks -------------------

Travelping GmbH               phone:         +49-391-819099229
Roentgenstr. 13               fax:           +49-391-819099299
D-39108 Magdeburg             email:       info@travelping.com
GERMANY                       web:   http://www.travelping.com


Company Registration: Amtsgericht Stendal Reg No.:   HRB 10578
Geschaeftsfuehrer: Holger Winkelmann | VAT ID No.: DE236673780
--------------------------------------------------------------

