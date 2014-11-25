Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B17C5E0091A; Tue, 25 Nov 2014 04:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA6DE008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 04:42:26 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAPCgLOG020018;
	Tue, 25 Nov 2014 23:12:21 +1030
Message-Id: <fc78ad240caee557791be5969b04f7035cd11718@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>,
	peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <88560578.M5ZrlhlDIL@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 25 Nov 2014 23:12:21 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Nov 2014 12:42:32 -0000
Content-Type: multipart/alternative;
	boundary="=_5e9c397ae1517038868cd7e1bd41ac6b"

--=_5e9c397ae1517038868cd7e1bd41ac6b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is new territory for me.=0A=0AI have created the following patch=0A=
diff --git a/configure.ac b/configure.ac=0A--- a/configure.ac=0A+++ b/co=
nfigure.ac=0A@@ -16 +16 @@ AC_CONFIG_SRCDIR([libop/op_config.h])=0A-AM_I=
NIT_AUTOMAKE=0A+AM_INIT_AUTOMAKE([foreign])=0A=0Abut i get the error=0A=
=0AERROR: Command Error: exit status: 1=C2=A0 Output:=0AApplying patch a=
utomake-foreign.patch=0Apatching file configure.ac=0AHunk #1 FAILED at 1=
6.=0A1 out of 1 hunk FAILED -- rejects in file configure.ac=0APatch auto=
make-foreign.patch does not apply (enforce with -f)=0AERROR: Function fa=
iled: patch_do_patch=0AERROR: Logfile of failure stored in:=0A/home/lach=
lan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstrea=
mer1.0-plugins-hantro/1.0-r1/temp/log.do_patch.15332=0AERROR: Task 598=
=0A(/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0-plugin=
s/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_patch) failed with exit code=
 '1'=0A=0Aif I delete the=C2=A0 @@ line I get the following error.=0A=0A=
 ERROR: Command Error: exit status: 1=C2=A0 Output:=0AApplying patch aut=
omake-foreign.patch=0Apatch: **** Only garbage was found in the patch in=
put.=0APatch automake-foreign.patch does not apply (enforce with -f)=0AE=
RROR: Function failed: patch_do_patch=0AERROR: Logfile of failure stored=
 in:=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-lin=
ux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do_patch.16828=0A=
ERROR: Task 598=0A(/home/lachlan/poky/meta-atmel/recipes-multimedia/gstr=
eamer1.0-plugins/gstreamer1.0-plugins-hantro_1.0.bb,=0Ado_patch) failed=
 with exit code '1'=0A=0ACan you direct me to some information that desc=
ribes the exact syntax=0Afor creating patches?=0AThanks=0ALachlan=0A=0A-=
---- Original Message -----=0AFrom: "Paul Eggleton" =0ATo:=0ACc:=0ASent:=
Tue, 25 Nov 2014 11:43:50 +0000=0ASubject:Re: [yocto] New error in 1.7=
=0A=0A On Tuesday 25 November 2014 22:08:41 peterengcomau001@adam.com.au=
=0Awrote:=0A > > > | Makefile.am: error: required file './AUTHORS' not f=
ound=0A > > =0A > > This is likely a result of the --foreign option bein=
g removed -=0Asee:=0A > > =0A > > http://www.yoctoproject.org/docs/1.7/r=
ef-manual/ref-> >=0Amanual.html#migration-1.7-autotools-class-changes=0A=
 >=0A > the change to oprofile.inc and the associated patch appear to be=
=0A > already present in the meta data.=0A > Any other ideas what could=
 be causing the problem?=0A=0A The patch to oprofile is just an example=
 of what you need to do to=0Asolve this =0A type of issue - you need to=
 make a similar change to the failing=0Arecipe =0A (gstreamer1.0-plugins=
-hantro in this instance).=0A=0A Cheers,=0A Paul=0A=0A -- =0A=0A Paul Eg=
gleton=0A Intel Open Source Technology Centre=0A---- Message sent via Ad=
am Internet WebMail - http://www.adam.com.au/

--=_5e9c397ae1517038868cd7e1bd41ac6b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>This is new territory for me.<br /><br />I have created the=
 following patch<br />diff --git a/configure.ac b/configure.ac<br />---=
 a/configure.ac<br />+++ b/configure.ac<br />@@ -16 +16 @@ AC_CONFIG_SRC=
DIR([libop/op_config.h])<br />-AM_INIT_AUTOMAKE<br />+AM_INIT_AUTOMAKE([=
foreign])<br /><br />but i get the error<br /><br />ERROR: Command Error=
: exit status: 1=C2=A0 Output:<br />Applying patch automake-foreign.patc=
h<br />patching file configure.ac<br />Hunk #1 FAILED at 16.<br />1 out=
 of 1 hunk FAILED -- rejects in file configure.ac<br />Patch automake-fo=
reign.patch does not apply (enforce with -f)<br />ERROR: Function failed=
: patch_do_patch<br />ERROR: Logfile of failure stored in: /home/lachlan=
/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer=
1.0-plugins-hantro/1.0-r1/temp/log.do_patch.15332<br />ERROR: Task 598 (=
/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gs=
treamer1.0-plugins-hantro_1.0.bb, do_patch) failed with exit code '1'<br=
 /><br />if I delete the=C2=A0 @@ line I get the following error.<br /><=
br />=0A=09=09=09=09ERROR: Command Error: exit status: 1=C2=A0 Output:<b=
r />Applying patch automake-foreign.patch<br />patch: **** Only garbage=
 was found in the patch input.<br />Patch automake-foreign.patch does no=
t apply (enforce with -f)<br />ERROR: Function failed: patch_do_patch<br=
 />ERROR: Logfile of failure stored in: /home/lachlan/poky/build-atmel/t=
mp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/=
1.0-r1/temp/log.do_patch.16828<br />ERROR: Task 598 (/home/lachlan/poky/=
meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gstreamer1.0-plugins-=
hantro_1.0.bb, do_patch) failed with exit code '1'<br /><br />Can you di=
rect me to some information that describes the exact syntax for creating=
 patches?<br />Thanks<br />Lachlan<br /><blockquote><br />----- Original=
 Message -----<br /><div style=3D"width:100%;background:rgb(228,228,228)=
;"><div style=3D"font-weight:bold;">From:</div> "Paul Eggleton" &lt;paul=
eggleton@linux.intel.com&gt;</div><br /><div style=3D"font-weight:bold;=
">To:</div>&lt;peterengcomau001@adam.com.au&gt;<br /><div style=3D"font-=
weight:bold;">Cc:</div>&lt;yocto@yoctoproject.org&gt;<br /><div style=3D=
"font-weight:bold;">Sent:</div>Tue, 25 Nov 2014 11:43:50 +0000<br /><div=
 style=3D"font-weight:bold;">Subject:</div>Re: [yocto] New error in 1.7<=
br /><br /><br />=0AOn Tuesday 25 November 2014 22:08:41 peterengcomau00=
1@adam.com.au wrote:<br />=0A&gt; &gt; &gt; | Makefile.am: error: requir=
ed file './AUTHORS' not found<br />=0A&gt; &gt; <br />=0A&gt; &gt; This=
 is likely a result of the --foreign option being removed - see:<br />=
=0A&gt; &gt; <br />=0A&gt; &gt; http://www.yoctoproject.org/docs/1.7/ref=
-manual/ref-&gt; &gt; manual.html#migration-1.7-autotools-class-changes<=
br />=0A&gt;<br />=0A&gt;  the change to oprofile.inc and the associated=
 patch appear to be<br />=0A&gt; already present in the meta data.<br />=
=0A&gt; Any other ideas what could be causing the problem?<br /><br />=
=0AThe patch to oprofile is just an example of what you need to do to so=
lve this <br />=0Atype of issue - you need to make a similar change to t=
he failing recipe <br />=0A(gstreamer1.0-plugins-hantro in this instance=
).<br /><br />=0ACheers,<br />=0APaul<br /><br />=0A-- <br /><br />=0APa=
ul Eggleton<br />=0AIntel Open Source Technology Centre<br /></blockquot=
e>---- Message sent via Adam Internet WebMail  - http://www.adam.com.au/=
</body></html>

--=_5e9c397ae1517038868cd7e1bd41ac6b--
