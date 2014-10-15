Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F16CAE00862; Tue, 14 Oct 2014 23:49:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 42DC4E007C1
	for <yocto@yoctoproject.org>; Tue, 14 Oct 2014 23:49:07 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Wed, 15 Oct 2014 08:49:00 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Mark Hatle <mark.hatle@windriver.com>, Khem Raj <raj.khem@gmail.com>,
	"Saul Wold (sgw@linux.intel.com)" <sgw@linux.intel.com>, "Burton, Ross
	<ross.burton@intel.com> (ross.burton@intel.com)" <ross.burton@intel.com>
Thread-Topic: Truly scary SSL 3.0 vuln to be revealed soon:
Thread-Index: Ac/oO1a66AZx1WfuSiqPuqDXwzOnfw==
Date: Wed, 15 Oct 2014 06:48:59 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.6]
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>,
	"'openembedded-core@lists.openembedded.org'"
	<openembedded-core@lists.openembedded.org>
Subject: Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Wed, 15 Oct 2014 06:49:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Yesterday The Register published this:
http://www.theregister.co.uk/2014/10/14/nasty_ssl_30_vulnerability_to_drop_=
tomorrow/

and today following was published:
https://www.openssl.org/~bodo/ssl-poodle.pdf
http://googleonlinesecurity.blogspot.de/2014/10/this-poodle-bites-exploitin=
g-ssl-30.html

The advice is: Disable SSLv3.

I created https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6843  so we c=
an start to work with this immediately.=20

It would be good to sync the work like we did with the "shellshock" at the =
end :) .

Cheers
Sona


Sona Sarmadi
Security Responsible for Enea Linux
Enea
Jan Stenbecks torg 17,
Box 1033, SE-164 21=A0Kista,=A0Sweden
Direct: +46 8 5071=A0 4475
Mobile: +46 70 971 4475
sona.sarmadi@enea.com
www.enea.com=20

This message, including attachments, is CONFIDENTIAL. It may also be privil=
eged or otherwise protected by law. If you received this email by mistake p=
lease let us know by reply and then delete it from your system; you should =
not copy it or disclose its contents to anyone.

> -----Original Message-----
> From: Sona Sarmadi
> Sent: den 14 oktober 2014 16:39
> To: openembedded-core@lists.openembedded.org
> Cc: yocto@yoctoproject.org
> Subject: FW: [oss-security] Truly scary SSL 3.0 vuln to be revealed soon:
>=20
> Hi all,
>=20
> It seems that another vulnerability is coming soon, the advice is disable
> SSLv3.:
> http://www.theregister.co.uk/2014/10/14/nasty_ssl_30_vulnerability_to_dr
> op_tomorrow/
>=20
>=20
> From Hanno B=F6ck [hanno@hboeck.de]:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Whether it's scary or not I have an advice for you: Disable SSLv3.
>=20
> It causes a lot of headache already. I once had to debug a rather subtle =
issue
> in combination with SNI.
> The problem: Browsers downgrade out of protocol to SSLv3 if they can't
> connect via TLS. They do this in order to support broken server
> implementations. However this downgrade can also be triggered by bad or
> slow internet connections - and then you'll loose SNI. So sometimes your
> visitors will get the wrong certificate presented.
> I solved this for my servers by disabling SSLv3. It was a minor problem w=
hen I
> did this but it is almost no problem today.
>=20
> You will lock out IE6 users on Windows XP. However even people who use
> Windows XP+IE and installed their updates have TLS 1.0 support.
> I also encountered a small number of people who had manually disabled TLS
> 1.0 in firefox for unknown reasons. However this was a few years ago.
> Current Firefox versions make it harder to do this. I assume the reason w=
as
> that they thought "v3 sound newer than v1.0".
>=20
> A number of people already recommend disabling SSLv3, e.g. the Qualys
> configuration guide. Disable it now - no matter if the rumors about a ser=
ious
> vuln are true, you'll be safe.
>=20
> BR - Sona

