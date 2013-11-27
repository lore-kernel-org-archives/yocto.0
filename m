Return-Path: <PStath@Axxcelera.com>
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B50E005B9
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 08:40:28 -0800 (PST)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Wed, 27 Nov 2013 11:40:24 -0500
From: "Stath, Paul" <PStath@Axxcelera.com>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Thread-Topic: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d
	purge (use -f to force)
Thread-Index: Ac7riB/iN8kVuR9nQV2la7Le6ji4swAADzjwAACwME0=
Date: Wed, 27 Nov 2013 16:40:23 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C422293F86@RIC-MS02.MWSG.int>
References: <5B5D636C5F0AA747B37D0EFC72B563C422292F1E@RIC-MS02.MWSG.int>,
	<F7680723A1CA6840825A59020FA77064FCDE02@sdexmbx1srv.skidata.net>
In-Reply-To: <F7680723A1CA6840825A59020FA77064FCDE02@sdexmbx1srv.skidata.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
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
X-List-Received-Date: Wed, 27 Nov 2013 16:40:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Richard --=0A=
=0A=
My "workaround" was a little less drastic than yours.  (grin)=0A=
=0A=
Before upgrading to the new package via 'dpkg -i', I would edit the postrm =
script in /var/lib/dpkg/info/<pkg-name>,postrm, adding the "-f" argument to=
 "force" the symlink removal, as suggested by the error message.=0A=
=0A=
Then the upgrade install works correctly.  (With only a warning from the po=
strm script of the previous package.)=0A=
=0A=
I believe that the issue is that when installing a package over an earlier =
release, dpkg performs the following steps:=0A=
=0A=
1) Extract control files of new package=0A=
2) Execute "prerm" script of previous package if applicable.=0A=
3) Execute "preinst" script of new package.=0A=
4) Unpack new files and backup old files.=0A=
5) Execute "postrm" script of previous package if applicable.=0A=
6) Configure the package=0A=
=0A=
When installing a newer version of the package, the "postrm" in step 5 fail=
s, because the initscript from the new package is extracted in step 4, and =
update-rc.d w/o the "-f" argument exits with a non-zero return code.=0A=
=0A=
I would argue that the "updatercd_postrm()" stanza in the update-rc.d.bbcla=
ss should include the "-f" flag.=0A=
(Anyone on the list want to chime in on this?)=0A=
=0A=
In the meantime, I have added my own "updatercd_postrm()" stanza in the .bb=
append file for the package I'm having issues with, which overrides the one=
 provided by update-rc.d.bbclass.=0A=
=0A=
updatercd_postrm() {=0A=
       update-rc.d $D -f ${INITSCRIPT_NAME} remove=0A=
}=0A=
=0A=
--=0A=
Paul Stath=0A=
Axxcelera Broadband Wireless=0A=
=0A=
>From: Richard Leitner - SKIDATA [Richard.Leitner@skidata.com]=0A=
>Sent: Wednesday, November 27, 2013 11:02 AM=0A=
>To: Stath, Paul=0A=
>Cc: Yocto Project Discussion ML (yocto@yoctoproject.org)=0A=
>Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d p=
urge (use -f to force)=0A=
>=0A=
>Hi Paul,=0A=
>good to hear I'm not the only one suffering from this issue...=0A=
>No, I've received no response on the mailing list yet, but maybe someone h=
as a hint for us now?=0A=
> =0A=
>The only "workaround" I found is to purge the package and afterwards insta=
ll the new version.=0A=
>I know this is a really dirty workaround, but it's the only "solution" I f=
ound.=0A=
>=0A=
>Have you discovered any other workarounds, Paul?=0A=
>=0A=
>regards=0A=
>Richard=0A=
>=0A=
>>-----Original Message-----=0A=
>>From: Stath, Paul [mailto:PStath@Axxcelera.com]=0A=
>>Sent: Wednesday, November 27, 2013 4:49 PM=0A=
>>To: Richard Leitner - SKIDATA=0A=
>>Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d =
purge (use -f to force)=0A=
>>=0A=
>>Richard --=0A=
>>=0A=
>>I am also getting the "update-rc.d: /etc/init.d/XXX exists during rc.d pu=
rge"=A0 error when I attempt to install a newer version of one of my packag=
es.=0A=
>>=0A=
>>It doesn't look like you received any response to your post to the yocto =
mailing list.=0A=
>>=0A=
>>Did you get any response, or did you discover a workaround?=0A=
>>=0A=
>>--=0A=
>>Paul Stath=0A=
>>Axxcelera Broadband Wireless=0A=

