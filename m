Subject: Re: openssh_8.0p1 on zeus - sshd.service not starting [RESOLVED} #yocto
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 18 Jul 2020 03:53:15 -0700
References: <CAGAf8LxJri5bfSpKg5BESA2oCQ5kZH_cbrZ=+E=sT0sNw+-3bQ@mail.gmail.com>
In-Reply-To: <CAGAf8LxJri5bfSpKg5BESA2oCQ5kZH_cbrZ=+E=sT0sNw+-3bQ@mail.gmail.com>
Message-ID: <27359.1595069595268641163@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sXj55XyfCJiL5YDUNunG"

--sXj55XyfCJiL5YDUNunG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Finally was able to resolve the issue. It seems the sshd.service did not li=
ne=C2=A0Type=3Dforking.

I changed it to=C2=A0Type=3Dsimple and it started working.

So now my sshd.service file looks like this:

[Unit]

Description=3DOpenSSH server daemon

Documentation=3Dman:sshd(8) man:sshd_config(5)

After=3Dnetwork.target sshdkeygen.service

Wants=3Dsshdkeygen.service

[Service]

Type=3Dsimple

PIDFile=3D/run/sshd.pid

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

Thanks,
-=3DSrijan Nandi

--sXj55XyfCJiL5YDUNunG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Finally was able to resolve the issue. It seems the sshd.service did not=
 line&nbsp;Type=3Dforking.<br /><br />I changed it to&nbsp;Type=3Dsimple an=
d it started working.<br /><br />So now my sshd.service file looks like thi=
s:</p>
<p>&nbsp;</p>
<p>[Unit]</p>
<p>Description=3DOpenSSH server daemon</p>
<p>Documentation=3Dman:sshd(8) man:sshd_config(5)</p>
<p>After=3Dnetwork.target sshdkeygen.service</p>
<p>Wants=3Dsshdkeygen.service</p>
<p>&nbsp;</p>
<p>[Service]</p>
<p>Type=3Dsimple</p>
<p>PIDFile=3D/run/sshd.pid</p>
<p>EnvironmentFile=3D-@SYSCONFDIR@/default/sshd</p>
<p>ExecStart=3D@SBINDIR@/sshd -D $OPTIONS</p>
<p>ExecReload=3D@BASE_BINDIR@/kill -HUP $MAINPID</p>
<p>PermissionsStartOnly=3Dtrue</p>
<p>ExecStartPre=3D-/bin/mkdir -p /var/run/sshd</p>
<p>ExecStartPre=3D/bin/chmod -R 755 /var/run/sshd</p>
<p>KillMode=3Dprocess</p>
<p>Restart=3Don-failure</p>
<p>RestartSec=3D42s</p>
<p>&nbsp;</p>
<p>[Install]</p>
<p>WantedBy=3Dmulti-user.target<br /><br />Thanks,<br />-=3DSrijan Nandi</=
p>

--sXj55XyfCJiL5YDUNunG--
