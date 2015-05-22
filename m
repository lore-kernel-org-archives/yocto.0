Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54D56E009E7; Fri, 22 May 2015 06:35:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74054E009FA
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:34:50 -0700 (PDT)
Received: by qcir1 with SMTP id r1so7871647qci.3
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dIyFiVmtEa7pQhUe93wgVzkUdvyX11AzDPwopF5ZB/4=;
	b=wbgdD334z972kHZN3ZJDhmg8chPxrC21L/001RyPba4kKhy4btUuht+01x1OQCuU8R
	Ta3ASwCf0tyITMyXkCGAHuBZMTTSe8yrdB+afiWP4wE2Am0OP9RZo5N0ea0XksziatkE
	7FquTpAv/ChhTDHxPd9xPQy2rM1DyrKKTUUnOqushv6H3KRrMDl7dIx4zxPZflCSCpA8
	zsLYZ/5eO1sSpY6AL7RoKwKx0WvpMxWRBn6x5MyM9XOVSXRPXUV0v3tG+EjLVDSDsXc0
	4vf0VeH1NmxlNc0iu+jwHXTCRWb+IS8jdvGEibzt//aw9A9qEPA6SkVtWkD/GulgLxI+
	PgAg==
MIME-Version: 1.0
X-Received: by 10.55.41.24 with SMTP id p24mr17547502qkh.55.1432301690442;
	Fri, 22 May 2015 06:34:50 -0700 (PDT)
Received: by 10.140.83.102 with HTTP; Fri, 22 May 2015 06:34:50 -0700 (PDT)
In-Reply-To: <1590487.Reks4r8brD@peggleto-mobl.ger.corp.intel.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<CACTu1Li_MZA+M3D+Y72ODut60+Uhz4Xvp3w_zFB3DcXfjg5Nug@mail.gmail.com>
	<20150522120050.GD2376@jama>
	<1590487.Reks4r8brD@peggleto-mobl.ger.corp.intel.com>
Date: Fri, 22 May 2015 15:34:50 +0200
Message-ID: <CACTu1Lg3uRw5UtXcJ4==DTuA4PK2D93G+yMJViZsGDh=+eFARQ@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 13:35:04 -0000
Content-Type: multipart/alternative; boundary=001a11406c547858870516abb932

--001a11406c547858870516abb932
Content-Type: text/plain; charset=UTF-8

Thanks for helping me. My *.bbappend looks now like this:

PACKAGECONFIG_append_class-target = " pgsql"

"bitbake php" results now in:

ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was
'[...]/core2-32-poky-linux/php/5.5.24-r0/php-5.5.24'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
[...]/core2-32-poky-linux/php/5.5.24-r0/temp/log.do_configure.16729
ERROR: Task 5 ([...]/recipes-devtools/php/php_5.5.24.bb, do_configure)
failed with exit code '1

From the recipe I can see that

do_configure_prepend
do_configure_append

exist. For test purposes I added an empty

do_configure () {
}

This results in

ERROR: Function failed: do_install
(Much text)
 cp: cannot stat 'ltmain.sh': No such file or directory
(Much text)
ERROR: oe_runmake failed





2015-05-22 14:48 GMT+02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Friday 22 May 2015 14:00:50 Martin Jansa wrote:
> > On Fri, May 22, 2015 at 01:44:20PM +0200, yocto yocto wrote:
> > > I set BBCLASSEXTEND = "native" active again. My php_5.5.24.bbappend
> looks
> > > like this (just one line):
> > >
> > > PACKAGECONFIG_append_class-native = " pgsql"
> >
> > Do you really want to add it for native or target version?
>
> Oops, yes, that was my mistake in my original reply - should be
> class-target
> not class-native.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11406c547858870516abb932
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks for helping me. My *.bbappend looks =
now like this:<br><br>PACKAGECONFIG_append_class-target =3D &quot; pgsql&qu=
ot;<br><br></div>&quot;bitbake php&quot; results now in:<br><br>ERROR: This=
 autoconf log indicates errors, it looked at host include and/or library pa=
ths while determining system capabilities.<br>Rerun configure task after fi=
xing this. The path was &#39;[...]/core2-32-poky-linux/php/5.5.24-r0/php-5.=
5.24&#39;<br>ERROR: Function failed: do_qa_configure<br>ERROR: Logfile of f=
ailure stored in: [...]/core2-32-poky-linux/php/5.5.24-r0/temp/log.do_confi=
gure.16729<br>ERROR: Task 5 ([...]/recipes-devtools/php/<a href=3D"http://p=
hp_5.5.24.bb">php_5.5.24.bb</a>, do_configure) failed with exit code &#39;1=
<br><br></div><div>From the recipe I can see that<br><br>do_configure_prepe=
nd <br>do_configure_append<br><br></div><div>exist. For test purposes I add=
ed an empty <br></div><br></div>do_configure () {<br>}<br><div><div><div><b=
r></div><div>This results in<br><br>ERROR: Function failed: do_install <br>=
</div><div>(Much text)<br>=C2=A0cp: cannot stat &#39;ltmain.sh&#39;: No suc=
h file or directory<br>(Much text)<br>ERROR: oe_runmake failed<br><br><br><=
/div><div><br></div><div><br></div></div></div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2015-05-22 14:48 GMT+02:00 Paul Eggleto=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" ta=
rget=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><span class=3D"">On Friday 22 May 2015 14:00:50 Martin=
 Jansa wrote:<br>
&gt; On Fri, May 22, 2015 at 01:44:20PM +0200, yocto yocto wrote:<br>
&gt; &gt; I set BBCLASSEXTEND =3D &quot;native&quot; active again. My php_5=
.5.24.bbappend looks<br>
&gt; &gt; like this (just one line):<br>
&gt; &gt;<br>
&gt; &gt; PACKAGECONFIG_append_class-native =3D &quot; pgsql&quot;<br>
&gt;<br>
&gt; Do you really want to add it for native or target version?<br>
<br>
</span>Oops, yes, that was my mistake in my original reply - should be clas=
s-target<br>
not class-native.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a11406c547858870516abb932--
