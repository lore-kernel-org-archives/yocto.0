Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB02E00D61; Thu, 30 Nov 2017 02:48:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0094BE00D48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 02:48:04 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id x28so7822405ita.0
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 02:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y2QgI+BAoTeJXYKMWeJsiR7RbV9pGddMjtUMasy98qU=;
	b=U4qKG60nla9hldWk4kUrTf0ft75kSlKi09XAi1DUVS1WEDQqpp40rSo4TYPyScG6xI
	KkhHfyN7WLjsjwMqCeD6tcf6xuiGUUNCUgIWo8xVdWJCLuHh22JU6Agt/nUZaaaBN2tG
	vljMsZ4hIdVpN7UrLHwHdTPAB87noBhdrEfBkvgjabpMX2r/W6cArzwQEK6oOJnMfKHk
	C29v7dWVlfNFQS01Uw+PgRyedGYGSj9lLzQZgY0fEdJEDwh5fmfvM34RplnWGd6fWa37
	99YeYQJNoaVG62OvFcdD1mycgyIq99+GYOfSM1J7NiOtKGvOZNrlWixMtZKouYpKaSEo
	Xr6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y2QgI+BAoTeJXYKMWeJsiR7RbV9pGddMjtUMasy98qU=;
	b=XeiJwRPrq5ZgN9N2qjlM/nS7WHn64R0rm3fu/Gr2jnz1nij3nzOMJHYDecTvk7Nu9b
	8G8A6DY3ch1WcdmhHFwsq3c6K06BjuVkdMDcyv+2H7+lS7ZLgFBU3y/3gFJ3+WyKTLwZ
	huDZ/V+rmaPMonMPxeZhZs3Ozh66dnqoo3wgK/O6ivGfFOypKR3j6IgUMuUnK1s0TvrH
	b/XUSkDbPySKPUcbkKUo3F2W7OphYpeupJR6RXsrwcWujhLgJCsrXZObzmbUl/IGCpqk
	zntBKC5IKJWP+LIIQtkFst3xwjcAsFAXT3rmbOADBLmAKPRz3CrYzesMADDfnEcUhodw
	Jx8A==
X-Gm-Message-State: AJaThX4GPFOMV4ENehLo7s3gRkEVTzrC28m8u/OxnyHvsbZOgursG4sL
	oDX+N0q2J0pDkuao3i7tzaTPaH7X0u93GeDdIEIKDA==
X-Google-Smtp-Source: AGs4zMaALxZ9K1Ju4uU+sjbYnJrCVjWJBhcRHHbSDjtEMTTdp6Uk0oucWiOC5/iXmyHCwFiMxYGjMOaDPkavu65FXfM=
X-Received: by 10.36.17.15 with SMTP id 15mr2569340itf.53.1512038883936; Thu,
	30 Nov 2017 02:48:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.134 with HTTP; Thu, 30 Nov 2017 02:47:43 -0800 (PST)
In-Reply-To: <OF27D13CF6.90DFE3AC-ON882581E8.00000604-882581E8.0000D4D8@selinc.com>
References: <OF27D13CF6.90DFE3AC-ON882581E8.00000604-882581E8.0000D4D8@selinc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Nov 2017 10:47:43 +0000
Message-ID: <CAJTo0LbzU2xUfYOFE41_B63C6Fcizxs=NxZXw3KcFN0pgcp6YA@mail.gmail.com>
To: Aaron_Wright@selinc.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BKM for Importing Python Modules
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
X-List-Received-Date: Thu, 30 Nov 2017 10:48:06 -0000
Content-Type: multipart/alternative; boundary="001a11445d6890677f055f30fc26"

--001a11445d6890677f055f30fc26
Content-Type: text/plain; charset="UTF-8"

Python functions in classes are executed by the Python that is executing
bitbake, which doesn't have access to the modules in the native sysroot
(and won't, as any compiled modules in there are linked against the native
python, not the host python).

You can solve this by either mandating python-cryptography on the host, or
writing a standalone script that is executed using nativepython (which is
the python built by python-native).

Ross

On 30 November 2017 at 00:09, <Aaron_Wright@selinc.com> wrote:

> I have a python function that I've added to PACKAGEFUNCS in a bbclass, and
> I want to use python-cryptography in that function. However, sys.path
> doesn't seem setup to allow this import. I'm curious to know the best known
> method for using python modules that are outside of  <LAYER>/lib directory.
> Should I just append STAGING_LIBDIR_NATIVE to sys.path?
>
> python do_stuff() {
>     import cryptography # <-- this fails
>
>     # Other stuff...
> }
>
> python () {
>     if (not bb.data.inherits_class("native", d) and
>         not bb.data.inherits_class("cross", d)):
>
>         d.appendVar("PACKAGEFUNCS", " do_stuff")
>         d.appendVarFlag(
>             "do_package",
>             "depends",
>             " python-cryptography-native:do_populate_sysroot")
> }
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11445d6890677f055f30fc26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Python functions in classes are executed by the Python tha=
t is executing bitbake, which doesn&#39;t have access to the modules in the=
 native sysroot (and won&#39;t, as any compiled modules in there are linked=
 against the native python, not the host python).<div><br></div><div>You ca=
n solve this by either mandating python-cryptography on the host, or writin=
g a standalone script that is executed using nativepython (which is the pyt=
hon built by python-native).</div><div><br></div><div>Ross</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 30 November 2017 at=
 00:09,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Aaron_Wright@selinc.com" t=
arget=3D"_blank">Aaron_Wright@selinc.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I have a python =
function that I&#39;ve added
to PACKAGEFUNCS in a bbclass, and I want to use python-cryptography in
that function. However, sys.path doesn&#39;t seem setup to allow this impor=
t.
I&#39;m curious to know the best known method for using python modules that
are outside of =C2=A0&lt;LAYER&gt;/lib directory. Should I just append
STAGING_LIBDIR_NATIVE to sys.path?</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">python do_stuff() {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 import cryptography =
#
&lt;-- this fails</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 # Other stuff...</fo=
nt>
<br><font size=3D"2" face=3D"sans-serif">}</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">python () {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 if (not bb.data.inhe=
rits_class(&quot;<wbr>native&quot;,
d) and</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 not bb=
.data.inherits_class(&quot;cross&quot;<wbr>,
d)):</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.appe=
ndVar(&quot;PACKAGEFUNCS&quot;,
&quot; do_stuff&quot;)</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.appe=
ndVarFlag(</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
&quot;do_package&quot;, </font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
&quot;depends&quot;, </font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
&quot; python-cryptography-native:do_<wbr>populate_sysroot&quot;)</font>
<br><font size=3D"2" face=3D"sans-serif">}</font><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a11445d6890677f055f30fc26--
