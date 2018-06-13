Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4152AE02EF9; Wed, 13 Jun 2018 03:22:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92207E02EF4
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 03:22:53 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id f1-v6so2871630ioh.6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 03:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fsnN6d378MM+7laIyKnEuCdofAMneTAJRkEX9Skm8pk=;
	b=XF32R1zCdNGM0jedAz3h1Ix0t4f5QTYavk0/g5udL6XQZsmF2RzHqctyRiZJ0nDL8m
	Ut2B51q881t0deGBsi56s60jJnRRm/zbzfsZ6Mz67CmNP0nZ1Nr9f2pPDFAN3v72H609
	PjtyLLhvCSK518CdbT6jZPUqtZNq66Xki3Bas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fsnN6d378MM+7laIyKnEuCdofAMneTAJRkEX9Skm8pk=;
	b=n0DrQ/raeYXNrw0cigdmNdI4we6f67g4mYUcllCpums8vr38SqolJ5kQtvWc7n145V
	/NL4V0WR/DfMZ2HyBVGuEnpNw2Dr33E/ob144f6cFnyts4nHtl4Uz/FA2+0UT4MeHJPw
	pJB/WGg3FITz5NsF79FnrLPAudjbtC5SzJjtH7IURhqYSRZYjPQ3u1pnzU7K5iLEM8YE
	el/qkzVIwwgGYJt1jwl8NsAz/0vzt+mQlIt+kG0xxrzA8junsV5mdy+hI6XB8dU1c0Fm
	1XScmnAA6PSPN+uU/IUna9FQAEIkPvPhibZcC1EOl2Oe/BNGnFkc9ahwa9zI0aeKPUmb
	LVsQ==
X-Gm-Message-State: APt69E17WwS47YfvGmgVO/Z+HEBrJQqdNzKxckKZ9Ca3vbUd8JX1vr6O
	HwDswoP5sPDEmYGU5mJC0t90ULdXawEFfhw/BuP2/w==
X-Google-Smtp-Source: ADUXVKJih5hOSxfQLn5r6zNDO97uuVGMPEPa/4cTaleOubmZuBNZ7JkbKW/yiWDNJalj7AdIjKPXl/moNwbW07XRNu8=
X-Received: by 2002:a6b:8b54:: with SMTP id
	n81-v6mr3811608iod.229.1528885372829; 
	Wed, 13 Jun 2018 03:22:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP; Wed, 13 Jun 2018 03:22:52
	-0700 (PDT)
In-Reply-To: <VI1PR0301MB2240BA8DF2B59756CCC9849DCE620@VI1PR0301MB2240.eurprd03.prod.outlook.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAALXFYyuV7AXr=GSS3SAsVUHM42HyS8vfzWvRJY07R5ryieLAQ@mail.gmail.com>
	<CA+FhBv8-GJLBQyMxAsFpjJMfQ3PbmT-yoCNFNwig7A+2wwk3jw@mail.gmail.com>
	<VI1PR0301MB2240BA8DF2B59756CCC9849DCE620@VI1PR0301MB2240.eurprd03.prod.outlook.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 13 Jun 2018 12:22:52 +0200
Message-ID: <CAALXFYzjfgXYsbSgdwg3uh5a-G6S_=X6PPQEKGuBur=4TM4-uQ@mail.gmail.com>
To: Ulf Samuelsson <ulf.samuelsson@external.atlascopco.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Wed, 13 Jun 2018 10:22:55 -0000
Content-Type: multipart/alternative; boundary="0000000000008cdf89056e835d26"

--0000000000008cdf89056e835d26
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very useful information!
This is the first time I understand this bbclass and BBCLASSEXTEND
mechanism (I was unable to understand it after reading documentation again
and again).
I managed implementing a custom but working solution.
Thanks a lot for sharing Mr Ulf! :)


2018-06-01 13:44 GMT+02:00 Ulf Samuelsson <
ulf.samuelsson@external.atlascopco.com>:

> Here is the idea developed at Atlas Copco.
>
> Not my code, but I thought it useful for this problem
>
>
> define three bbclasses.
>
> production.bbclass, rnd.bbclass, release.bbclass containing:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> # Class for use in BBCLASSEXTEND to make it easier to have a single recip=
e
> that
> # build and generate packages separately for release and normal images.
> #
> # Usage:
> # BBCLASSEXTEND =3D "release"
>
> CLASSOVERRIDE .=3D ":class-release"
>
> python release_virtclass_handler () {
>     # Do nothing if this is inherited, as it's for BBCLASSEXTEND
>     if "release" not in (d.getVar('BBCLASSEXTEND') or ""):
>         bb.error("Don't inherit release, use BBCLASSEXTEND")
>         return
>
>     # Restore BPN
>     bpn =3D d.getVar('BPN')
>     newbpn =3D bpn.replace('-release', '')
>     d.setVar('BPN', newbpn)
>
>     # Use default FILESPATH searching for patches and files
>     filespath =3D d.getVar('FILESPATH', True)
>     newfilespath =3D filespath.replace('-release', '')
>     d.setVar('FILESPATH', newfilespath)
> }
>
> addhandler release_virtclass_handler
> release_virtclass_handler[eventmask] =3D "bb.event.RecipePreFinalise"
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> In a bbappend you use the classes:
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> SRC_URI_append_class-production =3D " \
>     file://rcS.production \
> "
>
> SRC_URI_append_class-rnd =3D " \
>     file://rcS.rnd \
> "
>
> SRC_URI_append_class-release =3D " \
>     file://rcS.release \
> "
>
> do_install_append_class-production () {
>     install -m 755 ${WORKDIR}/rcS.production ${D}${sysconfdir}/init.d/rcS
> }
>
> do_install_append_class-rnd () {
>     install -m 755 ${WORKDIR}/rcS.rnd ${D}${sysconfdir}/init.d/rcS
> }
>
> do_install_append_class-release () {
>     install -m 755 ${WORKDIR}/rcS.release ${D}${sysconfdir}/init.d/rcS
> }
>
> BBCLASSEXTEND =3D "production rnd release"
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> In your production image you add
>
> IMAGE_INSTALL_append =3D "busybox-production"
>
>
> Do something similar for the other two.
>
> BR
>
> Ulf Samuelsson
> ------------------------------
> *Fr=C3=A5n:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.o=
rg>
> f=C3=B6r Damien LEFEVRE <lefevre.da@gmail.com>
> *Skickat:* den 1 juni 2018 13:17:53
> *Till:* Iv=C3=A1n Castell
> *Kopia:* Yocto discussion list
> *=C3=84mne:* Re: [yocto] Image specific configuration files
>
> Thanks a lot everyone, this is very helpful =3D)
>
> On Fri, Jun 1, 2018 at 2:14 PM, Iv=C3=A1n Castell <icastell@nayarsystems.=
com>
> wrote:
>
>
>
> 2018-06-01 11:24 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com>:
>
> I have to say defining multiple distros and then tweaking recipes
> according to those definitions is not a good practice, as recipes should
> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. T=
he
> above iptables scenario should be handled with different image recipes,
> which pull in (via packages) or create different configurations.
>
>
>
> That has sense. We will refactorize our Yocto repo as suggested. Always
> very helpfull with all your comments Mr Alexander. Thank you very much! :=
)
>
>
>
>
>

--0000000000008cdf89056e835d26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Very useful information!</div><div>This is the fi=
rst time=C2=A0I understand this bbclass and BBCLASSEXTEND mechanism (I was =
unable to understand it after reading documentation again and again).</div>=
<div>I managed implementing a custom but working solution.</div><div>Thanks=
 a lot for sharing Mr Ulf! :)</div><div><span style=3D"font-size:small;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline"><br></span></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2018-06-01 13:44 GMT+02:00 Ulf Sa=
muelsson <span dir=3D"ltr">&lt;<a href=3D"mailto:ulf.samuelsson@external.at=
lascopco.com" target=3D"_blank">ulf.samuelsson@external.atlascopco.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-9191091750339485921divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Here is the idea developed at Atl=
as Copco.</p>
<p style=3D"margin-top:0;margin-bottom:0">Not my code, but I thought it use=
ful for this problem</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">define three bbclasses.</p>
<p style=3D"margin-top:0;margin-bottom:0">production.bbclass, rnd.bbclass, =
release.bbclass containing:</p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div># Class for use in BBCLASSEXTEND to make it easier to have a single re=
cipe that<br>
# build and generate packages separately for release and normal images.<br>
#<br>
# Usage:<br>
# BBCLASSEXTEND =3D &quot;release&quot;<br>
<br>
CLASSOVERRIDE .=3D &quot;:class-release&quot;<br>
<br>
python release_virtclass_handler () {<br>
=C2=A0=C2=A0=C2=A0 # Do nothing if this is inherited, as it&#39;s for BBCLA=
SSEXTEND<br>
=C2=A0=C2=A0=C2=A0 if &quot;release&quot; not in (d.getVar(&#39;BBCLASSEXTE=
ND&#39;) or &quot;&quot;):<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.error(&quot;Don&#39;t inherit=
 release, use BBCLASSEXTEND&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return<br>
<br>
=C2=A0=C2=A0=C2=A0 # Restore BPN<br>
=C2=A0=C2=A0=C2=A0 bpn =3D d.getVar(&#39;BPN&#39;)<br>
=C2=A0=C2=A0=C2=A0 newbpn =3D bpn.replace(&#39;-release&#39;, &#39;&#39;)<b=
r>
=C2=A0=C2=A0=C2=A0 d.setVar(&#39;BPN&#39;, newbpn)<br>
<br>
=C2=A0=C2=A0=C2=A0 # Use default FILESPATH searching for patches and files<=
br>
=C2=A0=C2=A0=C2=A0 filespath =3D d.getVar(&#39;FILESPATH&#39;, True)<br>
=C2=A0=C2=A0=C2=A0 newfilespath =3D filespath.replace(&#39;-release&#39;, &=
#39;&#39;)<br>
=C2=A0=C2=A0=C2=A0 d.setVar(&#39;FILESPATH&#39;, newfilespath)<br>
}<br>
<br>
addhandler release_virtclass_handler<br>
release_virtclass_handler[<wbr>eventmask] =3D &quot;bb.event.RecipePreFinal=
ise&quot;</div>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
In a bbappend you use the classes:
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>SRC_URI_append_class-<wbr>production =3D &quot; \<br>
=C2=A0=C2=A0 =C2=A0file://rcS.production \<br>
&quot;<br>
<br>
SRC_URI_append_class-rnd =3D &quot; \<br>
=C2=A0=C2=A0 =C2=A0file://rcS.rnd \<br>
&quot;<br>
<br>
SRC_URI_append_class-release =3D &quot; \<br>
=C2=A0=C2=A0 =C2=A0file://rcS.release \<br>
&quot;<br>
<br>
do_install_append_class-<wbr>production () {<br>
=C2=A0=C2=A0 =C2=A0install -m 755 ${WORKDIR}/rcS.production ${D}${sysconfdi=
r}/init.d/rcS<br>
}<br>
<br>
do_install_append_class-rnd () {<br>
=C2=A0=C2=A0 =C2=A0install -m 755 ${WORKDIR}/rcS.rnd ${D}${sysconfdir}/init=
.d/rcS<br>
}<br>
<br>
do_install_append_class-<wbr>release () {<br>
=C2=A0=C2=A0 =C2=A0install -m 755 ${WORKDIR}/rcS.release ${D}${sysconfdir}/=
init.d/rcS<br>
}<br>
<br>
BBCLASSEXTEND =3D &quot;production rnd release&quot;</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></p>
<p style=3D"margin-top:0;margin-bottom:0">In your production image you add =
<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">IMAGE_INSTALL_append =3D &quot;bu=
sybox-production&quot;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Do something similar for the othe=
r two.</p>
<p style=3D"margin-top:0;margin-bottom:0">BR</p>
<p style=3D"margin-top:0;margin-bottom:0">Ulf Samuelsson<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-9191091750339485921divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fr=C3=A5n=
:</b> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-bounces@yocto=
project.org" target=3D"_blank">yocto-bounces@yoctoproject.<wbr>org</a>&gt; =
f=C3=B6r Damien LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gmail.com" target=
=3D"_blank">lefevre.da@gmail.com</a>&gt;<br>
<b>Skickat:</b> den 1 juni 2018 13:17:53<br>
<b>Till:</b> Iv=C3=A1n Castell<br>
<b>Kopia:</b> Yocto discussion list<br>
<b>=C3=84mne:</b> Re: [yocto] Image specific configuration files</font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">

<div>
<div dir=3D"ltr">Thanks a lot everyone, this is very helpful =3D)<br>
</div>
<div class=3D"m_-9191091750339485921x_gmail_extra"><br>
<div class=3D"m_-9191091750339485921x_gmail_quote">On Fri, Jun 1, 2018 at 2=
:14 PM, Iv=C3=A1n Castell <span dir=3D"ltr">
&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell=
@nayarsystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"m_-9191091750339485921x_gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><br>
<div class=3D"m_-9191091750339485921x_gmail_extra"><br>
<div class=3D"m_-9191091750339485921x_gmail_quote"><span>2018-06-01 11:24 G=
MT+02:00 Alexander Kanavin
<span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_=
blank">alex.kanavin@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"m_-9191091750339485921x_gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div>I have to say defining multiple distros and then tweaking recipes acco=
rding to those definitions is not a good practice, as recipes should genera=
lly only access DISTRO_FEATURES and otherwise be distro-agnostic. The above=
 iptables scenario should be handled
 with different image recipes, which pull in (via packages) or create diffe=
rent configurations.</div>
</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
</span>
<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);float:none;display:inline">That
 has sense. W</span>e will refactorize our Yocto repo as suggested. Always =
very helpfull with all your comments Mr Alexander. Thank you very much! :)<=
/div>
<div><br>
</div>
<div>=C2=A0</div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div></div></div>

</blockquote></div><div class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><br></div>
</div></div>

--0000000000008cdf89056e835d26--
