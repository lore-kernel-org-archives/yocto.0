Return-Path: <prvs=037099126=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3269EE00797
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 06:01:35 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhUKAF9Ll1KsEApK/2dsb2JhbABZhBKTdqRRgTN0giUBAQEEbgsMBAIBCA0EBAEBCx0HHxMUCQgBAQQOBQgTh2vAQReOHSkRMQcGgxqBEwOJCoVMkCqNEoE+gWpA
X-IPAS-Result: AhUKAF9Ll1KsEApK/2dsb2JhbABZhBKTdqRRgTN0giUBAQEEbgsMBAIBCA0EBAEBCx0HHxMUCQgBAQQOBQgTh2vAQReOHSkRMQcGgxqBEwOJCoVMkCqNEoE+gWpA
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Stath, Paul" <PStath@Axxcelera.com>
Thread-Topic: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d
	purge (use -f to force)
Thread-Index: Ac7riB/iN8kVuR9nQV2la7Le6ji4swAADzjwAACwME0AHvsQMA==
Date: Thu, 28 Nov 2013 14:01:31 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064FCEA6A@sdexmbx1srv.skidata.net>
References: <5B5D636C5F0AA747B37D0EFC72B563C422292F1E@RIC-MS02.MWSG.int>,
	<F7680723A1CA6840825A59020FA77064FCDE02@sdexmbx1srv.skidata.net>
	<5B5D636C5F0AA747B37D0EFC72B563C422293F86@RIC-MS02.MWSG.int>
In-Reply-To: <5B5D636C5F0AA747B37D0EFC72B563C422293F86@RIC-MS02.MWSG.int>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.112.215]
MIME-Version: 1.0
Cc: "Yocto Project Discussion ML \(yocto@yoctoproject.org\)"
	<yocto@yoctoproject.org>
Subject: Re: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d purge (use -f to force)
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
X-List-Received-Date: Thu, 28 Nov 2013 14:01:39 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
thank you for that hint and description of your workaround!
Looks like you've invested a little bit more time into working around this =
issue than me :-)

I've added "-f" to the update-rc.d.bbclass and now it's working like a char=
m:

diff --git a/meta/classes/update-rc.d.bbclass b/meta/classes/update-rc.d.bb=
class
index d8cc342..dbb5781 100644
--- a/meta/classes/update-rc.d.bbclass
+++ b/meta/classes/update-rc.d.bbclass
@@ -33,7 +33,7 @@ updatercd_postrm() {
 if test "$D" !=3D ""; then
        OPT=3D"-f -r $D"
 else
-       OPT=3D""
+       OPT=3D"-f"
 fi
 if type update-rc.d >/dev/null 2>/dev/null; then
        update-rc.d $OPT ${INITSCRIPT_NAME} remove


Nonetheless, I think there have to be a "cleaner" way to solve this issue t=
han forcing the update-rc.d.
Maybe someone else has an idea how to solve this problem?

regards,
Richard


> -----Original Message-----
> From: Stath, Paul [mailto:PStath@Axxcelera.com]
> Sent: Wednesday, November 27, 2013 5:40 PM
> To: Richard Leitner - SKIDATA
> Cc: Yocto Project Discussion ML (yocto@yoctoproject.org)
> Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d =
purge (use -f to
> force)
>=20
> Richard --
>=20
> My "workaround" was a little less drastic than yours.  (grin)
>=20
> Before upgrading to the new package via 'dpkg -i', I would edit the postr=
m script in
> /var/lib/dpkg/info/<pkg-name>,postrm, adding the "-f" argument to "force"=
 the
> symlink removal, as suggested by the error message.
>=20
> Then the upgrade install works correctly.  (With only a warning from the =
postrm script
> of the previous package.)
>=20
> I believe that the issue is that when installing a package over an earlie=
r release, dpkg
> performs the following steps:
>=20
> 1) Extract control files of new package
> 2) Execute "prerm" script of previous package if applicable.
> 3) Execute "preinst" script of new package.
> 4) Unpack new files and backup old files.
> 5) Execute "postrm" script of previous package if applicable.
> 6) Configure the package
>=20
> When installing a newer version of the package, the "postrm" in step 5 fa=
ils, because
> the initscript from the new package is extracted in step 4, and update-rc=
.d w/o the "-f"
> argument exits with a non-zero return code.
>=20
> I would argue that the "updatercd_postrm()" stanza in the update-rc.d.bbc=
lass should
> include the "-f" flag.
> (Anyone on the list want to chime in on this?)
>=20
> In the meantime, I have added my own "updatercd_postrm()" stanza in the .=
bbappend
> file for the package I'm having issues with, which overrides the one prov=
ided by
> update-rc.d.bbclass.
>=20
> updatercd_postrm() {
>        update-rc.d $D -f ${INITSCRIPT_NAME} remove }
>=20
> --
> Paul Stath
> Axxcelera Broadband Wireless
>=20
> >From: Richard Leitner - SKIDATA [Richard.Leitner@skidata.com]
> >Sent: Wednesday, November 27, 2013 11:02 AM
> >To: Stath, Paul
> >Cc: Yocto Project Discussion ML (yocto@yoctoproject.org)
> >Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during
> >rc.d purge (use -f to force)
> >
> >Hi Paul,
> >good to hear I'm not the only one suffering from this issue...
> >No, I've received no response on the mailing list yet, but maybe someone=
 has a hint
> for us now?
> >
> >The only "workaround" I found is to purge the package and afterwards ins=
tall the
> new version.
> >I know this is a really dirty workaround, but it's the only "solution" I=
 found.
> >
> >Have you discovered any other workarounds, Paul?
> >
> >regards
> >Richard
> >
> >>-----Original Message-----
> >>From: Stath, Paul [mailto:PStath@Axxcelera.com]
> >>Sent: Wednesday, November 27, 2013 4:49 PM
> >>To: Richard Leitner - SKIDATA
> >>Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during
> >>rc.d purge (use -f to force)
> >>
> >>Richard --
> >>
> >>I am also getting the "update-rc.d: /etc/init.d/XXX exists during rc.d =
purge"=A0 error
> when I attempt to install a newer version of one of my packages.
> >>
> >>It doesn't look like you received any response to your post to the yoct=
o mailing list.
> >>
> >>Did you get any response, or did you discover a workaround?
> >>
> >>--
> >>Paul Stath
> >>Axxcelera Broadband Wireless

