Subject: #dahdi #asterisk #thud
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 16 Jul 2021 03:51:46 -0700
Message-ID: <W4Re.1626432706136085520.iO8L@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R3FjC9RIvMeTETcA1ALb"

--R3FjC9RIvMeTETcA1ALb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Team
I'm using poky-thud with meta-raspberrypi and meta-telephony, here I've in=
stalled dahdi-linux, dahdi-tools and asterisk 13.13.1, here in yocto image =
for raspberry pi kernel is 4.14.112 .

when asterisk is getting compiled it is creating chan_dahdi.so, but failin=
g to load it, when I'm trying manually load it, then it is giving issue-

*WARNING[2094]: loader.c:556 load_dynamic_module: Error loading module 'ch=
an_dahdi.so': /usr/lib/asterisk/modules/chan_dahdi.so: undefined symbol: mi=
nor*
*[Jul 16 06:17:34] WARNING[2094]: loader.c:1090 load_resource: Module 'cha=
n_dahdi.so' could not be loaded.*

Installing same in rasbian os with with kernel 4.14.114 kernel with same d=
ahdi source, asterisk 13.18.2 is successfully loading the chan_dahdi.so mod=
ule.

so I'm not able to get reason of this issue with yocto image asterisk.

Regards,
Prashant Singh

--R3FjC9RIvMeTETcA1ALb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Team<br />
<div class=3D"votecell post-layout--left">
<div class=3D"js-voting-container d-flex jc-center fd-column ai-stretch gs=
4 fc-black-200" data-post-id=3D"128117">I'm using poky-thud with meta-raspb=
errypi and meta-telephony, here I've installed dahdi-linux, dahdi-tools and=
 asterisk 13.13.1, here in yocto image for raspberry pi kernel is 4.14.112 =
.</div>
</div>
<div class=3D"s-prose js-post-body">
<p>when asterisk is getting compiled it is creating chan_dahdi.so, but fai=
ling to load it, when I'm trying manually load it, then it is giving issue-=
</p>
<strong>WARNING[2094]: loader.c:556 load_dynamic_module: Error loading mod=
ule 'chan_dahdi.so': /usr/lib/asterisk/modules/chan_dahdi.so: undefined sym=
bol: minor</strong><br /><strong>[Jul 16 06:17:34] WARNING[2094]: loader.c:=
1090 load_resource: Module 'chan_dahdi.so' could not be loaded.</strong><br=
 /><br />Installing same in rasbian os with with kernel 4.14.114 kernel wit=
h same dahdi source, asterisk 13.18.2 is successfully loading the chan_dahd=
i.so module.
<p>so I'm not able to get reason of this issue with yocto image asterisk.<=
br /><br />Regards,<br />Prashant Singh</p>
</div>

--R3FjC9RIvMeTETcA1ALb--
