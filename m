Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B81D0E00B0B; Tue, 30 May 2017 06:35:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 May 2017 06:35:25 PDT
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28051E00953
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 06:35:24 -0700 (PDT)
X-Halon-ID: ae123767-453c-11e7-b757-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 30 May 2017 15:34:17 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 30 May 2017 15:34:41 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, <so61pi.re@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAGnCEbsv_v=YuW2uiwRhJAkw8Yz9H81OELGAYvmOBdU=W-0ykQ@mail.gmail.com>
References: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
	<1496069912.26945.37.camel@linux.intel.com>
	<CAGnCEbsv_v=YuW2uiwRhJAkw8Yz9H81OELGAYvmOBdU=W-0ykQ@mail.gmail.com>
Message-ID: <1416da32375ee235be7a29c5d575fab9@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: How to install dbg package and not its dependencies?
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
X-List-Received-Date: Tue, 30 May 2017 13:35:28 -0000
Content-Type: multipart/alternative;
	boundary="=_7caaf8ce16672b1e5e07ee50a425d30a"

--=_7caaf8ce16672b1e5e07ee50a425d30a
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

Hi, 

If the problem is the footprint, then you can add below line
in the libexample recipe: 

INHIBIT_PACKAGE_DEBUG_SPLIT = "1" 

This
will prevent the build system from adding any debug info in the
libexample-dbg package. 

BR Petter 

[1] -
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-INHIBIT_PACKAGE_DEBUG_SPLIT


Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se

2017-05-30 04:17 skrev Ngọc Thi
Huỳnh: 

> I have both app-example-DBG & app-example in IMAGE_INSTALL
and the result is app-example-dbg & app-example & libexample-dbg &
libexample are included in the final image. 
> 
> Huỳnh Ngọc Thi
> 
>
-so61pi 
> 
> On Mon, May 29, 2017 at 9:58 PM, Leonardo Sandoval
<leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> 
>> On Sun,
2017-05-28 at 17:23 +0700, Ngọc Thi Huỳnh wrote:
>> > Hi everyone,
>>
>
>> >
>> > Let's say I have app-example package which depends on
libexample.
>> >
>> > When I add app-example-dbg to IMAGE_INSTALL,
libexample-dbg package is
>> > automatically included in the final image
which makes the image size
>> > become bigger.
>> >
>> what about
installing the non-dbg ones?
>> 
>>> 
>> > In this case, is there a way
to prevent libexample-dbg from being
>> > installed?
>> >
>> >
>> >
Thanks,
>> >
>> > Thi Huynh
>> > > --
>> >
_______________________________________________
>> > yocto mailing
list
>> > yocto@yoctoproject.org
>> >
https://lists.yoctoproject.org/listinfo/yocto [1]
 

Links:
------
[1]
https://lists.yoctoproject.org/listinfo/yocto

--=_7caaf8ce16672b1e5e07ee50a425d30a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Hi,</p>
<p>If the problem is the footprint, then you can add below line in the libe=
xample recipe:</p>
<p>INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"</p>
<p>This will prevent the build system from adding any debug info in the lib=
example-dbg package.</p>
<p>BR Petter</p>
<p>[1] - http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.htm=
l#var-INHIBIT_PACKAGE_DEBUG_SPLIT</p>
<p>&nbsp;</p>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se<br /><br /></pre>
<p>2017-05-30 04:17 skrev Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr">I have both app-example<strong>-dbg</strong> &amp; app-exa=
mple in IMAGE_INSTALL and the result is app-example-dbg &amp; app-example &=
amp; libexample-dbg &amp; libexample are included in the final image.</div>
<div class=3D"gmail_extra"><br clear=3D"all" />
<div>
<div class=3D"gmail_signature">
<div dir=3D"ltr">Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi<br />
<div>-so61pi</div>
</div>
</div>
</div>
<br />
<div class=3D"gmail_quote">On Mon, May 29, 2017 at 9:58 PM, Leonardo Sandov=
al <span>&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com">=
leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br />
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;"><span>On Sun, 2017-05-28 at 17:23=
 +0700, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:<br /> &gt; Hi everyone,<br />=
 &gt;<br /> &gt;<br /> &gt; Let's say I have app-example package which depe=
nds on libexample.<br /> &gt;<br /> &gt; When I add app-example-dbg to IMAG=
E_INSTALL, libexample-dbg package is<br /> &gt; automatically included in t=
he final image which makes the image size<br /> &gt; become bigger.<br /> &=
gt;<br /></span>what about installing the non-dbg ones?<br />
<div class=3D"HOEnZb">
<div class=3D"h5">&gt;<br /> &gt; In this case, is there a way to prevent l=
ibexample-dbg from being<br /> &gt; installed?<br /> &gt;<br /> &gt;<br /> =
&gt; Thanks,<br /> &gt;<br /> &gt; Thi Huynh<br /> &gt;</div>
</div>
<span class=3D"HOEnZb"><span style=3D"color: #888888;">&gt; --<br /> &gt; _=
______________________________________________<br /> &gt; yocto mailing lis=
t<br /> &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
=2Eorg</a><br /> &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto">https://lists.yoctoproject.org/listinfo/yocto</a><br /><br /><br /></s=
pan></span></blockquote>
</div>
</div>
</blockquote>
</body></html>

--=_7caaf8ce16672b1e5e07ee50a425d30a--
