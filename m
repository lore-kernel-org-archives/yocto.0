Subject: avahi_0.8 issue with latest version
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.98.179.254)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Mar 2021 08:15:07 -0800
Message-ID: <tOJ4.1614960907629848256.tBPL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s7sncXRRQh8b7k2k53Tv"

--s7sncXRRQh8b7k2k53Tv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I=C2=A0 have installed avahi_0.8 version using gatesgreath version.=C2=A0 =
its compiled successfully .but=C2=A0 i am facing issue=C2=A0 with=C2=A0 pid=
 is remove automatically when i restart my service.

avahi configuration : hostname,domain name, allow ipv4, allow eth0,reflect=
or =3Dyes i did all this avahi-daemon.conf
dependencies: gtk+3,gtk,dbus,avahi-daemon,avahi-utils ,libnss-mdns.
is i miss any configuration or any patchwork work for this packages=C2=A0 =
please update me i will modify it.

( avahi-daemon[625]: Process 592 died: No such process; trying to remove P=
ID file. (/run/avahi-daemon//pid))

0;1;32m*[[0m avahi-daemon.service - Avahi mDNS/DNS-SD Stack
Loaded: loaded (/lib/systemd/system/avahi-daemon.service; enabled; vendor =
preset: enabled)
Active: [[0;1;32mactive (running)[[0m since Fri 2021-03-05 13:12:17 UTC; 7=
min ago
TriggeredBy: [[0;1;32m*[[0m avahi-daemon.socket
Main PID: 625 (avahi-daemon)
Status: "avahi-daemon 0.8 starting up."
Tasks: 2 (limit: 9561)
Memory: 620.0K
CGroup: /system.slice/avahi-daemon.service
|-625 avahi-daemon: running [foo.local]
`-626 avahi-daemon: chroot helper

Mar 05 13:12:17 mysystem systemd[1]: Starting Avahi mDNS/DNS-SD Stack...
Mar 05 13:12:17 mysystem avahi-daemon[625]: Process 592 died: No such proc=
ess; trying to remove PID file. (/run/avahi-daemon//pid)
Mar 05 13:12:17 my system systemd[1]: Started Avahi mDNS/DNS-SD Stack.

root@mysystem:~# pgrep -f -l avahi
192 systemctl
200 systemctl
210 systemctl
216 journalctl
503 systemctl
539 systemctl
547 systemctl
559 systemctl
575 systemctl
582 systemctl
594 systemctl
625 avahi-daemon: running [foo.local]
626 avahi-daemon: chroot helper

Thanks & Regards,
Sateesh

--s7sncXRRQh8b7k2k53Tv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br />&nbsp;I&nbsp; have installed avahi_0.8 version using ga=
tesgreath version.&nbsp; its compiled successfully .but&nbsp; i am facing i=
ssue&nbsp; with&nbsp; pid is remove automatically when i restart my service=
.<br /><br />&nbsp;avahi configuration : hostname,domain name, allow ipv4, =
allow eth0,reflector =3Dyes i did all this avahi-daemon.conf<br />dependenc=
ies: gtk+3,gtk,dbus,avahi-daemon,avahi-utils ,libnss-mdns.<br />is i miss a=
ny configuration or any patchwork work for this packages&nbsp; please updat=
e me i will modify it.<br /><br /><span style=3D"color: #000000; font-famil=
y: Calibri, Arial, Helvetica, sans-serif, serif, EmojiFont; font-size: 16px=
;">( avahi-daemon[625]: Process 592 died: No such process; trying to remove=
 PID file. (/run/avahi-daemon//pid))</span><br />&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;<br /><br /><span style=3D"color: #000000; fon=
t-family: Calibri, Arial, Helvetica, sans-serif, serif, EmojiFont; font-siz=
e: 16px;">0;1;32m*[[0m avahi-daemon.service - Avahi mDNS/DNS-SD Stack</span=
>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/avahi-daemon.service; en=
abled; vendor preset: enabled)</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp;Active: [[0;1;32mactive (running)[[0m since Fri 2021-03-05 1=
3:12:17 UTC; 7min ago</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">Trigg=
eredBy: [[0;1;32m*[[0m avahi-daemon.socket</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp;Main PID: 625 (avahi-daemon)</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp;Status: "avahi-daemon 0.8 starting up."</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp; Tasks: 2 (limit: 9561)</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp;Memory: 620.0K</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp;CGroup: /system.slice/avahi-daemon.service</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|-625 avahi-daemon: running [foo=
.local]</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`-626 avahi-daemon: chroot helpe=
r</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">&nbsp=
;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">Mar 0=
5 13:12:17 mysystem systemd[1]: Starting Avahi mDNS/DNS-SD Stack...</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">Mar 0=
5 13:12:17 mysystem avahi-daemon[625]: Process 592 died: No such process; t=
rying to remove PID file. (/run/avahi-daemon//pid)</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 16px; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif, serif, EmojiFont; vertical-align: baseline; color: #000000;">Mar 0=
5 13:12:17 my system systemd[1]: Started Avahi mDNS/DNS-SD Stack.<br /><br =
/><br /><br class=3D"Apple-interchange-newline" />root@mysystem:~# pgrep -f=
 -l avahi
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">192 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">200 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">210 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">216 journalctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">503 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">539 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">547 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">559 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">575 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">582 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">594 systemctl</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">625 avahi-daemon: running [foo.lo=
cal]</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-he=
ight: inherit; vertical-align: baseline;">626 avahi-daemon: chroot helper<b=
r /><br /><br />Thanks &amp; Regards,<br />Sateesh</div>
<br /><br /></div>

--s7sncXRRQh8b7k2k53Tv--
