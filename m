Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97762E013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 23:15:00 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id fr10so7469195lab.4
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 23:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TJtIZB2oajSvNDeN/4aeCAwTTzrqrOLhIg4s+rv09Ro=;
	b=aMYOTGIMI5CYAZmIrb164nJeqeRWG9goZdxQ5BCQ9D3g+L1vZBpQADdcVgDhVlmtCq
	f/RRCQueYXt5XbZihhpnMQDTyfsW4iwXLv8jMUGjVRChXswsorG4+OTv3+E+jMBRB4NV
	zLF1jOdwIB8SGd38Im1BID8uoHp/1Y9Ji4xSHsQDFXnuFFl1GDgvQjg+8jeJ4PlDtmIi
	xP8d13Bx6UVpe0gzWCwX5qorE9CDMy8g6j7UaApZ902DxgAzGSSonbviILJ6awdfrzIw
	tuAOGSDVP2lz+WfAt1AOqN1i/lxoPnqDkv60Dt+8aJwJUHGZ7nweFhu7pJeeZrkwZGSR
	1ZsA==
MIME-Version: 1.0
X-Received: by 10.112.55.104 with SMTP id r8mr18362171lbp.49.1373609698625;
	Thu, 11 Jul 2013 23:14:58 -0700 (PDT)
Received: by 10.114.174.144 with HTTP; Thu, 11 Jul 2013 23:14:58 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E364015@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364015@BLRINMSMBX01.bglrodc.lntinfotech.com>
Date: Fri, 12 Jul 2013 11:44:58 +0530
Message-ID: <CAE_REAvr-rY_rS-mPx7dvr1kD9stQ6W3or8Zb0-KsR87j7Xz2Q@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error to Build Arago Yocto Project
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
X-List-Received-Date: Fri, 12 Jul 2013 06:15:08 -0000
Content-Type: multipart/alternative; boundary=001a11c3ed3425948604e14a6e5c

--001a11c3ed3425948604e14a6e5c
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I think what you miss is the top layer (yocto or openembedded) ...because
your BSP will build using the top layer from yocto or OE. So check that the
core layer is available or downloaded by you...

As your error message suggests, "OSError: [Errno 2] No such file or
directory: '/home/amit/tisdk/sources/oe-

core/meta/recipes-qt/qt4/qt4-4.8.4.inc'", so this file will come from the
top layer of Yocto or OE.

//Gaurang Shastri




On Fri, Jul 12, 2013 at 10:46 AM, Amit Kumar <Amit.Kumar@lntinfotech.com>wr=
ote:

>  Hi,****
>
>             I am building the Arago Yocto Project first time. I have
> follow the steps given in the Arago Project link =96****
>
>
> http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment#Deta=
iled_Setup
> ****
>
> ** **
>
> Error Log is =96 ****
>
> ** **
>
> amit@amit-HP:~/tisdk/build$ MACHINE=3Dam335x-evm bitbake core-image-minim=
al
> Pseudo is not present but is required, building this first before the mai=
n
> build
> ERROR: Unable to parse
> /home/amit/tisdk/sources/meta-arago/meta-arago-extras/recipes-qt/qt4/
> qt4-embedded-gles_4.8.4.bb                       | ETA:  --:--:--
> Traceback (most recent call last):
>   File
> "/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/ConfHandler.py",
> line 68, in
> include(oldfn=3D'/home/amit/tisdk/sources/meta-arago/meta-arago-extras/re=
cipes-qt/qt4/
> qt4-embedded-gles_4.8.4.bb',
> fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc'=
,
> lineno=3D1, data=3D<bb.data_smart.DataSmart object at 0xa14f12c>,
> error_out=3D'include required'):
>          try:
>     >        ret =3D handle(fn, data, True)
>          except IOError:
>   File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line
> 90, in
> handle(fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8=
.4.inc',
> data=3D<bb.data_smart.DataSmart object at 0xa14f12c>, include=3DTrue):
>              if h['supports'](fn, data):
>     >            return h['handle'](fn, data, include)
>          raise ParseError("not a BitBake file", fn)
>   File
> "/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/BBHandler.py", li=
ne
> 142, in
> handle(fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8=
.4.inc',
> d=3D<bb.data_smart.DataSmart object at 0xa14f12c>, include=3DTrue):
>          if include:
>     >        bb.parse.mark_dependency(d, abs_fn)
>
>   File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line
> 76, in mark_dependency(d=3D<bb.data_smart.DataSmart object at 0xa14f12c>,
> f=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc')=
:
>              f =3D "%s/%s" % (os.getcwd(), f[2:])
>     >    deps =3D (d.getVar('__depends') or []) + [(f, cached_mtime(f))]
>          d.setVar('__depends', deps)
>   File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line
> 58, in
> cached_mtime(f=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt=
4-4.8.4.inc'):
>          if f not in __mtime_cache:
>     >        __mtime_cache[f] =3D os.stat(f)[stat.ST_MTIME]
>          return __mtime_cache[f]
> OSError: [Errno 2] No such file or directory:
> '/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc'
>
> ERROR: Command execution failed: Exited with 1
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> amit@amit-HP:~/tisdk/build$ cd ../sources/oe-core/meta/recipes-qt/****
>
> ** **
>
> ** **
>
> Is anybody have faced the same error or anybody know the reason of this
> error? ****
>
> Please help me out for the same.****
>
> ** **
>
> ** **
>
> Thanks ****
>
> AmitK ****
>
> ** **
>
> ------------------------------
> The contents of this e-mail and any attachment(s) may contain confidentia=
l
> or privileged information for the intended recipient(s). Unintended
> recipients are prohibited from taking action on the basis of information =
in
> this e-mail and using or disseminating the information, and must notify t=
he
> sender and delete it from their system. L&T Infotech will not accept
> responsibility or liability for the accuracy or completeness of, or the
> presence of any virus or disabling code in this e-mail"
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c3ed3425948604e14a6e5c
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think what you miss is the top layer (yocto or open=
embedded) ...because your BSP will build using the top layer from yocto or =
OE. So check that the core layer is available or downloaded by you...<br><b=
r>
</div>As your error message suggests, &quot;OSError: [Errno 2] No such file=
 or directory: &#39;/home/amit/tisdk/sources/oe-<p class=3D"">core/meta/rec=
ipes-qt/qt4/qt4-4.8.4.inc&#39;&quot;, so this file will come from the top l=
ayer of Yocto or OE.</p>
<p class=3D"">//Gaurang Shastri<br></p><p class=3D""><br></p></div><div cla=
ss=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Jul 12, 2013 =
at 10:46 AM, Amit Kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:Amit.Kumar@=
lntinfotech.com" target=3D"_blank">Amit.Kumar@lntinfotech.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
I am building the Arago Yocto Project first time. I have follow the steps g=
iven in the Arago Project link =96<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><a href=3D"http://arago-project.or=
g/wiki/index.php/Setting_Up_Build_Environment#Detailed_Setup" target=3D"_bl=
ank">http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment#D=
etailed_Setup</a>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Error Log is =96
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal">amit@amit-HP:~/tisdk/build$ MACHINE=3Dam335x-evm bit=
bake core-image-minimal<br>
Pseudo is not present but is required, building this first before the main =
build<br>
ERROR: Unable to parse /home/amit/tisdk/sources/meta-arago/meta-arago-extra=
s/recipes-qt/qt4/<a href=3D"http://qt4-embedded-gles_4.8.4.bb" target=3D"_b=
lank">qt4-embedded-gles_4.8.4.bb</a>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 | ETA:=A0 --:--:--<br>

Traceback (most recent call last):<br>
=A0 File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/ConfH=
andler.py&quot;, line 68, in include(oldfn=3D&#39;/home/amit/tisdk/sources/=
meta-arago/meta-arago-extras/recipes-qt/qt4/<a href=3D"http://qt4-embedded-=
gles_4.8.4.bb" target=3D"_blank">qt4-embedded-gles_4.8.4.bb</a>&#39;, fn=3D=
&#39;/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc&#39=
;,
 lineno=3D1, data=3D&lt;bb.data_smart.DataSmart object at 0xa14f12c&gt;, er=
ror_out=3D&#39;include required&#39;):<br>
=A0=A0=A0=A0=A0=A0=A0=A0 try:<br>
=A0=A0=A0 &gt;=A0=A0=A0=A0=A0=A0=A0 ret =3D handle(fn, data, True)<br>
=A0=A0=A0=A0=A0=A0=A0=A0 except IOError:<br>
=A0 File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py&qu=
ot;, line 90, in handle(fn=3D&#39;/home/amit/tisdk/sources/oe-core/meta/rec=
ipes-qt/qt4/qt4-4.8.4.inc&#39;, data=3D&lt;bb.data_smart.DataSmart object a=
t 0xa14f12c&gt;, include=3DTrue):<br>

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if h[&#39;supports&#39;](fn, data):<br=
>
=A0=A0=A0 &gt;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return h[&#39;handle&#39;](=
fn, data, include)<br>
=A0=A0=A0=A0=A0=A0=A0=A0 raise ParseError(&quot;not a BitBake file&quot;, f=
n)<br>
=A0 File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/BBHan=
dler.py&quot;, line 142, in handle(fn=3D&#39;/home/amit/tisdk/sources/oe-co=
re/meta/recipes-qt/qt4/qt4-4.8.4.inc&#39;, d=3D&lt;bb.data_smart.DataSmart =
object at 0xa14f12c&gt;, include=3DTrue):<br>

=A0=A0=A0=A0=A0=A0=A0=A0 if include:<br>
=A0=A0=A0 &gt;=A0=A0=A0=A0=A0=A0=A0 bb.parse.mark_dependency(d, abs_fn)<br>
=A0=A0=A0=A0 <br>
=A0 File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py&qu=
ot;, line 76, in mark_dependency(d=3D&lt;bb.data_smart.DataSmart object at =
0xa14f12c&gt;, f=3D&#39;/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt=
4/qt4-4.8.4.inc&#39;):<br>

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 f =3D &quot;%s/%s&quot; % (os.getcwd()=
, f[2:])<br>
=A0=A0=A0 &gt;=A0=A0=A0 deps =3D (d.getVar(&#39;__depends&#39;) or []) + [(=
f, cached_mtime(f))]<br>
=A0=A0=A0=A0=A0=A0=A0=A0 d.setVar(&#39;__depends&#39;, deps)<br>
=A0 File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py&qu=
ot;, line 58, in cached_mtime(f=3D&#39;/home/amit/tisdk/sources/oe-core/met=
a/recipes-qt/qt4/qt4-4.8.4.inc&#39;):<br>
=A0=A0=A0=A0=A0=A0=A0=A0 if f not in __mtime_cache:<br>
=A0=A0=A0 &gt;=A0=A0=A0=A0=A0=A0=A0 __mtime_cache[f] =3D os.stat(f)[stat.ST=
_MTIME]<br>
=A0=A0=A0=A0=A0=A0=A0=A0 return __mtime_cache[f]<br>
OSError: [Errno 2] No such file or directory: &#39;/home/amit/tisdk/sources=
/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc&#39;<br>
<br>
ERROR: Command execution failed: Exited with 1<br>
<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
amit@amit-HP:~/tisdk/build$ cd ../sources/oe-core/meta/recipes-qt/<u></u><u=
></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Is anybody have faced the same error or anybody know=
 the reason of this error?
<u></u><u></u></p>
<p class=3D"MsoNormal">Please help me out for the same.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Thanks <u></u><u></u></p>
<p class=3D"MsoNormal">AmitK <u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><u></u>=A0<u></u></span></p>
</div>
<br>
<hr>
<font color=3D"Black" face=3D"Arial" size=3D"3">The contents of this e-mail=
 and any attachment(s) may contain confidential or privileged information f=
or the intended recipient(s). Unintended recipients are prohibited from tak=
ing action on the basis of information
 in this e-mail and using or disseminating the information, and must notify=
 the sender and delete it from their system. L&amp;T Infotech will not acce=
pt responsibility or liability for the accuracy or completeness of, or the =
presence of any virus or disabling code
 in this e-mail&quot;<br>
</font>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c3ed3425948604e14a6e5c--
