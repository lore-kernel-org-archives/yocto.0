Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52D14E00BC1; Tue,  6 Jun 2017 07:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6597BE00A94
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 07:16:05 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id n195so101742279wmg.1
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 07:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QCIQfTSUPs1WRYFGkfWeh7KdZb7XfyED09x1v9QeTnM=;
	b=h4fsRInyz7SoBtRnnxAI3z3DZzSEVSjcLCiysbry9iWkyQc+pspzH3vuEnsaH2DSd7
	ldv+2ruR2V/VSZP7GPKXdrwCuoMW18UeMjRoqVJ2P8p0Q3YA37q0WM8r2H4oEmWvuv+x
	SJCDLzKOrGXOfdjcyAFf8PgaKBR4fyAGy2AId2cKweONeurEyWWGXowZf3XFv2iOAESk
	xsNTmVX3TtuFslLmLqByse20ZpxCrnyAsJ8XI9i97MjXB2Z+IjifxJ4VXwsE3MtB+ZNl
	d3H74EeP5/wDtFE9S8qScZpjdS8fg0iYv4cBgMXcEKjbQbxb3r6oA+DyITtrW8nscWe8
	BxmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QCIQfTSUPs1WRYFGkfWeh7KdZb7XfyED09x1v9QeTnM=;
	b=iwCumHweCAMT0vPCQoQxx9jaQBIotasWPoTGyj7uf+2aJ4cEITuknoGaRdFTLFkqnD
	u2kN6OepwmWVmsOa0Rk36nDyWcSe55Z1/jSxCRTxWf6eI03L+FKTQBwawcQyN45Fgge5
	0m5JHbZoUI7jskgsBHIS2LuJZBj99ZPaZ2NhZBObdbP9J0evYKVxGBQL9+tPSxn57lDr
	vZ5awh6YM+7fpcAbrbTNpq5Zg2VLYITbdFV+09bUuPp5w/7DHkCXR11u+Qanl5CN//bL
	E1lNDw3CO3DZHnf+upxFk9rVfY6GVkL1UhgqZ59MkGdZQ1T3+yvRTz/xjvaJmVnjfBOT
	7HKw==
X-Gm-Message-State: AODbwcBtLBp5M+wooRF7BXmtMn9rk5f9DR59I65cSScMu8Yor6PoShyL
	hHImOD2j68IyJAv+49JFxyMJs1fOMQ==
X-Received: by 10.80.151.37 with SMTP id c34mr11555373edb.30.1496758565132;
	Tue, 06 Jun 2017 07:16:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Tue, 6 Jun 2017 07:15:34 -0700 (PDT)
In-Reply-To: <AM4PR0301MB2129EF29B593C97E075ADFF9DACA0@AM4PR0301MB2129.eurprd03.prod.outlook.com>
References: <VI1PR03MB15676A1DE3EB2E80783D2D79DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>
	<CAMKF1srExY59jqjN5LNxsiHsH7P+wuuGKSVp8D+hQoMqmupJbw@mail.gmail.com>
	<AM4PR0301MB2129EF29B593C97E075ADFF9DACA0@AM4PR0301MB2129.eurprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Jun 2017 07:15:34 -0700
Message-ID: <CAMKF1srrT9B+tyDynH_kaABvFrK+aAbNC0mAwF7674F+797pbA@mail.gmail.com>
To: Kosta Zertsekel <kzertsekel@mrv.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Ran Wainstein <rwainstein@mrv.com>
Subject: Re: Yocto for NFS/SDN networking product
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
X-List-Received-Date: Tue, 06 Jun 2017 14:16:09 -0000
Content-Type: multipart/alternative; boundary="f403045c556496ddde05514b422f"

--f403045c556496ddde05514b422f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Generally individual components wrote there own component build
systems using gmake, cmake, autotools etc. then they let the distros bundle
it using their meta builders like rpm, dpkg etc.

Yocto however is providing a mechanism to roll your own distro
so many large projects now a days deploy it as the default build
infrastructure for the project and build a "just enough OS" for
their projects to work. I havent looked in detail into OpenSwitch
but I believe its a single component and then it has external dependencies
it relies on.

With yocto projects layer structure it also lets you choose only
relevant layers into the project build system which might be relevant in
openswitch case.

Therefore, if you are building a full platform build around openswitch, you
have to use some platform build system and it
could well be yocto. if you are just build a single component
from openswitch and dont care where it gets packaged and distributed, then
you could just get it going on your linux machine
you have and build/debug/test natively.

On Mon, Jun 5, 2017 at 6:06 AM, Kosta Zertsekel <kzertsekel@mrv.com> wrote:

> Khem,
>
>
> Fully agree that Yocto has is good, 'cause it supports cross-build, has a
> wide
>
> industry support and actually it has **the version** (meaning, all the
> packages
>
> are taken with specific git commit id unlike debian/ubuntu binaries).
>
>
> But then, I'm confused in the other respect...
>
>
> I'm looking at the OpenSwitch build system (part of Open Compute project
>
> under Linux Foundation) and I see that is uses yocto as a subsystem. It's
> really
>
> confusing because yocto is supposed to have "meta-XYZ" for OpenSwitch
>
> support.
>
>
> So, when choosing a build system for OpenSwitch-based products - do one
>
> still has to use yocto or just go with the build system provided
> by OpenSwitch?
>
>
> Thanks,
>
> --- KostaZ
>
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Sunday, January 31, 2016 5:56 PM
> *To:* Kosta Zertsekel
> *Cc:* yocto@yoctoproject.org; Ran Wainstein
> *Subject:* Re: [yocto] Yocto for NFS/SDN networking product
>
> Kosta
>
> Yocto project is developed by many volunteers and people sponsored by
> corporations,
> all development happens in opensource. The community supports the project=
.
> There
> are also lot of commercial OS vendors which use Yocto project to build
> their products,
> so you can always go to them if you are looking for commercial support.
>
> For advantages, it can build a small footprint since it builds bottom up.
> So you can really get only needed
> packages for your custom image. It will create a source based distributio=
n
> for you where you have control
> over every part of the OSS stack. You can really tailor your solution to
> your needs.
>
> It builds in cross-build environment, supports many CPU architectures and
> machines
>
> The community is very welcoming and helpful. You can easily contribute to
> the project
> and fulfill your needs by doing so. The learning curve might be a bit
> steeper. But then
> you do have trainings available offerred by professionals.
>
> Thanks
> -Khem
> On Sun, Jan 31, 2016 at 4:22 AM, Kosta Zertsekel <kzertsekel@mrv.com>
> wrote:
>
>> Hi dear Yocto community,
>>
>>
>> I'm trying to evaluate Yocto as the candidate to create Linux distro
>>
>> for NFS/SDN networking product. Through Google I get an impression
>>
>> that there is a race between Yocto, CentOS (RedHat) and 6WIND
>>
>> Linux distributions to get most of NFV/SDN Linux distro market.
>>
>>
>> Can you please help to find cons and pros of using Yocto for
>>
>> NFV/SDN networking product?
>>
>>
>> I google over NFV/SDN part of www.etsi.org but couldn't make up
>>
>> my mind what specific distro got the traction.
>>
>>
>> I see that Yocto has NFV/SDN layers (reference
>> <http://events.linuxfoundation.org/sites/events/files/slides/YP_and_Open=
Stack_LinuxCon2014.pdf>
>> ):
>>
>> ```
>> git clone git://git.yoctoproject.org/meta-cloud-services
>> git clone git://git.openembedded.org/meta-openembedded
>> git clone --branch icehouse git://git.yoctoproject.org/
>> meta-virtualization
>> git clone git://git.openembedded.org/openembedded-core oe-core
>> ```
>>
>> Are these layers officially supported by Intel?
>>
>> Does Intel provide the NFV/SDN support?
>>
>>
>> Thanks,
>>
>> --- KostaZ
>> [image: E-Banner] <http://www.mrv.com/blog>
>>
>>
>> MRV Communications is a global supplier of packet and optical solutions
>> that power the world=E2=80=99s largest networks. Our products combine in=
novative
>> hardware with intelligent software to make networks smarter, faster and
>> more efficient.
>>
>>
>> The contents of this message, together with any attachments, are intende=
d
>> only for the use of the person(s) to whom they are addressed and may
>> contain confidential and/or privileged information. If you are not the
>> intended recipient, immediately advise the sender, delete this message a=
nd
>> any attachments and note that any distribution, or copying of this messa=
ge,
>> or any attachment, is prohibited.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> <https://goo.gl/0NNSWr>
>
>
> MRV Communications is a global supplier of packet and optical solutions
> that power the world=E2=80=99s largest networks. Our products combine inn=
ovative
> hardware with intelligent software to make networks smarter, faster and
> more efficient.
>
>
> The contents of this message, together with any attachments, are intended
> only for the use of the person(s) to whom they are addressed and may
> contain confidential and/or privileged information. If you are not the
> intended recipient, immediately advise the sender, delete this message an=
d
> any attachments and note that any distribution, or copying of this messag=
e,
> or any attachment, is prohibited.
>

--f403045c556496ddde05514b422f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Generally individual components wrote there own component buil=
d</div><div class=3D"gmail_default" style=3D"font-family:monospace,monospac=
e">systems using gmake, cmake, autotools etc. then they let the distros bun=
dle it using their meta builders like rpm, dpkg etc.</div><div class=3D"gma=
il_default" style=3D"font-family:monospace,monospace"><br></div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">Yocto however =
is providing a mechanism to roll your own distro</div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace,monospace">so many large projects no=
w a days deploy it as the default build</div><div class=3D"gmail_default" s=
tyle=3D"font-family:monospace,monospace">infrastructure for the project and=
 build a &quot;just enough OS&quot; for</div><div class=3D"gmail_default" s=
tyle=3D"font-family:monospace,monospace">their projects to work. I havent l=
ooked in detail into OpenSwitch</div><div class=3D"gmail_default" style=3D"=
font-family:monospace,monospace">but I believe its a single component and t=
hen it has external dependencies it relies on.</div><div class=3D"gmail_def=
ault" style=3D"font-family:monospace,monospace"><br></div><div class=3D"gma=
il_default" style=3D"font-family:monospace,monospace">With yocto projects l=
ayer structure it also lets you choose only</div><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace,monospace">relevant layers into the proje=
ct build system which might be relevant in openswitch case.=C2=A0</div><div=
 class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:monospace,monospace">Th=
erefore, if you are building a full platform build around openswitch, you h=
ave to use some platform build system and it</div><div class=3D"gmail_defau=
lt" style=3D"font-family:monospace,monospace">could well be yocto. if you a=
re just build a single component</div><div class=3D"gmail_default" style=3D=
"font-family:monospace,monospace">from openswitch and dont care where it ge=
ts packaged and distributed, then you could just get it going on your linux=
 machine</div><div class=3D"gmail_default" style=3D"font-family:monospace,m=
onospace">you have and build/debug/test natively.=C2=A0</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 5, 2017 at 6:06 AM,=
 Kosta  Zertsekel <span dir=3D"ltr">&lt;<a href=3D"mailto:kzertsekel@mrv.co=
m" target=3D"_blank">kzertsekel@mrv.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_5155842072057544743divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,EmojiFon=
t,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&=
quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,EmojiFont=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols" dir=3D"lt=
r">
<p>Khem, </p>
<p><br>
</p>
<p>Fully agree that Yocto has is good, &#39;cause it supports cross-build, =
has a wide</p>
<p>industry support and actually it has **the version** (meaning, all the p=
ackages</p>
<p>are taken with specific git commit id unlike debian/ubuntu binaries).</p=
>
<p><br>
</p>
<p>But then, I&#39;m confused in the other respect...</p>
<p><br>
</p>
<p>I&#39;m looking at the OpenSwitch build system (part of Open Compute pro=
ject</p>
<p>under Linux Foundation)=C2=A0and I see that is uses yocto as a subsystem=
. It&#39;s really</p>
<p>confusing because yocto is supposed to have &quot;meta-XYZ&quot; for Ope=
nSwitch</p>
<p>support.</p>
<p><br>
</p>
<p>So, when choosing a build system for OpenSwitch-based products - do one<=
/p>
<p>still has to use yocto or just go with the build system provided by=C2=
=A0OpenSwitch?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_5155842072057544743divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, January 31, 2016 5:56 PM<br>
<b>To:</b> Kosta Zertsekel<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>; Ran Wainstein<br>
<b>Subject:</b> Re: [yocto] Yocto for NFS/SDN networking product</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:georgia,serif">Kosta</div>
<div style=3D"font-family:georgia,serif"><br>
</div>
<div style=3D"font-family:georgia,serif">Yocto project is developed by many=
 volunteers and people sponsored by corporations,</div>
<div style=3D"font-family:georgia,serif">all development happens in opensou=
rce. The community supports the project. There</div>
<div style=3D"font-family:georgia,serif">are also lot of commercial OS vend=
ors=C2=A0<span style=3D"font-size:12pt">which use Yocto project to build th=
eir products,</span></div>
<div style=3D"font-family:georgia,serif"><span style=3D"font-size:12pt">so =
you can always go to them if you are looking for commercial support.=C2=A0<=
/span></div>
<div style=3D"font-family:georgia,serif"><br>
</div>
<div style=3D"font-family:georgia,serif">For advantages, it can build a sma=
ll footprint since it builds bottom up. So you can really get only needed</=
div>
<div style=3D"font-family:georgia,serif">packages for your custom image. It=
 will create a source based distribution for you where you have control</di=
v>
<div style=3D"font-family:georgia,serif">over every part of the OSS stack. =
You can really tailor your solution to your needs.</div>
<div style=3D"font-family:georgia,serif"><br>
</div>
<div style=3D"font-family:georgia,serif">It builds in cross-build environme=
nt, supports many CPU architectures and machines</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">
<div style=3D"font-family:georgia,serif">The community is very welcoming an=
d helpful. You can easily contribute to the project</div>
<div style=3D"font-family:georgia,serif">and fulfill your needs by doing so=
.=C2=A0<span style=3D"font-size:12pt">The learning curve might be a bit ste=
eper. But then</span></div>
<div style=3D"font-family:georgia,serif"><span style=3D"font-size:12pt">you=
 do have trainings available offerred by professionals.</span></div>
<div style=3D"font-family:georgia,serif"><br>
</div>
<div style=3D"font-family:georgia,serif">Thanks</div>
<div style=3D"font-family:georgia,serif">-Khem =C2=A0</div>
<div style=3D"font-family:georgia,serif"></div>
</div>
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">On Sun, Jan 31, 2016 at 4:22 AM, Kosta Zertsekel=
 <span dir=3D"ltr">
&lt;<a href=3D"mailto:kzertsekel@mrv.com" target=3D"_blank">kzertsekel@mrv.=
com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hi dear Yocto community,</p>
<p><br>
</p>
<p>I&#39;m trying to evaluate Yocto as the candidate to create=C2=A0Linux d=
istro</p>
<p>for NFS/SDN networking product. Through Google I get an impression</p>
<p>that there is a race between Yocto, CentOS (RedHat) and 6WIND</p>
<p>Linux distributions=C2=A0<span style=3D"font-size:12pt">to get most of N=
FV/SDN Linux distro=C2=A0market.</span></p>
<p><br>
</p>
<p>Can you please help to find cons and pros of using Yocto for</p>
<p>NFV/SDN networking product?</p>
<p><br>
</p>
<p>I google over NFV/SDN part of=C2=A0<a href=3D"http://www.etsi.org" title=
=3D"http://www.etsi.org
Ctrl+Click or tap to follow the link" target=3D"_blank">www.etsi.org</a>=C2=
=A0but couldn&#39;t make up</p>
<p>my mind what specific=C2=A0distro got the=C2=A0traction.</p>
<p><br>
</p>
<p>I see that Yocto has NFV/SDN layers (<a href=3D"http://events.linuxfound=
ation.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf" titl=
e=3D"http://events.linuxfoundation.org/sites/events/files/slides/YP_and_Ope=
nStack_LinuxCon2014.pdf
Ctrl+Click or tap to follow the link" target=3D"_blank">reference</a>):</p>
<p></p>
<div>```<br>
</div>
<div>git clone git://<a href=3D"http://git.yoctoproject.org/meta-cloud-serv=
ices" target=3D"_blank">git.yoctoproject.org/<wbr>meta-cloud-services</a><b=
r>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/meta-openembedd=
ed" target=3D"_blank">git.openembedded.org/<wbr>meta-openembedded</a></div>
<div>git clone --branch icehouse git://<a href=3D"http://git.yoctoproject.o=
rg/meta-virtualization" target=3D"_blank">git.yoctoproject.org/<wbr>meta-vi=
rtualization</a><br>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/openembedded-co=
re" target=3D"_blank">git.openembedded.org/<wbr>openembedded-core</a> oe-co=
re<br>
</div>
<div>```<br>
</div>
<br>
<p></p>
<p>Are these layers officially supported by Intel?<br>
</p>
<p>Does Intel provide the NFV/SDN support?<br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
</div>
<a href=3D"http://www.mrv.com/blog" target=3D"_blank"><img alt=3D"E-Banner"=
></a><br>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:10pt;color:#b8b9c8;line-height:8pt;font-family:&#39;a=
rial&#39;,&#39;times roman&#39;,serif">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=E2=80=99s largest networks. Our products combine innovati=
ve hardware with intelligent software to make networks smarter, faster and =
more efficient.</p>
</div>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:8pt;color:#b8b9c8;line-height:8pt;font-family:&#39;ar=
ial&#39;,&#39;times roman&#39;,serif">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
<a href=3D"https://goo.gl/0NNSWr" target=3D"_blank"><img></a><br>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:10pt;color:#b8b9c8;line-height:8pt;font-family:&#39;a=
rial&#39;,&#39;times roman&#39;,serif">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=E2=80=99s largest networks. Our products combine innovati=
ve hardware with intelligent software to make networks smarter, faster and =
more efficient.</p>
</div>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:8pt;color:#b8b9c8;line-height:8pt;font-family:&#39;ar=
ial&#39;,&#39;times roman&#39;,serif">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</div>

</blockquote></div><br></div></div>

--f403045c556496ddde05514b422f--
