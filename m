Return-Path: <sean.liming@annabooks.com>
Received: from mail6c40.carrierzone.com (mail6c40.carrierzone.com
	[209.235.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AFEDE00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 12:01:00 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail6c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r5KJ0Z3B018368; Thu, 20 Jun 2013 19:00:37 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Stewart, David C'" <david.c.stewart@intel.com>,
	"'Rifenbark, Scott M'" <scott.m.rifenbark@intel.com>,
	"'Bill Traynor'" <btraynor@gmail.com>,
	"'Richard Purdie'" <richard.purdie@linuxfoundation.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
In-Reply-To: <CDE892AD.36CA0%david.c.stewart@intel.com>
Date: Thu, 20 Jun 2013 12:00:27 -0700
Message-ID: <000001ce6de8$70639de0$512ad9a0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQEXzDqWFoMT3J8oQ7H+q+dVlNuvZ5qsN2YQ
X-CSC: 0
X-CHA: v=2.0 cv=e8Oxv9V/ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=W15OtUSbT3wA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=KdBhERR2_eAA:10 a=iGHA9ds3AAAA:8 a=QyXUC8HyAAAA:8 a=ag1SF4gXAAAA:8
	a=237vnFaWAAAA:8 a=LsQ98davAAAA:8 a=CBrbp88NV8C9E238YFAA:9
	a=CjuIK1q_8ugA:10 a=7jRKA1fqW9UA:10 a=p99cyizktLAA:10 a=wVdQcwNPB1QA:10
	a=eoQOo0HoibsA:10 a=XDKM753qmDAA:10 a=dGJ0OcVc7YAA:10 a=1TSTQ8KKaH4A:10
	a=Bo1A8wFnVxSqyTUS:21 a=sNZzn4IJNUh9H5Bm:21
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020204.51C35159.0011, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Cc: yocto@yoctoproject.org, "'Osier-mixon,
	Jeffrey'" <jeffrey.osier-mixon@intel.com>,
	'Paul Eggleton' <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Thu, 20 Jun 2013 19:01:03 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us




> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Stewart, David C
> Sent: Thursday, June 20, 2013 11:23 AM
> To: Rifenbark, Scott M; Bill Traynor; Richard Purdie
> Cc: yocto@yoctoproject.org; Paul Eggleton; Osier-mixon, Jeffrey
> Subject: Re: [yocto] Documenting YP Development Environment in more
> detail
> 
> 
> 
> On 6/20/13 8:23 AM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> wrote:
> 
> >
> >
> >>-----Original Message-----
> >>From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>bounces@yoctoproject.org] On Behalf Of Bill Traynor
> >>Sent: Thursday, June 20, 2013 8:12 AM
> >>To: Richard Purdie
> >>Cc: yocto@yoctoproject.org; Paul Eggleton; Osier-mixon, Jeffrey
> >>Subject: Re: [yocto] Documenting YP Development Environment in more
> >>detail
> >>
> >>On Thu, Jun 20, 2013 at 10:25 AM, Richard Purdie
> >><richard.purdie@linuxfoundation.org> wrote:
> >>> On Thu, 2013-06-20 at 09:49 -0400, Bruce Ashfield wrote:
> >>>> On 13-06-20 04:40 AM, Rifenbark, Scott M wrote:
> >>>> > Hi,
> >>>> >
> >>>> > Recently, Paul, Ross, Richard and I had a video conference
> >>>> > meeting
> >>where we had some initial discussion on how to satisfy YOCTO #2808
> >>(https://bugzilla.yoctoproject.org/show_bug.cgi?id=2808), which calls
> >>for an illustration showing source and destination directories during
> >>a build using YP.  This bug originated from a discussion Dave Stewart
> >>and I had a while back around an idea of a more detailed "flow
> >>diagram" that would go into greater detail than the now famous and
> >>ubiquitous "The Yocto Project Development Environment" illustration,
> >>which appears in the YP Quick Start
> >>(http://www.yoctoproject.org/docs/1.4/yocto-project-
> >>qs/yocto-project-qs.html) and has been used in many other places and
> >>in many other forms (some quite elaborate).
> >>>> >
> >>>> > We can't really create a completely accurate, all-encompassing
> >>illustration that breaks apart the entire build process.  It is not a
> >>static thing and it is quite complicated inside the BitBake process.
> >>We can, however, show where metadata comes from, how it is provided,
> >>what it defines, where and how source files are found, what processes
> >>occur, what output is produced, and where it ends up.  We can also
> >>provide some sort of idea of how key BitBake and environment variables
> >>affect things along the way.  The idea here is to dig deeper into this
> >>conceptual figure and root out the details to a level that would be
> >>useful to the user but not impossible to maintain or develop. This
> >>type of information can be communicated through a mix of several
> >>illustrations with supporting text.
> >>>> >
> >>>> > This first meeting started with some detailed discussion of the
> >>configuration inputs for a typical YP build but soon migrated to
> >>discussing the bigger picture and possible ways to provide more
> >>information.  It became obvious we were not going to dig the solution
> >>and all the needed information out in one short meeting. Consequently,
> >>I am sending out this email to help open up some discussion on the
> >>issue and to also solicit information for some basic blocks of
information.
> 
> I would recommend that we don't over-engineer this thing if we can avoid
it.
> Remember the goal: People have told me that they are confused about
> which directories are "active" in the build process, i.e. Where does stuff
> come from and where does it go?
> My advice would be to think of bitbake as a black box with inputs and
> outputs.
> I know that any directory could be *potentially* an input or output (why
else
> would it be there?) But I'm hoping we can up level a little.
> 
> >>>> >
> >>>> > Two things are needed at this point:  1) a presentation solution
> >>for this new and more detailed information, and 2) a starting point on
> >>some of the information itself.
> >>>> >
> >>>> > PRESENTATION SOLUTION
> >>>> >
> >>>> > Here are some thoughts on how to present this information.  There
> >>>> are disadvantages and advantages to each of these methods of which
> >>>> I will not list.  I would like to see what people think about them:
> >>>> >
> >>>> >   * Manual - Create a section in the "Technical Details" Chapter
> >>>> > of
> >>>> the YP Reference Manual that holds this information.  The section
> >>>> would be pretty much self-contained and would consist of several
> >>>> illustrations that would stem from an overall figure that is
> >>>> similar to the figure we now have in the YP Quick Start.  However,
> >>>> we would use a drill-down strategy that would progressively reveal
> >>>> more detail through subsequent figures.  This method is similar to
> >>>> how hardware devices used to be documented where functional
> blocks
> >>>> would be connected and described in one area and then subsequent
> >>>> areas would elaborate more deeply on a particular block.  Linking
> >>>> within the manual could connect up the various functional blocks
> >>>> (inputs, outputs, and tasks) that comprise the overall flow.
> >>>> >
> >>>> > * Manual / Website Mix - Devise a mix between the YP Reference
> >>>> Manual and some pages in the YP Website that provide the
> information.
> >>>> Create a section in the "Technical details" Chapter of the YP
> >>>> Reference Manual that covers this information at a high level.  For
> >>>> example, the overall flow of the system with its "big-block" inputs
> >>>> and outputs and tasks could be discussed at some length.  Links in
> >>the
> >>>> text could go to the YP website where more detail would be revealed.
> >>>> This strategy effectively splits the content into "overview" and
> >>>> "details" between the manual and website, respectively.
> >>>> >
> >>>> > * Website - With this strategy, everything is pretty much in the
> >>>> > YP
> >>>> website.  This area would exist in a stand-alone fashion.  However,
> >>>> you could link to the website from within the existing YP
> >>>> documentation set from existing areas that deal with the build
> >>>> process.  Several exit points from within the manual set already
> >>>> exist.  We would obviously add a primary one as well that would
> >>likely
> >>>> originate from the YP Reference Manual's "Technical Details" Chapter.
> >>>
> >>> I'm wondering if a hybrid is possible here. Can we for example embed
> >>> image maps into the docbook so that if you hover over areas of the
> >>> image, you can then have links to the different sections?
> >>
> >>FWIW, docbook supports image maps via the mediaobject tag but they are
> >>somewhat limited in their usefulness.
> >>
> >>http://docbook.org/tdg5/en/html/mediaobject.html
> >>http://www.sagehill.net/docbookxsl/Imagemaps.html
> >>
> >>Scott, you may run into trouble when converting the docs between doc
> >>types, in particular with scaling of images.
> >
> >I will do some playing around with image maps and see what comes up.
> >It would be nice to see if we could make some "hot-spots" within
> >Illustrations.
> >
> >
> >>
> >>>
> >>>> > SOLICITATION FOR INFORMATION
> >>>> >
> >>>> > We can get started now on this by starting to define details for
> >>>> some obvious points or large areas of the flow.  What would be nice
> >>to
> >>>> get would be some graphical breakdowns of these areas of concern:
> >>>> >
> >>>> > * User-defined layers
> >>>> > * YP provided layers
> >>>> > * User configuration
> >>>> > * Machine Configuration
> >>>> > * Policy Configuration
> >>>> > * Patches
> >>>> > * YP provided recipes
> >>>> > * User provided source code
> >>>> > * YP provided source code
> >>>> > * SCMs
> >>>> > * Generated images
> >>>> > * Generated SDKs/toolchains
> >>>> > * Package Output
> >>>> > * Source fetching process
> >>>> > * Patch application process
> >>>> > * Configuration process (fragments, etc.)
> >>>>
> >>>> Just so I'm clear .. are you looking for graphical breakdowns to be
> >>>> created and sent, or information offered so graphical breakdowns
> >>>> can be created ?
> >
> >Bruce - any kind of information in any form is useful.  If you need to
> >hack up a drawing to get a point across... do so.  Or, if you can send
> >textual information that is good too.
> >
> >>>>
> >>>> The reason I ask, is that if there's any interest in the
> >>>> linux-yocto (for lack of a better term) flow being described
> >>>> graphically, I'm happy to offer up information, but my graphical
> >>>> skills are limited to what you find in a typical hackers bag of
> >>>> ticks :)
> >>>
> >>> I suggested that Scott try and accumulate information for each topic
> >>> like the following:
> >>>
> >>> Fetcher:
> >>>
> >>> Code Areas: Bitbake Fetch Module (bitbake/lib/bb/fetch2, called from
> >>> classes/base.bbclass)
> >>> Tasks Covered: do_fetch/do_unpack
> >>> Key Variables: SRC_URI, checksums etc
> >>>
> >>> Generated images:
> >>>
> >>> Code Areas: classes/image*.bbclass classes/rootfs*.bbclass Tasks
> >>> Covered: do_rootfs Key Variables: PACKAGE_INSTALL
> >>>
> >>> along with a description about what the function
> >>>> Cheers,
> >>>>
> >>>> Bruce
> >>>>
> >>>> > * Key variable use and effects
> >>>> > * User-initiated commands along the way
> >>>> >
> >>>> > Much of this list is directly from our existing "The Yocto
> >>>> > Project
> >>> Development Environment" illustration.
> >>>> >
> >>>> > Thanks,
> >>>> > Scott R.
> >>>> >
> >>>> >
> >>>> >
> >>>> > Scott Rifenbark
> >>>> > Intel Corporation
> >>>> > Yocto Project Documentation
> >>>> > 503.712.2702
> >>>> > 503.341.0418 (cell)
> >>>> >
> >>>> > _______________________________________________
> >>>> > yocto mailing list
> >>>> > yocto@yoctoproject.org
> >>>> > https://lists.yoctoproject.org/listinfo/yocto
> >>>> >
> >>>>
> >>>> al block does and when its used. The above would then link into the
> >>> class reference, the variable glossary and so on. So its less about
> >>> graphics and more about giving Scott the information to create a
> >>> kind
> >>of
> >>> details index of some of these parts of the system like an expanded
> >>> table of contents.
> >>>
> >>> I've suggested a good start would be picking a few areas (like the
> >>> above) and trying to create the info and maybe see what kind of
> >>diagram
> >>> would present itself from that. If successful, it could then be
> >>expanded
> >>> to each area. I'd certainly hope that linux-yocto would be one area
> >>> covered.
> >>>
> >>> Cheers,
> >>>
> >>> Richard
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


If it is okay to jump in here, the keep it simple approach might be better.
Maybe walk through how a single package (hello world or other) is fetched,
expanded, packaged, placed in the image, etc. and show where everything goes
through the bitbake process.


Regards,

Sean Liming
Annabooks


