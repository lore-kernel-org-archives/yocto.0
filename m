Subject: openssh_8.0p1 on zeus - sshd.service not starting #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jul 2020 07:01:16 -0700
Message-ID: <fAN8.1594908076170368387.Ot4r@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="q7aUJDcKvmJ912eHH4HZ"

--q7aUJDcKvmJ912eHH4HZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am facing an issue with openssh_8.0p1 on zeus...systemd is not able to st=
art sshd.service. I am using the following sshd.service file.

[Unit]
Description=3DOpenSSH server daemon
Documentation=3Dman:sshd(8) man:sshd_config(5)
After=3Dnetwork.target sshdgenkeys.service
Wants=3Dsshdgenkeys.service

[Service]
Type=3Dforking
PIDFile=3D@localstatedir@/run/sshd.pid
EnvironmentFile=3D-@SYSCONFDIR@/default/sshd
ExecStart=3D@SBINDIR@/sshd -D $OPTIONS
ExecReload=3D@BASE_BINDIR@/kill -HUP $MAINPID
PermissionsStartOnly=3Dtrue
ExecStartPre=3D-/bin/mkdir -p /var/run/sshd
ExecStartPre=3D/bin/chmod -R 755 /var/run/sshd
KillMode=3Dprocess
Restart=3Don-failure
RestartSec=3D42s

[Install]
WantedBy=3Dmulti-user.target

Has anyone else faced a similar issue.

--q7aUJDcKvmJ912eHH4HZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am facing an issue with openssh_8.0p1 on zeus...systemd is not able =
to start sshd.service. I am using the following sshd.service file.&nbsp;</d=
iv>
<div>&nbsp;</div>
<div>[Unit]</div>
<div>Description=3DOpenSSH server daemon</div>
<div>Documentation=3Dman:sshd(8) man:sshd_config(5)</div>
<div>After=3Dnetwork.target sshdgenkeys.service</div>
<div>Wants=3Dsshdgenkeys.service</div>
<div>&nbsp;</div>
<div>[Service]</div>
<div>Type=3Dforking</div>
<div>PIDFile=3D@localstatedir@/run/sshd.pid</div>
<div>EnvironmentFile=3D-@SYSCONFDIR@/default/sshd</div>
<div>ExecStart=3D@SBINDIR@/sshd -D $OPTIONS</div>
<div>ExecReload=3D@BASE_BINDIR@/kill -HUP $MAINPID</div>
<div>PermissionsStartOnly=3Dtrue</div>
<div>ExecStartPre=3D-/bin/mkdir -p /var/run/sshd</div>
<div>ExecStartPre=3D/bin/chmod -R 755 /var/run/sshd</div>
<div>KillMode=3Dprocess</div>
<div>Restart=3Don-failure</div>
<div>RestartSec=3D42s</div>
<div>&nbsp;</div>
<div>[Install]</div>
<div>WantedBy=3Dmulti-user.target</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Has anyone else faced a similar issue.</div>

--q7aUJDcKvmJ912eHH4HZ--
