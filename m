Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ECF5E00AC5; Mon, 23 Nov 2015 17:32:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45CBEE007C9
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 17:32:34 -0800 (PST)
Received: by qgcc31 with SMTP id c31so1548067qgc.3
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 17:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=VT578Lpx54BLMIFRHXLhPtBjXFSAgoy55sr4BRZUxXc=;
	b=GwJrWLIv/t/wnOWTKHmUcD3hT5vQdGgOIzeacW0D1mYDEe8XOWZRAG6+ZjAMSSRROl
	uOfNVo3kjSkFVvnJ0WtxPtHhUblsWVwjroCP1OmtPI+HssIBrp3qs0KiAzQwYmNLujco
	5B+QNHsgI2w2KXmfpdRTeTJAA33pUsiN23agoRU8Hd2V+L+L4pVEBNSrgLQSPKtsoxd6
	EWle+t/IhxyzEb86G9oeKV+QmVnIFApQ8TtsbjFGTMPCyUbU3p8KV2s1PrF8UYitQDAy
	Jcl6CaGFYzxEgMnlspfM8HpdO1RBru/wCqqK4JvECybACS/Q7i7Dg0vU+F4H4/1vE4c8
	V/vQ==
MIME-Version: 1.0
X-Received: by 10.140.251.212 with SMTP id w203mr18840721qhc.25.1448328754399; 
	Mon, 23 Nov 2015 17:32:34 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.55.173.206 with HTTP; Mon, 23 Nov 2015 17:32:34 -0800 (PST)
Date: Mon, 23 Nov 2015 23:32:34 -0200
X-Google-Sender-Auth: Vp7B6HCZpkKSbvzVLxQvMFzQ90Y
Message-ID: <CABKVDBCoiAWHkgJ=XbCP2PERy_ADB+s_ovCS68qqxVjNqkQRMA@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: qtwebengine: Raspberry PI2 branch jehtro error: cannot convert 'bool' to 'boolean'
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
X-List-Received-Date: Tue, 24 Nov 2015 01:32:38 -0000
Content-Type: multipart/alternative; boundary=001a113b4042ec939e05253f502e

--001a113b4042ec939e05253f502e
Content-Type: text/plain; charset=UTF-8

Error compiling Yocto Poky (jethro) with metal-qt5 (jethro).



|
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:
In static member function 'static bool gfx::JPEGCodec::Encode(const
unsigned char*, gfx::JPEGCodec::ColorFormat, int, int, int, int,
std::vector<unsigned char>*)':
|
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:264:38:
error: invalid conversion from 'int' to 'boolean' [-fpermissive]
|    jpeg_set_quality(&cinfo, quality, 1);  // quality here is 0-100
|                                       ^
|
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:276:32:
error: invalid conversion from 'int' to 'boolean' [-fpermissive]
|    jpeg_start_compress(&cinfo, 1);
|                                 ^
|
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:362:10:
error: cannot convert 'bool' to 'boolean' in return
|    return false;
|           ^
|
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:490:36:
error: cannot convert 'bool' to 'boolean' for argument '2' to 'int
jpeg_read_header(j_decompress_ptr, boolean)'
|    if (jpeg_read_header(&cinfo, true) != JPEG_HEADER_OK)
|                                     ^
| ninja: build stopped: subcommand failed.
| make[3]: *** [invoke_ninja] Error 1
| make[3]: Leaving directory
`/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/core'
| make[2]: *** [sub-gyp_run-pro-make_first] Error 2
| make[2]: Leaving directory
`/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/core'
| make[1]: *** [sub-core-make_first] Error 2
| make[1]: Leaving directory
`/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src'
| make: *** [sub-src-make_first] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at
/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/temp/log.do_compile.13331)
ERROR: Task 570
(/media/cleiton/DATA/yocto/poky-jethro/../meta-qt5/recipes-qt/qt5/
qtwebengine_git.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5619 tasks of which 5608 didn't need to be
rerun and 1 failed.
No currently running tasks (5619 of 5628)

Summary: 1 task failed:
  /media/cleiton/DATA/yocto/poky-jethro/../meta-qt5/recipes-qt/qt5/
qtwebengine_git.bb, do_compile



I will have to create patches to change from 1 to TRUE and true to TRUE?

Best regards,


-- 

*Att,Cleiton Bueno*

Blog <http://www.cleitonbueno.com> | Linkedin
<http://br.linkedin.com/in/cleitonbueno>

--001a113b4042ec939e05253f502e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Error compiling Yocto Poky (jethro) with metal-qt5 (j=
ethro).</div><div><br></div><div><br></div><div><br></div><div><div>| /medi=
a/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-li=
nux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/=
3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc: In static member function &#3=
9;static bool gfx::JPEGCodec::Encode(const unsigned char*, gfx::JPEGCodec::=
ColorFormat, int, int, int, int, std::vector&lt;unsigned char&gt;*)&#39;:</=
div><div>| /media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vf=
pv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe=
26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:264:38: error:=
 invalid conversion from &#39;int&#39; to &#39;boolean&#39; [-fpermissive]<=
/div><div>| =C2=A0 =C2=A0jpeg_set_quality(&amp;cinfo, quality, 1); =C2=A0//=
 quality here is 0-100</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^</div><div>| /media/cleiton/DATA/yocto/poky-jethro/tm=
p/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAU=
TOINC+qtwebengine_146ebe26dc-r0/git/src/3rdparty/chromium/ui/gfx/codec/jpeg=
_codec.cc:276:32: error: invalid conversion from &#39;int&#39; to &#39;bool=
ean&#39; [-fpermissive]<br></div><div>| =C2=A0 =C2=A0jpeg_start_compress(&a=
mp;cinfo, 1);</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>=
| /media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-=
poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/g=
it/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:362:10: error: cannot c=
onvert &#39;bool&#39; to &#39;boolean&#39; in return</div><div>| =C2=A0 =C2=
=A0return false;</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div=
>| /media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon=
-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/=
git/src/3rdparty/chromium/ui/gfx/codec/jpeg_codec.cc:490:36: error: cannot =
convert &#39;bool&#39; to &#39;boolean&#39; for argument &#39;2&#39; to &#3=
9;int jpeg_read_header(j_decompress_ptr, boolean)&#39;<br></div><div>| =C2=
=A0 =C2=A0if (jpeg_read_header(&amp;cinfo, true) !=3D JPEG_HEADER_OK)</div>=
<div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>| n=
inja: build stopped: subcommand failed.</div><div>| make[3]: *** [invoke_ni=
nja] Error 1</div><div>| make[3]: Leaving directory `/media/cleiton/DATA/yo=
cto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtweb=
engine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src/core&#39;</div><d=
iv>| make[2]: *** [sub-gyp_run-pro-make_first] Error 2</div><div>| make[2]:=
 Leaving directory `/media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7=
hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengi=
ne_146ebe26dc-r0/git/src/core&#39;</div><div>| make[1]: *** [sub-core-make_=
first] Error 2</div><div>| make[1]: Leaving directory `/media/cleiton/DATA/=
yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/qtw=
ebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/git/src&#39;</div><div>=
| make: *** [sub-src-make_first] Error 2</div><div>| ERROR: oe_runmake fail=
ed</div><div>| ERROR: Function failed: do_compile (log file is located at /=
media/cleiton/DATA/yocto/poky-jethro/tmp/work/cortexa7hf-vfp-vfpv4-neon-pok=
y-linux-gnueabi/qtwebengine/5.5.1+gitAUTOINC+qtwebengine_146ebe26dc-r0/temp=
/log.do_compile.13331)</div><div>ERROR: Task 570 (/media/cleiton/DATA/yocto=
/poky-jethro/../meta-qt5/recipes-qt/qt5/<a href=3D"http://qtwebengine_git.b=
b" target=3D"_blank">qtwebengine_git.bb</a>, do_compile) failed with exit c=
ode &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 5619 tasks of whic=
h 5608 didn&#39;t need to be rerun and 1 failed.</div><div>No currently run=
ning tasks (5619 of 5628)</div><div><br></div><div>Summary: 1 task failed:<=
/div><div>=C2=A0 /media/cleiton/DATA/yocto/poky-jethro/../meta-qt5/recipes-=
qt/qt5/<a href=3D"http://qtwebengine_git.bb" target=3D"_blank">qtwebengine_=
git.bb</a>, do_compile</div></div><div><br></div><div><br></div><div><br></=
div><div>I will have to create patches to change from 1 to TRUE and true to=
 TRUE?</div><div><br></div><div>Best regards,</div><div><br></div><div><br>=
</div>-- <br><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><i><b>Att,<br=
>Cleiton Bueno</b></i><br><br><font color=3D"#000000"><a href=3D"http://www=
.cleitonbueno.com" target=3D"_blank">Blog</a> | <a href=3D"http://br.linked=
in.com/in/cleitonbueno" target=3D"_blank">Linkedin</a>=C2=A0<br></font></di=
v></div></div></div></div></div></div></div>
</div>

--001a113b4042ec939e05253f502e--
