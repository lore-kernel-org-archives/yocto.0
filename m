Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F1A1E0027F
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:15:06 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from [192.168.101.57] (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 55E6C1D56080;
	Thu,  6 Sep 2012 17:14:50 +0200 (CEST)
Message-ID: <5048BDE9.8060501@timomueller.eu>
Date: Thu, 06 Sep 2012 17:14:49 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <cover.1346922110.git.timo.mueller@bmw-carit.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A64D0B@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A64D0B@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/6][yocto-docs] Add eclipse help generation to build system.
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
X-List-Received-Date: Thu, 06 Sep 2012 15:15:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Scott,

Rifenbark, Scott M wrote, On 06.09.2012 16:50:
> Hi Timo,
>
> Thanks for the patches here.  I need to be sure that these patches are based on the most recent documentation
files found in the yocto-docs/master branch, which is at 
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/log/.  Can you 
confirm this for me?

Yes, I've tested these patches with the yocto-docs/master branch.
(git://git.yoctoproject.org/yocto-docs)

documentation/yocto-project-qs/yocto-project-qs.xml: Added glib-gettextize
(CommitID: c46f8e46ad70bf979d2e51e58d461bcd9456b773)

I've just tested with the current commit and the patches also work with 
Commit f909a7336ae2f95baa751231beeae08081576e1f.

>
> Thanks,
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of mail@timomueller.eu
> Sent: Thursday, September 06, 2012 2:05 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [RFC 0/6][yocto-docs] Add eclipse help generation to build system.
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> before my vacation I've submitted a patch to the eclipse-poky project
> integrating the documentation into the eclipse IDE. To enable the integration
> into eclipse I've manually generated eclipse help from the documentation
> using the eclipse stylesheet provided by docbook.
>
> I've added the target 'eclipse' to the documentation's build system to
> automate the process of eclipse help generation. This can help to
> facilitate the process of keeping the integrated documentation in sync
> with the yocto documentation.
>
> In this first RFC I've only integrated the adt-manual as a PoC,
> because I'm also proposing some changes to the existing html
> generation. These changes add a separation of the options used for the
> different output formats. They also help to keep the Makefile clean and
> concise.
>
> Cheers,
> 	Timo
>
> Timo Mueller (6):
>    documentation/adt-manual: Moved stylesheet parameters to
>      customization file
>    documentation/adt-manual/adt-manual-eclipse-customization.xsl: Added
>      stylesheet for eclipse help
>    documentation/Makefile: Added eclipse target for generating eclipse
>      help
>    documentation/template/titlepage.templates.xml: Remove title from pdf
>      template
>    documentation/adt-manual/adt-manual.xml: Added title to bookinfo
>    documentation/Makefile: Added eclipse target to adt-manual
>      documentation
>
>   documentation/Makefile                             |   36 ++++++++++++++-----
>   .../adt-manual/adt-manual-customization.xsl        |    7 +++-
>   .../adt-manual-eclipse-customization.xsl           |   22 ++++++++++++
>   documentation/adt-manual/adt-manual.xml            |    5 ++-
>   documentation/template/titlepage.templates.xml     |   13 -------
>   5 files changed, 57 insertions(+), 26 deletions(-)
>   create mode 100644 documentation/adt-manual/adt-manual-eclipse-customization.xsl
>

Best regards,
     Timo


