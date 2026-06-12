Return-Path: <diwateprashant44@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 703DDCD98CF
	for <webhook@archiver.kernel.org>; Fri, 12 Jun 2026 16:58:12 +0000 (UTC)
Subject: Yocto Lens - Static Analysis and Style Review Tool for Yocto Metadata
To: yocto@lists.yoctoproject.org
From: diwateprashant44@gmail.com
X-Originating-Location: IN (202.160.146.2)
X-Originating-Platform: Windows Chrome 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Jun 2026 09:58:03 -0700
Message-ID: <jddA.1781283483361370115.0k4O@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pGqH9T6x3dbsZ30MynrX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2026 16:58:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66595

--pGqH9T6x3dbsZ30MynrX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Community,

I've been working on a tool called *Yocto Lens* , an open-source static ana=
lysis and style review utility for Yocto/OpenEmbedded metadata.

The goal is to help identify common metadata issues before they reach BitBa=
ke builds or CI pipelines.

Current capabilities include:

* AUTOREV detection
* Floating SRCREV detection
* Hardcoded credential detection
* Layer configuration validation
* Recipe style checks
* License metadata validation
* bbappend analysis
* Recipe health scoring
* Interactive terminal dashboard
* JSON and SARIF export

Example:

yocto-lens meta-custom

GitHub Repository:

https://github.com/prashantdivate/yocto-lens ( https://github.com/prashantd=
ivate/yocto-lens?utm_source=3Dchatgpt.com )

Prebuilt binaries are available via GitHub Releases.

I would appreciate feedback from the community, especially regarding:

* false positives
* missing checks
* Yocto best practices
* CI integration ideas

Thanks,
Prashant Divate

--pGqH9T6x3dbsZ30MynrX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p data-start=3D"588" data-end=3D"610">Hello Yocto Community,</p>
<p data-start=3D"612" data-end=3D"751">I've been working on a tool called <=
strong data-start=3D"647" data-end=3D"661">Yocto Lens</strong>, an open-sou=
rce static analysis and style review utility for Yocto/OpenEmbedded metadat=
a.</p>
<p data-start=3D"753" data-end=3D"854">The goal is to help identify common =
metadata issues before they reach BitBake builds or CI pipelines.</p>
<p data-start=3D"856" data-end=3D"885">Current capabilities include:</p>
<ul data-start=3D"887" data-end=3D"1153">
<li data-section-id=3D"vmo3c9" data-start=3D"887" data-end=3D"906">AUTOREV =
detection</li>
<li data-section-id=3D"1bvuyac" data-start=3D"907" data-end=3D"934">Floatin=
g SRCREV detection</li>
<li data-section-id=3D"z8pqfu" data-start=3D"935" data-end=3D"967">Hardcode=
d credential detection</li>
<li data-section-id=3D"wtulo0" data-start=3D"968" data-end=3D"1000">Layer c=
onfiguration validation</li>
<li data-section-id=3D"18s43m" data-start=3D"1001" data-end=3D"1022">Recipe=
 style checks</li>
<li data-section-id=3D"7a56k5" data-start=3D"1023" data-end=3D"1052">Licens=
e metadata validation</li>
<li data-section-id=3D"vt0uno" data-start=3D"1053" data-end=3D"1072">bbappe=
nd analysis</li>
<li data-section-id=3D"hfbgi9" data-start=3D"1073" data-end=3D"1096">Recipe=
 health scoring</li>
<li data-section-id=3D"i0ez5s" data-start=3D"1097" data-end=3D"1129">Intera=
ctive terminal dashboard</li>
<li data-section-id=3D"1rvxf5c" data-start=3D"1130" data-end=3D"1153">JSON =
and SARIF export</li>
</ul>
<p data-start=3D"1155" data-end=3D"1163">Example:</p>
<div class=3D"relative w-full mt-4 mb-1">
<div class=3D"">
<div class=3D"contents">
<div class=3D"border border-token-border-light border-radius-3xl corner-sup=
erellipse/1.1 rounded-3xl">
<div class=3D"relative h-full w-full border-radius-3xl bg-token-bg-elevated=
-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPat=
hFallback">
<div class=3D"relative">
<div class=3D"h-full min-h-0 min-w-0">
<div class=3D"h-full min-h-0 min-w-0">
<div class=3D"">
<div class=3D"relative">
<div class=3D"">
<div class=3D"relative z-0 flex max-w-full">
<div id=3D"code-block-viewer" class=3D"q9tKkq_viewer cm-editor z-10 light:c=
m-light dark:cm-light flex h-full w-full flex-col items-stretch =CD=BCd =CD=
=BCr" dir=3D"ltr">
<div class=3D"cm-scroller">
<pre class=3D"cm-content q9tKkq_readonly m-0"><code><span>yocto-lens meta-c=
ustom</span></code></pre>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p data-start=3D"1201" data-end=3D"1219">GitHub Repository:</p>
<p data-start=3D"1221" data-end=3D"1265"><a class=3D"decorated-link" href=
=3D"https://github.com/prashantdivate/yocto-lens?utm_source=3Dchatgpt.com" =
target=3D"_new" data-start=3D"1221" data-end=3D"1265">https://github.com/pr=
ashantdivate/yocto-lens</a></p>
<p data-start=3D"1267" data-end=3D"1319">Prebuilt binaries are available vi=
a GitHub Releases.</p>
<p data-start=3D"1321" data-end=3D"1390">I would appreciate feedback from t=
he community, especially regarding:</p>
<ul data-start=3D"1391" data-end=3D"1471">
<li data-section-id=3D"aptg0d" data-start=3D"1391" data-end=3D"1408">false =
positives</li>
<li data-section-id=3D"1r802h" data-start=3D"1409" data-end=3D"1425">missin=
g checks</li>
<li data-section-id=3D"grzzhq" data-start=3D"1426" data-end=3D"1448">Yocto =
best practices</li>
<li data-section-id=3D"15d8ep2" data-start=3D"1449" data-end=3D"1471">CI in=
tegration ideas</li>
</ul>
<p data-start=3D"1473" data-end=3D"1496">Thanks,<br />Prashant Divate</p>
</div>

--pGqH9T6x3dbsZ30MynrX--

