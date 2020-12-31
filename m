Subject: Re: Making partitions in .hddimg image
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Dec 2020 07:38:23 -0800
References: <CAJw=dJ8r5X7enDgu7LaUiu3idxHbYNdc736WeE1Kshveg9p00w@mail.gmail.com>
In-Reply-To: <CAJw=dJ8r5X7enDgu7LaUiu3idxHbYNdc736WeE1Kshveg9p00w@mail.gmail.com>
Message-ID: <20415.1609429103992765308@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ltKQAXy7pQSizVuDydOE"

--ltKQAXy7pQSizVuDydOE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Nikhil:

I searched for a solution to this for a very long time.=C2=A0 I never did =
find a solution.=C2=A0 However I also learned I really did not need this fo=
r my .hddimg.

For early development booting from a USB stick, I simply used a WIC image =
partitioned in the way that I wanted my target's flash to be partitioned.=
=C2=A0=C2=A0 I referenced this thread for the clues I needed to create the=
 partitions I needed on the wic image.

https://stackoverflow.com/questions/56187209/yocto-create-and-populate-a-s=
eparate-home-partition

Of course on the WIC boot menu, there is no install option, so that doesn'=
t quite get you to a standalone target running from internal storage.

Then I figured out that if I only use the .hddimage for installation to in=
ternal storage rather than for operation, you can modify (by using a bbappe=
nd) the installation script to create the partitions you want during instal=
lation.

For us that script was located at meta/recipes-core/initrdscripts/files/in=
it-install-efi.sh .=C2=A0 Its actually unusually well commented so you can =
probably follow along after a few re-reads and understand what it is doing.

Getting a software update scheme working (that's a whole other subject) wh=
ile you are still working on the wic image will allow you to basically inst=
all from the .hddimg once (or whenever you trash your target drive :) ) and=
 then use your update scheme to install a new image, and skip the USB stick=
 step altogether.

Sorry to be so wordy, but hope this helps.
Howard

--ltKQAXy7pQSizVuDydOE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Nikhil:<br /><br />I searched for a solution to this for a very long tim=
e.&nbsp; I never did find a solution.&nbsp; However I also learned I really=
 did not need this for my .hddimg. &nbsp;<br /><br />For early development =
booting from a USB stick, I simply used a WIC image partitioned in the way =
that I wanted my target's flash to be partitioned.&nbsp;&nbsp; I referenced=
 this thread for the clues I needed to create the partitions I needed on th=
e wic image.<br /><br />https://stackoverflow.com/questions/56187209/yocto-=
create-and-populate-a-separate-home-partition<br /><br />Of course on the W=
IC boot menu, there is no install option, so that doesn't quite get you to =
a standalone target running from internal storage.<br /><br />Then I figure=
d out that if I only use the .hddimage for installation to internal storage=
 rather than for operation, you can modify (by using a bbappend) the instal=
lation script to create the partitions you want during installation. &nbsp;=
<br /><br />For us that script was located at meta/recipes-core/initrdscrip=
ts/files/init-install-efi.sh .&nbsp; Its actually unusually well commented =
so you can probably follow along after a few re-reads and understand what i=
t is doing. &nbsp;<br /><br />Getting a software update scheme working (tha=
t's a whole other subject) while you are still working on the wic image wil=
l allow you to basically install from the .hddimg once (or whenever you tra=
sh your target drive :) ) and then use your update scheme to install a new =
image, and skip the USB stick step altogether. <br /><br />Sorry to be so w=
ordy, but hope this helps.<br />Howard

--ltKQAXy7pQSizVuDydOE--
