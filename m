Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5410BE00E31; Tue,  6 Mar 2018 10:50:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48EA6E00843
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 10:50:57 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id 30so110767iog.2
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 10:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uLYHERz3mZFHmRgV/H7n++a0SVkjLzqN5Ojz1TYo9qk=;
	b=k16F0Fk57lcyPxUoKYsDszkKmQAQbTwmH7Hixxh09bWoDxB5xgn6xWayxZBS+GdWcl
	OBsotStGjv6B44TBjiHJIzPpsW73I9GNeqat1baEJevwCIALqnNZvm5I2NCiskh7yBAM
	9QkSR92J9EBMYUZs46QkbzCSgJLFhxxoLaKtMH9/MBqVbc9VnwiEPBVXcqbfVZlNszzY
	nmTG5fkqv9EYOa2XyDuoIrNoEpZjDnKSbfz06u/9G9tpohYGcmLCzAYdsLVi/UGqbdq/
	wHIyz1p4aAmImMoQnoRMtTRmtA/qYPbVQUF+jYaz91hr1wNuzEvIFrzdylQ8SJmUV1j0
	M1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uLYHERz3mZFHmRgV/H7n++a0SVkjLzqN5Ojz1TYo9qk=;
	b=WnbNg/2NxoOccMWqdZBpagpl+w173815q3jVgV4miHfvYYuqfxWNhquVWZUaUXBsHB
	iCacR70KLhZlQcjRjBPTU13FM403hKGjuPnily2/0JU01Gvq89UKyORSXGXdu2V7P8ud
	+xeukvgypM0uKxr3gw2RXQuQxw6VuNBEiq8oyPelH3Tf+sikcH7CPmk6hpAerjFHFtNi
	WmSQdTC9fum04C5PUDtAHtC1mFvCCtNAk9/LsOnIoYdYyRa2eRjHZB1woLN597yEhZ3O
	Qx/4sni4BStnH5y6uhNNr/YpB+XTIYgz6+N37tJ/vmzJamBlzmkT7RvqiDElTyBfPyIP
	kAeg==
X-Gm-Message-State: APf1xPBFFVPYRrhEug0xL30MZ7YRX4P8GQu1fhLfhUAgKDu8ICyGYWFP
	Q+yAkxdId4dEXfwTzgSt0QwYbCehay6Fj6huVSE=
X-Google-Smtp-Source: AG47ELsJRwAgTaHRJu/DzPhV9G4f0YrwL9tEYrTgEm+xLKEW+2cwrrJlVl525fTP8rHtt8ow2nm32s+BEMpJ43UIBjE=
X-Received: by 10.107.213.5 with SMTP id m5mr23433643iog.62.1520362257488;
	Tue, 06 Mar 2018 10:50:57 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
In-Reply-To: <CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 18:50:45 +0000
Message-ID: <CAFzUWGmv_SeW_=nmVV-yJNgFty-xiE+saga9-uWVex8PLz48cw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 18:50:59 -0000
Content-Type: multipart/alternative; boundary="f4f5e80e2040499fd60566c2ec5f"

--f4f5e80e2040499fd60566c2ec5f
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried this and it didn't work.

Giordon
On Tue, Mar 6, 2018 at 12:43 Burton, Ross <ross.burton@intel.com> wrote:

> Add DEPENDS=python-six
>
> Ross
>
> On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:
>
>> Hi all,
>>
>> I'm struggling with what should be a simple-ish recipe (I think). I'm
>> writing a recipe implementation for
>> https://github.com/open62541/open62541 (open62541). So I start with
>>
>> devtool add open62541 https://github.com/open62541/open62541.git
>>
>> then I edit this, so it currently looks like this for me:
>>
>> SUMMARY = "OPC UA implementation"
>> LICENSE = "MPL-2.0"
>> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
>> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
>> PV = "0.3+git${SRCPV}"
>> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
>>
>> S = "${WORKDIR}/git"
>>
>> # NOTE: unable to map the following CMake package dependencies: Check
>> Sphinx ClangTools LATEX MbedTLS Valgrind
>> DEPENDS = "openssl"
>>
>> inherit cmake pythonnative
>>
>> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
>> EXTRA_OECMAKE = ""
>>
>> however, when I run devtool build open62541, I get  errors about "No
>> module named six":
>>
>> | make[2]: Leaving directory
>> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>> | Traceback (most recent call last):
>> |   File
>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset_compiler.py",
>> line 27, in <module>
>> |     from nodeset import *
>> |   File
>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodeset.py",
>> line 30, in <module>
>> |     from nodes import *
>> |   File
>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/nodes.py",
>> line 21, in <module>
>> |     from datatypes import *
>> |   File
>> "/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset_compiler/datatypes.py",
>> line 29, in <module>
>> |     import six
>> | ImportError: No module named six
>> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
>> target 'src_generated/ua_namespace0.c' failed
>> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
>> | make[2]: Leaving directory
>> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>> | CMakeFiles/Makefile2:108: recipe for target
>> 'CMakeFiles/open62541-generator-namespace.dir/all' failed
>> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error 2
>> | make[1]: *** Waiting for unfinished jobs....
>>
>> How do I get "python-six" added as part of pythonnative?
>>
>> Giordon
>>
>> --
>> Giordon Stark
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
Giordon Stark

--f4f5e80e2040499fd60566c2ec5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I tried this and it didn&#39;t work. <br><br>Giordon<br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 12:43 Burton, Ro=
ss &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Add DEPE=
NDS=3Dpython-six<div><br></div><div>Ross</div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote"></div></div><div class=3D"gmail_extra"><=
div class=3D"gmail_quote">On 6 March 2018 at 18:11, Giordon Stark <span dir=
=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@g=
mail.com</a>&gt;</span> wrote:<br></div></div><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi=
 all,<div><br></div><div>I&#39;m struggling with what should be a simple-is=
h recipe (I think). I&#39;m writing a recipe implementation for=C2=A0<a hre=
f=3D"https://github.com/open62541/open62541" target=3D"_blank">https://gith=
ub.com/open62541/open62541</a>=C2=A0(open62541). So I start with</div><div>=
<br></div><div><font face=3D"monospace">devtool add open62541 <a href=3D"ht=
tps://github.com/open62541/open62541.git" target=3D"_blank">https://github.=
com/open62541/open62541.git</a><br></font></div><div><br></div><div>then I =
edit this, so it currently looks like this for me:</div><div><br></div><div=
><div><font face=3D"monospace">SUMMARY =3D &quot;OPC UA implementation&quot=
;</font></div><div><font face=3D"monospace">LICENSE =3D &quot;MPL-2.0&quot;=
</font></div><div><font face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;file:=
//LICENSE;md5=3D815ca599c9df247a0c7f619bab123dad&quot;</font></div><div><fo=
nt face=3D"monospace">SRC_URI =3D &quot;gitsm://<a href=3D"http://github.co=
m/open62541/open62541.git;protocol=3Dhttps" target=3D"_blank">github.com/op=
en62541/open62541.git;protocol=3Dhttps</a>&quot;</font></div><div><font fac=
e=3D"monospace">PV =3D &quot;0.3+git${SRCPV}&quot;</font></div><div><font f=
ace=3D"monospace">SRCREV =3D &quot;a6b99dc0579a53207b7dfe1d16423c2c1daa467e=
&quot;</font></div><div><font face=3D"monospace"><br></font></div><div><fon=
t face=3D"monospace">S =3D &quot;${WORKDIR}/git&quot;</font></div><div><fon=
t face=3D"monospace"><br></font></div><div><font face=3D"monospace"># NOTE:=
 unable to map the following CMake package dependencies: Check Sphinx Clang=
Tools LATEX MbedTLS Valgrind</font></div><div><font face=3D"monospace">DEPE=
NDS =3D &quot;openssl&quot;</font></div><div><font face=3D"monospace"><br><=
/font></div><div><font face=3D"monospace">inherit cmake pythonnative</font>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mon=
ospace"># Specify any options you want to pass to cmake using EXTRA_OECMAKE=
:</font></div><div><font face=3D"monospace">EXTRA_OECMAKE =3D &quot;&quot;<=
/font></div></div><div><font face=3D"monospace"><br></font></div><div>howev=
er, when I run <font face=3D"monospace">devtool build open62541</font>, I g=
et=C2=A0 errors about &quot;No module named six&quot;:</div><div><br></div>=
<div><div><font face=3D"monospace">| make[2]: Leaving directory &#39;/local=
/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/o=
pen62541-0.3+git999&#39;</font></div><div><font face=3D"monospace">| Traceb=
ack (most recent call last):</font></div><div><font face=3D"monospace">|=C2=
=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sources/open6254=
1/tools/nodeset_compiler/nodeset_compiler.py&quot;, line 27, in &lt;module&=
gt;</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0from nod=
eset import *</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0File =
&quot;/local/d4/gstark/poky/build/workspace/sources/open62541/tools/nodeset=
_compiler/nodeset.py&quot;, line 30, in &lt;module&gt;</font></div><div><fo=
nt face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0from nodes import *</font></div>=
<div><font face=3D"monospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/pok=
y/build/workspace/sources/open62541/tools/nodeset_compiler/nodes.py&quot;, =
line 21, in &lt;module&gt;</font></div><div><font face=3D"monospace">|=C2=
=A0 =C2=A0 =C2=A0from datatypes import *</font></div><div><font face=3D"mon=
ospace">|=C2=A0 =C2=A0File &quot;/local/d4/gstark/poky/build/workspace/sour=
ces/open62541/tools/nodeset_compiler/datatypes.py&quot;, line 29, in &lt;mo=
dule&gt;</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0imp=
ort six</font></div><div><font face=3D"monospace">| ImportError: No module =
named six</font></div><div><font face=3D"monospace">| CMakeFiles/open62541-=
generator-namespace.dir/build.make:71: recipe for target &#39;src_generated=
/ua_namespace0.c&#39; failed</font></div><div><font face=3D"monospace">| ma=
ke[2]: *** [src_generated/ua_namespace0.c] Error 1</font></div><div><font f=
ace=3D"monospace">| make[2]: Leaving directory &#39;/local/d4/gstark/poky/b=
uild/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git9=
99&#39;</font></div><div><font face=3D"monospace">| CMakeFiles/Makefile2:10=
8: recipe for target &#39;CMakeFiles/open62541-generator-namespace.dir/all&=
#39; failed</font></div><div><font face=3D"monospace">| make[1]: *** [CMake=
Files/open62541-generator-namespace.dir/all] Error 2</font></div><div><font=
 face=3D"monospace">| make[1]: *** Waiting for unfinished jobs....</font></=
div></div><div><br></div><div>How do I get &quot;python-six&quot; added as =
part of pythonnative?</div><span class=3D"m_-6791734627418191580HOEnZb"><fo=
nt color=3D"#888888"><div><br></div><div>Giordon</div><div><br></div></font=
></span></div><span class=3D"m_-6791734627418191580HOEnZb"><font color=3D"#=
888888">-- <br><div dir=3D"ltr" class=3D"m_-6791734627418191580m_1127724042=
352983272gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r">Giordon Stark</div></div>
</font></span><br></blockquote></div></div><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div></div></blockquote></div>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
Giordon Stark</div></div>

--f4f5e80e2040499fd60566c2ec5f--
