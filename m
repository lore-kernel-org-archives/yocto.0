Subject: avahi-daemon.service - how to create custom .service file with different startup parameters
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 14 Nov 2020 08:28:57 -0800
Message-ID: <JQ7o.1605371337020273256.b06J@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ehHnRcbyXscBESpwyu1r"

--ehHnRcbyXscBESpwyu1r
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:

I've been digging through meta/recipes-connectivity trying to figure out h=
ow I can override the avahi-daemon startup parameters.=C2=A0=C2=A0 However =
I am not finding where the avahi-daemon.service file gets created, or if th=
ere is a way to pass in different parameters so that it gets created with m=
y startup parameters.

I need to start the daemon with the --no-chroot option in order for it to =
see a symlink to a file=C2=A0 /etc/avahi/services/MyAvahiService.service in=
 a writeable partition.

Is there a clean way to do this or do I have to do the brute-force method =
of either killing it at runtime and restarting w/ --no-chroot, or doing a p=
ostinst step and paving over the original avahi-daemon.service file with my=
 own?

Thanks

Howard

--ehHnRcbyXscBESpwyu1r
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi:</p>
<p>I've been digging through meta/recipes-connectivity trying to figure ou=
t how I can override the avahi-daemon startup parameters.&nbsp;&nbsp; Howev=
er I am not finding where the avahi-daemon.service file gets created, or if=
 there is a way to pass in different parameters so that it gets created wit=
h my startup parameters.<br /><br />I need to start the daemon with the --n=
o-chroot option in order for it to see a symlink to a file&nbsp; /etc/avahi=
/services/MyAvahiService.service in a writeable partition.<br /><br />Is th=
ere a clean way to do this or do I have to do the brute-force method of eit=
her killing it at runtime and restarting w/ --no-chroot, or doing a postins=
t step and paving over the original avahi-daemon.service file with my own?<=
/p>
<p>&nbsp;</p>
<p>Thanks</p>
<p>Howard</p>
<p>&nbsp;</p>

--ehHnRcbyXscBESpwyu1r--
