Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5FBAE0096A; Tue,  9 Jun 2015 02:28:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 980DDE00496
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 02:28:24 -0700 (PDT)
Received: by qkx62 with SMTP id 62so6159486qkx.3
	for <yocto@yoctoproject.org>; Tue, 09 Jun 2015 02:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=E1KGRz0JCTiW0VTn1TpjtuRqmXxEdr3nsrzHR/Kmtdg=;
	b=iEKnD5zvuN+zMM9Y0T4igzUgzeZEC8XSSlkfCuCRnY8Q7QE1JHF3Fk9GWvbze2ViKI
	zQSuwCTF3d3jgUoZiOl/Ty3TTd3LZLFovhmR0q0eq40unxHJizn7g+LtdFnKB+TNqX6M
	Bu7/iQbgQKiS/Bt0a1LD45nC8scGBLTPgPVsgkbA/uIkvu7XX0RXvu93bsjJtTfC1+Gl
	n5UglelguEdfHBOETvxHRawVUXA5MzJnnEiyKbStHaABXOlWF7C1TLs7pCpB+TMsLevI
	0sIQYOlc8HZiReLn6AoQ78RktGK9yERnf6owm2AbBfx4UU0Ktk/MnEolbBbeeNZK3C1m
	wG1w==
X-Gm-Message-State: ALoCoQm0wJe3o4bNIV+8jjtiL8ahdKEpRpOeoq3JNXL7ti75zmQrp4UjZSYKQH42MKyhSZKjLNr6
X-Received: by 10.140.235.195 with SMTP id g186mr26158575qhc.64.1433842103423; 
	Tue, 09 Jun 2015 02:28:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 9 Jun 2015 02:28:03 -0700 (PDT)
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280C822E98@post>
References: <43F0718C449F6A46B393DA2BEC8E01280C822E98@post>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Jun 2015 10:28:03 +0100
Message-ID: <CAJTo0LYTmkFvjXsevSc22VOyr1jtcrErO-vm=gh5NqaAVpuh-Q@mail.gmail.com>
To: Peter Bergin <peter.bergin@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python3 failure using ctypes
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
X-List-Received-Date: Tue, 09 Jun 2015 09:28:31 -0000
Content-Type: multipart/alternative; boundary=001a11354c8a3d46180518126168

--001a11354c8a3d46180518126168
Content-Type: text/plain; charset=UTF-8

On 9 June 2015 at 09:27, Peter Bergin <peter.bergin@tritech.se> wrote:

> The root cause of this is an error during the build of Python3. From
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r1.0/temp/log.do_configure:
>
> DEBUG: Executing shell function do_configure
> autoreconf: 'configure.ac' or 'configure.in' is required
> NOTE: _ctypes failed to autoreconf
>
> The targeted machine for us is i.Mx6 built with the Freescale community
> BSP but I have also been able to reproduce the same thing with just
> building core-image-base for qemux86 only appending python3-ctypes.
>

That's odd.  My local builds of python3 appear to be working fine, there's
a python3-ctypes package with a _ctype.so inside, and configure works:

autoreconf: Entering directory `../Python-3.4.3/Modules/_ctypes/libffi'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --force -I m4
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in '.'.
libtoolize: copying file './ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
libtoolize: copying file 'm4/libtool.m4'
libtoolize: copying file 'm4/ltoptions.m4'
libtoolize: copying file 'm4/ltsugar.m4'
libtoolize: copying file 'm4/ltversion.m4'
libtoolize: copying file 'm4/lt~obsolete.m4'
autoreconf: running:
/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/autoconf --force
autoreconf: running:
/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/autoheader --force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:34: installing './compile'
configure.ac:22: installing './missing'
Makefile.am: installing './depcomp'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `../Python-3.4.3/Modules/_ctypes/libffi'

Can you share the full do_configure log?

Ross

--001a11354c8a3d46180518126168
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2015 at 09:27, Peter Bergin <span dir=3D"ltr">&lt;<a href=3D"mail=
to:peter.bergin@tritech.se" target=3D"_blank">peter.bergin@tritech.se</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex"><div id=3D":us" class=3D"" style=3D"ov=
erflow:hidden">The root cause of this is an error during the build of Pytho=
n3. From tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r1.0=
/temp/log.do_configure:<br>
<br>
DEBUG: Executing shell function do_configure<br>
autoreconf: &#39;<a href=3D"http://configure.ac" target=3D"_blank">configur=
e.ac</a>&#39; or &#39;<a href=3D"http://configure.in" target=3D"_blank">con=
figure.in</a>&#39; is required<br>
NOTE: _ctypes failed to autoreconf<br>
<br>
The targeted machine for us is i.Mx6 built with the Freescale community BSP=
 but I have also been able to reproduce the same thing with just building c=
ore-image-base for qemux86 only appending python3-ctypes.</div></blockquote=
></div><br>That&#39;s odd.=C2=A0 My local builds of python3 appear to be wo=
rking fine, there&#39;s a python3-ctypes package with a _ctype.so inside, a=
nd configure works:</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra"><div class=3D"gmail_extra">autoreconf: Entering directory `..=
/Python-3.4.3/Modules/_ctypes/libffi&#39;</div><div class=3D"gmail_extra">a=
utoreconf: <a href=3D"http://configure.ac">configure.ac</a>: not using Gett=
ext</div><div class=3D"gmail_extra">autoreconf: running: aclocal --force -I=
 m4</div><div class=3D"gmail_extra">autoreconf: <a href=3D"http://configure=
.ac">configure.ac</a>: tracing</div><div class=3D"gmail_extra">autoreconf: =
running: libtoolize --copy --force</div><div class=3D"gmail_extra">libtooli=
ze: putting auxiliary files in &#39;.&#39;.</div><div class=3D"gmail_extra"=
>libtoolize: copying file &#39;./ltmain.sh&#39;</div><div class=3D"gmail_ex=
tra">libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, &#39;m4&#39;.</div=
><div class=3D"gmail_extra">libtoolize: copying file &#39;m4/libtool.m4&#39=
;</div><div class=3D"gmail_extra">libtoolize: copying file &#39;m4/ltoption=
s.m4&#39;</div><div class=3D"gmail_extra">libtoolize: copying file &#39;m4/=
ltsugar.m4&#39;</div><div class=3D"gmail_extra">libtoolize: copying file &#=
39;m4/ltversion.m4&#39;</div><div class=3D"gmail_extra">libtoolize: copying=
 file &#39;m4/lt~obsolete.m4&#39;</div><div class=3D"gmail_extra">autorecon=
f: running: /data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/autoconf --=
force</div><div class=3D"gmail_extra">autoreconf: running: /data/poky-maste=
r/tmp/sysroots/x86_64-linux/usr/bin/autoheader --force</div><div class=3D"g=
mail_extra">autoreconf: running: automake --add-missing --copy --force-miss=
ing</div><div class=3D"gmail_extra"><a href=3D"http://configure.ac:34">conf=
igure.ac:34</a>: installing &#39;./compile&#39;</div><div class=3D"gmail_ex=
tra"><a href=3D"http://configure.ac:22">configure.ac:22</a>: installing &#3=
9;./missing&#39;</div><div class=3D"gmail_extra">Makefile.am: installing &#=
39;./depcomp&#39;</div><div class=3D"gmail_extra">autoreconf: running: gnu-=
configize</div><div class=3D"gmail_extra">autoreconf: Leaving directory `..=
/Python-3.4.3/Modules/_ctypes/libffi&#39;</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Can you share the full do_configure log=
?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div></div>

--001a11354c8a3d46180518126168--
