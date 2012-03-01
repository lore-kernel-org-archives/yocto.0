Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36B4E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 11:18:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 11:18:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116649013"
Received: from unknown (HELO envy.home) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 11:18:12 -0800
Message-ID: <4F4FCB48.4070200@linux.intel.com>
Date: Thu, 01 Mar 2012 11:17:28 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <4F4EBEC8.7060705@linux.intel.com>
	<CABcZAN=xxYE+fxC_VhhsH+53eOMR4EPX4apWOG6Ut7zmOnSqyg@mail.gmail.com>
	<4F4EC558.3040401@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>, Chris Larson <clarson@kergoth.com>,
	"Perez-Gonzalez, Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Re: Documentation: Default FILESDIR
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
X-List-Received-Date: Thu, 01 Mar 2012 19:18:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03/01/2012 07:36 AM, Rifenbark, Scott M wrote:
> Darren,
> 
> Please look at
> http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#platdev-appdev-insitu
> in the YP Reference manual.  This is the section you refer to in this
> mail.  The link in this latest version correctly goes to the
> referenced Quilt section, which has significantly changed.  The
> little paragraph you quote below is now basically part of the 9-step
> Quilt process in the YP Dev manual
> (http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-a-quilt-workflow).

OK, this does cover where to put the patch. However, someone looking to
write a recipe when they already have the patches they want may not
think to look for how to do this in a "Using a Quilt Workflow" section.
I think we should have a blurb about this in a section about writing
recipes:

"Add any additional files and patches referenced in the SRC_URI in the
same directory as the recipe so bitbake can find them."

> 
> Can you look at these two sections now and then provide me with
> FILESPATH information so I can create a glossary entry for the item
> and possibly work the use of FILESPATH into the updated Quilt
> section?

I don't know that I'm the best person to define these... however, this
is my understanding, someone else should confirm:

FILESPATH: The ":" delimited set of paths that bitbake will search for
files referenced in the SRC_URI. Defaults to ".:files:${PN}".

FILESEXTRAPATHS: Appends a ":" delimited set of paths to FILESPATH. This
is intended for use in .bbappend files to include any additional files
provided in that layer. This is typically done as:
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

As an aside, it might be nice to make this 'FILESEXTRAPATHS_prepend :=
"${THISDIR}/${PN}:"' the default for bbappend files. Although I imagine
there are good reasons for why it is the way it is.

--
Darren

> 
> Thanks, Scott
> 
> -----Original Message----- From: Darren Hart
> [mailto:dvhart@linux.intel.com] Sent: Wednesday, February 29, 2012
> 6:40 PM To: Chris Larson Cc: Yocto Project; Perez-Gonzalez, Inaky;
> Rifenbark, Scott M Subject: Re: [yocto] Documentation: Default
> FILESDIR
> 
> 
> 
> On 02/29/2012 04:27 PM, Chris Larson wrote:
>> On Wed, Feb 29, 2012 at 5:11 PM, Darren Hart
>> <dvhart@linux.intel.com> wrote:
>>> When a new user goes to write a recipe and add a patch or other
>>> file, they need to understand FILESDIR and where to put these
>>> additional files. I scanned the reference manual and the dev
>>> manual and came up mostly empty handed. The one glipse of it is
>>> in section 5.1.4 of the Reference Manual:
>>> 
>>> " It is useful when making changes directly to the work directory
>>> files to do so using the Quilt tool as detailed in the Modifying
>>> Package Source Code with Quilt section. Using Quilt, you can copy
>>> patches into the recipe directory and use the patches directly
>>> through use of the SRC_URI variable. "
>>> 
>>> Unfortunately, this doesn't say where the recipe directory is and
>>> what it should be named.
>>> 
>>> Is this documented somewhere that I missed? If not, Scott can you
>>> add this task to your list of doc gaps?
>> 
>> FILESDIR hasn't actually been used (or, shouldn't have been) for 
>> years. FILESPATH replaced it.
> 
> Sorry, I should have said FILESPATH - that's what I get for not
> looking it up. The situation is unchanged though.
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

