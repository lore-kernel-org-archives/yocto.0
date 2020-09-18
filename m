Subject: #yocto systemd not able to start sshd after a reboot
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Sep 2020 08:29:22 -0700
Message-ID: <Oz9Q.1600442962283102903.Grzg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SHi2Ir5HvfNWqdt79eRa"

--SHi2Ir5HvfNWqdt79eRa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am facing a peculiar problem with openssh. I have built=C2=A0openssh_8.0p=
1on zeus.

The sshd.service file is as follows:
[Unit]
Description=3DOpenSSH server daemon
Documentation=3Dman:sshd(8) man:sshd_config(5)
After=3Dsshdgenkeys.service
Wants=3Dsshdgenkeys.service

[Service]
Type=3Dsimple
PIDFile=3D/var/run/sshd.pid
EnvironmentFile=3D-/etc/default/sshd
ExecStart=3D/usr/sbin/sshd -D $OPTIONS
ExecReload=3D/bin/kill -HUP $MAINPID
ExecStop=3D/bin/kill $MAINPID
PermissionsStartOnly=3Dtrue
KillMode=3Dprocess
Restart=3Don-failure
StandardError=3Dsyslog

[Install]
WantedBy=3Dmulti-user.target

It starts without issues, if i do a systemctl start sshd.service. If I do =
a test of the config file it does not come up with any errors:

genericx86-64:~$ sudo /usr/sbin/sshd -t
genericx86-64:~$

Problem:
If I reboot the server, sshd does not start. There is no error on syslog. =
I have enabled debug logging, still no logs in syslog.

# Logging
SyslogFacility DAEMON
LogLevel DEBUG3

Even systemctl is-enabled sshd shows as enabled.

After a reboot, if I do a systemctl status sshd it shows:
Loaded: loaded =C2=A0(/lib/systemd/system/sshd.service; enabled; vendor pr=
eset: enabled)
Active: inactive (dead)

If I manually run systemctl start sshd.service, everything works perfectly=
 well without issues. sshd start on 0.0.0.0:2224 and I am able to ssh in as=
 well.

It's just that systemctl is not able to start sshd after a reboot and ther=
e is no error that i can find or debug. Absolutely run out of ideas to reso=
lve this. Any help will be greatly appreciated.

Thanks and Regards,
-=3DSrijan Nandi

--SHi2Ir5HvfNWqdt79eRa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am facing a peculiar problem with openssh. I have built&nbsp;openssh_8.0p=
1on zeus.&nbsp;<br /><br />The sshd.service file is as follows:<br />
<div>[Unit]</div>
<div>Description=3DOpenSSH server daemon</div>
<div>Documentation=3Dman:sshd(8) man:sshd_config(5)</div>
<div>After=3Dsshdgenkeys.service</div>
<div>Wants=3Dsshdgenkeys.service</div>
<div>&nbsp;</div>
<div>[Service]</div>
<div>Type=3Dsimple</div>
<div>PIDFile=3D/var/run/sshd.pid</div>
<div>EnvironmentFile=3D-/etc/default/sshd</div>
<div>ExecStart=3D/usr/sbin/sshd -D $OPTIONS</div>
<div>ExecReload=3D/bin/kill -HUP $MAINPID</div>
<div>ExecStop=3D/bin/kill $MAINPID</div>
<div>PermissionsStartOnly=3Dtrue</div>
<div>KillMode=3Dprocess</div>
<div>Restart=3Don-failure</div>
<div>StandardError=3Dsyslog</div>
<div>&nbsp;</div>
<div>[Install]</div>
<div>WantedBy=3Dmulti-user.target<br /><br />It starts without issues, if =
i do a systemctl start sshd.service. If I do a test of the config file it d=
oes not come up with any errors:<br /><br />
<div>genericx86-64:~$ sudo /usr/sbin/sshd -t</div>
<div>genericx86-64:~$&nbsp;<br /><br />Problem:<br />If I reboot the serve=
r, sshd does not start. There is no error on syslog. I have enabled debug l=
ogging, still no logs in syslog.<br /><br />
<div># Logging</div>
<div>SyslogFacility DAEMON</div>
<div>LogLevel DEBUG3<br /><br />Even systemctl is-enabled sshd shows as en=
abled.<br /><br />After a reboot, if I do a systemctl status sshd it shows:=
<br />Loaded: loaded &nbsp;(/lib/systemd/system/sshd.service; enabled; vend=
or preset: enabled)<br />Active: inactive (dead)<br /><br />If I manually r=
un systemctl start sshd.service, everything works perfectly well without is=
sues. sshd start on 0.0.0.0:2224 and I am able to ssh in as well.<br /><br =
/>It's just that systemctl is not able to start sshd after a reboot and the=
re is no error that i can find or debug. Absolutely run out of ideas to res=
olve this. Any help will be greatly appreciated.<br /><br />Thanks and Rega=
rds,<br />-=3DSrijan Nandi</div>
</div>
</div>

--SHi2Ir5HvfNWqdt79eRa--
