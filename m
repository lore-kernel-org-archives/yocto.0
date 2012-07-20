Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2564E002A5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 23:41:22 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id DCB181D560DA;
	Fri, 20 Jul 2012 08:41:19 +0200 (CEST)
Message-ID: <5008FD8F.6090706@timomueller.eu>
Date: Fri, 20 Jul 2012 08:41:19 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A42DD5@ORSMSX101.amr.corp.intel.com>
	<5007AFA3.9060306@timomueller.eu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A4408B@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A4408B@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Fri, 20 Jul 2012 06:41:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Rifenbark, Scott M wrote, On 19.07.2012 16:39:
> Very nice... thanks
>
> -----Original Message-----
> From: Timo Müller [mailto:mail@timomueller.eu]
> Sent: Wednesday, July 18, 2012 11:57 PM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org; Timo Mueller
> Subject: Re: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
>
> Hi,
>
> Rifenbark, Scott M wrote, On 18.07.2012 17:03:
>> Hi,
>>
>> This seems like a very cool idea.  What about when things change
>   > structurally for the Yocto Docs? For example, right now I am
>   > restructuring much of the Eclipse information that is in the ADT
>   > manual to move it to the development manual as part of an application
>   > development flow.  It looks like your patch here includes the ADT
>   > manual and the Quick Start.  The changes I am working on will
>   > eventually require the YP development manual as well.
>
> I wanted to make sure that it is possible to generate eclipse help from
> the documentation and integrate it into eclipse. Starting with the
> development manual and the quick start guide was the obvious choice.
> But, as I didn't encounter any problems using the docbook eclipse
> stylesheet on the documentation, I suspect that integrating the other
> documents is also possible.
> I will give it a try and let you know about the results.
>

As I suspected I didn't encounter any problems generating eclipse help 
documentation from all documentation parts (dev-manual, kernel-manual, 
...). So it will be straight-forward and easy to add them to the eclipse 
plugin as well.

>>
>> Scott

<snip>

Regards,
Timo

