Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65063EA4FB4
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 12:10:35 +0000 (UTC)
Received: from fhigh-b6-smtp.messagingengine.com (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33839.1771848625734871986
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 04:10:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=RTyXAP+p;
 dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PfK9Tv5r;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.157, mailfrom: paul@pbarker.dev)
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfhigh.stl.internal (Postfix) with ESMTP id B9EFA7A013F;
	Mon, 23 Feb 2026 07:10:24 -0500 (EST)
Received: from phl-imap-04 ([10.202.2.82])
  by phl-compute-11.internal (MEProxy); Mon, 23 Feb 2026 07:10:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm2;
	 t=1771848624; x=1771935024; bh=zvqQ/ZMteVFuDNVMw9nFVb4p6WWnfnSN
	L0sVnUwLqLo=; b=RTyXAP+pCQQzBUVx4l8Re1i+YziB9BxXZjlatPCrztQkldsM
	n1hQtlQjy86xr5C81UhXICvOObRi47G4YWIgEuOCbxuuDNYzMppU+/3nqhPjeKqB
	Tbd2+sIwb3l5jBRu6plRkr1E0t3/8kMsphDu3GIl7HsKnNCbxo/LTUlE4Rp5Y+Pm
	z2BiJMkKW4bhUz81RCE3n5aGuawFgYZaJA8aLfm/SJWPZBRPBouWqoVRa4Kp07mz
	aG8TjWIl84OD6F5sg2g4dsa1HaLxxVrKv24zXEtaHwBYdaKw9BEXLTSBfXGgBICu
	/mxvdM9Ggh8qeeVVOWRAVzItu47g2r33BEt2Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1771848624; x=
	1771935024; bh=zvqQ/ZMteVFuDNVMw9nFVb4p6WWnfnSNL0sVnUwLqLo=; b=P
	fK9Tv5rCimiu/Te5oHBK5zyR897WoSYHASz98ipR73n6McidXoViNE4of9CpJuvb
	LocJChdAmRN8GH6wI4IIFsWYyB5qsr5p3db/PnIPttNTA/h9ws0LL6IJWo2Dwo7U
	y5bTzN3/NfPRZxxzeCNDIlc1dEjcXgRjVekrfh85WFYnej/1U0cuVTXXFb5v5QkI
	bJttFbxwMj1fcxyX7cky8Fe2B0FKxwibImbfd9ZeZ8PD0p0NGgHsZasyInWwmt+Z
	w1TaebN9qbSvKYo/rW4+swuzBSw+Itf5REtpGpYHkuM5o4TYkymKXYE/pVkK6Adf
	5bqnJLCNi9/LNZP8bb7OQ==
X-ME-Sender: <xms:sEOcaVmCZu_ImkSst_GeYL6EGnzfEMcJ4aPttB6O-YkvVPSXm9XZpA>
    <xme:sEOcabpJXDtEBYHlb8WDCnJKbOm1iDb4jI6AZshrqgNce6voVz-FVYSRI7StDvH9Z
    JflBxNr7QlxzAPxxW2-pgpThsY6aSjTrCYmK7rOEM4xu14Nydx8Pnvg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeejudelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkffutgesrgdtreerredtje
    enucfhrhhomhepfdfrrghulhcuuegrrhhkvghrfdcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepvedtiefgveehiefgheelheetudevjedtkefhje
    dvieduffelheeuvdeljeelvddunecuffhomhgrihhnpehprhgvthgrlhigrdgtohhmpdho
    phgvnhgvmhgsvgguuggvugdrohhrghdphihotghtohhprhhojhgvtghtrdhorhhgpdguoh
    gtkhgvrhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthhtohepvddpmh
    houggvpehsmhhtphhouhhtpdhrtghpthhtohepohhpvghnvghmsggvugguvgguqdgrrhgt
    hhhithgvtghtuhhrvgeslhhishhtshdrohhpvghnvghmsggvugguvggurdhorhhgpdhrtg
    hpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:sEOcaRbxBzIydze0agOmvysah3Q-IaIVMCtfY4gBaSgOplQs0RGniA>
    <xmx:sEOcactV22Emyxwa0hRkW0LcmaAOjxfuRHVA6lUYNOsmVrY0OGug-w>
    <xmx:sEOcaTGcMLa3sCezs7E18m9-QXsQEE0xkoW81ib9XK_FeJk5KvRe2w>
    <xmx:sEOcaXx-BGwFnf7S_1z0zmFLNSpg2vUMZrlwAtj8Jsp_0jdTG3m8uw>
    <xmx:sEOcaflLjKklnRxL3cti5r23hn0r86Nl_YjenEiSfTlNVTBeTtI1NXHt>
Feedback-ID: i51494658:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 214FBB6006E; Mon, 23 Feb 2026 07:10:24 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ApUGYZBwQzER
Date: Mon, 23 Feb 2026 12:10:03 +0000
From: "Paul Barker" <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org,
 openembedded-architecture@lists.openembedded.org
Message-Id: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
Subject: RFQ: Yocto Project Reference Containers
Content-Type: multipart/alternative;
 boundary=0a3f2e2cd3bc423e820d820c8390ea26
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 12:10:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66269

--0a3f2e2cd3bc423e820d820c8390ea26
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

The Yocto Project has identified an opportunity to make a significant im=
pact within the Linux Containers space. We can build on recent improveme=
nts to the way container images can be built and tested with Yocto Proje=
ct tooling, as presented by Bruce Ashfield at the recent OpenEmbedded Wo=
rkshop in Brussels (slides: https://pretalx.com/media/openembedded-works=
hop-2026-2025/submissions/ZGLVF7/resources/_0Jc2imX.pdf). This approach =
gives us repeatable, auditable, curated containers using the Yocto Proje=
ct=E2=80=99s standard build process, which includes all of the existing =
benefits that come with our builds.

To achieve our goals, changes will be needed in metadata layers and the =
autobuilder configuration. We would like to move forward with these chan=
ges rapidly and so we need 2-3 months of contractor help to turn this in=
to an end to end technology demo. We invite individuals and organisation=
s who are able to deliver the Statement of Work outlined below to submit=
 quotations to the project.

Responses should be submitted by email to tsc@lists.yoctoproject.org bef=
ore *Monday 2nd March 2026, 23:59 PST*.
Background

The Yocto Project is a highly capable toolkit for building Linux images =
and distributions. We have achieved extensive use within the Embedded Li=
nux space, as well as expanding to support real-time operating systems (=
RTOS) such as Zephyr. We have a long history of leading the way with our=
 tools to support compliance, including license manifest generation, SBO=
M creation, CVE tracking and source archival. With the advent of the EU =
Cyber Resilience Act (CRA), these compliance tools have become even more=
 relevant and are needed across the whole software industry, not just in=
 the Embedded space.

Within the wider Linux containers ecosystem, current compliance tools wo=
rk by scanning a generated container image and attempting to identify th=
e included components. This works well when all components are installed=
 via a distribution=E2=80=99s package manager and when manually installe=
d software components come with their own pre-generated SBOM. However, a=
s container image generation is essentially a free-form process, there i=
s no way to ensure that all components will be correctly identified and =
no guarantee of reproducibility.

These approaches can be contrasted with the tooling provided by the Yoct=
o Project. Here the builds system owns the complete image creation proce=
ss, using strongly delineated steps of source fetching, compilation, pac=
kaging and rootfs creation. We provide clear guidance on best practices =
and can detect many common mistakes that can impact the quality of compl=
iance data (for example, we can prevent attempts to download sources out=
side of the appropriate fetch stage). Reproducibility is treated as a fi=
rst-class project goal and is covered by our test suite. These features =
provide much stronger guarantees about the quality of the generated comp=
liance data than can be achieved with a free-form process.

We support building Linux container images using Yocto Project via the m=
eta-virtualization layer. Recent improvements allow for container genera=
tion using standard container tools such as docker, without the need for=
 elevated (root) privileges or other workaround, which was the missing p=
iece of making containers a primary project technology.
Goals

To fully demonstrate the project=E2=80=99s container capabilities, the p=
roject would like to show we can build and publish containers. We want t=
o do this by creating and populating a reference container registry with=
 sample container images accompanied by comprehensive SBOMs. The process=
 of building and publishing images needs to be fully automated, running =
regularly on our autobuilder cluster to ensure that the reference images=
 remain up-to-date with changes to our build system and are fully integr=
ated into our CI workflow. Test cases and documentation need to be expan=
ded to cover the new features, and developers need to be guided towards =
best practices when customising the reference images for production use =
cases.
Required Skills

 =E2=80=A2 Experience of Yocto Project/OpenEmbedded builds
 =E2=80=A2 Knowledge of container image generation and best practises
 =E2=80=A2 Knowledge of publishing containers and container registries
 =E2=80=A2 Experience and knowledge of the Yocto Projects CI infrastruct=
ure and tooling/processes
Statement of Work

**Reference container recipes**

New recipes must be defined for an initial set of reference container im=
ages, using the `image-oci` bbclass in meta-virtualization. The initial =
set should focus on software which is commonly deployed via containers, =
such as:
 =E2=80=A2 A minimal image (based on core-image-minimal)
 =E2=80=A2 A Python 3 base image
 =E2=80=A2 A sample web application written in Python
 =E2=80=A2 A PostgreSQL database server
 =E2=80=A2 A multi-service container using systemd to manage services
The above list is not intended to be prescriptive - we appreciate input =
on appropriate reference container images. The final list of approximate=
ly 3-5 reference container images will be agreed with the Yocto Project =
TSC.

Reference container images should be built with the standard poky distro=
 config. They should build for multiple architectures - initially x86-64=
, aarch64 and riscv64.

This task requires recipes for the agreed list of reference container im=
ages to be added to the meta-virtualization layer.
**Test cases**

We must be able to test that the container runtime and the reference con=
tainer images can be built and that they behave as expected.

This task requires creation of new oeqa selftest cases which perform bui=
ld and runtime testing of the reference container images using the chose=
n container runtime. These cases should ensure that the container runtim=
e is able to create containers from the reference container images, star=
t the containers, interact with them and stop them without errors.
**Autobuilder integration**

The new test cases must be executed on the project autobuilder instance =
as part of our regular testing.

This task consists of any integration work required to get the test case=
s running on the autobuilder. It may require modification of the control=
ler configuration (yocto-autobuilder2), build/test scripts (yocto-autobu=
ilder-helper) and working with Linux Foundation IT to make configuration=
 changes to the autobuilder workers (such as installing additional host =
software).
**Publishing reference containers**

The reference container images must be published to a publicly accessibl=
e container registry, as multi-arch images with support for at least x86=
-64, aarch64 and riscv64. Images should be tagged in line with container=
 best practices. Due to usage restrictions and rate limits, Docker Hub s=
hould not be used. In line with the Yocto Project approach of owning our=
 infrastructure, we should run our own container registry if possible.

This task requires working with Linux Foundation IT to setup a container=
 registry server for the project - all required system administration ta=
sks will be performed by Linux Foundation IT but they may require advice=
 and support with things like selecting a container registry implementat=
ion that meets our needs.

This task also requires integration work within the project autobuilder =
instance to publish container images to the registry. It may require mod=
ification of the controller configuration (yocto-autobuilder2), build/te=
st scripts (yocto-autobuilder-helper) and working with Linux Foundation =
IT to make configuration changes to the autobuilder workers (such as ins=
talling additional host software).
**Publishing SBOM attestations**

SBOMs should be generated for the reference container images and publish=
ed to the container registry as build attestations and/or OCI layers as =
appropriate.

This task requires integration work within the project autobuilder insta=
nce to publish SBOM build attestations along with container images. It i=
s likely to require modification of the autobuilder build/test scripts (=
yocto-autobuilder-helper).
**Documentation**

All new features must be well documented. Our documentation should guide=
 developers on how to customise the reference container images, followin=
g best practices and making full use of compliance tools like SBOM gener=
ation.

This task requires working with our documentation writer to cover the ne=
w features, bbclasses and reference container images added as part of th=
is work. The majority of documentation changes can be made by our docume=
ntation writer, but they will require guidance and review of their propo=
sed changes.
References

 =E2=80=A2 openembeded-core layer: _https://git.openembedded.org/openemb=
edded-core/_
 =E2=80=A2 meta-virtualization layer: _https://git.yoctoproject.org/meta=
-virtualization_
 =E2=80=A2 Autobuilder configuration: _https://git.yoctoproject.org/yoct=
o-autobuilder2_
 =E2=80=A2 Autobuilder helper scripts: _https://git.yoctoproject.org/yoc=
to-autobuilder-helper_
 =E2=80=A2 Documentation: _https://git.yoctoproject.org/yocto-docs_
 =E2=80=A2 OCI image attestation storage: _https://docs.docker.com/build=
/metadata/attestations/attestation-storage/#attestation-blob_
 =E2=80=A2 OCI image SBOM attestations: _https://docs.docker.com/build/m=
etadata/attestations/sbom/_

Best regards,

Paul Barker
Ecosystem Engineering & Operations Lead, Yocto Project
--0a3f2e2cd3bc423e820d820c8390ea26
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div>Hi all,</div=
><div><br></div><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"=
>The Yocto Project has identified an opportunity to make a significant i=
mpact within the Linux Containers space. We can build on recent improvem=
ents to the way container images can be built and tested with Yocto Proj=
ect tooling, as presented by Bruce Ashfield at the recent OpenEmbedded W=
orkshop in Brussels (slides:&nbsp;</span><a href=3D"https://pretalx.com/=
media/openembedded-workshop-2026-2025/submissions/ZGLVF7/resources/_0Jc2=
imX.pdf">https://pretalx.com/media/openembedded-workshop-2026-2025/submi=
ssions/ZGLVF7/resources/_0Jc2imX.pdf</a>).&nbsp;This approach gives us r=
epeatable, auditable, curated containers using the Yocto Project=E2=80=99=
s standard build process, which includes all of the existing benefits th=
at come with our builds.</div><div><br></div><div><span class=3D"color" =
style=3D"color:rgb(0, 0, 0);">To achieve our goals, changes will be need=
ed in metadata layers and the autobuilder configuration. We would like t=
o move forward with these changes rapidly and so </span>we need 2-3 mont=
hs of contractor help to turn this into an end to end technology demo<sp=
an class=3D"color" style=3D"color:rgb(0, 0, 0);">. We invite individuals=
 and organisations who are able to deliver the Statement of Work outline=
d below to submit quotations to the project.</span></div><div><br></div>=
<div><span class=3D"color" style=3D"color:rgb(0, 0, 0);">Responses shoul=
d be submitted by email to&nbsp;</span><a href=3D"mailto:tsc@lists.yocto=
project.org" style=3D"">tsc@lists.yoctoproject.org</a>&nbsp;before <b>Mo=
nday 2nd March 2026, 23:59 PST</b>.</div><h2><span class=3D"color" style=
=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-c=
olor:transparent;"></span>Background</span></h2><div><span class=3D"colo=
r" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"back=
ground-color:transparent;"></span>The Yocto Project is a highly capable =
toolkit for building Linux images and distributions. We have achieved ex=
tensive use within the Embedded Linux space, as well as expanding to sup=
port real-time operating systems (RTOS) such as Zephyr. We have a long h=
istory of leading the way with our tools to support compliance, includin=
g license manifest generation, SBOM creation, CVE tracking and source ar=
chival. With the advent of the EU Cyber Resilience Act (CRA), these comp=
liance tools have become even more relevant and are needed across the wh=
ole software industry, not just in the Embedded space.</span></div><div>=
<br></div><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span=
 class=3D"highlight" style=3D"background-color:transparent;"></span>With=
in the wider Linux containers ecosystem, current compliance tools work b=
y scanning a generated container image and attempting to identify the in=
cluded components. This works well when all components are installed via=
 a distribution=E2=80=99s package manager and when manually installed so=
ftware components come with their own pre-generated SBOM. However, as co=
ntainer image generation is essentially a free-form process, there is no=
 way to ensure that all components will be correctly identified and no g=
uarantee of reproducibility.</span></div><div><br></div><div><span class=
=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=
=3D"background-color:transparent;"></span>These approaches can be contra=
sted with the tooling provided by the Yocto Project. Here the builds sys=
tem owns the complete image creation process, using strongly delineated =
steps of source fetching, compilation, packaging and rootfs creation. We=
 provide clear guidance on best practices and can detect many common mis=
takes that can impact the quality of compliance data (for example, we ca=
n prevent attempts to download sources outside of the appropriate fetch =
stage). Reproducibility is treated as a first-class project goal and is =
covered by our test suite. These features provide much stronger guarante=
es about the quality of the generated compliance data than can be achiev=
ed with a free-form process.</span></div><div><br></div><div><span class=
=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=
=3D"background-color:transparent;"></span>We support building Linux cont=
ainer images using Yocto Project via the meta-virtualization layer. Rece=
nt improvements allow for container generation using standard container =
tools such as docker, without the need for elevated (root) privileges or=
 other workaround, which was the missing piece of making containers a pr=
imary project technology.</span></div><h2><span class=3D"color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-colo=
r:transparent;"></span>Goals</span></h2><div><span class=3D"color" style=
=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-c=
olor:transparent;"></span>To fully demonstrate the project=E2=80=99s con=
tainer capabilities, the project would like to show we can build and pub=
lish containers. We want to do this by creating and populating a referen=
ce container registry with sample container images accompanied by compre=
hensive SBOMs. The process of building and publishing images needs to be=
 fully automated, running regularly on our autobuilder cluster to ensure=
 that the reference images remain up-to-date with changes to our build s=
ystem and are fully integrated into our CI workflow. Test cases and docu=
mentation need to be expanded to cover the new features, and developers =
need to be guided towards best practices when customising the reference =
images for production use cases.</span></div><h2><span class=3D"color" s=
tyle=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"backgrou=
nd-color:transparent;"></span>Required Skills</span></h2><ul><li><div><s=
pan class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlig=
ht" style=3D"background-color:transparent;"></span>Experience of Yocto P=
roject/OpenEmbedded builds</span></div></li><li><div><span class=3D"colo=
r" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"back=
ground-color:transparent;"></span>Knowledge of container image generatio=
n and best practises</span></div></li><li><div><span class=3D"color" sty=
le=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background=
-color:transparent;"></span>Knowledge of publishing containers and conta=
iner registries</span></div></li><li><div><span class=3D"color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-colo=
r:transparent;"></span>Experience and knowledge of the Yocto Projects CI=
 infrastructure and tooling/processes</span></div></li></ul><h2><span cl=
ass=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" st=
yle=3D"background-color:transparent;"></span>Statement of Work</span></h=
2><h3><span class=3D"color" style=3D"color:rgb(67, 67, 67);"><span class=
=3D"highlight" style=3D"background-color:transparent;"></span><b><i>Refe=
rence container recipes</i></b></span></h3><div><span class=3D"color" st=
yle=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"backgroun=
d-color:transparent;"></span>New recipes must be defined for an initial =
set of reference container images, using the `image-oci` bbclass in meta=
-virtualization. The initial set should focus on software which is commo=
nly deployed via containers, such as:</span></div><ul><li><div><span cla=
ss=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" sty=
le=3D"background-color:transparent;"></span>A minimal image (based on co=
re-image-minimal)</span></div></li><li><div><span class=3D"color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-colo=
r:transparent;"></span>A Python 3 base image</span></div></li><li><div><=
span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highli=
ght" style=3D"background-color:transparent;"></span>A sample web applica=
tion written in Python</span></div></li><li><div><span class=3D"color" s=
tyle=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"backgrou=
nd-color:transparent;"></span>A PostgreSQL database server</span></div><=
/li><li><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span c=
lass=3D"highlight" style=3D"background-color:transparent;"></span>A mult=
i-service container using systemd to manage services</span></div></li></=
ul><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D=
"highlight" style=3D"background-color:transparent;"></span>The above lis=
t is not intended to be prescriptive - we appreciate input on appropriat=
e reference container images. The final list of approximately 3-5 refere=
nce container images will be agreed with the Yocto Project TSC.</span></=
div><div><br></div><div><span class=3D"color" style=3D"color:rgb(0, 0, 0=
);"><span class=3D"highlight" style=3D"background-color:transparent;"></=
span>Reference container images should be built with the standard poky d=
istro config. They should build for multiple architectures - initially x=
86-64, aarch64 and riscv64.</span></div><div><br></div><div><span class=3D=
"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D=
"background-color:transparent;"></span>This task requires recipes for th=
e agreed list of reference container images to be added to the meta-virt=
ualization layer.</span></div><h3><span class=3D"color" style=3D"color:r=
gb(67, 67, 67);"><span class=3D"highlight" style=3D"background-color:tra=
nsparent;"></span><b><i>Test cases</i></b></span></h3><div><span class=3D=
"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D=
"background-color:transparent;"></span>We must be able to test that the =
container runtime and the reference container images can be built and th=
at they behave as expected.</span></div><div><br></div><div><span class=3D=
"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D=
"background-color:transparent;"></span>This task requires creation of ne=
w oeqa selftest cases which perform build and runtime testing of the ref=
erence container images using the chosen container runtime. These cases =
should ensure that the container runtime is able to create containers fr=
om the reference container images, start the containers, interact with t=
hem and stop them without errors.</span></div><h3><span class=3D"color" =
style=3D"color:rgb(67, 67, 67);"><span class=3D"highlight" style=3D"back=
ground-color:transparent;"></span><b><i>Autobuilder integration</i></b><=
/span></h3><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><spa=
n class=3D"highlight" style=3D"background-color:transparent;"></span>The=
 new test cases must be executed on the project autobuilder instance as =
part of our regular testing.</span></div><div><br></div><div><span class=
=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=
=3D"background-color:transparent;"></span>This task consists of any inte=
gration work required to get the test cases running on the autobuilder. =
It may require modification of the controller configuration (yocto-autob=
uilder2), build/test scripts (yocto-autobuilder-helper) and working with=
 Linux Foundation IT to make configuration changes to the autobuilder wo=
rkers (such as installing additional host software).</span></div><h3><sp=
an class=3D"color" style=3D"color:rgb(67, 67, 67);"><span class=3D"highl=
ight" style=3D"background-color:transparent;"></span><b><i>Publishing re=
ference containers</i></b></span></h3><div><span class=3D"color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"background-colo=
r:transparent;"></span>The reference container images must be published =
to a publicly accessible container registry, as multi-arch images with s=
upport for at least x86-64, aarch64 and riscv64. Images should be tagged=
 in line with container best practices. Due to usage restrictions and ra=
te limits, Docker Hub should not be used. In line with the Yocto Project=
 approach of owning our infrastructure, we should run our own container =
registry if possible.</span></div><div><br></div><div><span class=3D"col=
or" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"bac=
kground-color:transparent;"></span>This task requires working with Linux=
 Foundation IT to setup a container registry server for the project - al=
l required system administration tasks will be performed by Linux Founda=
tion IT but they may require advice and support with things like selecti=
ng a container registry implementation that meets our needs.</span></div=
><div><br></div><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"=
><span class=3D"highlight" style=3D"background-color:transparent;"></spa=
n>This task also requires integration work within the project autobuilde=
r instance to publish container images to the registry. It may require m=
odification of the controller configuration (yocto-autobuilder2), build/=
test scripts (yocto-autobuilder-helper) and working with Linux Foundatio=
n IT to make configuration changes to the autobuilder workers (such as i=
nstalling additional host software).</span></div><h3><span class=3D"colo=
r" style=3D"color:rgb(67, 67, 67);"><span class=3D"highlight" style=3D"b=
ackground-color:transparent;"></span><b><i>Publishing SBOM attestations<=
/i></b></span></h3><div><span class=3D"color" style=3D"color:rgb(0, 0, 0=
);"><span class=3D"highlight" style=3D"background-color:transparent;"></=
span>SBOMs should be generated for the reference container images and pu=
blished to the container registry as build attestations and/or OCI layer=
s as appropriate.</span></div><div><br></div><div><span class=3D"color" =
style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"backgro=
und-color:transparent;"></span>This task requires integration work withi=
n the project autobuilder instance to publish SBOM build attestations al=
ong with container images. It is likely to require modification of the a=
utobuilder build/test scripts (yocto-autobuilder-helper).</span></div><h=
3><span class=3D"color" style=3D"color:rgb(67, 67, 67);"><span class=3D"=
highlight" style=3D"background-color:transparent;"></span><b><i>Document=
ation</i></b></span></h3><div><span class=3D"color" style=3D"color:rgb(0=
, 0, 0);"><span class=3D"highlight" style=3D"background-color:transparen=
t;"></span>All new features must be well documented. Our documentation s=
hould guide developers on how to customise the reference container image=
s, following best practices and making full use of compliance tools like=
 SBOM generation.</span></div><div><br></div><div><span class=3D"color" =
style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D"backgro=
und-color:transparent;"></span>This task requires working with our docum=
entation writer to cover the new features, bbclasses and reference conta=
iner images added as part of this work. The majority of documentation ch=
anges can be made by our documentation writer, but they will require gui=
dance and review of their proposed changes.</span></div><h2><span class=3D=
"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highlight" style=3D=
"background-color:transparent;"></span>References</span></h2><ul><li><di=
v><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"hig=
hlight" style=3D"background-color:transparent;"></span>openembeded-core =
layer: </span><a href=3D"https://git.openembedded.org/openembedded-core/=
"><span class=3D"color" style=3D"color:rgb(17, 85, 204);"><span class=3D=
"highlight" style=3D"background-color:transparent;"></span><u>https://gi=
t.openembedded.org/openembedded-core/</u></span></a></div></li><li><div>=
<span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highl=
ight" style=3D"background-color:transparent;"></span>meta-virtualization=
 layer: </span><a href=3D"https://git.yoctoproject.org/meta-virtualizati=
on"><span class=3D"color" style=3D"color:rgb(17, 85, 204);"><span class=3D=
"highlight" style=3D"background-color:transparent;"></span><u>https://gi=
t.yoctoproject.org/meta-virtualization</u></span></a></div></li><li><div=
><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"high=
light" style=3D"background-color:transparent;"></span>Autobuilder config=
uration: </span><a href=3D"https://git.yoctoproject.org/yocto-autobuilde=
r2"><span class=3D"color" style=3D"color:rgb(17, 85, 204);"><span class=3D=
"highlight" style=3D"background-color:transparent;"></span><u>https://gi=
t.yoctoproject.org/yocto-autobuilder2</u></span></a></div></li><li><div>=
<span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"highl=
ight" style=3D"background-color:transparent;"></span>Autobuilder helper =
scripts: </span><a href=3D"https://git.yoctoproject.org/yocto-autobuilde=
r-helper"><span class=3D"color" style=3D"color:rgb(17, 85, 204);"><span =
class=3D"highlight" style=3D"background-color:transparent;"></span><u>ht=
tps://git.yoctoproject.org/yocto-autobuilder-helper</u></span></a></div>=
</li><li><div><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span =
class=3D"highlight" style=3D"background-color:transparent;"></span>Docum=
entation: </span><a href=3D"https://git.yoctoproject.org/yocto-docs"><sp=
an class=3D"color" style=3D"color:rgb(17, 85, 204);"><span class=3D"high=
light" style=3D"background-color:transparent;"></span><u>https://git.yoc=
toproject.org/yocto-docs</u></span></a></div></li><li><div><span class=3D=
"color" style=3D"color:rgb(0, 0, 0);">OCI image attestation storage: </s=
pan><a href=3D"https://docs.docker.com/build/metadata/attestations/attes=
tation-storage/#attestation-blob"><span class=3D"color" style=3D"color:r=
gb(17, 85, 204);"><u>https://docs.docker.com/build/metadata/attestations=
/attestation-storage/#attestation-blob</u></span></a></div></li><li><div=
><span class=3D"color" style=3D"color:rgb(0, 0, 0);"><span class=3D"high=
light" style=3D"background-color:transparent;"></span>OCI image SBOM att=
estations: </span><a href=3D"https://docs.docker.com/build/metadata/atte=
stations/sbom/"><span class=3D"color" style=3D"color:rgb(17, 85, 204);">=
<span class=3D"highlight" style=3D"background-color:transparent;"></span=
><u>https://docs.docker.com/build/metadata/attestations/sbom/</u></span>=
</a></div></li></ul><div><br></div><div>Best regards,</div><div><br></di=
v><div id=3D"sig133588112"><div class=3D"signature">Paul Barker</div></d=
iv><div>Ecosystem Engineering &amp; Operations Lead, Yocto Project</div>=
</body></html>
--0a3f2e2cd3bc423e820d820c8390ea26--

