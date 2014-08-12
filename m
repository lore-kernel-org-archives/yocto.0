Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D55E5E007A0; Tue, 12 Aug 2014 13:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F173DE00799
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 13:17:42 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id u10so7549959lbd.35
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 13:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=IFQA+BtRWzwyT1CZTjCTxyREDE5g+03vO0I2FRbvGwg=;
	b=FZVY+j9kcvuFbiwEc1zfxtjfFjSMWJT4WWom1+Pv/vigSGkCt14z6y4Bs7ZFTubgzT
	RRO+4Pz3e200TIbfZIcgY00iArIJ4bbQPTLJNWG5N+6FogzmziTpv4BOQZER7iHzBBmW
	x8v9ce533EP0nh93G/BZvlYImfAoNwkRgOpgs4hrVmK6u/8cXf2Rx4UeNVA/p0GS2dh9
	a15sf9m2XIXiHnkIpk6rfPDG7U2HRr+sii0hE0mbQ1T6aG9rTBDTosCL7YhQm9Gad6w8
	t6eDNXtRjE5oR8E90iOCfzjpplNhw5yIaEdGhmlc7EdKlVuz1ulkm56LLCsTbhXE9eZs
	YB6Q==
X-Received: by 10.152.205.8 with SMTP id lc8mr6493318lac.57.1407874660982;
	Tue, 12 Aug 2014 13:17:40 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Tue, 12 Aug 2014 13:17:19 -0700 (PDT)
In-Reply-To: <CA+gsK-pdY-gsv9On_v2BquVYQ1fw6=73m3NqhDvNSn=f+5K=6Q@mail.gmail.com>
References: <CA+gsK-pdY-gsv9On_v2BquVYQ1fw6=73m3NqhDvNSn=f+5K=6Q@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 12 Aug 2014 13:17:19 -0700
X-Google-Sender-Auth: Qd5yDYATJ_zo4gqs8TRepEFsCeA
Message-ID: <CABcZANkEOTKf5aqi7dkVKqqUS4ptnTrQX6sRZkoQkaUYZKRsow@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: distro.conf and LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI
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
X-List-Received-Date: Tue, 12 Aug 2014 20:17:53 -0000
Content-Type: multipart/alternative; boundary=001a1133ab3c0e78890500745db6

--001a1133ab3c0e78890500745db6
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 12, 2014 at 12:31 PM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> The Poky distro configuration distro.conf includes assignments to
> LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI to set the expected
> version numbers for local.conf, bblayers.conf and the directory layout of
> ${TMPDIR}.
>
> From a user perspective this is somewhat confusing as these variables
> really have nothing to do with the distro policy but only with the
> compatibility between the build system and a build environment. For Poky it
> may somewhat make sense to put them there. However if I write my own
> distro.conf and put it in a layer I would want to use this layer with
> different version of the build system. I think it would make more sense to
> assign these variables in poky-sanity.bbclass.
>
> The second little gripe is about the inconsistent naming of these
> variables and the ones they relate to:
>
> LOCALCONF_VERSION (expected value) <-> CONF_VERSION (actual value)
> LAYER_CONF_VERSION (expected value) <-> LCONF_VERSION (actual value)
> OELAYOUT_ABI (expected value) <-> actual value retrieved from
> tmp/abi_version
>
> Adding to the confusion is LAYERVERSION which refers to the version of the
> conf/layer.conf file of a layer. That is in contrast to LAYER_CONF_VERSION
> / LCONF_VERSION which are for conf/bblayers.conf in the build enviroment.
>
> Changing stuff that has been established for years is of course a pain but
> it has been done and can be done in a backward compatible way.
>
> My suggestions:
>
>    1. Rename LOCALCONF_VERSION to LOCAL_CONF_VERSION_SET
>    2. Rename LAYER_CONF_VERSION to BBLAYERS_CONF_VERSION_SET
>    3. Rename CONF_VERSION to LOCAL_CONF_VERSION
>    4. Rename LCONF_VERSION to BBLAYERS_CONF_VERSION
>    5. Rename OELAYOUT_ABI to OELAYOUT_VERSION_SET
>    6. Provide values for LOCAL_CONF_VERSION_SET,
>    BBLAYERS_CONF_VERSION_SET, OELAYOUT_VERSION_SET in poky-sanity.bbclass and
>    remove the settings from the distro configuration.
>
> You would also want to change LAYERVERSION to LAYER_CONF_VERSION to be
> consistent. But that cannot be done backwards compatible as it conflicts
> with the currently used version variable for bblayers.conf.
>

LAYERVERSION is about the version of the layer, which LAYERDEPENDS can
reference, e.g. backwards-incompatible changes going into the layer, not
the version of the layer's layer.conf specifically. _SET is a weird way to
indicate an expected value, also, I'd called it _REQUIRED or something, but
that's minor. In general, I agree that things are rather inconsistent with
regard to variable naming, but that's true everywhere, not just for these
variables :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133ab3c0e78890500745db6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Aug 12, 2014 at 12:31 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfo=
undation.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><font face=3D"garamond, serif"><span st=
yle=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,sa=
ns-serif;font-size:13px">The Poky distro configuration distro.conf includes=
 assignments to LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI to set =
the expected version numbers for local.conf, bblayers.conf and the director=
y layout of ${TMPDIR}.</span></font></div>


<div><br></div><div>From a user perspective this is somewhat confusing as t=
hese variables really have nothing to do with the distro policy but only wi=
th the compatibility between the build system and a build environment. For =
Poky it may somewhat make sense to put them there. However if I write my ow=
n distro.conf and put it in a layer I would want to use this layer with dif=
ferent version of the build system. I think it would make more sense to ass=
ign these variables in poky-sanity.bbclass.</div>


<div><br></div><div>The second little gripe is about the inconsistent namin=
g of these variables and the ones they relate to:</div><div><br></div><div>=
LOCALCONF_VERSION (expected value) &lt;-&gt; CONF_VERSION (actual value)</d=
iv>


<div>LAYER_CONF_VERSION (expected value) &lt;-&gt; LCONF_VERSION (actual va=
lue)</div><div>OELAYOUT_ABI (expected value) &lt;-&gt; actual value retriev=
ed from tmp/abi_version</div><div><br></div><div>Adding to the confusion is=
 LAYERVERSION which refers to the version of the conf/layer.conf file of a =
layer. That is in contrast to LAYER_CONF_VERSION / LCONF_VERSION which are =
for conf/bblayers.conf in the build enviroment.</div>


<div><br></div><div>Changing stuff that has been established for years is o=
f course a pain but it has been done and can be done in a backward compatib=
le way.</div><div><br></div><div>My suggestions:</div><div><ol><li>Rename L=
OCALCONF_VERSION to LOCAL_CONF_VERSION_SET</li>


<li>Rename LAYER_CONF_VERSION to BBLAYERS_CONF_VERSION_SET</li><li>Rename C=
ONF_VERSION to LOCAL_CONF_VERSION</li><li>Rename LCONF_VERSION to BBLAYERS_=
CONF_VERSION</li><li>Rename OELAYOUT_ABI to OELAYOUT_VERSION_SET</li><li>


Provide values for LOCAL_CONF_VERSION_SET, BBLAYERS_CONF_VERSION_SET, OELAY=
OUT_VERSION_SET in poky-sanity.bbclass and remove the settings from the dis=
tro configuration.</li></ol><div>You would also want to change LAYERVERSION=
 to LAYER_CONF_VERSION to be consistent. But that cannot be done backwards =
compatible as it conflicts with the currently used version variable for bbl=
ayers.conf.</div>

</div></blockquote></div><br></div><div class=3D"gmail_extra">LAYERVERSION =
is about the version of the layer, which LAYERDEPENDS can reference, e.g. b=
ackwards-incompatible changes going into the layer, not the version of the =
layer&#39;s layer.conf specifically. _SET is a weird way to indicate an exp=
ected value, also, I&#39;d called it _REQUIRED or something, but that&#39;s=
 minor. In general, I agree that things are rather inconsistent with regard=
 to variable naming, but that&#39;s true everywhere, not just for these var=
iables :)<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133ab3c0e78890500745db6--
