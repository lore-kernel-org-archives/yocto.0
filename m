Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 619FDE0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 01:41:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 20 Jun 2013 01:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,903,1363158000"; d="scan'208";a="352803552"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2013 01:41:30 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 20 Jun 2013 01:40:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.49]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.233]) with mapi id
	14.03.0123.003; Thu, 20 Jun 2013 01:40:50 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Documenting YP Development Environment in more detail
Thread-Index: Ac5tkd0duYC0LbJ2S7eCu7XiMMowxA==
Date: Thu, 20 Jun 2013 08:40:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50B40@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Thu, 20 Jun 2013 08:41:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20

Recently, Paul, Ross, Richard and I had a video conference meeting where we=
 had some initial discussion on how to satisfy YOCTO #2808 (https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D2808), which calls for an illustration=
 showing source and destination directories during a build using YP.  This =
bug originated from a discussion Dave Stewart and I had a while back around=
 an idea of a more detailed "flow diagram" that would go into greater detai=
l than the now famous and ubiquitous "The Yocto Project Development Environ=
ment" illustration, which appears in the YP Quick Start (http://www.yoctopr=
oject.org/docs/1.4/yocto-project-qs/yocto-project-qs.html) and has been use=
d in many other places and in many other forms (some quite elaborate).

We can't really create a completely accurate, all-encompassing illustration=
 that breaks apart the entire build process.  It is not a static thing and =
it is quite complicated inside the BitBake process.  We can, however, show =
where metadata comes from, how it is provided, what it defines, where and h=
ow source files are found, what processes occur, what output is produced, a=
nd where it ends up.  We can also provide some sort of idea of how key BitB=
ake and environment variables affect things along the way.  The idea here i=
s to dig deeper into this conceptual figure and root out the details to a l=
evel that would be useful to the user but not impossible to maintain or dev=
elop. This type of information can be communicated through a mix of several=
 illustrations with supporting text.

This first meeting started with some detailed discussion of the configurati=
on inputs for a typical YP build but soon migrated to discussing the bigger=
 picture and possible ways to provide more information.  It became obvious =
we were not going to dig the solution and all the needed information out in=
 one short meeting. Consequently, I am sending out this email to help open =
up some discussion on the issue and to also solicit information for some ba=
sic blocks of information.

Two things are needed at this point:  1) a presentation solution for this n=
ew and more detailed information, and 2) a starting point on some of the in=
formation itself. =20

PRESENTATION SOLUTION

Here are some thoughts on how to present this information.  There are disad=
vantages and advantages to each of these methods of which I will not list. =
 I would like to see what people think about them:

 * Manual - Create a section in the "Technical Details" Chapter of the YP R=
eference Manual that holds this information.  The section would be pretty m=
uch self-contained and would consist of several illustrations that would st=
em from an overall figure that is similar to the figure we now have in the =
YP Quick Start.  However, we would use a drill-down strategy that would pro=
gressively reveal more detail through subsequent figures.  This method is s=
imilar to how hardware devices used to be documented where functional block=
s would be connected and described in one area and then subsequent areas wo=
uld elaborate more deeply on a particular block.  Linking within the manual=
 could connect up the various functional blocks (inputs, outputs, and tasks=
) that comprise the overall flow.

* Manual / Website Mix - Devise a mix between the YP Reference Manual and s=
ome pages in the YP Website that provide the information.  Create a section=
 in the "Technical details" Chapter of the YP Reference Manual that covers =
this information at a high level.  For example, the overall flow of the sys=
tem with its "big-block" inputs and outputs and tasks could be discussed at=
 some length.  Links in the text could go to the YP website where more deta=
il would be revealed.  This strategy effectively splits the content into "o=
verview" and "details" between the manual and website, respectively. =20

* Website - With this strategy, everything is pretty much in the YP website=
.  This area would exist in a stand-alone fashion.  However, you could link=
 to the website from within the existing YP documentation set from existing=
 areas that deal with the build process.  Several exit points from within t=
he manual set already exist.  We would obviously add a primary one as well =
that would likely originate from the YP Reference Manual's "Technical Detai=
ls" Chapter.

SOLICITATION FOR INFORMATION

We can get started now on this by starting to define details for some obvio=
us points or large areas of the flow.  What would be nice to get would be s=
ome graphical breakdowns of these areas of concern:

* User-defined layers
* YP provided layers
* User configuration
* Machine Configuration
* Policy Configuration
* Patches
* YP provided recipes
* User provided source code
* YP provided source code
* SCMs
* Generated images
* Generated SDKs/toolchains
* Package Output
* Source fetching process
* Patch application process
* Configuration process (fragments, etc.)
* Key variable use and effects
* User-initiated commands along the way

Much of this list is directly from our existing "The Yocto Project Developm=
ent Environment" illustration. =20

Thanks,=20
Scott R.



Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


