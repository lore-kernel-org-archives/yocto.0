Return-Path: <chwoo@ls-electric.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3833C3DA4A
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 07:00:04 +0000 (UTC)
Subject: Re: [yocto] Docker exec/attach not working on overlayed root
To: =?UTF-8?B?QmVlaywgTMOpb24gdmFuIGRl?= <l.v.d.beek@student.tue.nl>, yocto@lists.yoctoproject.org
From: "ChangHyun Woo" <chwoo@ls-electric.com>
X-Originating-Location: KR (121.139.137.131)
X-Originating-Platform: Windows Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Jul 2024 00:00:00 -0700
References: <AM0PR09MB4148CD58509BA3C7C965923BAC7D9@AM0PR09MB4148.eurprd09.prod.outlook.com>
In-Reply-To: <AM0PR09MB4148CD58509BA3C7C965923BAC7D9@AM0PR09MB4148.eurprd09.prod.outlook.com>
Message-ID: <974.1722236400610817092@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rq2UPt2Jy50cTsbjDL6d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 07:00:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63581

--rq2UPt2Jy50cTsbjDL6d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Mr. van de Beek,

I am experiencing a problem similar to the one you described. Currently, I =
am using the "gatesgarth" branch, and while docker run , start , and attach=
 commands work as expected, I am encountering an issue with docker exec. Th=
e error message I receive is as follows:

"OCI runtime exec failed: exec failed: container_linux.go:370: starting con=
tainer process caused: read init-p: connection reset by peer: unknown"

Following your suggested solution, I mounted the SD card partition the /doc=
ker-data directory. According to docker info , the storage driver is correc=
tly mounted as overlay2. Despite this, docker exec still does not function =
correctly.

Here are the results from my docker info :

>=20
> Client:
> Debug Mode: false
> Server:
> Containers: 1
> Running: 1
> Paused: 0
> Stopped: 0
> Images: 1
> Server Version: v19.03.13-ce
> Storage Driver: overlay2
> Backing Filesystem: extfs
> Supports d_type: true
> Native Overlay Diff: true
> Logging Driver: json-file
> Cgroup Driver: cgroupfs
> Plugins:
> Volume: local
> Network: bridge host ipvlan macvlan null overlay
> Log: awslogs fluentd gcplogs gelf journald json-file local logentries
> splunk syslog
> Swarm: inactive
> Runtimes: runc
> Default Runtime: runc
> Init Binary: docker-init
> containerd version: 409c87ba59dd96965239573aa9458a3585c05468.m
> runc version: 49a73463331bd8ff44bb8349e33f4b2e1ae34b4f-dirty
> init version: fec3683-dirty (expected: fec3683b971d9)
> Kernel Version: 5.10.0-rt17-xilinx-v2021.2
> OSType: linux
> Architecture: armv7l
> CPUs: 1
> Total Memory: 1003MiB
> Name: XGI-CPUZ
> ID: 64TB:ZIGP:LHSH:UNMJ:QUPL:K2RJ:WPGG:DQPP:R4RZ:UMP7:EWIE:HVYH
> Docker Root Dir: /docker-data
> Debug Mode: false
> Username: chwools
> Registry: https://index.docker.io/v1/
> Labels:
> Experimental: false
> Insecure Registries:
> localhost:5000
> 127.0.0.0/8
> Registry Mirrors:
> http://localhost:5000/
> Live Restore Enabled: false
> WARNING: No swap limit support
>=20

Have you managed to resolve this issue? I have searched extensively for a s=
olution but have been unable to find one. Therefore, I am reaching out to y=
ou in hopes that you might be able to provide some guidance.

Thank you very much for your assistance.

Best regards,

ChangHyun Woo

--rq2UPt2Jy50cTsbjDL6d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Dear Mr. van de Beek,</div>
<div>&nbsp;</div>
<div>
<p>I am experiencing a problem similar to the one you described. Currently,=
 I am using the "gatesgarth" branch, and while <code>docker run</code>, <co=
de>start</code>, and <code>attach</code> commands work as expected, I am en=
countering an issue with <code>docker exec</code>. The error message I rece=
ive is as follows:</p>
<p>"OCI runtime exec failed: exec failed: container_linux.go:370: starting =
container process caused: read init-p: connection reset by peer: unknown"</=
p>
<p>Following your suggested solution, I mounted the SD card partition the <=
code>/docker-data</code> directory. According to <code>docker info</code>, =
the storage driver is correctly mounted as <code>overlay2</code>. Despite t=
his, <code>docker exec</code> still does not function correctly.</p>
<p>Here are the results from my <code>docker info</code>:</p>
<blockquote>
<div>Client:<br />&nbsp;Debug Mode: false</div>
<div>Server:<br />&nbsp;Containers: 1<br />&nbsp; Running: 1<br />&nbsp; Pa=
used: 0<br />&nbsp; Stopped: 0<br />&nbsp;Images: 1<br />&nbsp;Server Versi=
on: v19.03.13-ce<br />&nbsp;Storage Driver: overlay2<br />&nbsp; Backing Fi=
lesystem: extfs<br />&nbsp; Supports d_type: true<br />&nbsp; Native Overla=
y Diff: true<br />&nbsp;Logging Driver: json-file<br />&nbsp;Cgroup Driver:=
 cgroupfs<br />&nbsp;Plugins:<br />&nbsp; Volume: local<br />&nbsp; Network=
: bridge host ipvlan macvlan null overlay<br />&nbsp; Log: awslogs fluentd =
gcplogs gelf journald json-file local logentries splunk syslog<br />&nbsp;S=
warm: inactive<br />&nbsp;Runtimes: runc<br />&nbsp;Default Runtime: runc<b=
r />&nbsp;Init Binary: docker-init<br />&nbsp;containerd version: 409c87ba5=
9dd96965239573aa9458a3585c05468.m<br />&nbsp;runc version: 49a73463331bd8ff=
44bb8349e33f4b2e1ae34b4f-dirty<br />&nbsp;init version: fec3683-dirty (expe=
cted: fec3683b971d9)<br />&nbsp;Kernel Version: 5.10.0-rt17-xilinx-v2021.2<=
br />&nbsp;OSType: linux<br />&nbsp;Architecture: armv7l<br />&nbsp;CPUs: 1=
<br />&nbsp;Total Memory: 1003MiB<br />&nbsp;Name: XGI-CPUZ<br />&nbsp;ID: =
64TB:ZIGP:LHSH:UNMJ:QUPL:K2RJ:WPGG:DQPP:R4RZ:UMP7:EWIE:HVYH<br />&nbsp;Dock=
er Root Dir: /docker-data<br />&nbsp;Debug Mode: false<br />&nbsp;Username:=
 chwools<br />&nbsp;Registry: https://index.docker.io/v1/<br />&nbsp;Labels=
:<br />&nbsp;Experimental: false<br />&nbsp;Insecure Registries:<br />&nbsp=
; localhost:5000<br />&nbsp; 127.0.0.0/8<br />&nbsp;Registry Mirrors:<br />=
&nbsp; http://localhost:5000/<br />&nbsp;Live Restore Enabled: false</div>
<div>WARNING: No swap limit support</div>
</blockquote>
<p>Have you managed to resolve this issue? I have searched extensively for =
a solution but have been unable to find one. Therefore, I am reaching out t=
o you in hopes that you might be able to provide some guidance.</p>
<p>Thank you very much for your assistance.</p>
<p>Best regards,</p>
<p>ChangHyun Woo</p>
</div>

--rq2UPt2Jy50cTsbjDL6d--

