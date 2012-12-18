Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D3C9E00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 17:27:19 -0800 (PST)
Received: from [192.168.1.11] (c-68-46-169-75.hsd1.nj.comcast.net
	[68.46.169.75])
	by smtp.webfaction.com (Postfix) with ESMTP id C508B59B3B99
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 19:26:59 -0600 (CST)
Message-ID: <50CFC662.7050608@mindchasers.com>
Date: Mon, 17 Dec 2012 20:26:58 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1212130857190.5702@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
Subject: Re: bitbake user manual vs mega manual, and more info on local file fetcher?
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
X-List-Received-Date: Tue, 18 Dec 2012 01:27:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm glad to hear that the bitbake manual is getting an update, and I'm 
sure you guys know a lot of debugging tricks that I don't know.

Can you please include a section on debugging bitbake build errors 
(beyond logs, -D, and -v)?  In other words, what's the best way to 
instrument or hack bitbake when debugging errors in the build process?

I sometimes hack at the python to better understand what's going on, so 
I'm interested to see what the experts do.

Thanks,

Bob





On 12/13/2012 10:18 AM, Rifenbark, Scott M wrote:
> Hey Robert,
>
> Great questions... we are revising the BitBake manual as part of the YP 1.4 release.  And, we are currently discussing exactly how to position it.  So the answers to your questions are in the works.
>
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>> Sent: Thursday, December 13, 2012 6:09 AM
>> To: Yocto discussion list
>> Subject: [yocto] bitbake user manual vs mega manual, and more info on
>> local file fetcher?
>>
>>
>>   first question -- is the bitbake user manual that comes bundled with
>> the bitbake source considered part of the yocto doc collection?  as
>> in, if one wants detailed info on bitbake, does one read the bitbake
>> user manual (which is not mentioned on the yocto docs page), or is
>> bitbake user info assumed to now be scattered throughout the yocto
>> docs?  i think it's important to identify the canonical location for
>> that documentation.
>>
>>   following on that, i'm asking since the bitbake user manual is
>> definitely a *little* deficient on info for the local file fetcher.
>> here's the sum total of its examples:
>>
>> SRC_URI= "file://relativefile.patch"
>> SRC_URI= "file://relativefile.patch;this=ignored"
>> SRC_URI= "file:///Users/ich/very_important_software"
>>
>> but there's no mention that (as i read it) that protocol accepts
>> wildcards:
>>
>> meta-angstrom/recipes-angstrom/angstrom/angstrom-uboot-
>> scripts.bb:SRC_URI = "file://*.cmd"
>>
>> i had no idea that was even true until i stumbled over the above (if
>> that's indeed what it means).
>>
>>   there's also no comprehensive coverage of how to define and use
>> patches in the yocto docs.  the only mention i see is in the ref
>> manual, in the variable glossary under SRC_URI, which isn't even
>> complete (no mention of apply= or patchdir=).
>>
>>   so basic question -- is the bitbake user manual still under active
>> maintenance and is it considered part of the yocto docs collection?
>> since all that bitbake information should be *somewhere* but it's not
>> clear where.
>>
>> rday
>>
>>
>> --
>>
>> ========================================================================
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>> ========================================================================
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


