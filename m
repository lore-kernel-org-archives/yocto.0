Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60271E0160E
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 06:46:11 -0700 (PDT)
Received: from [173.34.6.101] (port=48734 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VcF3C-0006Cy-0K; Fri, 01 Nov 2013 09:46:10 -0400
Date: Fri, 1 Nov 2013 09:46:06 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F40DF2@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1311010933420.12378@oneiric>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F40DF2@ORSMSX101.amr.corp.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Fri, 01 Nov 2013 13:46:13 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 24 Oct 2013, Rifenbark, Scott M wrote:

> Hey Robert,
>
> You don't need to submit full patches and explanations for these.
> Noting that they are missing and need documenting is perfect.  If
> you do have time when you point out a missing variable, providing a
> brief explanation would help.  And... reporting what is missing is
> extremely useful.  It has been (and will continue to be) an ongoing
> process of fully documenting variables in the reference manual.
>
> Thanks,
> Scott

  for better or worse, here's what i've decided to do. for my own
teaching purposes so i can quickly refer to all the variables related
to a single subject in front of a class, i started a wiki page which
will be an OE variable glossary broken into sections and grouping
related variables. here's the initial result for nothing more than
variables related to u-boot:

http://www.crashcourse.ca/wiki/index.php/OE_variable_glossary#U-Boot_variables

that entire section took about 10 minutes to write and i now have what
i *think* is a list of every OE variable related to u-boot in the
following format:

 * if a variable is already documented in the ref manual, i just link
to it and leave it at that
 * if a variable isn't documented, i add it to the list but
(obviously) without a link

 and since i also want to see the usage of these things, i do a quick
"grep" for each one, which showed me that nothing seems to be using
the documented "UBOOT_TARGET" variable, but it seems that what
*should* be documented is "UBOOT_MAKE_TARGET" instead. and also, none
of the SPL-related variables are mentioned in the reference manual so
i list them as well. as i said, that section took all of about 10
minutes to write so it's not all that time-consuming.

 this is what i'm going to be working on over the next several days,
so if scott (or anyone else) wants to play along, that page will
certainly point out what variables are missing from the ref manual, as
well as any oddities i run across and someone else can submit patches
for the ref manual -- there's just no way i have the time to create
all the patches, but i can certainly at least point out what needs
patching.

 thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



