Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E478C4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 14:01:53 +0000 (UTC)
Subject: Re: [yocto] Issue with Installing openssh Package #systemd #yocto #kirkstone
To: "Peter Marko" <peter.marko@siemens.com>, yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Troy, Michigan, US (143.59.9.147)
X-Originating-Platform: Mac Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Apr 2024 07:01:44 -0700
References: <AS1PR10MB5697AFB6EB2F21A79DADC077FD0F2@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697AFB6EB2F21A79DADC077FD0F2@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Message-ID: <25314.1713362504547485791@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zMb7zLXcNiEm1uYa1pfu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 14:01:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62950

--zMb7zLXcNiEm1uYa1pfu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Peter,

Ah ha! that jogged my memory... Even though openssh is in the IMAGE_INSTALL=
 group I still need to add "openssh-sshdgenkeys" since I'm splitting the op=
enssh package.

After adding "openssh-sshdgenkeys" into my image recipe service was install=
ed as expected but it is not getting enabled, even though I explicitly spec=
ified to enable. Maybe I'm misunderstanding here...

SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D "enable"

For testing purposes, I started it manually:

root@localhost:~# systemctl status sshdgenkeys.service
* sshdgenkeys.service - OpenSSH Key Generation
Loaded: loaded (/lib/systemd/system/sshdgenkeys.service; static)
Active: inactive (dead)
root@localhost:~# systemctl start sshdgenkeys.service
root@localhost:~# systemctl status sshdgenkeys.service
* sshdgenkeys.service - OpenSSH Key Generation
Loaded: loaded (/lib/systemd/system/sshdgenkeys.service; static)
Active: active (exited) since Wed 2024-04-17 13:47:27 UTC; 2s ago
Process: 640 ExecStart=3D/usr/libexec/openssh/sshd_check_keys (code=3Dexite=
d, status=3D0/SUCCESS)
Main PID: 640 (code=3Dexited, status=3D0/SUCCESS)

Apr 17 13:47:24 localhost systemd[1]: Starting OpenSSH Key Generation...
Apr 17 13:47:26 localhost sshd_check_keys[646]: unknown option -- G
Apr 17 13:47:26 localhost sshd_check_keys[646]: OpenSSH_8.9p1, OpenSSL 3.0.=
8 7 Feb 2023
Apr 17 13:47:26 localhost sshd_check_keys[646]: usage: sshd [-46DdeiqTt] [-=
C connection_spec] [-c host_cert_file]
Apr 17 13:47:26 localhost sshd_check_keys[646]:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0[-E log_file] [-f config_file] [-g login_grace_time]
Apr 17 13:47:26 localhost sshd_check_keys[646]:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0[-h host_key_file] [-o option] [-p port] [-u len]
Apr 17 13:47:27 localhost systemd[1]: Finished OpenSSH Key Generation.
root@localhost:~#

The output shows that the service is loaded but inactive. When I start it m=
anually, it becomes active, but I encounter a strange error: "unknown optio=
n -- G." It seems like the version of sshd_check_keys script being used is =
newer and expects "sshd -G," whereas my .bbappend file is for version 8.9p1=
.

I'm not sure why this discrepancy is occurring. Any thoughts?

Cheers,
Nitesh

--zMb7zLXcNiEm1uYa1pfu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Peter,<br /><br />Ah ha! that jogged my memory... Even though openssh is in=
 the IMAGE_INSTALL group I still need to add "openssh-sshdgenkeys" since I'=
m splitting the openssh package.&nbsp;<br /><br />After adding "openssh-ssh=
dgenkeys" into my image recipe service was installed as expected but it is =
not getting enabled, even though I explicitly specified to enable. Maybe I'=
m misunderstanding here...<br /><br /><span style=3D"white-space-collapse: =
preserve;">SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D "enable"<br /><br /></=
span>For testing purposes, I started it manually:<br /><br />
<div>root@localhost:~# systemctl status sshdgenkeys.service</div>
<div>* sshdgenkeys.service - OpenSSH Key Generation</div>
<div>&nbsp; &nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/sshdgenkeys.se=
rvice; static)</div>
<div>&nbsp; &nbsp; &nbsp;Active: inactive (dead)</div>
<div>root@localhost:~# systemctl start sshdgenkeys.service</div>
<div>root@localhost:~# systemctl status sshdgenkeys.service</div>
<div>* sshdgenkeys.service - OpenSSH Key Generation</div>
<div>&nbsp; &nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/sshdgenkeys.se=
rvice; static)</div>
<div>&nbsp; &nbsp; &nbsp;Active: active (exited) since Wed 2024-04-17 13:47=
:27 UTC; 2s ago</div>
<div>&nbsp; &nbsp; Process: 640 ExecStart=3D/usr/libexec/openssh/sshd_check=
_keys (code=3Dexited, status=3D0/SUCCESS)</div>
<div>&nbsp; &nbsp;Main PID: 640 (code=3Dexited, status=3D0/SUCCESS)</div>
<div>&nbsp;</div>
<div>Apr 17 13:47:24 localhost systemd[1]: Starting OpenSSH Key Generation.=
..</div>
<div>Apr 17 13:47:26 localhost sshd_check_keys[646]: unknown option -- G</d=
iv>
<div>Apr 17 13:47:26 localhost sshd_check_keys[646]: OpenSSH_8.9p1, OpenSSL=
 3.0.8 7 Feb 2023</div>
<div>Apr 17 13:47:26 localhost sshd_check_keys[646]: usage: sshd [-46DdeiqT=
t] [-C connection_spec] [-c host_cert_file]</div>
<div>Apr 17 13:47:26 localhost sshd_check_keys[646]:&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;[-E log_file] [-f config_file] [-g login_grace_tim=
e]</div>
<div>Apr 17 13:47:26 localhost sshd_check_keys[646]:&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;[-h host_key_file] [-o option] [-p port] [-u len]<=
/div>
<div>Apr 17 13:47:27 localhost systemd[1]: Finished OpenSSH Key Generation.=
</div>
<div>root@localhost:~#&nbsp;</div>
<div><br />
<div>The output shows that the service is loaded but inactive. When I start=
 it manually, it becomes active, but I encounter a strange error: "unknown =
option -- G." It seems like the version of sshd_check_keys script being use=
d is newer and expects "sshd -G," whereas my .bbappend file is for version =
8.9p1.</div>
<div>&nbsp;</div>
<div>I'm not sure why this discrepancy is occurring. Any thoughts?<br /><br=
 />Cheers,<br />Nitesh</div>
</div>

--zMb7zLXcNiEm1uYa1pfu--

