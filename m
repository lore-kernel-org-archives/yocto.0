Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8543AE00D7E; Wed, 27 Apr 2016 02:07:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC2S17.hotmail.com (dub004-omc2s17.hotmail.com
	[157.55.1.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E71E00D7C
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:07:11 -0700 (PDT)
Received: from DUB130-W35 ([157.55.1.136]) by DUB004-OMC2S17.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 27 Apr 2016 02:07:10 -0700
X-TMN: [vIBqygKk08QfDF+VNQyKBcPlQZlkFu6r]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W353EF079A973F4C0B275BFDA640@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 10:07:09 +0100
Importance: Normal
In-Reply-To: <CAJTo0LZGEfN68QJog53DSjsyQ7p-1FBa6MJot6nZCwt=C8ZG3w@mail.gmail.com>
References: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
	<DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>,
	<CAJTo0LZGEfN68QJog53DSjsyQ7p-1FBa6MJot6nZCwt=C8ZG3w@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Apr 2016 09:07:10.0144 (UTC)
	FILETIME=[2E1F6C00:01D1A064]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Wed, 27 Apr 2016 09:07:15 -0000
Content-Type: multipart/alternative;
	boundary="_e803b41e-27a4-40c6-b08b-b1970d888888_"

--_e803b41e-27a4-40c6-b08b-b1970d888888_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Ross=2C
I have added "EXTRA_OECONF +=3D "--enable-shared"=2C as asterisk needs shar=
ed libraries: these don't get the suffix and asterisk builds fine.
I am still getting a whole slew of host contamination warnings=2C eg "pjpro=
ject: /pjproject-staticdev/usr/lib/libpjsua-x86_64-poky-linux-gnu.a is owne=
d by uid 1000=2C which is the same as the user running bitbake. This may be=
 due to host contamination".  I can find some references to this happening =
in release tests but not how it was fixed.
Can you shine any light on the "-fdebug-prefix-map" related fatal QA errors=
?  (leaking host paths) I've found some discussion in openembedded that sug=
gests this should be fixed in the compiler but again I am curious why this =
(very simple) recipe has this issue but others don't.
The only 'odd' thing I've need to do is add "do_configure_prepend() { LD=3D=
$CXX }
If I get these recipes (asterisk/pjproject) to an acceptable level I could =
propose them (back) into openembedded?
pjproject hasn't been touched for 6 years and has some custom steps I don't=
 understand (https://github.com/openembedded/openembedded/tree/master/recip=
es/pjproject).
asterisk (https://github.com/openembedded/openembedded/tree/master/recipes/=
asterisk) is simarly out of date on openembedded=2C although there is also =
asterisk in meta-telephony (https://github.com/sysmocom/meta-telephony/tree=
/master/recipes-asterisk/asterisk) that is referenced.
'My' asterisk recipe is based on the one from meta-telephony so I should ge=
t in touch with the authors.
Regards=2CChris
From: ross.burton@intel.com
Date: Wed=2C 27 Apr 2016 08:41:14 +0100
Subject: Re: [yocto] Build Errors with new recipe for pjproject (autotools/=
pkgconfig)
To: christrobridge@hotmail.com
CC: yocto@yoctoproject.org


On 27 April 2016 at 07:27=2C Chris Trobridge <christrobridge@hotmail.com> w=
rote:
Aside from the issues I mentioned previously=2C pjproject is detecting cros=
s-compilation and this causes it to append '-x86_64-poky-linux-gnu' to all =
its library names.
This is then breaking autotools configuration in other recipes that are tes=
ting for the base name.
Is it common for a build process to differentiate cross compiled libraries =
like this?  Is there a preferred way to deal with it?
No=2C that's rather unusual.  Typically you'd just have a different libdir =
per architecture.
Ross 		 	   		  =

--_e803b41e-27a4-40c6-b08b-b1970d888888_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Thanks Ross=2C<div><br></div><di=
v>I have added "EXTRA_OECONF +=3D "--enable-shared"=2C as asterisk needs sh=
ared libraries: these don't get the suffix and asterisk builds fine.</div><=
div><br></div><div>I am still getting a whole slew of host contamination wa=
rnings=2C eg "pjproject: /pjproject-staticdev/usr/lib/libpjsua-x86_64-poky-=
linux-gnu.a is owned by uid 1000=2C which is the same as the user running b=
itbake. This may be due to host contamination". &nbsp=3BI can find some ref=
erences to this happening in release tests but not how it was fixed.</div><=
div><span style=3D"font-size: 12pt=3B"><br></span></div><div><span style=3D=
"font-size: 12pt=3B">Can you shine any light on the "</span>-fdebug-prefix-=
map" related fatal QA errors? &nbsp=3B(leaking host paths) I've found some =
discussion in openembedded that suggests this should be fixed in the compil=
er but again I am curious why this (very simple) recipe has this issue but =
others don't.</div><div><br></div><div>The only 'odd' thing I've need to do=
 is add "do_configure_prepend() {&nbsp=3B<span style=3D"font-size: 12pt=3B"=
>LD=3D$CXX&nbsp=3B</span><span style=3D"font-size: 12pt=3B">}</span></div><=
div><br></div><div>If I get these recipes (asterisk/pjproject) to an accept=
able level I could propose them (back) into openembedded?</div><div><br></d=
iv><div>pjproject hasn't been touched for 6 years and has some custom steps=
 I don't understand (<a href=3D"https://github.com/openembedded/openembedde=
d/tree/master/recipes/pjproject" target=3D"_blank" style=3D"font-size: 12pt=
=3B">https://github.com/openembedded/openembedded/tree/master/recipes/pjpro=
ject</a>).</div><div><br></div><div>asterisk (<a href=3D"https://github.com=
/openembedded/openembedded/tree/master/recipes/asterisk" target=3D"_blank" =
style=3D"font-size: 12pt=3B">https://github.com/openembedded/openembedded/t=
ree/master/recipes/asterisk</a>) is simarly out of date on openembedded=2C =
although there is also asterisk in meta-telephony (<a href=3D"https://githu=
b.com/sysmocom/meta-telephony/tree/master/recipes-asterisk/asterisk" target=
=3D"_blank" style=3D"font-size: 12pt=3B">https://github.com/sysmocom/meta-t=
elephony/tree/master/recipes-asterisk/asterisk</a>) that is referenced.</di=
v><div><br></div><div>'My' asterisk recipe is based on the one from meta-te=
lephony so I should get in touch with the authors.</div><div><br></div><div=
>Regards=2C</div><div>Chris</div><div></div><br><div><hr id=3D"stopSpelling=
">From: ross.burton@intel.com<br>Date: Wed=2C 27 Apr 2016 08:41:14 +0100<br=
>Subject: Re: [yocto] Build Errors with new recipe for pjproject (autotools=
/pkgconfig)<br>To: christrobridge@hotmail.com<br>CC: yocto@yoctoproject.org=
<br><br><div dir=3D"ltr"><div class=3D"ecxgmail_extra"><br><div class=3D"ec=
xgmail_quote">On 27 April 2016 at 07:27=2C Chris Trobridge <span dir=3D"ltr=
">&lt=3B<a href=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">chr=
istrobridge@hotmail.com</a>&gt=3B</span> wrote:<br><blockquote class=3D"ecx=
gmail_quote" style=3D"border-left:1px #ccc solid=3Bpadding-left:1ex=3B"><di=
v dir=3D"ltr">Aside from the issues I mentioned previously=2C pjproject is =
detecting cross-compilation and this causes it to append '-x86_64-poky-linu=
x-gnu' to all its library names.<div><br></div><div>This is then breaking a=
utotools configuration in other recipes that are testing for the base name.=
</div><div><br></div><div>Is it common for a build process to differentiate=
 cross compiled libraries like this?&nbsp=3B Is there a preferred way to de=
al with it?</div><div></div></div></blockquote></div><br>No=2C that's rathe=
r unusual.&nbsp=3B Typically you'd just have a different libdir per archite=
cture.</div><div class=3D"ecxgmail_extra"><br></div><div class=3D"ecxgmail_=
extra">Ross</div></div></div> 		 	   		  </div></body>
</html>=

--_e803b41e-27a4-40c6-b08b-b1970d888888_--
