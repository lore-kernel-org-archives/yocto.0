Return-Path: <laurent@eschenauer.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB68E009C8; Thu, 16 Apr 2015 07:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.105.56.132 listed in list.dnswl.org]
X-Greylist: delayed 2401 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Apr 2015 07:05:30 PDT
Received: from 17.mo5.mail-out.ovh.net (17.mo5.mail-out.ovh.net
	[46.105.56.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD5F1E009D4
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:05:30 -0700 (PDT)
Received: from mail624.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with SMTP id C3D8CFFA978
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 14:49:18 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 16 Apr 2015 14:49:18 +0200
Received: from 191.186-246-81.adsl-dyn.isp.belgacom.be (HELO
	localhost.localdomain) (laurent@eschenauer.be@81.246.186.191)
	by ns0.ovh.net with SMTP; 16 Apr 2015 14:48:50 +0200
Message-ID: <552FAFAF.30005@eschenauer.be>
Date: Thu, 16 Apr 2015 14:48:47 +0200
From: Laurent Eschenauer <laurent@eschenauer.be>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Ovh-Tracer-Id: 12660181502719095722
X-Ovh-Remote: 81.246.186.191 (191.186-246-81.adsl-dyn.isp.belgacom.be)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrgeejucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrgeejucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Subject: A simpler way to apply custom config files to an image ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 Apr 2015 14:11:23 -0000
X-Groupsio-MsgNum: 24487
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="9AEUiuIsNLcoHHJLObr6A4XFlBdT46HBQ"

--9AEUiuIsNLcoHHJLObr6A4XFlBdT46HBQ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I'm stuck on something that I would have assumed trivial and can't
managed to do and hope someone can point me to a best practice.

I want to customize various config file of an image I'm building (e.g.
network interfaces, sshd banner, hostapd, etc..).

To make this simple, I wrote my own recipe called 'custom-config' and
bundled in there all my config files. Then copying them in the on_install=
=2E

do_install () {
   install -m 0755 -d ${D}${sysconfdir}
   install -b -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
   install -b -m 0644 ${WORKDIR}/hostapd.conf ${D}${sysconfdir}
   ....
}

It works great for files that are not provided by packages (e.g.
udhcpd.conf), however it does not work for files already provided by
another package (e.g. hostapd.conf). I've tried adding the backup flag
to install but this did not help.

It seems the recommended way to do this is by extending each individual
recipe with bbappend and provide an updated config file. This works
great, although quite heavy for just updating a single config file.

More over, this does not work when the config file is not in the recipe
but coming from sources archive. This is the case with hostapd.conf from
recipe hostapd.

Questions:

- Is my idea of a single 'config' recipe completely stupid ? is there
any way to make it work ? It seems the simpler approach.

- If not possible and I have to stick with bbappend to every recipe
concerned, then how could I do it in the case of a config file coming
from the source package instead of the recipe ?

Thanks for your help !

Best,

Laurent






--9AEUiuIsNLcoHHJLObr6A4XFlBdT46HBQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVL6+wAAoJEG8NyvoPmtl1xi4H/ROFNbcQqXP3F3u7lkm7e6aX
PWSV0OiWsNDqis0oSzby/c+kt1HjPCKXJsH0Vlwmq5gGsmKakSUzrxY1x2dp90FU
xMBUjlmTfbdrTpjBYY5WXxD7/EoGI/vyl8o9TGT6MPaNJ8g3C36b82Pt8vMgQij4
03Zc0DCXvnKyvBDWjzelD/eWE0wtyY/0G+9oWYb/LTOStqVGXfZkeskfZQPcIxbC
QxYd8lTcWaKGGtBmNzBOUzUMv3Fsp0Pcy7qh/e8sjUccX7/mecJir3YsPK5UUj+v
Q59nVL6OVr3W/h0/I8TibQXi6pZqGZ8I8T85ybSCUOXt/T60Cao552KPG2bhDpU=
=Siyu
-----END PGP SIGNATURE-----

--9AEUiuIsNLcoHHJLObr6A4XFlBdT46HBQ--
