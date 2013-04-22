Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA331E006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 11:11:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 Apr 2013 11:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,528,1363158000"; d="scan'208";a="230415872"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Apr 2013 11:11:05 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 22 Apr 2013 11:11:05 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.197]) with mapi id
	14.01.0355.002; Mon, 22 Apr 2013 11:11:05 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: observations on current BSP developer's guide
Thread-Index: AQHOP2AiEX2hHDcEUU639UftliK0R5jic9fw
Date: Mon, 22 Apr 2013 18:11:04 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCF7757@ORSMSX104.amr.corp.intel.com>
References: <alpine.DEB.2.02.1304220853580.32510@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304220853580.32510@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: observations on current BSP developer's guide
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
X-List-Received-Date: Mon, 22 Apr 2013 18:11:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Thanks for this close look through the BSP Guide.  I will move on to your n=
ext emails for the remainder of the review.  For these changes, you can fin=
d them at http://www.yoctoproject.org/docs/1.4/bsp-guide/bsp-guide.html. I =
could not address the comment regarding some layers not conforming to our B=
SP Requirements section.  Hopefully someone will respond to that comment.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Monday, April 22, 2013 6:49 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: observations on current BSP developer's guide
>
>
>  brief notes on BSP dev guide, someone else higher up the food chain
>can decide if any of this merits changes or clarifications.
>
>1.1 BSP Layers
>
>* emphasize that name of "meta-*" is only convention, but a really
>well-established one

Fixed

>
>* remove lines of meta-yocto/meta-yocto-bsp from example, has
>potential for giving readers wrong impression. also that whole
>BBLAYERS_NON_REMOVABLE thing is debatable. pick simpler example.

This example is the shipped bblayers.conf file.  I am leaving it.

>
>1.2 Example Filesystem Layout
>
>* clarify what is *actually* required to be an official OE/YP layer,
>as some layers don't have things like README, README.sources, etc.

I qualify the directory hierarchy by saying that not all layers have this s=
tructure. There is also a link to a section named "Released BSP Requirement=
s" that describes what is needed in a BSP layer for it to be YP-compliant.

>
>1.2.5 Layer Configuration File
>
>* "here are the last three statements from the Crown Bay
>conf/layer.conf file" -- those aren't actually the last three lines,
>there's also the "_depends" line but someone else can decide how to
>word that.

Poor wording on my part.  This sentence is loosely referring to what would =
be the corresponding three lines as shown in the example directly above in =
the manual and not actually numbered lines from the file itself.  I re-word=
ed this to be clear on that point.

>
>* wait, that sample layer.conf file seems wrong, aren't the BBFILES
>entries missing a wildcard directory layer?

You are absolutely correct.  I pasted in the correct statements for the exa=
mple.  Good catch.

>
>1.2.6 Hardware Configuration Options
>
>* "For example, the ia32-base.inc file resides in the meta-intel BSP
>Layer in conf/machine/include." hmmmm ... pedantic, yes, but should
>meta-intel really be described as a "BSP" layer? what's the proper way
>to describe it?

Not pedantic... Confusing actually.  I should refer to this simply as a "la=
yer".  I have removed "BSP".

>
>* also, that statement is simply wrong as that directory contains only
>meta-intel.inc, not ia32-base.inc. and last para might also mention
>the include of meta-intel.inc in addition to the other two "require"s.

I removed that sentence leaving just the actual location where the ia32-bas=
e.inc file is really found.  Also included the third "require".

>
>
>1.2.7 Miscellaneous Recipe Files
>
>* Might rename this to "Miscellaneous BSP-specific Recipe Files", to
>distinguish it from the *other* recipe-related sections that follow?

Good suggestion - done.

>
>1.2.9 Linux Kernel Configuration
>
>* Worth upgrading the example shown to 3.8 instead of 3.4? and the
>source shown there doesn't exactly match what's in the current file.

Converted.

>
>* "The file also uses the optional KBRANCH variable to ensure the
>build process uses the standard/default/crownbay kernel branch."
>sorry, "standard/default/crownbay"? shouldn't that say just
>"standard/crownbay"?

Corrected.

>
>* "you had a some" -> "you had some"

Corrected.

>
>1.3.1 Released BSP Requirements
>
>* again, a number of existing layers don't fully comply with this list

Not quite sure how to address this problem.  If our shipped layers are not =
complying then we need to fix the layers so they do or change the requireme=
nts.  Maybe someone else can comment on this.
>
>* File System Layout: "recipe-*" -> "recipes-*"

Fixed.=20

>
>* Machine Configuration File: should probably say that you need to
>include one *or more* machine config files, not just one.

Fixed.

>
>* Note: "It is completely possible for a developer to structure the
>working repository as a conglomeration of unrelated BSP files..."
>might be worth pointing out that this is exactly what meta-yocto-bsp
>does, but that's a special case.

Good point - I adjusted the text.

>
>1.4 Customizing a Recipe for a BSP
>
>* based on recent discussion, probably don't want to use the netbase
>recipe as the example here :-) besides, point 1 erroneously refers to
>the "netbases" directory instead of "netbase".

Yes - I updated this example based on information sent to me from Paul Eggl=
eton. =20

>
>  that's enough for now, i'll finish reading the bsp tools section
>later.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

