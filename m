Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E814E00E25; Thu,  8 Oct 2015 05:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00, HTML_IMAGE_ONLY_28, 
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.4 HTML_IMAGE_ONLY_28 BODY: HTML: images with 2400-2800 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Oct 2015 05:50:18 PDT
Received: from bin-vsp-out-05.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51FC1E0050E
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 05:50:17 -0700 (PDT)
X-Halon-ID: f7576670-6dba-11e5-b53c-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Thu,  8 Oct 2015 14:49:08 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 08 Oct 2015 14:49:08 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <pervivek@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CALLyC8Sk+k9jJCRByejYnO1WfmOx9849XuRqB3bxG538Gs1pyQ@mail.gmail.com>
References: <CALLyC8Sk+k9jJCRByejYnO1WfmOx9849XuRqB3bxG538Gs1pyQ@mail.gmail.com>
Message-ID: <7c6d997df3e4c21753d1bb54c9bd42fe@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Can any one please tell the what is the exact difference between DEPENDS and RDEPENDS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 08 Oct 2015 12:50:21 -0000
Content-Type: multipart/alternative;
	boundary="=_3126a95c15a15d379555f462a7ae4cb0"

--=_3126a95c15a15d379555f462a7ae4cb0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-10-08 06:37 skrev Vivek Per: 

> Hi, 
> Can any one please tell
the what is the exact difference between DEPENDS and RDEPENDS . I am not
able to get it . How these variables are exactly parsed. 
> 
> -regards

> vivek

Hi, 

I guess you already have read through the manual about
the variables?


http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-RDEPENDS


http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-DEPENDS


The overall description of the differences are (please someone
correct me if you find my answer incorrect) that DEPENDS specifics
build-time dependencies (e.i. other recipe files) so you should be
guaranteed that all packages listed in the DEPENDS has been built and
installed in the sysroot before your new package starts its configure
task. 

RDEPENDS on the other hand, is a run-time dependency so instead
of other recipe files RDEPENDS lists packages that should have been
installed in order to correctly run your package on target. 

All this
is explained more in detail in the manual (see above links). Also keep
in mind that DEPENDS works with recipes and RDEPENDS with packages
(which isn't necessary the same). Debug the PACKAGES for a specific
variable
(http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-PACKAGES)
in order to get a clue about what packages a recipe will generate. 

If
you still have a hard to understanding the differences my suggestion is
that you starts playing around a bit with them. Create a project and add
some DEPENDS and RDEPENDS to a recipe(s), build the affected packages
and investigate if they have been built in the expected order. This can
for example be verified by tracking the build output or by looking
through the cooker logs tmp/log/cooker/*. 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se
 

--=_3126a95c15a15d379555f462a7ae4cb0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-10-08 06:37 skrev Vivek Per:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr"><span style=3D"font-size: 12.8px;">Hi,</span>
<div style=3D"font-size: 12.8px;">&nbsp; &nbsp; &nbsp;Can any one please te=
ll the what is the exact difference between DEPENDS and RDEPENDS . I am not=
 able to get it . How these variables are exactly parsed.</div>
<div style=3D"font-size: 12.8px;">&nbsp;</div>
<div style=3D"font-size: 12.8px;">&nbsp;</div>
<div style=3D"font-size: 12.8px;">-regards</div>
<div style=3D"font-size: 12.8px;"><span style=3D"color: #888888; font-size:=
 12.8px;">vivek</span></div>
<div style=3D"font-size: 12.8px;">
<div id=3D":qh"><img src=3D"./program/blocked.gif" alt=3D"" /></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>
<div>
<p>Hi,</p>
<p>I guess you already have read through the manual about the variables?</p=
>
<p>http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-RDEP=
ENDS</p>
<p>http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-DEPE=
NDS</p>
<p>&nbsp;</p>
<p>The overall description of the differences are (please someone correct m=
e if you find my answer incorrect) that DEPENDS specifics build-time depend=
encies (e.i. other recipe files) so you should be guaranteed that all packa=
ges listed in the DEPENDS has been built and installed in the sysroot befor=
e your new package starts its configure task.</p>
<p>RDEPENDS on the other hand, is a run-time dependency so instead of other=
 recipe files RDEPENDS lists packages that should have been installed in or=
der to correctly run your package on target.</p>
<p><br />All this is explained more in detail in the manual (see above link=
s). Also keep in mind that DEPENDS works with recipes and RDEPENDS with pac=
kages (which isn't necessary the same). Debug the PACKAGES for a specific v=
ariable (http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#va=
r-PACKAGES) in order to get a clue about what packages a recipe will genera=
te.</p>
<p>If you still have a hard to understanding the differences my suggestion =
is that you starts playing around a bit with them. Create a project and add=
 some DEPENDS and RDEPENDS to a recipe(s), build the affected packages and =
investigate if they have been built in the expected order. This can for exa=
mple be verified by tracking the build output or by looking through the coo=
ker logs tmp/log/cooker/*.</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</div>
</body></html>

--=_3126a95c15a15d379555f462a7ae4cb0--
