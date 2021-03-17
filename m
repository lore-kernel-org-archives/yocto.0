Subject: make two ways to halt an embedded system #runlevel #yocto #poweroff #halt
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Montigny-le-Bretonneux, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Mar 2021 02:33:57 -0700
Message-ID: <YMeQ.1615973637473149284.p3eB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BKTVImZ7rtMjaLpa2F9r"

--BKTVImZ7rtMjaLpa2F9r
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I need two specific way to halt my embedded Linux system.
The first halt mode is used to halt the system while maintaining watchdog =
trigger.
The second halt mode is used to halt the system without maintaining watchd=
og trigger.

These two behavior are working fine, but actually, I test them only with p=
oweroff (runlevel 0) and by modifing halt script.
I would have an other specific runlevel or parameter to switch these two d=
ifferents halt modes. Is this possible?

So the system uses sysvinit and runlevel 0 is halt. Runlevel 6 is reboot a=
nd runlevel 5 is default (multi user).

The default runlevel 0 is called with poweroff and halt is executed.

But as I need 2 kind of halt scripts, I suppose I have to use an existent =
unused runlevel like runlevel 4 or
create a new one (even if it seems to be impossible).

At first, I would give a parameter to poweroff to tell it:

enter to runlevel0 but execute halt1 or halt2: like this

poweroff 1
poweroff 2

But it seems it's not at all possible so I think best idea is to use an ot=
her runlevel.

Does someone already heard about this kind of specific needs?
Maybe a better solution exists with Yocto project so I post it here.

Thanks for all, by advance, best reguards

--BKTVImZ7rtMjaLpa2F9r
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I need two specific way to halt my embedded Linux sys=
tem.<br />The first halt mode is used to halt the system while maintaining =
watchdog trigger.<br />The second halt mode is used to halt the system with=
out maintaining watchdog trigger.<br /><br />These two behavior are working=
 fine, but actually, I test them only with poweroff (runlevel 0) and by mod=
ifing halt script.<br />I would have an other specific runlevel or paramete=
r to switch these two differents halt modes. Is this possible?<br /><br />S=
o the system uses sysvinit and runlevel 0 is halt. Runlevel 6 is reboot and=
 runlevel 5 is default (multi user).<br /><br />The default runlevel 0 is c=
alled with poweroff and halt is executed.<br /><br />But as I need 2 kind o=
f halt scripts, I suppose I have to use an existent unused runlevel like ru=
nlevel 4 or<br />create a new one (even if it seems to be impossible).<br /=
><br />At first, I would give a parameter to poweroff to tell it: <br /><br=
 />enter to runlevel0 but execute halt1 or halt2: like this<br /><br />powe=
roff 1<br />poweroff 2<br /><br />But it seems it's not at all possible so =
I think best idea is to use an other runlevel.<br /><br />Does someone alre=
ady heard about this kind of specific needs? <br />Maybe a better solution =
exists with Yocto project so I post it here.<br /><br />Thanks for all, by =
advance, best reguards

--BKTVImZ7rtMjaLpa2F9r--
