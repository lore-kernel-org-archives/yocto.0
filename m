Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F3A0EC1431
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 11:22:18 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15981.1772536928595577558
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2026 03:22:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=NO7pFUI4;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Pu9qENN/;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.145, mailfrom: paul@pbarker.dev)
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfout.phl.internal (Postfix) with ESMTP id 95BEEEC0075;
	Tue,  3 Mar 2026 06:22:07 -0500 (EST)
Received: from phl-imap-04 ([10.202.2.82])
  by phl-compute-11.internal (MEProxy); Tue, 03 Mar 2026 06:22:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1772536927; x=1772623327; bh=wgk96F8xfB
	jGaxWe/4hSQBm7iRpSbxjRAR8y3zvb8BE=; b=NO7pFUI4NGgU9FEd6JD8Jq1mov
	0XaxCM5bav/Xjb5uPCqdAAKopBlYyz6esM+So0v69fZp43id1shsTlFu93zASuu8
	dhMz05zapEzcT8aIWQEbn9Pz52PZTdj1+WwldTD2W3wHO5d5SDthBJAQrbp8GbcT
	uFJTJWblj4DGKTSekbDcjJNt4jE5xXRL6xFs/TRBM4eQxh+2+h0vhGJ0dgyQfODz
	DmOyOOe/S6PuVGl+n1AM/kvNVC2NoIBhz+JgGOu+FtWJqTU9jvlkGu7LCCaKKdWW
	DkJm6Lsx9s0cyFjmc9AEt3LMBU95+YWvVpmq4JegMDRtCgiB3QdG/TGTzExw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772536927; x=1772623327; bh=wgk96F8xfBjGaxWe/4hSQBm7iRpSbxjRAR8
	y3zvb8BE=; b=Pu9qENN/SgKXLySfxw8rJno2mlVKpVVLkgziU769XRGzvplpw/C
	QPZDHG5k7OY/MTSPbNk2Y4leNVEy983DvbmXm1VSrj+p8ZhLIWyItPvjWyX7+SIA
	Re2mt6It9k/6n89O6O3WpC62/o5VnHMn+ssQcp3F5tZWGSmWwA58g7I3KiTG+i2M
	jrRAQCDNMvOlT3LUGvd0snA05/NRzxvEMg/lFX0mdBriwHF8ZQ+RR/C/Aanvrury
	NfQlvc3Z7OM253g4zzRSbK14lV2X9JuOhVOuYMxCpP2C0IxYKa/WDQ8gvr/vUzzo
	pHr5M7bG0JloOBH9AHiikhxlbtw+W80K8AA==
X-ME-Sender: <xms:X8SmaT76Dd6W_Jtq_xHREvq1LvwqHzeerjKvobr9jqtoh8Ke9jiaHQ>
    <xme:X8SmaTsUfmvTCc610kbluDJBpdud_sj1AzSwP8hgO7a4ea-ZHhmuJ8WvnBhDPZ5Pq
    8vhjHiSPMxoMO_INFvcOrJgMb0gRys0VcysEodGLPWH6TA7RroM9Q0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddviedtgeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkfgjfhfutgesrgdtreerre
    dtjeenucfhrhhomhepfdfrrghulhcuuegrrhhkvghrfdcuoehprghulhesphgsrghrkhgv
    rhdruggvvheqnecuggftrfgrthhtvghrnhepvdehteejleehveekieeuffekheegudeghe
    eugfeuvefgheelheevheefveevvdeunecuffhomhgrihhnpehprhgvthgrlhigrdgtohhm
    pdhophgvnhgvmhgsvgguuggvugdrohhrghdphihotghtohhprhhojhgvtghtrdhorhhgpd
    guohgtkhgvrhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthhtohepvd
    dpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhpvghnvghmsggvugguvgguqdgr
    rhgthhhithgvtghtuhhrvgeslhhishhtshdrohhpvghnvghmsggvugguvggurdhorhhgpd
    hrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:X8SmaUOlsMo-Zh9h0UodUpydLzLqaQYrqbJ3m73chJCow95uhOVKTQ>
    <xmx:X8SmafR6DBOlg3NVQIf5A5T-52APbcEEQVCTbMFxCbdXxMS4VbASIA>
    <xmx:X8SmaaZETB8BpzzYIUSMXkrCxsO1juvlezhz2ojutia3gjXbIdIMmg>
    <xmx:X8SmaU1WAMhfIKVZctc2KS7Kxkcqd8HHbNbEbu_V_DeQPjGPiHDdJw>
    <xmx:X8SmafIaQ6IEPUo7z0ySe1NFS-iYKZ4PIf50n5Rh2CF-Vm4sCTNfrXnB>
Feedback-ID: i51494658:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 49EF7B60071; Tue,  3 Mar 2026 06:22:07 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ApUGYZBwQzER
Date: Tue, 03 Mar 2026 11:21:47 +0000
From: "Paul Barker" <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org,
 openembedded-architecture@lists.openembedded.org
Message-Id: <4038ae73-4efd-47d7-bf11-59fb01bf9682@app.fastmail.com>
In-Reply-To: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
References: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
Subject: Re: RFQ: Yocto Project Reference Containers
Content-Type: multipart/alternative;
 boundary=f956f82d554c4605b0d43c4ae3e3559c
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2026 11:22:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66295

--f956f82d554c4605b0d43c4ae3e3559c
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

The response period for this RFQ is now closed and I have acknowledged e=
ach submission that we have received. In the unlikely event that you've =
sent a response to the RFQ and not got an acknowledgement email from me,=
 please reach out to me this week.

I'll provide an update once the Yocto Project TSC has made a decision on=
 our next steps.

Thanks,
Paul

On Mon, 23 Feb 2026, at 12:10, Paul Barker wrote:
> Hi all,
>=20
> The Yocto Project has identified an opportunity to make a significant =
impact within the Linux Containers space. We can build on recent improve=
ments to the way container images can be built and tested with Yocto Pro=
ject tooling, as presented by Bruce Ashfield at the recent OpenEmbedded =
Workshop in Brussels (slides: https://pretalx.com/media/openembedded-wor=
kshop-2026-2025/submissions/ZGLVF7/resources/_0Jc2imX.pdf). This approac=
h gives us repeatable, auditable, curated containers using the Yocto Pro=
ject=E2=80=99s standard build process, which includes all of the existin=
g benefits that come with our builds.
>=20
> To achieve our goals, changes will be needed in metadata layers and th=
e autobuilder configuration. We would like to move forward with these ch=
anges rapidly and so we need 2-3 months of contractor help to turn this =
into an end to end technology demo. We invite individuals and organisati=
ons who are able to deliver the Statement of Work outlined below to subm=
it quotations to the project.
>=20
> Responses should be submitted by email to tsc@lists.yoctoproject.org b=
efore *Monday 2nd March 2026, 23:59 PST*.
> Background
>=20
> The Yocto Project is a highly capable toolkit for building Linux image=
s and distributions. We have achieved extensive use within the Embedded =
Linux space, as well as expanding to support real-time operating systems=
 (RTOS) such as Zephyr. We have a long history of leading the way with o=
ur tools to support compliance, including license manifest generation, S=
BOM creation, CVE tracking and source archival. With the advent of the E=
U Cyber Resilience Act (CRA), these compliance tools have become even mo=
re relevant and are needed across the whole software industry, not just =
in the Embedded space.
>=20
> Within the wider Linux containers ecosystem, current compliance tools =
work by scanning a generated container image and attempting to identify =
the included components. This works well when all components are install=
ed via a distribution=E2=80=99s package manager and when manually instal=
led software components come with their own pre-generated SBOM. However,=
 as container image generation is essentially a free-form process, there=
 is no way to ensure that all components will be correctly identified an=
d no guarantee of reproducibility.
>=20
> These approaches can be contrasted with the tooling provided by the Yo=
cto Project. Here the builds system owns the complete image creation pro=
cess, using strongly delineated steps of source fetching, compilation, p=
ackaging and rootfs creation. We provide clear guidance on best practice=
s and can detect many common mistakes that can impact the quality of com=
pliance data (for example, we can prevent attempts to download sources o=
utside of the appropriate fetch stage). Reproducibility is treated as a =
first-class project goal and is covered by our test suite. These feature=
s provide much stronger guarantees about the quality of the generated co=
mpliance data than can be achieved with a free-form process.
>=20
> We support building Linux container images using Yocto Project via the=
 meta-virtualization layer. Recent improvements allow for container gene=
ration using standard container tools such as docker, without the need f=
or elevated (root) privileges or other workaround, which was the missing=
 piece of making containers a primary project technology.
> Goals
>=20
> To fully demonstrate the project=E2=80=99s container capabilities, the=
 project would like to show we can build and publish containers. We want=
 to do this by creating and populating a reference container registry wi=
th sample container images accompanied by comprehensive SBOMs. The proce=
ss of building and publishing images needs to be fully automated, runnin=
g regularly on our autobuilder cluster to ensure that the reference imag=
es remain up-to-date with changes to our build system and are fully inte=
grated into our CI workflow. Test cases and documentation need to be exp=
anded to cover the new features, and developers need to be guided toward=
s best practices when customising the reference images for production us=
e cases.
> Required Skills
>=20
>  =E2=80=A2 Experience of Yocto Project/OpenEmbedded builds
>  =E2=80=A2 Knowledge of container image generation and best practises
>  =E2=80=A2 Knowledge of publishing containers and container registries
>  =E2=80=A2 Experience and knowledge of the Yocto Projects CI infrastru=
cture and tooling/processes
> Statement of Work
>=20
> **Reference container recipes**
>=20
> New recipes must be defined for an initial set of reference container =
images, using the `image-oci` bbclass in meta-virtualization. The initia=
l set should focus on software which is commonly deployed via containers=
, such as:
>  =E2=80=A2 A minimal image (based on core-image-minimal)
>  =E2=80=A2 A Python 3 base image
>  =E2=80=A2 A sample web application written in Python
>  =E2=80=A2 A PostgreSQL database server
>  =E2=80=A2 A multi-service container using systemd to manage services
> The above list is not intended to be prescriptive - we appreciate inpu=
t on appropriate reference container images. The final list of approxima=
tely 3-5 reference container images will be agreed with the Yocto Projec=
t TSC.
>=20
> Reference container images should be built with the standard poky dist=
ro config. They should build for multiple architectures - initially x86-=
64, aarch64 and riscv64.
>=20
> This task requires recipes for the agreed list of reference container =
images to be added to the meta-virtualization layer.
> **Test cases**
>=20
> We must be able to test that the container runtime and the reference c=
ontainer images can be built and that they behave as expected.
>=20
> This task requires creation of new oeqa selftest cases which perform b=
uild and runtime testing of the reference container images using the cho=
sen container runtime. These cases should ensure that the container runt=
ime is able to create containers from the reference container images, st=
art the containers, interact with them and stop them without errors.
> **Autobuilder integration**
>=20
> The new test cases must be executed on the project autobuilder instanc=
e as part of our regular testing.
>=20
> This task consists of any integration work required to get the test ca=
ses running on the autobuilder. It may require modification of the contr=
oller configuration (yocto-autobuilder2), build/test scripts (yocto-auto=
builder-helper) and working with Linux Foundation IT to make configurati=
on changes to the autobuilder workers (such as installing additional hos=
t software).
> **Publishing reference containers**
>=20
> The reference container images must be published to a publicly accessi=
ble container registry, as multi-arch images with support for at least x=
86-64, aarch64 and riscv64. Images should be tagged in line with contain=
er best practices. Due to usage restrictions and rate limits, Docker Hub=
 should not be used. In line with the Yocto Project approach of owning o=
ur infrastructure, we should run our own container registry if possible.
>=20
> This task requires working with Linux Foundation IT to setup a contain=
er registry server for the project - all required system administration =
tasks will be performed by Linux Foundation IT but they may require advi=
ce and support with things like selecting a container registry implement=
ation that meets our needs.
>=20
> This task also requires integration work within the project autobuilde=
r instance to publish container images to the registry. It may require m=
odification of the controller configuration (yocto-autobuilder2), build/=
test scripts (yocto-autobuilder-helper) and working with Linux Foundatio=
n IT to make configuration changes to the autobuilder workers (such as i=
nstalling additional host software).
> **Publishing SBOM attestations**
>=20
> SBOMs should be generated for the reference container images and publi=
shed to the container registry as build attestations and/or OCI layers a=
s appropriate.
>=20
> This task requires integration work within the project autobuilder ins=
tance to publish SBOM build attestations along with container images. It=
 is likely to require modification of the autobuilder build/test scripts=
 (yocto-autobuilder-helper).
> **Documentation**
>=20
> All new features must be well documented. Our documentation should gui=
de developers on how to customise the reference container images, follow=
ing best practices and making full use of compliance tools like SBOM gen=
eration.
>=20
> This task requires working with our documentation writer to cover the =
new features, bbclasses and reference container images added as part of =
this work. The majority of documentation changes can be made by our docu=
mentation writer, but they will require guidance and review of their pro=
posed changes.
> References
>=20
>  =E2=80=A2 openembeded-core layer: _https://git.openembedded.org/opene=
mbedded-core/_
>  =E2=80=A2 meta-virtualization layer: _https://git.yoctoproject.org/me=
ta-virtualization_
>  =E2=80=A2 Autobuilder configuration: _https://git.yoctoproject.org/yo=
cto-autobuilder2_
>  =E2=80=A2 Autobuilder helper scripts: _https://git.yoctoproject.org/y=
octo-autobuilder-helper_
>  =E2=80=A2 Documentation: _https://git.yoctoproject.org/yocto-docs_
>  =E2=80=A2 OCI image attestation storage: _https://docs.docker.com/bui=
ld/metadata/attestations/attestation-storage/#attestation-blob_
>  =E2=80=A2 OCI image SBOM attestations: _https://docs.docker.com/build=
/metadata/attestations/sbom/_
>=20
> Best regards,
>=20
> Paul Barker
> Ecosystem Engineering & Operations Lead, Yocto Project


--f956f82d554c4605b0d43c4ae3e3559c
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div>Hi all,</div=
><div><br></div><div>The response period for this RFQ is now closed and =
I have acknowledged each submission that we have received. In the unlike=
ly event that you've sent a response to the RFQ and not got an acknowled=
gement email from me, please reach out to me this week.</div><div><br></=
div><div>I'll provide an update once the Yocto Project TSC has made a de=
cision on our next steps.</div><div><br></div><div>Thanks,</div><div>Pau=
l</div><div><br></div><div>On Mon, 23 Feb 2026, at 12:10, Paul Barker wr=
ote:</div><blockquote type=3D"cite" id=3D"qt" style=3D""><div>Hi all,</d=
iv><div><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0,=
 0);">The Yocto Project has identified an opportunity to make a signific=
ant impact within the Linux Containers space. We can build on recent imp=
rovements to the way container images can be built and tested with Yocto=
 Project tooling, as presented by Bruce Ashfield at the recent OpenEmbed=
ded Workshop in Brussels (slides:&nbsp;</span><a href=3D"https://pretalx=
.com/media/openembedded-workshop-2026-2025/submissions/ZGLVF7/resources/=
_0Jc2imX.pdf">https://pretalx.com/media/openembedded-workshop-2026-2025/=
submissions/ZGLVF7/resources/_0Jc2imX.pdf</a>).&nbsp;This approach gives=
 us repeatable, auditable, curated containers using the Yocto Project=E2=
=80=99s standard build process, which includes all of the existing benef=
its that come with our builds.</div><div><br></div><div><span class=3D"q=
t-color" style=3D"color:rgb(0, 0, 0);">To achieve our goals, changes wil=
l be needed in metadata layers and the autobuilder configuration. We wou=
ld like to move forward with these changes rapidly and so </span>we need=
 2-3 months of contractor help to turn this into an end to end technolog=
y demo<span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);">. We invite=
 individuals and organisations who are able to deliver the Statement of =
Work outlined below to submit quotations to the project.</span></div><di=
v><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);">=
Responses should be submitted by email to&nbsp;</span><a href=3D"mailto:=
tsc@lists.yoctoproject.org" style=3D"">tsc@lists.yoctoproject.org</a>&nb=
sp;before <b>Monday 2nd March 2026, 23:59 PST</b>.</div><h2><span class=3D=
"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" st=
yle=3D"background-color:transparent;"></span>Background</span></h2><div>=
<span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt=
-highlight" style=3D"background-color:transparent;"></span>The Yocto Pro=
ject is a highly capable toolkit for building Linux images and distribut=
ions. We have achieved extensive use within the Embedded Linux space, as=
 well as expanding to support real-time operating systems (RTOS) such as=
 Zephyr. We have a long history of leading the way with our tools to sup=
port compliance, including license manifest generation, SBOM creation, C=
VE tracking and source archival. With the advent of the EU Cyber Resilie=
nce Act (CRA), these compliance tools have become even more relevant and=
 are needed across the whole software industry, not just in the Embedded=
 space.</span></div><div><br></div><div><span class=3D"qt-color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"background-c=
olor:transparent;"></span>Within the wider Linux containers ecosystem, c=
urrent compliance tools work by scanning a generated container image and=
 attempting to identify the included components. This works well when al=
l components are installed via a distribution=E2=80=99s package manager =
and when manually installed software components come with their own pre-=
generated SBOM. However, as container image generation is essentially a =
free-form process, there is no way to ensure that all components will be=
 correctly identified and no guarantee of reproducibility.</span></div><=
div><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);=
"><span class=3D"qt-highlight" style=3D"background-color:transparent;"><=
/span>These approaches can be contrasted with the tooling provided by th=
e Yocto Project. Here the builds system owns the complete image creation=
 process, using strongly delineated steps of source fetching, compilatio=
n, packaging and rootfs creation. We provide clear guidance on best prac=
tices and can detect many common mistakes that can impact the quality of=
 compliance data (for example, we can prevent attempts to download sourc=
es outside of the appropriate fetch stage). Reproducibility is treated a=
s a first-class project goal and is covered by our test suite. These fea=
tures provide much stronger guarantees about the quality of the generate=
d compliance data than can be achieved with a free-form process.</span><=
/div><div><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, =
0, 0);"><span class=3D"qt-highlight" style=3D"background-color:transpare=
nt;"></span>We support building Linux container images using Yocto Proje=
ct via the meta-virtualization layer. Recent improvements allow for cont=
ainer generation using standard container tools such as docker, without =
the need for elevated (root) privileges or other workaround, which was t=
he missing piece of making containers a primary project technology.</spa=
n></div><h2><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span=
 class=3D"qt-highlight" style=3D"background-color:transparent;"></span>G=
oals</span></h2><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0=
);"><span class=3D"qt-highlight" style=3D"background-color:transparent;"=
></span>To fully demonstrate the project=E2=80=99s container capabilitie=
s, the project would like to show we can build and publish containers. W=
e want to do this by creating and populating a reference container regis=
try with sample container images accompanied by comprehensive SBOMs. The=
 process of building and publishing images needs to be fully automated, =
running regularly on our autobuilder cluster to ensure that the referenc=
e images remain up-to-date with changes to our build system and are full=
y integrated into our CI workflow. Test cases and documentation need to =
be expanded to cover the new features, and developers need to be guided =
towards best practices when customising the reference images for product=
ion use cases.</span></div><h2><span class=3D"qt-color" style=3D"color:r=
gb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"background-color:tra=
nsparent;"></span>Required Skills</span></h2><ul><li><div><span class=3D=
"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" st=
yle=3D"background-color:transparent;"></span>Experience of Yocto Project=
/OpenEmbedded builds</span></div></li><li><div><span class=3D"qt-color" =
style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"back=
ground-color:transparent;"></span>Knowledge of container image generatio=
n and best practises</span></div></li><li><div><span class=3D"qt-color" =
style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"back=
ground-color:transparent;"></span>Knowledge of publishing containers and=
 container registries</span></div></li><li><div><span class=3D"qt-color"=
 style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"bac=
kground-color:transparent;"></span>Experience and knowledge of the Yocto=
 Projects CI infrastructure and tooling/processes</span></div></li></ul>=
<h2><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D=
"qt-highlight" style=3D"background-color:transparent;"></span>Statement =
of Work</span></h2><h3><span class=3D"qt-color" style=3D"color:rgb(67, 6=
7, 67);"><span class=3D"qt-highlight" style=3D"background-color:transpar=
ent;"></span><b><i>Reference container recipes</i></b></span></h3><div><=
span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-=
highlight" style=3D"background-color:transparent;"></span>New recipes mu=
st be defined for an initial set of reference container images, using th=
e `image-oci` bbclass in meta-virtualization. The initial set should foc=
us on software which is commonly deployed via containers, such as:</span=
></div><ul><li><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0)=
;"><span class=3D"qt-highlight" style=3D"background-color:transparent;">=
</span>A minimal image (based on core-image-minimal)</span></div></li><l=
i><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span clas=
s=3D"qt-highlight" style=3D"background-color:transparent;"></span>A Pyth=
on 3 base image</span></div></li><li><div><span class=3D"qt-color" style=
=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"backgroun=
d-color:transparent;"></span>A sample web application written in Python<=
/span></div></li><li><div><span class=3D"qt-color" style=3D"color:rgb(0,=
 0, 0);"><span class=3D"qt-highlight" style=3D"background-color:transpar=
ent;"></span>A PostgreSQL database server</span></div></li><li><div><spa=
n class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-hig=
hlight" style=3D"background-color:transparent;"></span>A multi-service c=
ontainer using systemd to manage services</span></div></li></ul><div><sp=
an class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-hi=
ghlight" style=3D"background-color:transparent;"></span>The above list i=
s not intended to be prescriptive - we appreciate input on appropriate r=
eference container images. The final list of approximately 3-5 reference=
 container images will be agreed with the Yocto Project TSC.</span></div=
><div><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0=
);"><span class=3D"qt-highlight" style=3D"background-color:transparent;"=
></span>Reference container images should be built with the standard pok=
y distro config. They should build for multiple architectures - initiall=
y x86-64, aarch64 and riscv64.</span></div><div><br></div><div><span cla=
ss=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highligh=
t" style=3D"background-color:transparent;"></span>This task requires rec=
ipes for the agreed list of reference container images to be added to th=
e meta-virtualization layer.</span></div><h3><span class=3D"qt-color" st=
yle=3D"color:rgb(67, 67, 67);"><span class=3D"qt-highlight" style=3D"bac=
kground-color:transparent;"></span><b><i>Test cases</i></b></span></h3><=
div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D=
"qt-highlight" style=3D"background-color:transparent;"></span>We must be=
 able to test that the container runtime and the reference container ima=
ges can be built and that they behave as expected.</span></div><div><br>=
</div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span =
class=3D"qt-highlight" style=3D"background-color:transparent;"></span>Th=
is task requires creation of new oeqa selftest cases which perform build=
 and runtime testing of the reference container images using the chosen =
container runtime. These cases should ensure that the container runtime =
is able to create containers from the reference container images, start =
the containers, interact with them and stop them without errors.</span><=
/div><h3><span class=3D"qt-color" style=3D"color:rgb(67, 67, 67);"><span=
 class=3D"qt-highlight" style=3D"background-color:transparent;"></span><=
b><i>Autobuilder integration</i></b></span></h3><div><span class=3D"qt-c=
olor" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D=
"background-color:transparent;"></span>The new test cases must be execut=
ed on the project autobuilder instance as part of our regular testing.</=
span></div><div><br></div><div><span class=3D"qt-color" style=3D"color:r=
gb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"background-color:tra=
nsparent;"></span>This task consists of any integration work required to=
 get the test cases running on the autobuilder. It may require modificat=
ion of the controller configuration (yocto-autobuilder2), build/test scr=
ipts (yocto-autobuilder-helper) and working with Linux Foundation IT to =
make configuration changes to the autobuilder workers (such as installin=
g additional host software).</span></div><h3><span class=3D"qt-color" st=
yle=3D"color:rgb(67, 67, 67);"><span class=3D"qt-highlight" style=3D"bac=
kground-color:transparent;"></span><b><i>Publishing reference containers=
</i></b></span></h3><div><span class=3D"qt-color" style=3D"color:rgb(0, =
0, 0);"><span class=3D"qt-highlight" style=3D"background-color:transpare=
nt;"></span>The reference container images must be published to a public=
ly accessible container registry, as multi-arch images with support for =
at least x86-64, aarch64 and riscv64. Images should be tagged in line wi=
th container best practices. Due to usage restrictions and rate limits, =
Docker Hub should not be used. In line with the Yocto Project approach o=
f owning our infrastructure, we should run our own container registry if=
 possible.</span></div><div><br></div><div><span class=3D"qt-color" styl=
e=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"backgrou=
nd-color:transparent;"></span>This task requires working with Linux Foun=
dation IT to setup a container registry server for the project - all req=
uired system administration tasks will be performed by Linux Foundation =
IT but they may require advice and support with things like selecting a =
container registry implementation that meets our needs.</span></div><div=
><br></div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><=
span class=3D"qt-highlight" style=3D"background-color:transparent;"></sp=
an>This task also requires integration work within the project autobuild=
er instance to publish container images to the registry. It may require =
modification of the controller configuration (yocto-autobuilder2), build=
/test scripts (yocto-autobuilder-helper) and working with Linux Foundati=
on IT to make configuration changes to the autobuilder workers (such as =
installing additional host software).</span></div><h3><span class=3D"qt-=
color" style=3D"color:rgb(67, 67, 67);"><span class=3D"qt-highlight" sty=
le=3D"background-color:transparent;"></span><b><i>Publishing SBOM attest=
ations</i></b></span></h3><div><span class=3D"qt-color" style=3D"color:r=
gb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"background-color:tra=
nsparent;"></span>SBOMs should be generated for the reference container =
images and published to the container registry as build attestations and=
/or OCI layers as appropriate.</span></div><div><br></div><div><span cla=
ss=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highligh=
t" style=3D"background-color:transparent;"></span>This task requires int=
egration work within the project autobuilder instance to publish SBOM bu=
ild attestations along with container images. It is likely to require mo=
dification of the autobuilder build/test scripts (yocto-autobuilder-help=
er).</span></div><h3><span class=3D"qt-color" style=3D"color:rgb(67, 67,=
 67);"><span class=3D"qt-highlight" style=3D"background-color:transparen=
t;"></span><b><i>Documentation</i></b></span></h3><div><span class=3D"qt=
-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=
=3D"background-color:transparent;"></span>All new features must be well =
documented. Our documentation should guide developers on how to customis=
e the reference container images, following best practices and making fu=
ll use of compliance tools like SBOM generation.</span></div><div><br></=
div><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span cl=
ass=3D"qt-highlight" style=3D"background-color:transparent;"></span>This=
 task requires working with our documentation writer to cover the new fe=
atures, bbclasses and reference container images added as part of this w=
ork. The majority of documentation changes can be made by our documentat=
ion writer, but they will require guidance and review of their proposed =
changes.</span></div><h2><span class=3D"qt-color" style=3D"color:rgb(0, =
0, 0);"><span class=3D"qt-highlight" style=3D"background-color:transpare=
nt;"></span>References</span></h2><ul><li><div><span class=3D"qt-color" =
style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"back=
ground-color:transparent;"></span>openembeded-core layer: </span><a href=
=3D"https://git.openembedded.org/openembedded-core/"><span class=3D"qt-c=
olor" style=3D"color:rgb(17, 85, 204);"><span class=3D"qt-highlight" sty=
le=3D"background-color:transparent;"></span><u>https://git.openembedded.=
org/openembedded-core/</u></span></a></div></li><li><div><span class=3D"=
qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" sty=
le=3D"background-color:transparent;"></span>meta-virtualization layer: <=
/span><a href=3D"https://git.yoctoproject.org/meta-virtualization"><span=
 class=3D"qt-color" style=3D"color:rgb(17, 85, 204);"><span class=3D"qt-=
highlight" style=3D"background-color:transparent;"></span><u>https://git=
.yoctoproject.org/meta-virtualization</u></span></a></div></li><li><div>=
<span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><span class=3D"qt=
-highlight" style=3D"background-color:transparent;"></span>Autobuilder c=
onfiguration: </span><a href=3D"https://git.yoctoproject.org/yocto-autob=
uilder2"><span class=3D"qt-color" style=3D"color:rgb(17, 85, 204);"><spa=
n class=3D"qt-highlight" style=3D"background-color:transparent;"></span>=
<u>https://git.yoctoproject.org/yocto-autobuilder2</u></span></a></div><=
/li><li><div><span class=3D"qt-color" style=3D"color:rgb(0, 0, 0);"><spa=
n class=3D"qt-highlight" style=3D"background-color:transparent;"></span>=
Autobuilder helper scripts: </span><a href=3D"https://git.yoctoproject.o=
rg/yocto-autobuilder-helper"><span class=3D"qt-color" style=3D"color:rgb=
(17, 85, 204);"><span class=3D"qt-highlight" style=3D"background-color:t=
ransparent;"></span><u>https://git.yoctoproject.org/yocto-autobuilder-he=
lper</u></span></a></div></li><li><div><span class=3D"qt-color" style=3D=
"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"background-c=
olor:transparent;"></span>Documentation: </span><a href=3D"https://git.y=
octoproject.org/yocto-docs"><span class=3D"qt-color" style=3D"color:rgb(=
17, 85, 204);"><span class=3D"qt-highlight" style=3D"background-color:tr=
ansparent;"></span><u>https://git.yoctoproject.org/yocto-docs</u></span>=
</a></div></li><li><div><span class=3D"qt-color" style=3D"color:rgb(0, 0=
, 0);">OCI image attestation storage: </span><a href=3D"https://docs.doc=
ker.com/build/metadata/attestations/attestation-storage/#attestation-blo=
b"><span class=3D"qt-color" style=3D"color:rgb(17, 85, 204);"><u>https:/=
/docs.docker.com/build/metadata/attestations/attestation-storage/#attest=
ation-blob</u></span></a></div></li><li><div><span class=3D"qt-color" st=
yle=3D"color:rgb(0, 0, 0);"><span class=3D"qt-highlight" style=3D"backgr=
ound-color:transparent;"></span>OCI image SBOM attestations: </span><a h=
ref=3D"https://docs.docker.com/build/metadata/attestations/sbom/"><span =
class=3D"qt-color" style=3D"color:rgb(17, 85, 204);"><span class=3D"qt-h=
ighlight" style=3D"background-color:transparent;"></span><u>https://docs=
.docker.com/build/metadata/attestations/sbom/</u></span></a></div></li><=
/ul><div><br></div><div>Best regards,</div><div><br></div><div id=3D"qt-=
sig133588112"><div class=3D"qt-signature">Paul Barker</div></div><div>Ec=
osystem Engineering &amp; Operations Lead, Yocto Project</div></blockquo=
te><div><br></div><div><br></div></body></html>
--f956f82d554c4605b0d43c4ae3e3559c--

