Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A558A4C80BD4
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 16:34:24 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAIMYOsF026226
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 14:34:24 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 18 Nov 2010 14:34:23 -0800
Received: from Macintosh-5.local ([172.25.34.31]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 18 Nov 2010 14:34:23 -0800
Message-ID: <4CE5A9EE.2080306@windriver.com>
Date: Thu, 18 Nov 2010 16:34:22 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-OriginalArrivalTime: 18 Nov 2010 22:34:24.0116 (UTC)
	FILETIME=[C037CB40:01CB8770]
Subject: Request for Reviews and future package updates
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
X-List-Received-Date: Thu, 18 Nov 2010 22:34:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'd like to request that future reviews and package updates include "SUMMARY"
information in the recipe files.

For people who are not aware of the issue, a policy was created in Yocto 0.9
that we want each package to contain both a summary and description.  The
summary should be short and fewer then 80 characters if possible.  While the
description may be arbitrarily long and should explain the functionality of the
package.

By default, the SUMMARY is set to equal the DESCRIPTION if it was not previously
set.

So if the DESCRIPTION is short, a SUMMARY may not be required, such as:

DESCRIPTION = "A multi-purpose linux bootloader"


However, in a package with a more complicated description, such as chrpath:

DESCRIPTION = "chrpath allows you to change the rpath (where the application \
looks for libraries) in an application. It does not (yet) allow you to add an \
rpath if there isn't one already."

A short summary should be added to the recipe:

SUMMARY = "Tool to edit rpath in ELF binaries"

---

I'm currently going through Poky updating many of the recipes by updating
descriptions as necessary and adding SUMMARY fields.  In the future, or as
packages are updated, we should ensure that both the SUMMARY and DESCRIPTION are
present and up-to-date.

--Mark

