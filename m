Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD6CE00CA4; Tue, 26 Apr 2016 02:15:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.30 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S21.hotmail.com (dub004-omc3s21.hotmail.com
	[157.55.2.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 174CBE00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 02:15:36 -0700 (PDT)
Received: from DUB130-W10 ([157.55.2.7]) by DUB004-OMC3S21.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 26 Apr 2016 02:15:35 -0700
X-TMN: [9LXtthgS0PfnuhZ7PmffT6XGVCJ0I4GI]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 26 Apr 2016 10:15:34 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 26 Apr 2016 09:15:35.0507 (UTC)
	FILETIME=[30EDF230:01D19F9C]
Subject: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Tue, 26 Apr 2016 09:15:41 -0000
Content-Type: multipart/alternative;
	boundary="_fb69c4bb-c327-4213-83e8-d5ef656c4d36_"

--_fb69c4bb-c327-4213-83e8-d5ef656c4d36_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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
 		 	   		  =

--_fb69c4bb-c327-4213-83e8-d5ef656c4d36_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I have been trying to formulate =
a new recipe for pjproject (pjsip) - there was one but it seems too old and=
 isn't part of any layer now.<div><br></div><div>The library seems to requi=
re a fairly straightforward autotools/pkgconfig recipe but I get two errors=
=2C both of which I can see have come up before but haven't been answered s=
atisfactorily.</div><div><br></div><div>The first is that the link stage fa=
ils with "x86_64-poky-linux-ld: unrecognized option '-Wl=2C-O1'".</div><div=
><br></div><div>I've found this answered as "tools being too old" but '-Wl=
=2C' is a gcc prefix to pass an option to the linker but the linker is bein=
g invoked directly and so this is really a configuration mismatch. &nbsp=3B=
I can fix this with "LD=3D$CXX" in do_configure_prepend() but I am puzzled =
as to why autotools would get confused this way in the first place?</div><d=
iv><br></div><div>The second problem is possibly more recent:&nbsp=3B</div>=
<div>ERROR: pjproject-2.4.5-r0 do_populate_sysroot: QA Issue: libpjproject.=
pc failed sanity test (tmpdir) in path /home/chris/yocto/build/tmp/work/cor=
ei7-64-poky-linux/pjproject/2.4.5-r0/sysroot-destdir/usr/lib/pkgconfig [pkg=
config]</div><div><br></div><div>I think this is benign other than leaking =
my dev environment but there was an oe gcc patch earlier this year that add=
ressed this (<a href=3D"http://lists.openembedded.org/pipermail/openembedde=
d-core/2016-January/116468.html" target=3D"_blank" style=3D"font-size: 12pt=
=3B">http://lists.openembedded.org/pipermail/openembedded-core/2016-January=
/116468.html</a>).</div><div><br></div><div>Apparently there was QA change =
the broke a lot of recipes but it's not clear how to fix this recipe - from=
 what I could tell the fix should have applied to all recipes. &nbsp=3BAddi=
ng <span style=3D"white-space: pre-wrap=3B font-size: 12pt=3B">'-gno-record=
-debug-prefix-map' should fix this but the compiler option is not recognise=
d.</span></div><div><span style=3D"white-space: pre-wrap=3B font-size: 12pt=
=3B"><br></span></div><div><span style=3D"white-space: pre-wrap=3B font-siz=
e: 12pt=3B">Any ideas on how to solve the QA error?</span></div><div><br></=
div><div><span style=3D"white-space: pre-wrap=3B font-size: 12pt=3B">I am u=
sing the poky commit for </span><span style=3D"white-space: pre-wrap=3B">2.=
1_M4.rc1.</span></div><div><br></div><div>Thanks=2C</div><div>Chris</div><d=
iv><br></div> 		 	   		  </div></body>
</html>=

--_fb69c4bb-c327-4213-83e8-d5ef656c4d36_--
