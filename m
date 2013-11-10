Return-Path: <mgloff@emacinc.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D21E01382
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 20:13:22 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id ez12so925916wid.5
	for <yocto@yoctoproject.org>; Sat, 09 Nov 2013 20:13:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=PCDyx+GYeB5ut6eRrJsAAc/zQuAgGB3+Lvri1FaQ8xE=;
	b=iVdwm6vPwx8NMNuf5/4dkb702qHScWoXspAA1kG8IlhTFlDQRbEI/FBlL2sxg2dDLJ
	wQUU5W7NL1Obyk3A/H9iai9u3mQaSPl5LhDXjQIrnZH/ROXZA75W9OWP1y6A4iXr4xLc
	BDvSYAr7kuEKXA9VpsKVTZVcBcYdqBYRG2uzyGRAP2qyiPnF2ZH7DFBqaAZAjkPW4WA0
	Z/qvmswRzXeONVYkar2CzxjBrtS5Cd5/3Bm03aC81sBMsAFRF/B2fo55bJ5g/xJOBtH8
	PcQRBbflspN97Is7/XnUV634GTwRLA9LWewQSWlgVy6ZF3J+PJQFjY93Ydh2Hhw4Ncsu
	yHYQ==
X-Gm-Message-State: ALoCoQmT+7O5xfhLYGh8aOzi8gjrPAUg3oAaTQU9poy/Ew5We33Dd4CoiqnxQcIe/vls1fAEtkks
MIME-Version: 1.0
X-Received: by 10.180.78.165 with SMTP id c5mr7726030wix.3.1384056800877; Sat,
	09 Nov 2013 20:13:20 -0800 (PST)
Received: by 10.216.41.137 with HTTP; Sat, 9 Nov 2013 20:13:20 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311090504360.18437@oneiric>
References: <alpine.DEB.2.02.1311090504360.18437@oneiric>
Date: Sat, 9 Nov 2013 22:13:20 -0600
Message-ID: <CALXw4G6K7Ku3jYJhai_QgWn=F4poy2=XA_VykabO7UQ26D3=1g@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: i think the explanation of "Build Directory" in dev manual is wrong
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
X-List-Received-Date: Sun, 10 Nov 2013 04:13:25 -0000
Content-Type: multipart/alternative; boundary=f46d04388e67f74ae904eacad5d8

--f46d04388e67f74ae904eacad5d8
Content-Type: text/plain; charset=ISO-8859-1

The build dir will definitely be created by the script(s) (assuming
permissions). The default build dir will be created under the level of the
script as 'build', but you can specify any path.

As you point this out I see the sentence:

The TOPDIR<http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#var-TOPDIR>variable
points to the Build Directory.

can be ambiguous. TOPDIR is not well defined. Maybe it should be called
BUILD_DIR and defined somewhere in local.conf as a default commented out
like DL_DIR and TMPDIR in addition to the ability to specify BUILD_DIR on
the command line.

Michael Gloff



On Sat, Nov 9, 2013 at 4:09 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   here:
>
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms
>
> explanation of "Build Directory", one reads (start quote):
>
> Provide a directory path and specifically name the build directory.
> This next example creates a Build Directory named YP-11.0.0 in your
> home directory within the directory mybuilds. If mybuilds does not
> exist, the directory is created for you:
>
>      $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/YP-11.0.0
>
> Provide an existing directory to use as the Build Directory and use
> the default build name.
>
>      $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/
>
>  === end quote ===
>
>   i don't think either of those is correct, are they? pretty sure that
> oe-init-build-env *doesn't* create intermediate directories and, in
> that second example, wouldn't that just use ~/mybuilds as the build
> directory? i don't foresee a default build name subdirectory being
> created there. or am i just confused?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Michael Gloff

mgloff@emacinc.com
http://www.emacinc.com/

Engineer
EMAC, Inc.
618-529-4525 Ext. 310
 618-457-0110 Fax
 2390 EMAC Way
Carbondale, Il 62901

--f46d04388e67f74ae904eacad5d8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra">The build dir will definite=
ly be created by the script(s) (assuming permissions). The default build di=
r will be created under the level of the script as &#39;build&#39;, but you=
 can specify any path.<br>
=A0<br></div>
<div class=3D"gmail_extra">As you point this out I see the sentence:<br><br=
>The <a href=3D"http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.=
html#var-TOPDIR" target=3D"_blank"><code>TOPDIR</code></a>
                variable points to the Build Directory.<br><br></div><div c=
lass=3D"gmail_extra">can be ambiguous. TOPDIR is not well defined. Maybe it=
 should be called BUILD_DIR and defined somewhere in local.conf as a defaul=
t commented out like DL_DIR and TMPDIR in addition to the ability to specif=
y BUILD_DIR on the command line. <br>
<br></div><div class=3D"gmail_extra">Michael Gloff<br><br></div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Sat, Nov 9, 2013 at 4:09 AM, Robert P. J. Day <span dir=3D"ltr=
">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cra=
shcourse.ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=A0 here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml#yocto-project-terms" target=3D"_blank">http://www.yoctoproject.org/docs/=
latest/dev-manual/dev-manual.html#yocto-project-terms</a><br>
<br>
explanation of &quot;Build Directory&quot;, one reads (start quote):<br>
<br>
Provide a directory path and specifically name the build directory.<br>
This next example creates a Build Directory named YP-11.0.0 in your<br>
home directory within the directory mybuilds. If mybuilds does not<br>
exist, the directory is created for you:<br>
<br>
=A0 =A0 =A0$ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/YP-11.=
0.0<br>
<br>
Provide an existing directory to use as the Build Directory and use<br>
the default build name.<br>
<br>
=A0 =A0 =A0$ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/<br>
<br>
=A0=3D=3D=3D end quote =3D=3D=3D<br>
<br>
=A0 i don&#39;t think either of those is correct, are they? pretty sure tha=
t<br>
oe-init-build-env *doesn&#39;t* create intermediate directories and, in<br>
that second example, wouldn&#39;t that just use ~/mybuilds as the build<br>
directory? i don&#39;t foresee a default build name subdirectory being<br>
created there. or am i just confused?<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div>M=
ichael Gloff<br></div><div><br><a href=3D"mailto:mgloff@emacinc.com" target=
=3D"_blank">mgloff@emacinc.com</a></div>
<div><a href=3D"http://www.emacinc.com/" style=3D"font-family:arial;font-si=
ze:small" target=3D"_blank">http://www.emacinc.com/</a></div>
<div><br>
<div>Engineer</div>
<div>EMAC, Inc.</div>
<div><a value=3D"+16185294525">618-529-4525 Ext. 310</a><br>
</div>
</div>
<div><a value=3D"+16184570110">618-457-0110</a><span style=3D"font-family:A=
rial,sans-serif;font-size:13.3333px">=A0Fax</span><br>
</div>
<span style=3D"font-family:Arial,sans-serif;font-size:13.3333px">2390 EMAC =
Way</span><br style=3D"font-family:Arial,sans-serif;font-size:13.3333px">
<span style=3D"font-family:Arial,sans-serif;font-size:13.3333px">Carbondale=
, Il 62901</span></div>
</div></div>

--f46d04388e67f74ae904eacad5d8--
