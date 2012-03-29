Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF3DE013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:25:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Mar 2012 12:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208,217";a="83208139"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Mar 2012 12:25:35 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 29 Mar 2012 12:25:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.199]) with mapi id
	14.01.0355.002; Thu, 29 Mar 2012 12:25:33 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] can all of the licensing discussion be centralized in
	an appendix?
Thread-Index: AQHNC5wOjbXHlX9uKUy5yl0bqRPOG5Z9JmOggAT1dAD//4/tAA==
Date: Thu, 29 Mar 2012 19:25:33 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379451772CA@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
	<CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-o2_nHxqchtntk=SB5t6mxOnsTLeGvqVcrSUta7bTgBJg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123794517677F@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-rXhzmLCOWoT_OGzyDg+=FsyQKTDruTwUX2UZy0Hcsi+A@mail.gmail.com>
In-Reply-To: <CA+gsK-rXhzmLCOWoT_OGzyDg+=FsyQKTDruTwUX2UZy0Hcsi+A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: can all of the licensing discussion be centralized in an appendix?
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
X-List-Received-Date: Thu, 29 Mar 2012 19:25:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451772CAORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451772CAORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rudi,

Thanks for taking the time to look this stuff over.  I will place customizi=
ng images ahead of adding packages in the dev manual.

I will dig into the other issues and see what I can get in the way of infor=
mation from the development team.

Scott

From: rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org] On B=
ehalf Of Rudolf Streif
Sent: Thursday, March 29, 2012 1:05 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] can all of the licensing discussion be centralized in =
an appendix?

Scott,

That's great. The dev manual is very comprehensive and at the right level o=
f detail. I think many new as well as more experienced users of YP will app=
reciate it. From a quick read the only suggestion I have for now is to plac=
e the section on "Customizing Images" before the section on "Adding Package=
s". Most users will probably first build custom images by adding packages u=
sing readily available recipes before writing recipes for their own package=
s.

The reference sections in the reference manual are great. The other section=
s need more work on coherence. Layers should be added, also a section that =
deals with the syntax and semantics of setting variables e.g. +=3D, .=3D vs=
. _append etc. This is where most people get confused.

Another thing worth explaining in the reference manual is the use of the Bi=
tbake data structures in Python functions in recipes. This is where I can s=
ee folks pulling their hair out too.

I will keep on rummaging through.

Rudi



On Mon, Mar 26, 2012 at 3:28 PM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Rudi,

Great comments!  Thanks very much.  I will immediately update the revision =
history tables to show the 1.2 release as WIP.  Not having it there did cau=
se you confusion.  Good suggestion.

Regarding your other observations.  If you have the time I would appreciate=
 you looking at the YP Development manual, particularly Chapter 4.  Much of=
 the "how-to" stuff that was in the YP reference manual has been moved to t=
here.  "Adding a Package" section that you noted was now missing is in fact=
 in that area.  Let me give you some background on the strategy of the two =
manuals....

I am trying to eventually turn the YP reference guide into a "reference" gu=
ide with minimal "how-to" information.  That is the long-term goal.  The YP=
 Development Manual has been getting some how-to stuff added to it.  Chapte=
r 4 (Common Tasks) tells how to create layers, add a package, customize ima=
ges, etc.).

Here is the link to the "latest" YP Development Manual:  http://www.yoctopr=
oject.org/docs/latest/dev-manual/dev-manual.html.  With this new context, m=
aybe you can augment or comment on your previous comments :)

I appreciate your help,
Scott

From: rstreif@linuxfoundation.org<mailto:rstreif@linuxfoundation.org> [mail=
to:rstreif@linuxfoundation.org<mailto:rstreif@linuxfoundation.org>] On Beha=
lf Of Rudolf Streif
Sent: Monday, March 26, 2012 4:02 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

Subject: Re: [yocto] can all of the licensing discussion be centralized in =
an appendix?

Scott,


>> http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.=
html.

Yes, I looked at that one but I now noticed that I referenced it incorrectl=
y. This is the latest version, however, in the revision history it shows "R=
evision 1.1, October 6, 2011, Released with the Yocto Project Release 1.1".

Now, this one http://www.yoctoproject.org/docs/current/poky-ref-manual/poky=
-ref-manual.html is the current one but its revision history shows "Revisio=
n 1.1.1, March 15, 2012, Released with the Yocto Project Release 1.1.1".

Ok, now I get how I confused myself successfully. I presume that the first =
is the newer one although its revision history suggests otherwise? Would yo=
u mind updating the revision history with something like "Revision 1.2, WIP=
, To be released with Yocto Project Release 1.2"?

The latest one does not seem to have a section about writing recipes anymor=
e at all. Are you planning on putting it back? While the previous one had a=
 section on writing recipes it did so in a "vacuum". It told you how to wri=
te a recipe but not really where to put it and how to include it with an im=
age. The latter it explained in the next section about customizing an image=
.

The info about the licensing is great and dead-nuts on, however, a reader n=
ew to the Yocto Project would be missing the context. A good add-on to that=
 paragraph would be that if you omit the md5 parameter in the LIC_FILES_CHK=
SUM variable Bitbake will actually spit it out for you which is in particul=
ar useful if the checksum is calculated over a subset of a license file spe=
cified by startline and endline because md5sum won't easily do that for you=
.


These are my suggestions:

* Remove 3.3 x32 and 3.4 Licenses from section 3. Section 3 currently looks=
 a little bit like a kitchen sink. The first two paragraphs deal with build=
 system components and architecture, x32 then mixes a very specific technol=
ogy into it for particular targets, and then Licenses tops it off with pack=
age licensing details. I would dedicate Section 3 to Yocto Project Build Sy=
stem Architecture only.

* Then I would dedicate a section 4 to Build Customization:
** The first subsection could deal with the most trivial customization thro=
ugh local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append and CORE_IMAGE_E=
XTRA_INSTALL (formerly known as POKY_EXTRA_INSTALL)
** The second subsection should then explain how to create your own layer w=
ithin the build environment because before adding any recipe you need to ha=
ve a layer to add it to. Mixing your own recipes in with meta or meta-yocto=
 works but is not sustainable when upgrading to a newer release of the Yoct=
o Project. And it's good practice too to keep your own stuff separate.
** The third subsection should then explain how to extend images writing yo=
ur own recipes:
*** writing a recipe that includes a base image and then adds more packages=
:
    require recipes-core/images/core-imabg-base.bb<http://core-imabg-base.b=
b>
    IMAGE_INSTALL +=3D "strace"
*** writing an image that inherits from core-image
    IMAGE_INSTALL =3D "task-core-boot task-core-extended"
    IMAGE_FEATURES +=3D "blabla"
    inherit core-image
** the fourth subsection should then explain how to add your own packages w=
ith your own recipes. Now you already have everything in place: a layer to =
add to and a ways of including your recipes with an image. And here we then=
 also need to explain the licensing stuff because recipes for building pack=
ages won't fly without.
** the fifth section should then just reference the BSP manual for BSPs.

Finally for my concept, we need to find a home for x32. I would put that un=
der an "Advanced Topics" section which could act as a container for other s=
tuff too such as multi-lib etc.

Rudi


From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Rudolf Streif
Sent: Monday, March 26, 2012 2:52 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] can all of the licensing discussion be centralized in =
an appendix?

>> there's *way* too much coverage of licensing sprinkled throughout.
>> most people are not going to care about licensing until the time comes
>> to maybe start distributing their BSP.
The ability of collecting licensing information, tracking license changes a=
nd providing the license information automatically with the images and pack=
ages for deployment is in my opinion a major feature of Yocto albeit undere=
stimated. Most people will only appreciate it once they have to deliver tha=
t information with a product for the end user. However, it starts much earl=
ier, with the recipe.

How to include licensing tracking information with your recipe needs to be =
part of the section explaining how to write recipes of the reference manual=
. In both, the current 1.1 and the upcoming 1.1.1, versions of the manual t=
he license tracking section is a little disjoint from the sections explaini=
ng how to add packages/recipes in my opinion. The examples include the lice=
nse tracking info, of course because otherwise the sanity checker will not =
allow building the recipe, but they don't explain that you actually need it=
 (unless you use LICENSE =3D "CLOSED").

Since the license tracking and deployment feature follows the rule "garbage=
 in, garbage out" the manual cannot stress enough providing the correct inf=
o in particular when writing recipes for upstream projects.

Side note: And nice features for a future release are SPDX info (already wo=
rked on as far as I know) and providing the license info in ${TMPDIR}/deplo=
y/licenses according to the images in ${TMPDIR}/images so that one knows wh=
at licenses are in use for what image. That would be very convenient when b=
uilding multiple images with different package content.

Rudi



--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451772CAORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rudi,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks for taking the tim=
e to look this stuff over.&nbsp; I will place customizing images ahead of a=
dding packages in the dev manual.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I will dig into the other=
 issues and see what I can get in the way of information from the developme=
nt team.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> rstreif@=
linuxfoundation.org [mailto:rstreif@linuxfoundation.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Thursday, March 29, 2012 1:05 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Scott,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">That's great. The dev manual is very comprehensive a=
nd at the right level of detail. I think many new as well as more experienc=
ed users of YP will appreciate it. From a quick read the only suggestion I =
have for now is to place the section
 on &quot;Customizing Images&quot; before the section on &quot;Adding Packa=
ges&quot;. Most users will probably first build custom images by adding pac=
kages using readily available recipes before writing recipes for their own =
packages.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The reference sections in the reference manual are g=
reat. The other sections need more work on coherence. Layers should be adde=
d, also a section that deals with the syntax and semantics of setting varia=
bles e.g. &#43;=3D, .=3D vs. _append etc.
 This is where most people get confused.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Another thing worth explaining in the reference manu=
al is the use of the Bitbake data structures in Python functions in recipes=
. This is where I can see folks pulling their hair out too.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I will keep on rummaging through.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Mon, Mar 26, 2012 at 3:28 PM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.=
com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Rudi,
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Great comments!&nbsp; Thanks very much.=
&nbsp; I will immediately update the revision history tables to show
 the 1.2 release as WIP.&nbsp; Not having it there did cause you confusion.=
&nbsp; Good suggestion.
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Regarding your other observations.&nbsp=
; If you have the time I would appreciate you looking at the YP
 Development manual, particularly Chapter 4.&nbsp; Much of the &#8220;how-t=
o&#8221; stuff that was in the YP reference manual has been moved to there.=
&nbsp; &#8220;Adding a Package&#8221; section that you noted was now missin=
g is in fact in that area.&nbsp; Let me give you some background on the
 strategy of the two manuals&#8230;.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">I am trying to eventually turn the YP r=
eference guide into a &#8220;reference&#8221; guide with minimal &#8220;how=
-to&#8221;
 information.&nbsp; That is the long-term goal.&nbsp; The YP Development Ma=
nual has been getting some how-to stuff added to it.&nbsp; Chapter 4 (Commo=
n Tasks) tells how to create layers, add a package, customize images, etc.)=
.&nbsp;
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Here is the link to the &#8220;latest&#=
8221; YP Development Manual:&nbsp;
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml" target=3D"_blank">
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html</a>.&nbs=
p; With this new context, maybe you can augment or comment on your previous=
 comments
</span><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1F497D"=
>J</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">I appreciate your help,
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Scott</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@li=
nuxfoundation.org</a> [mailto:<a href=3D"mailto:rstreif@linuxfoundation.org=
" target=3D"_blank">rstreif@linuxfoundation.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 4:02 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a></span><o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?<o:p></o:p></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Scott,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&gt;&gt;&nbsp;<a href=3D"http://www.yoc=
toproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html" target=3D"_=
blank">http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-man=
ual.html</a>.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Yes, I looked at that one but I now noticed that I referenced it i=
ncorrectly. This is the latest version, however, in the revision history it=
 shows &quot;Revision 1.1, October 6, 2011,
 Released with the Yocto Project Release 1.1&quot;.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Now, this one&nbsp;<a href=3D"http://www.yoctoproject.org/docs/cur=
rent/poky-ref-manual/poky-ref-manual.html" target=3D"_blank">http://www.yoc=
toproject.org/docs/current/poky-ref-manual/poky-ref-manual.html</a>&nbsp;is
 the current one but its revision history shows &quot;Revision 1.1.1, March=
 15, 2012, Released with the Yocto Project Release 1.1.1&quot;.<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Ok, now I get how I confused myself successfully. I presume that t=
he first is the newer one although its revision history suggests otherwise?=
 Would you mind updating the revision
 history with something like &quot;Revision 1.2, WIP, To be released with Y=
octo Project Release 1.2&quot;?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The latest one does not seem to have a section about writing recip=
es anymore at all. Are you planning on putting it back? While the previous =
one had a section on writing recipes
 it did so in a &quot;vacuum&quot;. It told you how to write a recipe but n=
ot really where to put it and how to include it with an image. The latter i=
t explained in the next section about customizing an image.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The info about the licensing is great and dead-nuts on, however, a=
 reader new to the Yocto Project would be missing the context. A good add-o=
n to that paragraph would be that if
 you omit the md5 parameter in the LIC_FILES_CHKSUM variable Bitbake will a=
ctually spit it out for you which is in particular useful if the checksum i=
s calculated over a subset of a license file specified by startline and end=
line because md5sum won't easily
 do that for you.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">These are my suggestions:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">* Remove 3.3 x32 and 3.4 Licenses from section 3. Section 3 curren=
tly looks a little bit like a kitchen sink. The first two paragraphs deal w=
ith build system components and architecture,
 x32 then mixes a very specific technology into it for particular targets, =
and then Licenses tops it off with package licensing details. I would dedic=
ate Section 3 to Yocto Project Build System Architecture only.<o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">* Then I would dedicate a section 4 to Build Customization:<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">** The first subsection could deal with the most trivial customiza=
tion through local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append and COR=
E_IMAGE_EXTRA_INSTALL (formerly known
 as POKY_EXTRA_INSTALL)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">** The second subsection should then explain how to create your ow=
n layer within the build environment because before adding any recipe you n=
eed to have a layer to add it to. Mixing
 your own recipes in with meta or meta-yocto works but is not sustainable w=
hen upgrading to a newer release of the Yocto Project. And it's good practi=
ce too to keep your own stuff separate.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">** The third subsection should then explain how to extend images w=
riting your own recipes:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">*** writing a recipe that includes a base image and then adds more=
 packages:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp; &nbsp; require recipes-core/images/<a href=3D"http://core-i=
mabg-base.bb" target=3D"_blank">core-imabg-base.bb</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp; &nbsp; IMAGE_INSTALL &#43;=3D &quot;strace&quot;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">*** writing an image that inherits from core-image<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp; &nbsp; IMAGE_INSTALL =3D &quot;task-core-boot task-core-ext=
ended&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp; &nbsp; IMAGE_FEATURES &#43;=3D &quot;blabla&quot;<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp; &nbsp; inherit core-image<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">** the fourth subsection should then explain how to add your own p=
ackages with your own recipes. Now you already have everything in place: a =
layer to add to and a ways of including
 your recipes with an image. And here we then also need to explain the lice=
nsing stuff because recipes for building packages won't fly without.<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">** the fifth section should then just reference the BSP manual for=
 BSPs.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Finally for my concept, we need to find a home for x32. I would pu=
t that under an &quot;Advanced Topics&quot; section which could act as a co=
ntainer for other stuff too such as multi-lib
 etc.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Rudi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 2:52 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?</span><o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&gt;&gt; there's *way* too much coverage of licensing sprinkled througho=
ut.<br>
&gt;&gt; most people are not going to care about licensing until the time c=
omes<br>
&gt;&gt; to maybe start distributing their BSP.<o:p></o:p></p>
</blockquote>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The ability of collecting licensing information, tracking license =
changes and providing the license information automatically with the images=
 and packages for deployment is in my
 opinion a major feature of Yocto albeit underestimated. Most people will o=
nly appreciate it once they have to deliver that information with a product=
 for the end user. However, it starts much earlier, with the recipe.<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">How to include licensing tracking information with your recipe nee=
ds to be part of the section explaining how to write recipes of the referen=
ce manual. In both, the current 1.1
 and the upcoming 1.1.1, versions of the manual the license tracking sectio=
n is a little disjoint from the sections explaining how to add packages/rec=
ipes in my opinion. The examples include the license tracking info, of cour=
se because otherwise the sanity
 checker will not allow building the recipe, but they don't explain that yo=
u actually need it (unless you use LICENSE =3D &quot;CLOSED&quot;).<o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Since the license tracking and deployment feature follows the rule=
 &quot;garbage in, garbage out&quot; the manual cannot stress enough provid=
ing the correct info in particular when writing
 recipes for upstream projects.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Side note: And nice features for a future release are SPDX info (a=
lready worked on as far as I know) and providing the license info in ${TMPD=
IR}/deploy/licenses according to the
 images in ${TMPDIR}/images so that one knows what licenses are in use for =
what image. That would be very convenient when building multiple images wit=
h different package content.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Rudi<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451772CAORSMSX101amrcor_--
