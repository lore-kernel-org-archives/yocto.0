Return-Path: <finncarlsvi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4583E00CE0; Tue, 13 Oct 2015 12:55:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (finncarlsvi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7792AE00CCF
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:55:48 -0700 (PDT)
Received: by vkaw128 with SMTP id w128so17322317vka.0
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Y3KfDnWrM5+q0Jye5t8wfJmH27iXoEaWfjr7aKAnSG8=;
	b=UCbSVpC2wuSQBp4tzWVu/4/93iVDLtshV01WuRpM3LARv00sE1xb55sHO+tFfZF0uX
	JrlGHIp+b+cZnRPM0et0qO79U8rN0wBt70513yvYkYUqiRWK0qIkGmdUv0L6LRBa4kjj
	2sW1SmK8dp7zX5QXBC54haDw6mgmHElOpu4u4WQVWotDnRbafBPzxuG+1Kr3CrS2W+YV
	YB3bSUX6eYk+hWRbN3Vfv6I4V2scpNbFi55H/2eTGtYFMQMceI0ZxC+Y24ipOXyj8BtM
	89aWEYHZHEkMQcFEnokpvPKU8Z9GlIFJ+qsFC2IA1HfaiFmnzbJ47vX8ruKEjFSS53H7
	Ls3g==
MIME-Version: 1.0
X-Received: by 10.31.11.84 with SMTP id 81mr11626168vkl.4.1444766148092; Tue,
	13 Oct 2015 12:55:48 -0700 (PDT)
Received: by 10.31.178.22 with HTTP; Tue, 13 Oct 2015 12:55:48 -0700 (PDT)
In-Reply-To: <CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
References: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
	<CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
Date: Tue, 13 Oct 2015 12:55:48 -0700
Message-ID: <CAD-yPSeYso2N-KaS3uHVaWKZjTcZ=4yHQxHPust9Qw8nW1Z_8A@mail.gmail.com>
From: Finn Carlsvi <finncarlsvi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cap'n Proto Recipe Help
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
X-List-Received-Date: Tue, 13 Oct 2015 19:55:52 -0000
Content-Type: multipart/alternative; boundary=001a11438eea0a6e58052201d52a

--001a11438eea0a6e58052201d52a
Content-Type: text/plain; charset=UTF-8

Thanks Ross,

I was trying to spare you the wall of text, but your right, it's best to
share the whole recipe. The file name is *capnproto_0.5.3.bb
<http://capnproto_0.5.3.bb>*

############################################################
LICENSE = "Unknown"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=0a5b5b742baf10cc1c158579eba7fb1d
\

file://gtest/LICENSE;md5=cbbd27594afd089daa160d3a16dd515a"

INSANE_SKIP_${PN} += "install-host-path"
INSANE_SKIP_${PN} += "installed-vs-shipped"

SRC_URI = "https://capnproto.org/capnproto-c++-${PV}.tar.gz"
SRC_URI[md5sum] = "d6c91a9129457fe5893302cd92e09324"
SRC_URI[sha256sum] =
"cdb17c792493bdcd4a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb"

PACKAGES = "${PN}"

S = "${WORKDIR}/capnproto-c++-${PV}"

inherit cmake

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE = ""

do_configure() {
    export CAPNP=/usr/local/bin/capnp
    ${S}/configure --with-external-capnp -build=x86_64-linux
--host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi
}
############################################################

Cheers
Finn

On Tue, Oct 13, 2015 at 12:26 PM, Burton, Ross <ross.burton@intel.com>
wrote:

>
> On 13 October 2015 at 20:13, Finn Carlsvi <finncarlsvi@gmail.com> wrote:
>
>> I noticed that I have the cross compiled version of capnproto (capnp) in
>> the images folder in my work directory, but the packages-split/capnproto
>> directory is empy.
>>
>
> Sharing the recipe makes helping a lot easier.  Have a look in the
> work/deploy-* directories to see what packages were actually created.
>
> But FYI, upstream software which needs to build and run software to build
> are generally a pain to package.
>
> Ross
>

--001a11438eea0a6e58052201d52a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ross,<div><br></div><div>I was trying to spare you =
the wall of text, but your right, it&#39;s best to share the whole recipe. =
The file name is <b><a href=3D"http://capnproto_0.5.3.bb">capnproto_0.5.3.b=
b</a></b></div><div><br></div><div>########################################=
####################</div><div><div>LICENSE =3D &quot;Unknown&quot;</div><d=
iv>LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3D0a5b5b742baf10cc1c15=
8579eba7fb1d \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 file://gtest/LICENSE;md5=3Dcbbd27594afd089daa160d3a16d=
d515a&quot;</div><div><br></div><div>INSANE_SKIP_${PN} +=3D &quot;install-h=
ost-path&quot;</div><div>INSANE_SKIP_${PN} +=3D &quot;installed-vs-shipped&=
quot;</div><div><br></div><div>SRC_URI =3D &quot;<a href=3D"https://capnpro=
to.org/capnproto-c++-${PV}.tar.gz">https://capnproto.org/capnproto-c++-${PV=
}.tar.gz</a>&quot;</div><div>SRC_URI[md5sum] =3D &quot;d6c91a9129457fe58933=
02cd92e09324&quot;</div><div>SRC_URI[sha256sum] =3D &quot;cdb17c792493bdcd4=
a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb&quot;</div><div><br></div><=
div>PACKAGES =3D &quot;${PN}&quot;</div><div><br></div><div>S =3D &quot;${W=
ORKDIR}/capnproto-c++-${PV}&quot;</div><div><br></div><div>inherit cmake</d=
iv><div><br></div><div># Specify any options you want to pass to cmake usin=
g EXTRA_OECMAKE:</div><div>EXTRA_OECMAKE =3D &quot;&quot;</div><div><br></d=
iv><div>do_configure() {</div><div>=C2=A0 =C2=A0 export CAPNP=3D/usr/local/=
bin/capnp</div><div>=C2=A0 =C2=A0 ${S}/configure --with-external-capnp -bui=
ld=3Dx86_64-linux --host=3Darm-poky-linux-gnueabi --target=3Darm-poky-linux=
-gnueabi</div><div>}</div></div><div><div>#################################=
###########################</div><div><br></div><div>Cheers</div><div>Finn<=
/div><div></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Tue, Oct 13, 2015 at 12:26 PM, Burton, Ross <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton=
@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gmai=
l_quote">On 13 October 2015 at 20:13, Finn Carlsvi <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:finncarlsvi@gmail.com" target=3D"_blank">finncarlsvi@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I noticed =
that I have the cross compiled version of capnproto (capnp) in the images f=
older in my work directory, but the packages-split/capnproto directory is e=
mpy.</div><div></div></blockquote></div><br></span>Sharing the recipe makes=
 helping a lot easier.=C2=A0 Have a look in the work/deploy-* directories t=
o see what packages were actually created.</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">But FYI, upstream software which needs=
 to build and run software to build are generally a pain to package.</div><=
span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a11438eea0a6e58052201d52a--
