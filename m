Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6B5E011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 15:01:49 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so7910701pbb.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 15:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=jcX0l3EX/OTWEgUEYwL3vR9AD1/w/6YeK05u5Aqmz0M=;
	b=PNNlMHGSIa9c1SGzqew7MO4lXeSPGBJ8pm3ZEfpQmaGZR/SLR0nNTkwz302oKgaMEk
	ckX6m4wGxuwQse4F/5sa55RO1NWX6jR5U8e48+U+eJDBHtH7xQoYHVFikhO4HDJozZnW
	ZOm1e3y8SNVfy0YEDlIc6orH8LmxZvaZ8FIHZC21XbveR/qzr8imp8D1MONWrVYG31iB
	m/1T3NMGRKxQgXoFpc8O0/Ybmt5loA+NT1m1Ffe30/6l5FsQkZ77JcgB3IPd+lavWdQL
	N7qbhy28WMLX6ezGCrPbM5NxGePo5XjOEjJlT8oZirpvecJeqLIOPQfWCDyGs+UU/jtc
	9TeA==
MIME-Version: 1.0
Received: by 10.68.221.40 with SMTP id qb8mr56488944pbc.154.1332799309276;
	Mon, 26 Mar 2012 15:01:49 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Mon, 26 Mar 2012 15:01:49 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
	<CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4@ORSMSX101.amr.corp.intel.com>
Date: Mon, 26 Mar 2012 15:01:49 -0700
X-Google-Sender-Auth: OFsLQRPEXgcDk93NRgeWVynXLiE
Message-ID: <CA+gsK-o2_nHxqchtntk=SB5t6mxOnsTLeGvqVcrSUta7bTgBJg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQm5wceQrmcvXuLV9IEE6iiQJbfnZIvUviHojR0onYOmU6Z3yBGYhDjv5OAUsF0o647j+vLg
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
X-List-Received-Date: Mon, 26 Mar 2012 22:01:49 -0000
Content-Type: multipart/alternative; boundary=e89a8ff256a262e56d04bc2c85fc

--e89a8ff256a262e56d04bc2c85fc
Content-Type: text/plain; charset=ISO-8859-1

Scott,

 **
>
> >>
> http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html
> .****
>
> ** **
>
> Yes, I looked at that one but I now noticed that I referenced it
incorrectly. This is the latest version, however, in the revision history
it shows "Revision 1.1, October 6, 2011, Released with the Yocto Project
Release 1.1".

Now, this one
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html
is
the current one but its revision history shows "Revision 1.1.1, March 15,
2012, Released with the Yocto Project Release 1.1.1".

Ok, now I get how I confused myself successfully. I presume that the first
is the newer one although its revision history suggests otherwise? Would
you mind updating the revision history with something like "Revision 1.2,
WIP, To be released with Yocto Project Release 1.2"?

The latest one does not seem to have a section about writing recipes
anymore at all. Are you planning on putting it back? While the previous one
had a section on writing recipes it did so in a "vacuum". It told you how
to write a recipe but not really where to put it and how to include it with
an image. The latter it explained in the next section about customizing an
image.

The info about the licensing is great and dead-nuts on, however, a reader
new to the Yocto Project would be missing the context. A good add-on to
that paragraph would be that if you omit the md5 parameter in the
LIC_FILES_CHKSUM variable Bitbake will actually spit it out for you which
is in particular useful if the checksum is calculated over a subset of a
license file specified by startline and endline because md5sum won't easily
do that for you.


These are my suggestions:

* Remove 3.3 x32 and 3.4 Licenses from section 3. Section 3 currently looks
a little bit like a kitchen sink. The first two paragraphs deal with build
system components and architecture, x32 then mixes a very specific
technology into it for particular targets, and then Licenses tops it off
with package licensing details. I would dedicate Section 3 to Yocto Project
Build System Architecture only.

* Then I would dedicate a section 4 to Build Customization:
** The first subsection could deal with the most trivial customization
through local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append and
CORE_IMAGE_EXTRA_INSTALL (formerly known as POKY_EXTRA_INSTALL)
** The second subsection should then explain how to create your own layer
within the build environment because before adding any recipe you need to
have a layer to add it to. Mixing your own recipes in with meta or
meta-yocto works but is not sustainable when upgrading to a newer release
of the Yocto Project. And it's good practice too to keep your own stuff
separate.
** The third subsection should then explain how to extend images writing
your own recipes:
*** writing a recipe that includes a base image and then adds more packages:
    require recipes-core/images/core-imabg-base.bb
    IMAGE_INSTALL += "strace"
*** writing an image that inherits from core-image
    IMAGE_INSTALL = "task-core-boot task-core-extended"
    IMAGE_FEATURES += "blabla"
    inherit core-image
** the fourth subsection should then explain how to add your own packages
with your own recipes. Now you already have everything in place: a layer to
add to and a ways of including your recipes with an image. And here we then
also need to explain the licensing stuff because recipes for building
packages won't fly without.
** the fifth section should then just reference the BSP manual for BSPs.

Finally for my concept, we need to find a home for x32. I would put that
under an "Advanced Topics" section which could act as a container for other
stuff too such as multi-lib etc.

Rudi


>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Rudolf Streif
> *Sent:* Monday, March 26, 2012 2:52 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] can all of the licensing discussion be centralized
> in an appendix?****
>
> ** **
>
> >> there's *way* too much coverage of licensing sprinkled throughout.
> >> most people are not going to care about licensing until the time comes
> >> to maybe start distributing their BSP.****
>
>  The ability of collecting licensing information, tracking license
> changes and providing the license information automatically with the images
> and packages for deployment is in my opinion a major feature of Yocto
> albeit underestimated. Most people will only appreciate it once they have
> to deliver that information with a product for the end user. However, it
> starts much earlier, with the recipe.****
>
> ** **
>
> How to include licensing tracking information with your recipe needs to be
> part of the section explaining how to write recipes of the reference
> manual. In both, the current 1.1 and the upcoming 1.1.1, versions of the
> manual the license tracking section is a little disjoint from the sections
> explaining how to add packages/recipes in my opinion. The examples include
> the license tracking info, of course because otherwise the sanity checker
> will not allow building the recipe, but they don't explain that you
> actually need it (unless you use LICENSE = "CLOSED").****
>
> ** **
>
> Since the license tracking and deployment feature follows the rule
> "garbage in, garbage out" the manual cannot stress enough providing the
> correct info in particular when writing recipes for upstream projects.****
>
> ** **
>
> Side note: And nice features for a future release are SPDX info (already
> worked on as far as I know) and providing the license info in
> ${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/images so
> that one knows what licenses are in use for what image. That would be very
> convenient when building multiple images with different package content.**
> **
>
> ** **
>
> Rudi****
>

--e89a8ff256a262e56d04bc2c85fc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Scott,<div><br></div><div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=
=3D"MsoNormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&gt;&gt;=A0<a href=3D"htt=
p://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html" =
target=3D"_blank">http://www.yoctoproject.org/docs/latest/poky-ref-manual/p=
oky-ref-manual.html</a>.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125);font-family:Cali=
bri,sans-serif;font-size:11pt"></span></p></div></div></blockquote><div>Yes=
, I looked at that one but I now noticed that I referenced it incorrectly. =
This is the latest version, however, in the revision history it shows &quot=
;Revision 1.1, October 6, 2011, Released with the Yocto Project Release 1.1=
&quot;.</div>
<div><br></div><div>Now, this one=A0<a href=3D"http://www.yoctoproject.org/=
docs/current/poky-ref-manual/poky-ref-manual.html">http://www.yoctoproject.=
org/docs/current/poky-ref-manual/poky-ref-manual.html</a>=A0is the current =
one but its revision history shows &quot;Revision 1.1.1, March 15, 2012, Re=
leased with the Yocto Project Release 1.1.1&quot;.</div>
<div><br></div><div>Ok, now I get how I confused myself successfully. I pre=
sume that the first is the newer one although its revision history suggests=
 otherwise? Would you mind updating the revision history with something lik=
e &quot;Revision 1.2, WIP, To be released with Yocto Project Release 1.2&qu=
ot;?</div>
<div><br></div><div>The latest one does not seem to have a section about wr=
iting recipes anymore at all. Are you planning on putting it back? While th=
e previous one had a section on writing recipes it did so in a &quot;vacuum=
&quot;. It told you how to write a recipe but not really where to put it an=
d how to include it with an image. The latter it explained in the next sect=
ion about customizing an image.</div>
<div><br></div><div>The info about the licensing is great and dead-nuts on,=
 however, a reader new to the Yocto Project would be missing the context. A=
 good add-on to that paragraph would be that if you omit the md5 parameter =
in the LIC_FILES_CHKSUM variable Bitbake will actually spit it out for you =
which is in particular useful if the checksum is calculated over a subset o=
f a license file specified by startline and endline because md5sum won&#39;=
t easily do that for you.</div>
<div><br></div><div><br></div><div>These are my suggestions:</div><div><br>=
</div><div>* Remove 3.3 x32 and 3.4 Licenses from section 3. Section 3 curr=
ently looks a little bit like a kitchen sink. The first two paragraphs deal=
 with build system components and architecture, x32 then mixes a very speci=
fic technology into it for particular targets, and then Licenses tops it of=
f with package licensing details. I would dedicate Section 3 to Yocto Proje=
ct Build System Architecture only.</div>
<div><br></div><div>* Then I would dedicate a section 4 to Build Customizat=
ion:</div><div>** The first subsection could deal with the most trivial cus=
tomization through local.conf: EXTRA_IMAGE_FEATURES, IMAGE_INSTALL_append a=
nd CORE_IMAGE_EXTRA_INSTALL (formerly known as POKY_EXTRA_INSTALL)</div>
<div>** The second subsection should then explain how to create your own la=
yer within the build environment because before adding any recipe you need =
to have a layer to add it to. Mixing your own recipes in with meta or meta-=
yocto works but is not sustainable when upgrading to a newer release of the=
 Yocto Project. And it&#39;s good practice too to keep your own stuff separ=
ate.</div>
<div>** The third subsection should then explain how to extend images writi=
ng your own recipes:</div><div>*** writing a recipe that includes a base im=
age and then adds more packages:</div><div>=A0 =A0 require recipes-core/ima=
ges/<a href=3D"http://core-imabg-base.bb">core-imabg-base.bb</a></div>
<div>=A0 =A0 IMAGE_INSTALL +=3D &quot;strace&quot;</div><div>*** writing an=
 image that inherits from core-image</div><div>=A0 =A0 IMAGE_INSTALL =3D &q=
uot;task-core-boot task-core-extended&quot;</div><div>=A0 =A0 IMAGE_FEATURE=
S +=3D &quot;blabla&quot;</div>
<div>=A0 =A0 inherit core-image</div><div>** the fourth subsection should t=
hen explain how to add your own packages with your own recipes. Now you alr=
eady have everything in place: a layer to add to and a ways of including yo=
ur recipes with an image. And here we then also need to explain the licensi=
ng stuff because recipes for building packages won&#39;t fly without.</div>
<div>** the fifth section should then just reference the BSP manual for BSP=
s.</div><div><br></div><div>Finally for my concept, we need to find a home =
for x32. I would put that under an &quot;Advanced Topics&quot; section whic=
h could act as a container for other stuff too such as multi-lib etc.</div>
<div><br></div><div>Rudi</div><div>=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al"><span style=3D"color:rgb(31,73,125);font-family:Calibri,sans-serif;font=
-size:11pt">=A0</span></p>

<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 2:52 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?<u></u><u></u></span></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&gt;&gt; there&#39;s =
*way* too much coverage of licensing sprinkled throughout.<br>
&gt;&gt; most people are not going to care about licensing until the time c=
omes<br>
&gt;&gt; to maybe start distributing their BSP.<u></u><u></u></p>
</blockquote>
<div>
<p class=3D"MsoNormal">The ability of collecting licensing information, tra=
cking license changes and providing the license information automatically w=
ith the images and packages for deployment is in my opinion a major feature=
 of Yocto albeit underestimated. Most
 people will only appreciate it once they have to deliver that information =
with a product for the end user. However, it starts much earlier, with the =
recipe.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">How to include licensing tracking information with y=
our recipe needs to be part of the section explaining how to write recipes =
of the reference manual. In both, the current 1.1 and the upcoming 1.1.1, v=
ersions of the manual the license
 tracking section is a little disjoint from the sections explaining how to =
add packages/recipes in my opinion. The examples include the license tracki=
ng info, of course because otherwise the sanity checker will not allow buil=
ding the recipe, but they don&#39;t
 explain that you actually need it (unless you use LICENSE =3D &quot;CLOSED=
&quot;).<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Since the license tracking and deployment feature fo=
llows the rule &quot;garbage in, garbage out&quot; the manual cannot stress=
 enough providing the correct info in particular when writing recipes for u=
pstream projects.<u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Side note: And nice features for a future release ar=
e SPDX info (already worked on as far as I know) and providing the license =
info in ${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/imag=
es so that one knows what licenses
 are in use for what image. That would be very convenient when building mul=
tiple images with different package content.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--e89a8ff256a262e56d04bc2c85fc--
