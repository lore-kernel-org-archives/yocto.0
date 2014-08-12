Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C57E0079A; Tue, 12 Aug 2014 12:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F4EE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 12:31:13 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id h3so9035599igd.3
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 12:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gDypiWEu1GXsFgCAOkWdvgsNakcyJ+NGpl+zEn3WZCk=;
	b=FVtJZj1shvKz3pawKMdfBBT8i9NaGxSGIS02xYeDHJ1HZSIELFLtyV/toWUdVEDzXv
	nIGqagtpauDHKKcbqOhPn8vtNhJF5y4TdjuyXaxYxb3rolsipN61XL1kNoSxIpWqANZH
	7y/kcYgRucCswCEPX/Dk8y3lciyVKcO9KO8zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=gDypiWEu1GXsFgCAOkWdvgsNakcyJ+NGpl+zEn3WZCk=;
	b=I3pQBJQ/ZGncWhITkng9zhqzC0Bsyd/g3tOZoUkuRMVsC6jKASJ1e+EFd51cx4mK0t
	AoAQg5LkAQXDRStu9vOoZDuwBGC1kYlhIgez6UxKm3zb18De5eW0tYuyxSRIdioUd6YP
	MVhc/AR5gNK1Tglobi5j8k0MljcBqDF9JikIcbcqyQZl4FGtSqvR+Fl6mLaSn8xRFSQR
	JTpDG83Uh/EZYjL2mEL/o8bYB+U6p1kClMIFtin79ZDJd+rtBTHxjSmtHJNH1LVOYl6L
	8rMfo4+MXVrQA/PtFivpgMUs/p9+KI3OdPFfIgKAtwXMmPC+ApmnSWijCQ2ioE0FeqI4
	tMfQ==
X-Gm-Message-State: ALoCoQmNdWrPwmZS6+3CfBhee8/7Bdj3GS01N7rRXmWj2CQAo5lcfxhij+d/6QFzoSyMD7kcKNrs
MIME-Version: 1.0
X-Received: by 10.42.224.130 with SMTP id io2mr701202icb.91.1407871872395;
	Tue, 12 Aug 2014 12:31:12 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Tue, 12 Aug 2014 12:31:12 -0700 (PDT)
Date: Tue, 12 Aug 2014 12:31:12 -0700
Message-ID: <CA+gsK-pdY-gsv9On_v2BquVYQ1fw6=73m3NqhDvNSn=f+5K=6Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: distro.conf and LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI
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
X-List-Received-Date: Tue, 12 Aug 2014 19:31:21 -0000
Content-Type: multipart/alternative; boundary=001a11332be8d80159050073b65f

--001a11332be8d80159050073b65f
Content-Type: text/plain; charset=UTF-8

The Poky distro configuration distro.conf includes assignments to
LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI to set the expected
version numbers for local.conf, bblayers.conf and the directory layout of
${TMPDIR}.

From a user perspective this is somewhat confusing as these variables
really have nothing to do with the distro policy but only with the
compatibility between the build system and a build environment. For Poky it
may somewhat make sense to put them there. However if I write my own
distro.conf and put it in a layer I would want to use this layer with
different version of the build system. I think it would make more sense to
assign these variables in poky-sanity.bbclass.

The second little gripe is about the inconsistent naming of these variables
and the ones they relate to:

LOCALCONF_VERSION (expected value) <-> CONF_VERSION (actual value)
LAYER_CONF_VERSION (expected value) <-> LCONF_VERSION (actual value)
OELAYOUT_ABI (expected value) <-> actual value retrieved from
tmp/abi_version

Adding to the confusion is LAYERVERSION which refers to the version of the
conf/layer.conf file of a layer. That is in contrast to LAYER_CONF_VERSION
/ LCONF_VERSION which are for conf/bblayers.conf in the build enviroment.

Changing stuff that has been established for years is of course a pain but
it has been done and can be done in a backward compatible way.

My suggestions:

   1. Rename LOCALCONF_VERSION to LOCAL_CONF_VERSION_SET
   2. Rename LAYER_CONF_VERSION to BBLAYERS_CONF_VERSION_SET
   3. Rename CONF_VERSION to LOCAL_CONF_VERSION
   4. Rename LCONF_VERSION to BBLAYERS_CONF_VERSION
   5. Rename OELAYOUT_ABI to OELAYOUT_VERSION_SET
   6. Provide values for LOCAL_CONF_VERSION_SET, BBLAYERS_CONF_VERSION_SET,
   OELAYOUT_VERSION_SET in poky-sanity.bbclass and remove the settings from
   the distro configuration.

You would also want to change LAYERVERSION to LAYER_CONF_VERSION to be
consistent. But that cannot be done backwards compatible as it conflicts
with the currently used version variable for bblayers.conf.

These are small things that increase usability and help people to
understand the Yocto Project better.

Cheers,
Rudi

--001a11332be8d80159050073b65f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><font face=3D"garamond, serif"><span=
 style=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial=
,sans-serif;font-size:13px">The Poky distro configuration distro.conf inclu=
des assignments to LOCALCONF_VERSION, LAYER_CONF_VERSION, OELAYOUT_ABI to s=
et the expected version numbers for local.conf, bblayers.conf and the direc=
tory layout of ${TMPDIR}.</span></font></div>
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
</div><div><br></div><div>These are small things that increase usability an=
d help people to understand the Yocto Project better.</div><div><br></div><=
div>Cheers,</div><div>Rudi</div><div><br></div><div><br></div></div>
</div>

--001a11332be8d80159050073b65f--
