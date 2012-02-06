Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5F0BE0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 10:28:22 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Feb 2012 10:28:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107005720"
Received: from unknown (HELO envy.home) ([10.7.199.167])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 10:28:22 -0800
Message-ID: <4F301BA8.4020102@linux.intel.com>
Date: Mon, 06 Feb 2012 10:27:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
	<F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
	<4F2FF8F6.7060601@linux.intel.com> <4F300A55.2060305@gmail.com>
	<4F300E98.6000307@linux.intel.com>
	<CANFv2Ekqtp2bWPRDFkF4bLGsv6O68R59evC09zjygOfKgTr+nQ@mail.gmail.com>
In-Reply-To: <CANFv2Ekqtp2bWPRDFkF4bLGsv6O68R59evC09zjygOfKgTr+nQ@mail.gmail.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
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
X-List-Received-Date: Mon, 06 Feb 2012 18:28:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/06/2012 10:19 AM, James Abernathy wrote:

> 
>     If we could make the "How Do I" section of the wiki broken into
>     sub-categories so each "How Do I" is a separate item to be edited.
>     That would make it easier to find, create, and edit these items.
>     Also once an item found it's way into official documentation, it
>     could be removed or edited to point to the official doc.

The wiki will do this automatically if you use headings for the
questions instead of the bold ''' syntax.

You creating headings with the = characher

= Heading Level 1 =
== Heading Level 2 ==
=== Heading Level 3 ===
etc.

I suggest starting on Headling Level 2, leaving Level 1 for the title.
This should also automatically present a Table of Contents at the top of
the page which aids in navigation.

This is standard MediaWiki syntax, for reference:
http://www.mediawiki.org/wiki/Help:Formatting#Level_2
http://www.mediawiki.org/wiki/Table_of_Contents

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

