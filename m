Return-Path: <jon.szymaniak.foss@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4759E009AA; Sat,  8 Sep 2018 15:38:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
	[209.85.221.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AF19E0096A
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2018 15:38:50 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 79-v6so2101782vkm.4
	for <yocto@yoctoproject.org>; Sat, 08 Sep 2018 15:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:sender:from:date:message-id
	:subject:to:cc;
	bh=D/7XRd1/tCr78WFW3vWwBqCFPOVTu3ipCAwJbKTR3sM=;
	b=Ta5Jm3zl+F6U70zmXoad727TjlS02+o0A88TvlzF2+1SRXPxJ55vFl8CDOC19dH2PD
	v1WHqSNC8FS+asr/HFof2lM53PZdQCvck9prW42WnTxTqvxPaLddyM7Ym4HCObdnzLbJ
	Q48juaMizkd5yhjTEy8irmiEW/sMT2EiWlDkJGwWA9cI9ADVIVO1U5Aocmvsmq+Qcpwf
	sX94lB1EcN7I3M0bJQvrm0puLkUcQr3ukAyZFCLgw8cqRUm5g7WIssAJqLPUj2ABC9zG
	xddyLc6Et3G1In/Qf8nzJZA6hWi2IXqmqm7nTZEsPtJRJ+kBIWBoXMUeWpqx68N0HXQr
	JgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
	:date:message-id:subject:to:cc;
	bh=D/7XRd1/tCr78WFW3vWwBqCFPOVTu3ipCAwJbKTR3sM=;
	b=f5p9sJ8mTao9//vKqalyLAiokXnBEvr1+utMnbemdxIadM32xVX9TmgX7rmzl0qhOS
	R4DluZ5LRhbc2pb+LQ24Mk6GBT5Z3aKVNJVl+TV6a0yhY/XP37PpRkC5M2+vU3vGq9eT
	3wK+vzr6RIg9LCxKEiO5a8WwEo1g1KpqBGmJAbyVcF3RMaTvTSfClPkMF5bCik3n+E11
	J0Xo5V5CmSBwZSNJlQ6XUHXMB1Fb6XkpRaOvtJOiVYfEumDCZFaYLaJExso5e3XgJu1C
	Lvj6ohO7aNFmy6Crjsvf+pikpMZSnnlRu2RVKnIM7wynkFV0TKdfp14N3AJCUZrKMYyb
	cNyA==
X-Gm-Message-State: APzg51Apf8WUpmkh2oh2g5JPQQWVwVTVHemjma2tlypa5uJCtgmsAPKV
	TL5VV7NSXcVr8YJWOWNfBzZBHAnELd9PVx7I494=
X-Google-Smtp-Source: ANB0VdaJtsHX+mGb+PgOY4lSPK9gYwDcOwP6SeCi9nm/GZ7kCJGA0uGN1sRN6n2afAJg9+xocwU53ZAIWNU8G6Vy4nU=
X-Received: by 2002:a1f:9548:: with SMTP id
	x69-v6mr4421116vkd.75.1536446329459; 
	Sat, 08 Sep 2018 15:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <c6323c5a6230ad0faea75b4f31a5e7a9@bsmucker.eu.org>
	<CAMKF1sosGoqNaosDRLvyoEcU=Z2gbiDfQ5LNktCNMh+2YgXoZA@mail.gmail.com>
In-Reply-To: <CAMKF1sosGoqNaosDRLvyoEcU=Z2gbiDfQ5LNktCNMh+2YgXoZA@mail.gmail.com>
Sender: jon.szymaniak@gmail.com
X-Google-Sender-Delegation: jon.szymaniak@gmail.com
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Sat, 8 Sep 2018 17:38:38 -0500
X-Google-Sender-Auth: Wgs7bsAzLQvS2B5Z7Gw4mczDRY0
Message-ID: <CAPxrFVkUWDYVm0oGPceXG9nLZQUjBTDvd83XUq5ZjXMF20sUoA@mail.gmail.com>
To: bds@bsmucker.eu.org
Cc: yocto@yoctoproject.org
Subject: Re: Security updates question
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
X-List-Received-Date: Sat, 08 Sep 2018 22:38:51 -0000
Content-Type: multipart/alternative; boundary="000000000000af18a4057563c904"

--000000000000af18a4057563c904
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On Fri, Sep 7, 2018 at 3:36 PM Khem Raj <raj.khem@gmail.com> wrote:

> Hi Brian
>
> On Fri, Sep 7, 2018 at 1:25 PM Brian Smucker <bds@bsmucker.eu.org> wrote:
> >
> > Hello all,
> >
> > We have a device whose image is built using an older yocto image. It is
> > based on yocto Danny, if I recall correctly.
> >
> > How do users of yocto handle the need occasionally to update one or mor=
e
> > component packages to deal with security vulnerabilities?
> >
> > I am not a yocto expert and I was hoping there would be a clear way
> > forward here.
> >
> > Migrating all our recipes to the latest version of yocto probably shoul=
d
> > be done, but it would involve weeks of pain. I know, I started to do it
> > sometime back.
> >
> > So that is one option, but a very unattractive one at the moment.
> >
> > When we jumped into using Yocto, I was hoping that there would be a
> > clear answer to this, but I have been frustrated. Perhaps there is a
> > clear answer, but it's outside of what I know.
> >
> > What are my options and the tradeoffs of each?
>
> yocto project provided infra to build distributions. so you would have
> either built your own distribution or procured it from someone else e.g.
> OSVs, if its third party the they generally have security update schedule=
s
> that you can work with.
>
> If you build your own distro then you have freedom to make changes
> and patch the security vulnerability and deploy it.
> community maintains releases for quite some time and you can just
> cherry-pick the point releases which primarily get security fixes.
> danny is an old release and is not currently supported in community
>
> https://wiki.yoctoproject.org/wiki/Releases
>
> so you can still check if needed fixes are there in danny and build it.
> you can also work with some OE/yocto consultants to get this done
> for danny
>
> There are also binary feed based distributions like angstrom which can
> provide prebuilt packages ( ipks) but they also have support schedule
> and I am sure for angstrom danny based feeds are not updated.
>
> Thanks
> -Khem
>

To further expand on Khem's thoughts -- you can find some system update
options compared/contrasted here:

https://wiki.yoctoproject.org/wiki/System_Update

In general, if you track changes made to a supported release branch, the
commit logs tend to make it quite clear which changesets are addressing one
or more CVEs.  The Build History feature [1] can help you make sense of
everything that's in your image, and the cve-check BitBake class [2] can
help supplement whatever processes you use to track relevant CVEs.

[1]
https://www.yoctoproject.org/docs/2.5.1/dev-manual/dev-manual.html#maintain=
ing-build-output-quality
[2]
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/cve-check.bbc=
lass

If you=E2=80=99re designing your own update mechanism, or even evaluating s=
ome
options, there are plenty of important factors to consider. Each of these
may involve a number of critical design decisions, which must consider the
constraints, operating
environment, and needs of your specific product.

For example, a mechanism supporting over-the-air updates to a fleet of
maritime vessels over a low-data-rate wireless connection will likely
differ from one that is intended for IoT devices in the home.

Just a few important factors to consider include:

- Authenticity: How do you ensure that someone has not maliciously tampered
with an update? Typically, this is implemented using a digital signature
computed using an asymmetric cryptographic algorithm. This signature must
be verified prior to parsing or otherwise processing the contents of an
update. Devices would need to have a priori knowledge of the public portion
of the signing key, or that of a certificate authority that will have
signed any newly supplied signing certificates. I=E2=80=99m certainly biase=
d, but
strongly believe that this is the sort of thing you=E2=80=99ll want to have
reviewed by a third party, as there are plenty of potential pitfalls.

- Rollback Protection: How can you prevent an attacker from reverting a
device to an earlier, vulnerable state? If you have a  business case for
allowing customers to downgrade firmware, is it possible to maintain a
whitelisted set of downgrade options?

- Fault Tolerance: What happens if a failure (e.g. loss of power) occurs
during an update?  How can the system detect whether or not an update has
been successfully applied, and recover from a failure?  For devices with
ample storage media, a popular option seems to be an A/B partition layout,
in which an inactive system partition is updated and then switched to on
reboot, after the update is determined to have been applied successfully.
Any ability to track repeated boot failures could be leveraged to boot a
recovery image, which of course should enforce the authenticity & rollback
restrictions outlined above.

While I certainly understand your frustration, I think one thing to
recognize is how challenging of a task it would be to have a
one-size-fits-all solution maintained by the Yocto Project.  Instead, it
seems more practical (to me) to look toward application-domain specific
projects like https://mender.io, which themselves use Yocto-built images.
(Granted, I haven't really looked into Mender much -- so take this note
with a healthy does of skepticism.)

I realize I probably just gave you more questions than answers... but
hopefully in my rambling I've provided at lease some useful food for
thought.

Best regards,
Jon

--000000000000af18a4057563c904
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_quot=
e"><div>Hi Brian,</div><div><br></div><div dir=3D"ltr">On Fri, Sep 7, 2018 =
at 3:36 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi Brian<br>
<br>
On Fri, Sep 7, 2018 at 1:25 PM Brian Smucker &lt;<a href=3D"mailto:bds@bsmu=
cker.eu.org" target=3D"_blank">bds@bsmucker.eu.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt;<br>
&gt; We have a device whose image is built using an older yocto image. It i=
s<br>
&gt; based on yocto Danny, if I recall correctly.<br>
&gt;<br>
&gt; How do users of yocto handle the need occasionally to update one or mo=
re<br>
&gt; component packages to deal with security vulnerabilities?<br>
&gt;<br>
&gt; I am not a yocto expert and I was hoping there would be a clear way<br=
>
&gt; forward here.<br>
&gt;<br>
&gt; Migrating all our recipes to the latest version of yocto probably shou=
ld<br>
&gt; be done, but it would involve weeks of pain. I know, I started to do i=
t<br>
&gt; sometime back.<br>
&gt;<br>
&gt; So that is one option, but a very unattractive one at the moment.<br>
&gt;<br>
&gt; When we jumped into using Yocto, I was hoping that there would be a<br=
>
&gt; clear answer to this, but I have been frustrated. Perhaps there is a<b=
r>
&gt; clear answer, but it&#39;s outside of what I know.<br>
&gt;<br>
&gt; What are my options and the tradeoffs of each?<br>
<br>
yocto project provided infra to build distributions. so you would have<br>
either built your own distribution or procured it from someone else e.g.<br=
>
OSVs, if its third party the they generally have security update schedules<=
br>
that you can work with.<br>
<br>
If you build your own distro then you have freedom to make changes<br>
and patch the security vulnerability and deploy it.<br>
community maintains releases for quite some time and you can just<br>
cherry-pick the point releases which primarily get security fixes.<br>
danny is an old release and is not currently supported in community<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a><br>
<br>
so you can still check if needed fixes are there in danny and build it.<br>
you can also work with some OE/yocto consultants to get this done<br>
for danny<br>
<br>
There are also binary feed based distributions like angstrom which can<br>
provide prebuilt packages ( ipks) but they also have support schedule<br>
and I am sure for angstrom danny based feeds are not updated.<br>
<br>
Thanks<br>
-Khem<br></blockquote><div><br></div><div>To further expand on Khem&#39;s t=
houghts -- you can find some system update options compared/contrasted here=
:</div><div><br></div><div><div class=3D"gmail_quote"><div dir=3D"auto"><di=
v><a href=3D"https://wiki.yoctoproject.org/wiki/System_Update" target=3D"_b=
lank">https://wiki.yoctoproject.org/wiki/System_Update</a></div><div><br></=
div><div>In general, if you track changes made to a supported release branc=
h, the commit logs tend to make it quite clear which changesets are address=
ing one or more CVEs.=C2=A0 The Build History feature [1] can help you make=
 sense of everything that&#39;s in your image, and the cve-check BitBake cl=
ass [2] can help supplement whatever processes you use to track relevant CV=
Es.</div><div><br></div><div>[1]=C2=A0<a href=3D"https://www.yoctoproject.o=
rg/docs/2.5.1/dev-manual/dev-manual.html#maintaining-build-output-quality">=
https://www.yoctoproject.org/docs/2.5.1/dev-manual/dev-manual.html#maintain=
ing-build-output-quality</a></div><div>[2]=C2=A0<a href=3D"https://git.yoct=
oproject.org/cgit.cgi/poky/plain/meta/classes/cve-check.bbclass">https://gi=
t.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/cve-check.bbclass</a></=
div><br></div><div>If you=E2=80=99re designing your own update mechanism, o=
r even evaluating some options, there are plenty of important factors to co=
nsider. Each of these may involve a number of critical design decisions, wh=
ich must consider the constraints, operating=C2=A0</div><div>environment, a=
nd needs of your specific product.<br></div><div><br></div><div>For example=
, a mechanism supporting over-the-air updates to a fleet of maritime vessel=
s over a low-data-rate wireless connection will likely differ from one that=
 is intended for IoT devices in the home.=C2=A0<br></div><div><br></div><di=
v>Just a few important factors to consider include:</div><div><br></div><di=
v><div dir=3D"auto">- Authenticity: How do you ensure that someone has not =
maliciously tampered with an update? Typically, this is implemented using a=
 digital signature computed using an asymmetric cryptographic algorithm. Th=
is signature must be verified prior to parsing or otherwise processing the =
contents of an update. Devices would need to have a priori knowledge of the=
 public portion of the signing key, or that of a certificate authority that=
 will have signed any newly supplied signing certificates. I=E2=80=99m cert=
ainly biased, but strongly believe that this is the sort of thing you=E2=80=
=99ll want to have reviewed by a third party, as there are plenty of potent=
ial pitfalls.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Rollback=
 Protection: How can you prevent an attacker from reverting a device to an =
earlier, vulnerable state? If you have a=C2=A0 business case for allowing c=
ustomers to downgrade firmware, is it possible to maintain a whitelisted se=
t of downgrade options?</div><div dir=3D"auto"><br></div><div>- Fault Toler=
ance: What happens if a failure (e.g. loss of power) occurs during an updat=
e?=C2=A0 How can the system detect whether or not an update has been succes=
sfully applied, and recover from a failure?=C2=A0 For devices with ample st=
orage media, a popular option seems to be an A/B partition layout, in which=
 an inactive system partition is updated and then switched to on reboot, af=
ter the update is determined to have been applied successfully. Any ability=
 to track repeated boot failures could be leveraged to boot a recovery imag=
e, which of course should enforce the authenticity &amp; rollback restricti=
ons outlined above.</div></div></div></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">While I certainly understand your frustration, I think one th=
ing to recognize is how challenging of a task it would be to have a one-siz=
e-fits-all solution maintained by the Yocto Project.=C2=A0 Instead, it seem=
s more practical (to me) to look toward application-domain specific project=
s like <a href=3D"https://mender.io">https://mender.io</a>, which themselve=
s use Yocto-built images.=C2=A0 (Granted, I haven&#39;t really looked into =
Mender much -- so take this note with a healthy does of skepticism.)</div><=
div dir=3D"auto"><br></div><div>I realize I probably just gave you more que=
stions than answers... but hopefully in my rambling I&#39;ve provided at le=
ase some useful food for thought.</div><div><br></div><div>Best regards,</d=
iv><div>Jon</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><d=
iv><br></div></div></div></div></div>

--000000000000af18a4057563c904--
