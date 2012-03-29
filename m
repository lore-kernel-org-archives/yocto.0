Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFB11E013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:05:08 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so631202pbb.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc
	:x-gm-message-state:content-type;
	bh=nYr2KbnMk2i1kAVb9BlsjTfzJCDs6JraZLTySuekQrU=;
	b=oAtTAls97a1+KhvH6SjR3fN5dfU004A6mWWCfTV/ayGNYZ+7jqJMG65IrHRGp165N8
	rVkD4Nqo8lKKxz3kjTmJsFK+B0dCy3oAGcdJA7qlcXU/4Sc5PdjI4tSW0H0ku7iRo16+
	DHE0031cBzZsgyzDH61FtZj6pWn4svJiRuOV3RfzFjgFtq6+0E43tKf+zb1XD95mYDsF
	h/KsiB1WkSxpcK5x2NWEQxB5X1dnuo7/9/yMUal0xo/wTMzW6Y9n2JK4Z21+mOP6C6kq
	FiouBT5HIlq9ttspJvPJ9vzLm2tpqkksWTjAlLiPY5AWtMAac6pGmid9G9FqCcVttVG5
	qH2Q==
MIME-Version: 1.0
Received: by 10.68.203.65 with SMTP id ko1mr2802481pbc.3.1333047908306; Thu,
	29 Mar 2012 12:05:08 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Thu, 29 Mar 2012 12:05:08 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123794517677F@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
	<CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-o2_nHxqchtntk=SB5t6mxOnsTLeGvqVcrSUta7bTgBJg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123794517677F@ORSMSX101.amr.corp.intel.com>
Date: Thu, 29 Mar 2012 12:05:08 -0700
X-Google-Sender-Auth: Z8Fc1ol90y-ZRBsaI_FjERbd9Gw
Message-ID: <CA+gsK-rXhzmLCOWoT_OGzyDg+=FsyQKTDruTwUX2UZy0Hcsi+A@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQnITa5lCYEEB/vAq5htJBSV4ZVGptVv9hLy88I7NBGx/OjrRzU1UqghCHTPMq3pxbPgw7co
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
X-List-Received-Date: Thu, 29 Mar 2012 19:05:08 -0000
Content-Type: multipart/alternative; boundary=047d7b10cb110b0e6504bc66671e

--047d7b10cb110b0e6504bc66671e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Scott,

That's great. The dev manual is very comprehensive and at the right level
of detail. I think many new as well as more experienced users of YP will
appreciate it. From a quick read the only suggestion I have for now is to
place the section on "Customizing Images" before the section on "Adding
Packages". Most users will probably first build custom images by adding
packages using readily available recipes before writing recipes for their
own packages.

The reference sections in the reference manual are great. The other
sections need more work on coherence. Layers should be added, also a
section that deals with the syntax and semantics of setting variables e.g.
+=3D, .=3D vs. _append etc. This is where most people get confused.

Another thing worth explaining in the reference manual is the use of the
Bitbake data structures in Python functions in recipes. This is where I can
see folks pulling their hair out too.

I will keep on rummaging through.

Rudi




On Mon, Mar 26, 2012 at 3:28 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Rudi, ****
>
> ** **
>
> Great comments!  Thanks very much.  I will immediately update the revisio=
n
> history tables to show the 1.2 release as WIP.  Not having it there did
> cause you confusion.  Good suggestion. ****
>
> ** **
>
> Regarding your other observations.  If you have the time I would
> appreciate you looking at the YP Development manual, particularly Chapter
> 4.  Much of the =93how-to=94 stuff that was in the YP reference manual ha=
s been
> moved to there.  =93Adding a Package=94 section that you noted was now mi=
ssing
> is in fact in that area.  Let me give you some background on the strategy
> of the two manuals=85.****
>
> ** **
>
> I am trying to eventually turn the YP reference guide into a =93reference=
=94
> guide with minimal =93how-to=94 information.  That is the long-term goal.=
  The
> YP Development Manual has been getting some how-to stuff added to it.
> Chapter 4 (Common Tasks) tells how to create layers, add a package,
> customize images, etc.).  ****
>
> ** **
>
> Here is the link to the =93latest=94 YP Development Manual:
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html.  With
> this new context, maybe you can augment or comment on your previous
> comments J****
>
> ** **
>
> I appreciate your help, ****
>
> Scott****
>
> ** **
>
> *From:* rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org] =
*On
> Behalf Of *Rudolf Streif
> *Sent:* Monday, March 26, 2012 4:02 PM
> *To:* Rifenbark, Scott M
> *Cc:* yocto@yoctoproject.org
>
> *Subject:* Re: [yocto] can all of the licensing discussion be centralized
> in an appendix?****
>
>  ** **
>
> Scott,****
>
> ** **
>
>   ****
>
> >>
> http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.h=
tml
> .****
>
>  ****
>
>  Yes, I looked at that one but I now noticed that I referenced it
> incorrectly. This is the latest version, however, in the revision history
> it shows "Revision 1.1, October 6, 2011, Released with the Yocto Project
> Release 1.1".****
>
> ** **
>
> Now, this one
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.=
html is
> the current one but its revision history shows "Revision 1.1.1, March 15,
> 2012, Released with the Yocto Project Release 1.1.1".****
>
> ** **
>
> Ok, now I get how I confused myself successfully. I presume that the firs=
t
> is the newer one although its revision history suggests otherwise? Would
> you mind updating the revision history with something like "Revision 1.2,
> WIP, To be released with Yocto Project Release 1.2"?****
>
> ** **
>
> The latest one does not seem to have a section about writing recipes
> anymore at all. Are you planning on putting it back? While the previous o=
ne
> had a section on writing recipes it did so in a "vacuum". It told you how
> to write a recipe but not really where to put it and how to include it wi=
th
> an image. The latter it explained in the next section about customizing a=
n
> image.****
>
> ** **
>
> The info about the licensing is great and dead-nuts on, however, a reader
> new to the Yocto Project would be missing the context. A good add-on to
> that paragraph would be that if you omit the md5 parameter in the
> LIC_FILES_CHKSUM variable Bitbake will actually spit it out for you which
> is in particular useful if the checksum is calculated over a subset of a
> license file specified by startline and endline because md5sum won't easi=
ly
> do that for you.****
>
> ** **
>
> ** **
>
> These are my suggestions:****
>
> ** **
>
> * Remove 3.3 x32 and 3.4 Licenses from section 3. Section 3 currently
> looks a little bit like a kitchen sink. The first two paragraphs deal wit=
h
> build system components and architecture, x32 then mixes a very specific
> technology into it for particular targets, and then Licenses tops it off
> with package licensing details. I would dedicate Section 3 to Yocto Proje=
ct
> Build System Architecture only.****
>
> ** **
>
> * Then I would dedicate a section 4 to Build Customization:****
>
> ** The first subsection could deal with the most trivial customization
> through local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append and
> CORE_IMAGE_EXTRA_INSTALL (formerly known as POKY_EXTRA_INSTALL)****
>
> ** The second subsection should then explain how to create your own layer
> within the build environment because before adding any recipe you need to
> have a layer to add it to. Mixing your own recipes in with meta or
> meta-yocto works but is not sustainable when upgrading to a newer release
> of the Yocto Project. And it's good practice too to keep your own stuff
> separate.****
>
> ** The third subsection should then explain how to extend images writing
> your own recipes:****
>
> *** writing a recipe that includes a base image and then adds more
> packages:****
>
>     require recipes-core/images/core-imabg-base.bb****
>
>     IMAGE_INSTALL +=3D "strace"****
>
> *** writing an image that inherits from core-image****
>
>     IMAGE_INSTALL =3D "task-core-boot task-core-extended"****
>
>     IMAGE_FEATURES +=3D "blabla"****
>
>     inherit core-image****
>
> ** the fourth subsection should then explain how to add your own packages
> with your own recipes. Now you already have everything in place: a layer =
to
> add to and a ways of including your recipes with an image. And here we th=
en
> also need to explain the licensing stuff because recipes for building
> packages won't fly without.****
>
> ** the fifth section should then just reference the BSP manual for BSPs.*=
*
> **
>
> ** **
>
> Finally for my concept, we need to find a home for x32. I would put that
> under an "Advanced Topics" section which could act as a container for oth=
er
> stuff too such as multi-lib etc.****
>
> ** **
>
> Rudi****
>
>  ****
>
>   ****
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Rudolf Streif
> *Sent:* Monday, March 26, 2012 2:52 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] can all of the licensing discussion be centralized
> in an appendix?****
>
>  ****
>
> >> there's *way* too much coverage of licensing sprinkled throughout.
> >> most people are not going to care about licensing until the time comes
> >> to maybe start distributing their BSP.****
>
>  The ability of collecting licensing information, tracking license
> changes and providing the license information automatically with the imag=
es
> and packages for deployment is in my opinion a major feature of Yocto
> albeit underestimated. Most people will only appreciate it once they have
> to deliver that information with a product for the end user. However, it
> starts much earlier, with the recipe.****
>
>  ****
>
> How to include licensing tracking information with your recipe needs to b=
e
> part of the section explaining how to write recipes of the reference
> manual. In both, the current 1.1 and the upcoming 1.1.1, versions of the
> manual the license tracking section is a little disjoint from the section=
s
> explaining how to add packages/recipes in my opinion. The examples includ=
e
> the license tracking info, of course because otherwise the sanity checker
> will not allow building the recipe, but they don't explain that you
> actually need it (unless you use LICENSE =3D "CLOSED").****
>
>  ****
>
> Since the license tracking and deployment feature follows the rule
> "garbage in, garbage out" the manual cannot stress enough providing the
> correct info in particular when writing recipes for upstream projects.***=
*
>
>  ****
>
> Side note: And nice features for a future release are SPDX info (already
> worked on as far as I know) and providing the license info in
> ${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/images so
> that one knows what licenses are in use for what image. That would be ver=
y
> convenient when building multiple images with different package content.*=
*
> **
>
>  ****
>
> Rudi****
>
>  ** **
>

--047d7b10cb110b0e6504bc66671e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Scott,<div><br></div><div>That&#39;s great. The dev manual is very comprehe=
nsive and at the right level of detail. I think many new as well as more ex=
perienced users of YP will appreciate it. From a quick read the only sugges=
tion I have for now is to place the section on &quot;Customizing Images&quo=
t; before the section on &quot;Adding Packages&quot;. Most users will proba=
bly first build custom images by adding packages using readily available re=
cipes before writing recipes for their own packages.</div>
<div><br></div><div>The reference sections in the reference manual are grea=
t. The other sections need more work on coherence. Layers should be added, =
also a section that deals with the syntax and semantics of setting variable=
s e.g. +=3D, .=3D vs. _append etc. This is where most people get confused.<=
/div>
<div><br></div><div>Another thing worth explaining in the reference manual =
is the use of the Bitbake data structures in Python functions in recipes. T=
his is where I can see folks pulling their hair out too.</div><div><br>
</div><div>I will keep on rummaging through.</div><div><br></div><div>Rudi<=
/div><div><br></div><div><br></div><div><br><br><div class=3D"gmail_quote">=
On Mon, Mar 26, 2012 at 3:28 PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<=
a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Rudi,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Great comments!=A0 Thanks=
 very much.=A0 I will immediately update the revision history tables to sho=
w the 1.2 release as WIP.=A0 Not having it there did cause you
 confusion.=A0 Good suggestion. <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regarding your other obse=
rvations.=A0 If you have the time I would appreciate you looking at the YP =
Development manual, particularly Chapter 4.=A0 Much of the =93how-to=94
 stuff that was in the YP reference manual has been moved to there.=A0 =93A=
dding a Package=94 section that you noted was now missing is in fact in tha=
t area.=A0 Let me give you some background on the strategy of the two manua=
ls=85.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I am trying to eventually=
 turn the YP reference guide into a =93reference=94 guide with minimal =93h=
ow-to=94 information.=A0 That is the long-term goal.=A0 The YP Development
 Manual has been getting some how-to stuff added to it.=A0 Chapter 4 (Commo=
n Tasks) tells how to create layers, add a package, customize images, etc.)=
.=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Here is the link to the =
=93latest=94 YP Development Manual:=A0
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml" target=3D"_blank">http://www.yoctoproject.org/docs/latest/dev-manual/de=
v-manual.html</a>.=A0 With this new context, maybe you can augment or comme=
nt on your previous comments
</span><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
>J</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I appreciate your help,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoun=
dation.org</a> [mailto:<a href=3D"mailto:rstreif@linuxfoundation.org" targe=
t=3D"_blank">rstreif@linuxfoundation.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 4:02 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a></span></p><div><div class=3D"h5"><br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?<u></u><u></u></div></div><p></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Scott,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&gt;&gt;=A0<a href=3D"htt=
p://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html" =
target=3D"_blank">http://www.yoctoproject.org/docs/latest/poky-ref-manual/p=
oky-ref-manual.html</a>.</span><u></u><u></u></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal">Yes, I looked at that one but I now noticed that I r=
eferenced it incorrectly. This is the latest version, however, in the revis=
ion history it shows &quot;Revision 1.1, October 6, 2011, Released with the=
 Yocto Project Release 1.1&quot;.<u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Now, this one=A0<a href=3D"http://www.yoctoproject.o=
rg/docs/current/poky-ref-manual/poky-ref-manual.html" target=3D"_blank">htt=
p://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html<=
/a>=A0is the current one but its revision history shows &quot;Revision
 1.1.1, March 15, 2012, Released with the Yocto Project Release 1.1.1&quot;=
.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ok, now I get how I confused myself successfully. I =
presume that the first is the newer one although its revision history sugge=
sts otherwise? Would you mind updating the revision history with something =
like &quot;Revision 1.2, WIP, To be released
 with Yocto Project Release 1.2&quot;?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The latest one does not seem to have a section about=
 writing recipes anymore at all. Are you planning on putting it back? While=
 the previous one had a section on writing recipes it did so in a &quot;vac=
uum&quot;. It told you how to write a recipe
 but not really where to put it and how to include it with an image. The la=
tter it explained in the next section about customizing an image.<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The info about the licensing is great and dead-nuts =
on, however, a reader new to the Yocto Project would be missing the context=
. A good add-on to that paragraph would be that if you omit the md5 paramet=
er in the LIC_FILES_CHKSUM variable
 Bitbake will actually spit it out for you which is in particular useful if=
 the checksum is calculated over a subset of a license file specified by st=
artline and endline because md5sum won&#39;t easily do that for you.<u></u>=
<u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">These are my suggestions:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">* Remove 3.3 x32 and 3.4 Licenses from section 3. Se=
ction 3 currently looks a little bit like a kitchen sink. The first two par=
agraphs deal with build system components and architecture, x32 then mixes =
a very specific technology into it
 for particular targets, and then Licenses tops it off with package licensi=
ng details. I would dedicate Section 3 to Yocto Project Build System Archit=
ecture only.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">* Then I would dedicate a section 4 to Build Customi=
zation:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">** The first subsection could deal with the most tri=
vial customization through local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_=
append and CORE_IMAGE_EXTRA_INSTALL (formerly known as POKY_EXTRA_INSTALL)<=
u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal">** The second subsection should then explain how to =
create your own layer within the build environment because before adding an=
y recipe you need to have a layer to add it to. Mixing your own recipes in =
with meta or meta-yocto works but
 is not sustainable when upgrading to a newer release of the Yocto Project.=
 And it&#39;s good practice too to keep your own stuff separate.<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal">** The third subsection should then explain how to e=
xtend images writing your own recipes:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">*** writing a recipe that includes a base image and =
then adds more packages:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0 =A0 require recipes-core/images/<a href=3D"http:=
//core-imabg-base.bb" target=3D"_blank">core-imabg-base.bb</a><u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal">=A0 =A0 IMAGE_INSTALL +=3D &quot;strace&quot;<u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">*** writing an image that inherits from core-image<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0 =A0 IMAGE_INSTALL =3D &quot;task-core-boot task-=
core-extended&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0 =A0 IMAGE_FEATURES +=3D &quot;blabla&quot;<u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0 =A0 inherit core-image<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">** the fourth subsection should then explain how to =
add your own packages with your own recipes. Now you already have everythin=
g in place: a layer to add to and a ways of including your recipes with an =
image. And here we then also need
 to explain the licensing stuff because recipes for building packages won&#=
39;t fly without.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">** the fifth section should then just reference the =
BSP manual for BSPs.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Finally for my concept, we need to find a home for x=
32. I would put that under an &quot;Advanced Topics&quot; section which cou=
ld act as a container for other stuff too such as multi-lib etc.<u></u><u><=
/u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 2:52 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?</span><u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
<div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&gt;&gt; there&#39;s =
*way* too much coverage of licensing sprinkled throughout.<br>
&gt;&gt; most people are not going to care about licensing until the time c=
omes<br>
&gt;&gt; to maybe start distributing their BSP.<u></u><u></u></p>
</blockquote>
<div>
<p class=3D"MsoNormal">The ability of collecting licensing information, tra=
cking license changes and providing the license information automatically w=
ith the images and packages for deployment is in my
 opinion a major feature of Yocto albeit underestimated. Most people will o=
nly appreciate it once they have to deliver that information with a product=
 for the end user. However, it starts much earlier, with the recipe.<u></u>=
<u></u></p>

</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">How to include licensing tracking information with y=
our recipe needs to be part of the section explaining how to write recipes =
of the reference manual. In both, the current 1.1
 and the upcoming 1.1.1, versions of the manual the license tracking sectio=
n is a little disjoint from the sections explaining how to add packages/rec=
ipes in my opinion. The examples include the license tracking info, of cour=
se because otherwise the sanity
 checker will not allow building the recipe, but they don&#39;t explain tha=
t you actually need it (unless you use LICENSE =3D &quot;CLOSED&quot;).<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Since the license tracking and deployment feature fo=
llows the rule &quot;garbage in, garbage out&quot; the manual cannot stress=
 enough providing the correct info in particular when writing
 recipes for upstream projects.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Side note: And nice features for a future release ar=
e SPDX info (already worked on as far as I know) and providing the license =
info in ${TMPDIR}/deploy/licenses according to the
 images in ${TMPDIR}/images so that one knows what licenses are in use for =
what image. That would be very convenient when building multiple images wit=
h different package content.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--047d7b10cb110b0e6504bc66671e--
