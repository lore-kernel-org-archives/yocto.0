Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B0BCE00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 11:22:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jun 2013 11:20:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,906,1363158000"; d="scan'208";a="332910017"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 20 Jun 2013 11:22:33 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.217]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.03.0123.003; Thu, 20 Jun 2013 11:22:33 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Bill Traynor
	<btraynor@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
Thread-Index: Ac5tkd0duYC0LbJ2S7eCu7XiMMowxAAZdE+AAAE/VQAAAaGIAAAOXloA//9M6oA=
Date: Thu, 20 Jun 2013 18:22:32 +0000
Message-ID: <CDE892AD.36CA0%david.c.stewart@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.4.130416
x-originating-ip: [10.24.0.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Thu, 20 Jun 2013 18:22:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C66D5D1C94866B44A8D795BD261073A0@intel.com>
Content-Transfer-Encoding: quoted-printable



On 6/20/13 8:23 AM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

>
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Bill Traynor
>>Sent: Thursday, June 20, 2013 8:12 AM
>>To: Richard Purdie
>>Cc: yocto@yoctoproject.org; Paul Eggleton; Osier-mixon, Jeffrey
>>Subject: Re: [yocto] Documenting YP Development Environment in more
>>detail
>>
>>On Thu, Jun 20, 2013 at 10:25 AM, Richard Purdie
>><richard.purdie@linuxfoundation.org> wrote:
>>> On Thu, 2013-06-20 at 09:49 -0400, Bruce Ashfield wrote:
>>>> On 13-06-20 04:40 AM, Rifenbark, Scott M wrote:
>>>> > Hi,
>>>> >
>>>> > Recently, Paul, Ross, Richard and I had a video conference meeting
>>where we had some initial discussion on how to satisfy YOCTO #2808
>>(https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2808), which calls
>>for an illustration showing source and destination directories during a
>>build using YP.  This bug originated from a discussion Dave Stewart and
>>I had a while back around an idea of a more detailed "flow diagram" that
>>would go into greater detail than the now famous and ubiquitous "The
>>Yocto Project Development Environment" illustration, which appears in
>>the YP Quick Start (http://www.yoctoproject.org/docs/1.4/yocto-project-
>>qs/yocto-project-qs.html) and has been used in many other places and in
>>many other forms (some quite elaborate).
>>>> >
>>>> > We can't really create a completely accurate, all-encompassing
>>illustration that breaks apart the entire build process.  It is not a
>>static thing and it is quite complicated inside the BitBake process.  We
>>can, however, show where metadata comes from, how it is provided, what
>>it defines, where and how source files are found, what processes occur,
>>what output is produced, and where it ends up.  We can also provide some
>>sort of idea of how key BitBake and environment variables affect things
>>along the way.  The idea here is to dig deeper into this conceptual
>>figure and root out the details to a level that would be useful to the
>>user but not impossible to maintain or develop. This type of information
>>can be communicated through a mix of several illustrations with
>>supporting text.
>>>> >
>>>> > This first meeting started with some detailed discussion of the
>>configuration inputs for a typical YP build but soon migrated to
>>discussing the bigger picture and possible ways to provide more
>>information.  It became obvious we were not going to dig the solution
>>and all the needed information out in one short meeting. Consequently, I
>>am sending out this email to help open up some discussion on the issue
>>and to also solicit information for some basic blocks of information.

I would recommend that we don't over-engineer this thing if we can avoid
it.
Remember the goal: People have told me that they are confused about which
directories
are "active" in the build process, i.e. Where does stuff come from and
where does it go?
My advice would be to think of bitbake as a black box with inputs and
outputs.
I know that any directory could be *potentially* an input or output (why
else would it be there?)
But I'm hoping we can up level a little.

>>>> >
>>>> > Two things are needed at this point:  1) a presentation solution
>>for this new and more detailed information, and 2) a starting point on
>>some of the information itself.
>>>> >
>>>> > PRESENTATION SOLUTION
>>>> >
>>>> > Here are some thoughts on how to present this information.  There
>>>> are disadvantages and advantages to each of these methods of which I
>>>> will not list.  I would like to see what people think about them:
>>>> >
>>>> >   * Manual - Create a section in the "Technical Details" Chapter of
>>>> the YP Reference Manual that holds this information.  The section
>>>> would be pretty much self-contained and would consist of several
>>>> illustrations that would stem from an overall figure that is similar
>>>> to the figure we now have in the YP Quick Start.  However, we would
>>>> use a drill-down strategy that would progressively reveal more detail
>>>> through subsequent figures.  This method is similar to how hardware
>>>> devices used to be documented where functional blocks would be
>>>> connected and described in one area and then subsequent areas would
>>>> elaborate more deeply on a particular block.  Linking within the
>>>> manual could connect up the various functional blocks (inputs,
>>>> outputs, and tasks) that comprise the overall flow.
>>>> >
>>>> > * Manual / Website Mix - Devise a mix between the YP Reference
>>>> Manual and some pages in the YP Website that provide the information.
>>>> Create a section in the "Technical details" Chapter of the YP
>>>> Reference Manual that covers this information at a high level.  For
>>>> example, the overall flow of the system with its "big-block" inputs
>>>> and outputs and tasks could be discussed at some length.  Links in
>>the
>>>> text could go to the YP website where more detail would be revealed.
>>>> This strategy effectively splits the content into "overview" and
>>>> "details" between the manual and website, respectively.
>>>> >
>>>> > * Website - With this strategy, everything is pretty much in the YP
>>>> website.  This area would exist in a stand-alone fashion.  However,
>>>> you could link to the website from within the existing YP
>>>> documentation set from existing areas that deal with the build
>>>> process.  Several exit points from within the manual set already
>>>> exist.  We would obviously add a primary one as well that would
>>likely
>>>> originate from the YP Reference Manual's "Technical Details" Chapter.
>>>
>>> I'm wondering if a hybrid is possible here. Can we for example embed
>>> image maps into the docbook so that if you hover over areas of the
>>> image, you can then have links to the different sections?
>>
>>FWIW, docbook supports image maps via the mediaobject tag but they are
>>somewhat limited in their usefulness.
>>
>>http://docbook.org/tdg5/en/html/mediaobject.html
>>http://www.sagehill.net/docbookxsl/Imagemaps.html
>>
>>Scott, you may run into trouble when converting the docs between doc
>>types, in particular with scaling of images.
>
>I will do some playing around with image maps and see what comes up.
>It would be nice to see if we could make some "hot-spots" within
>Illustrations.
>
>
>>
>>>
>>>> > SOLICITATION FOR INFORMATION
>>>> >
>>>> > We can get started now on this by starting to define details for
>>>> some obvious points or large areas of the flow.  What would be nice
>>to
>>>> get would be some graphical breakdowns of these areas of concern:
>>>> >
>>>> > * User-defined layers
>>>> > * YP provided layers
>>>> > * User configuration
>>>> > * Machine Configuration
>>>> > * Policy Configuration
>>>> > * Patches
>>>> > * YP provided recipes
>>>> > * User provided source code
>>>> > * YP provided source code
>>>> > * SCMs
>>>> > * Generated images
>>>> > * Generated SDKs/toolchains
>>>> > * Package Output
>>>> > * Source fetching process
>>>> > * Patch application process
>>>> > * Configuration process (fragments, etc.)
>>>>
>>>> Just so I'm clear .. are you looking for graphical breakdowns to be
>>>> created and sent,
>>>> or information offered so graphical breakdowns can be created ?
>
>Bruce - any kind of information in any form is useful.  If you need to
>hack up a drawing to get a point across... do so.  Or, if you can send
>textual information that is good too.
>
>>>>
>>>> The reason I ask, is that if there's any interest in the linux-yocto
>>>> (for lack of a better term) flow being described graphically, I'm
>>>> happy to offer up information, but my graphical skills are limited
>>>> to what you find in a typical hackers bag of ticks :)
>>>
>>> I suggested that Scott try and accumulate information for each topic
>>> like the following:
>>>
>>> Fetcher:
>>>
>>> Code Areas: Bitbake Fetch Module (bitbake/lib/bb/fetch2, called from
>>> classes/base.bbclass)
>>> Tasks Covered: do_fetch/do_unpack
>>> Key Variables: SRC_URI, checksums etc
>>>
>>> Generated images:
>>>
>>> Code Areas: classes/image*.bbclass classes/rootfs*.bbclass
>>> Tasks Covered: do_rootfs
>>> Key Variables: PACKAGE_INSTALL
>>>
>>> along with a description about what the function
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>> > * Key variable use and effects
>>>> > * User-initiated commands along the way
>>>> >
>>>> > Much of this list is directly from our existing "The Yocto Project
>>> Development Environment" illustration.
>>>> >
>>>> > Thanks,
>>>> > Scott R.
>>>> >
>>>> >
>>>> >
>>>> > Scott Rifenbark
>>>> > Intel Corporation
>>>> > Yocto Project Documentation
>>>> > 503.712.2702
>>>> > 503.341.0418 (cell)
>>>> >
>>>> > _______________________________________________
>>>> > yocto mailing list
>>>> > yocto@yoctoproject.org
>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>> >
>>>>
>>>> al block does and when its used. The above would then link into the
>>> class reference, the variable glossary and so on. So its less about
>>> graphics and more about giving Scott the information to create a kind
>>of
>>> details index of some of these parts of the system like an expanded
>>> table of contents.
>>>
>>> I've suggested a good start would be picking a few areas (like the
>>> above) and trying to create the info and maybe see what kind of
>>diagram
>>> would present itself from that. If successful, it could then be
>>expanded
>>> to each area. I'd certainly hope that linux-yocto would be one area
>>> covered.
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


