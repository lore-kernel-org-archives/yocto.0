Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 245DDE00D74; Tue, 26 Apr 2016 23:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.38 listed in list.dnswl.org]
Received: from DUB004-OMC3S29.hotmail.com (dub004-omc3s29.hotmail.com
	[157.55.2.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A3BE00D6F
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 23:27:18 -0700 (PDT)
Received: from DUB130-W61 ([157.55.2.7]) by DUB004-OMC3S29.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 26 Apr 2016 23:27:17 -0700
X-TMN: [05Atnh/GxIEBvpOJauaTi/gi68QIFAiQ]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 27 Apr 2016 07:27:16 +0100
Importance: Normal
In-Reply-To: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
References: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Apr 2016 06:27:17.0819 (UTC)
	FILETIME=[D8A6C8B0:01D1A04D]
Subject: Re: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Wed, 27 Apr 2016 06:27:23 -0000
Content-Type: multipart/alternative;
	boundary="_c3f34b02-fc59-43b5-91b3-6b7158ec43f7_"

--_c3f34b02-fc59-43b5-91b3-6b7158ec43f7_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Aside from the issues I mentioned previously=2C pjproject is detecting cros=
s-compilation and this causes it to append '-x86_64-poky-linux-gnu' to all =
its library names.
This is then breaking autotools configuration in other recipes that are tes=
ting for the base name.
Is it common for a build process to differentiate cross compiled libraries =
like this?  Is there a preferred way to deal with it?
I'm not confident about changing the pjproject build but I can link the bas=
e name to the extended name in do_install_append() so both names are presen=
t. pkgconfig picks up the extended names so these are also used in other re=
cipes too (both forms of name in the same command line...).
Regards=2CChris

From: christrobridge@hotmail.com
To: yocto@yoctoproject.org
Date: Tue=2C 26 Apr 2016 10:15:34 +0100
Subject: [yocto] Build Errors with new recipe for pjproject	(autotools/pkgc=
onfig)

=0A=
=0A=
=0A=
I have been trying to formulate a new recipe for pjproject (pjsip) - there =
was one but it seems too old and isn't part of any layer now.
The library seems to require a fairly straightforward autotools/pkgconfig r=
ecipe but I get two errors=2C both of which I can see have come up before b=
ut haven't been answered satisfactorily.
The first is that the link stage fails with "x86_64-poky-linux-ld: unrecogn=
ized option '-Wl=2C-O1'".
I've found this answered as "tools being too old" but '-Wl=2C' is a gcc pre=
fix to pass an option to the linker but the linker is being invoked directl=
y and so this is really a configuration mismatch.  I can fix this with "LD=
=3D$CXX" in do_configure_prepend() but I am puzzled as to why autotools wou=
ld get confused this way in the first place?
The second problem is possibly more recent: ERROR: pjproject-2.4.5-r0 do_po=
pulate_sysroot: QA Issue: libpjproject.pc failed sanity test (tmpdir) in pa=
th /home/chris/yocto/build/tmp/work/corei7-64-poky-linux/pjproject/2.4.5-r0=
/sysroot-destdir/usr/lib/pkgconfig [pkgconfig]
I think this is benign other than leaking my dev environment but there was =
an oe gcc patch earlier this year that addressed this (http://lists.openemb=
edded.org/pipermail/openembedded-core/2016-January/116468.html).
Apparently there was QA change the broke a lot of recipes but it's not clea=
r how to fix this recipe - from what I could tell the fix should have appli=
ed to all recipes.  Adding '-gno-record-debug-prefix-map' should fix this b=
ut the compiler option is not recognised.
Any ideas on how to solve the QA error?
I am using the poky commit for 2.1_M4.rc1.
Thanks=2CChris
 		 	   		  =0A=

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_c3f34b02-fc59-43b5-91b3-6b7158ec43f7_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Aside from the issues I mentione=
d previously=2C pjproject is detecting cross-compilation and this causes it=
 to append '-x86_64-poky-linux-gnu' to all its library names.<div><br></div=
><div>This is then breaking autotools configuration in other recipes that a=
re testing for the base name.</div><div><br></div><div>Is it common for a b=
uild process to differentiate cross compiled libraries like this? &nbsp=3BI=
s there a preferred way to deal with it?</div><div><br></div><div>I'm not c=
onfident about changing the pjproject build but I can link the base name to=
 the extended name in&nbsp=3Bdo_install_append() so both names are present.=
 pkgconfig picks up the extended names so these are also used in other reci=
pes too (both forms of name in the same command line...).</div><div><br></d=
iv><div>Regards=2C</div><div>Chris<br><br><div><hr id=3D"stopSpelling">From=
: christrobridge@hotmail.com<br>To: yocto@yoctoproject.org<br>Date: Tue=2C =
26 Apr 2016 10:15:34 +0100<br>Subject: [yocto] Build Errors with new recipe=
 for pjproject	(autotools/pkgconfig)<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">I have been trying to formulate a new recipe for pjproject=
 (pjsip) - there was one but it seems too old and isn't part of any layer n=
ow.<div><br></div><div>The library seems to require a fairly straightforwar=
d autotools/pkgconfig recipe but I get two errors=2C both of which I can se=
e have come up before but haven't been answered satisfactorily.</div><div><=
br></div><div>The first is that the link stage fails with "x86_64-poky-linu=
x-ld: unrecognized option '-Wl=2C-O1'".</div><div><br></div><div>I've found=
 this answered as "tools being too old" but '-Wl=2C' is a gcc prefix to pas=
s an option to the linker but the linker is being invoked directly and so t=
his is really a configuration mismatch. &nbsp=3BI can fix this with "LD=3D$=
CXX" in do_configure_prepend() but I am puzzled as to why autotools would g=
et confused this way in the first place?</div><div><br></div><div>The secon=
d problem is possibly more recent:&nbsp=3B</div><div>ERROR: pjproject-2.4.5=
-r0 do_populate_sysroot: QA Issue: libpjproject.pc failed sanity test (tmpd=
ir) in path /home/chris/yocto/build/tmp/work/corei7-64-poky-linux/pjproject=
/2.4.5-r0/sysroot-destdir/usr/lib/pkgconfig [pkgconfig]</div><div><br></div=
><div>I think this is benign other than leaking my dev environment but ther=
e was an oe gcc patch earlier this year that addressed this (<a href=3D"htt=
p://lists.openembedded.org/pipermail/openembedded-core/2016-January/116468.=
html" target=3D"_blank" style=3D"font-size:12pt=3B">http://lists.openembedd=
ed.org/pipermail/openembedded-core/2016-January/116468.html</a>).</div><div=
><br></div><div>Apparently there was QA change the broke a lot of recipes b=
ut it's not clear how to fix this recipe - from what I could tell the fix s=
hould have applied to all recipes. &nbsp=3BAdding <span style=3D"white-spac=
e:pre-wrap=3Bfont-size:12pt=3B">'-gno-record-debug-prefix-map' should fix t=
his but the compiler option is not recognised.</span></div><div><span style=
=3D"white-space:pre-wrap=3Bfont-size:12pt=3B"><br></span></div><div><span s=
tyle=3D"white-space:pre-wrap=3Bfont-size:12pt=3B">Any ideas on how to solve=
 the QA error?</span></div><div><br></div><div><span style=3D"white-space:p=
re-wrap=3Bfont-size:12pt=3B">I am using the poky commit for </span><span st=
yle=3D"white-space:pre-wrap=3B">2.1_M4.rc1.</span></div><div><br></div><div=
>Thanks=2C</div><div>Chris</div><div><br></div> 		 	   		  </div>=0A=
<br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div></div> 		 	   		  </div>=
</body>
</html>=

--_c3f34b02-fc59-43b5-91b3-6b7158ec43f7_--
