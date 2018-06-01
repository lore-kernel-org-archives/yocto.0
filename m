Return-Path: <ulf.samuelsson@external.atlascopco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 714F7E00CE0; Fri,  1 Jun 2018 07:17:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3561 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jun 2018 07:17:52 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0088.outbound.protection.outlook.com [104.47.2.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D40E00CDF
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 07:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.atlascopco.com; s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=OWyKQZAHlfsagyKe4PjdGCa7tMLgRReYGqybBrU1Ns0=;
	b=AEpz357+/HxgN+chdiqEqUwOwiNhS4P03Qo/3BG315wHvTqBE1CMqcJvVzmm06Pd+KIgLDh/un8C7iKfHovss3aFJHca4OwtyAfGzPo7y0I89ncrEnnCItwwI9UvTzfLQNIWukJoZWSejNZ1doFOA9Cl4ThWU7rDl6Ws8rhXbjU=
Received: from VI1PR0301MB2240.eurprd03.prod.outlook.com (10.169.132.147) by
	VI1PR0301MB2061.eurprd03.prod.outlook.com (10.167.208.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.797.11;
	Fri, 1 Jun 2018 11:44:36 +0000
Received: from VI1PR0301MB2240.eurprd03.prod.outlook.com
	([fe80::7d55:aa63:5e82:c0e3]) by
	VI1PR0301MB2240.eurprd03.prod.outlook.com
	([fe80::7d55:aa63:5e82:c0e3%13]) with mapi id 15.20.0797.020;
	Fri, 1 Jun 2018 11:44:36 +0000
From: Ulf Samuelsson <ulf.samuelsson@external.atlascopco.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>, =?iso-8859-1?Q?Iv=E1n_Castell?=
	<icastell@nayarsystems.com>
Thread-Topic: [yocto] Image specific configuration files
Thread-Index: AQHT+WvvOpMA3Qor1UC91/01ow3KDaRK7IyAgAAj1ICAAAvyAIAABXcAgAAevgCAAAD+gIAABicn
Date: Fri, 1 Jun 2018 11:44:36 +0000
Message-ID: <VI1PR0301MB2240BA8DF2B59756CCC9849DCE620@VI1PR0301MB2240.eurprd03.prod.outlook.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAALXFYyuV7AXr=GSS3SAsVUHM42HyS8vfzWvRJY07R5ryieLAQ@mail.gmail.com>,
	<CA+FhBv8-GJLBQyMxAsFpjJMfQ3PbmT-yoCNFNwig7A+2wwk3jw@mail.gmail.com>
In-Reply-To: <CA+FhBv8-GJLBQyMxAsFpjJMfQ3PbmT-yoCNFNwig7A+2wwk3jw@mail.gmail.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ulf.samuelsson@external.atlascopco.com; 
x-originating-ip: [194.7.161.147]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0301MB2061;
	7:fyt0C4WN53A1ka1IH65k4rONocRTB2yT5DlxeySIFlBSsy5DnNW8eHXU0bdiYBj++PyBxSxhAx+e6/tC1zGhPRxg6TQAbQe36MabDFMjdiS6gkq+5wnO2s96gognfxD5EpklkEvET5uVlMISunu+pUo3torxsxRRzeJkeKhLq3EdAwEp/rhlQXdIQQBpd45oL2TySnAeDh7KSpUy/BgZuJ4JYKr10bO568aThuZ1uSAnZgHHpB210XOzi7HyLAat
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR0301MB2061; 
x-ms-traffictypediagnostic: VI1PR0301MB2061:
x-microsoft-antispam-prvs: <VI1PR0301MB2061D9172A4B892D4E22FB52CE620@VI1PR0301MB2061.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158)(788757137089);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:VI1PR0301MB2061; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0301MB2061; 
x-forefront-prvs: 0690E5FF22
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(376002)(39860400002)(396003)(39380400002)(346002)(189003)(199004)(102836004)(4326008)(316002)(110136005)(81156014)(19627405001)(7736002)(86362001)(81166006)(7696005)(5250100002)(476003)(59450400001)(76176011)(478600001)(5660300001)(6506007)(2906002)(93886005)(6606003)(66066001)(3280700002)(53546011)(44832011)(6436002)(486006)(25786009)(2900100001)(3846002)(74316002)(446003)(53936002)(11346002)(26005)(14454004)(186003)(3660700001)(33656002)(68736007)(97736004)(8936002)(105586002)(99286004)(9686003)(106356001)(6116002)(55016002)(39060400002)(8676002)(54896002)(236005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0301MB2061;
	H:VI1PR0301MB2240.eurprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: external.atlascopco.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: bTEMty34n03NHajwQ6E8YhHd0QKgm4HTM8545/s1m/bDONh35lIWh52zBcAXd35bcG6EaSYmNu7kaMBcxFLCBQF0ZU2USaaQbpizEKC+Pluua3Nz2k0/gjiESitgYNZGBq6e7T1HU6dmfpYy/qjCOW58dQ5oXEX7jdu1Di8jp1FvDktuGQlaI3DImjcRjH5P
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: f5572991-f5bf-489e-ab5d-08d5c7b50cf9
X-OriginatorOrg: external.atlascopco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5572991-f5bf-489e-ab5d-08d5c7b50cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2018 11:44:36.2708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 556e6b1f-b49d-4278-8baf-db06eeefc8e9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0301MB2061
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Fri, 01 Jun 2018 14:17:56 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0301MB2240BA8DF2B59756CCC9849DCE620VI1PR0301MB2240_"

--_000_VI1PR0301MB2240BA8DF2B59756CCC9849DCE620VI1PR0301MB2240_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here is the idea developed at Atlas Copco.

Not my code, but I thought it useful for this problem


define three bbclasses.

production.bbclass, rnd.bbclass, release.bbclass containing:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

# Class for use in BBCLASSEXTEND to make it easier to have a single recipe =
that
# build and generate packages separately for release and normal images.
#
# Usage:
# BBCLASSEXTEND =3D "release"

CLASSOVERRIDE .=3D ":class-release"

python release_virtclass_handler () {
    # Do nothing if this is inherited, as it's for BBCLASSEXTEND
    if "release" not in (d.getVar('BBCLASSEXTEND') or ""):
        bb.error("Don't inherit release, use BBCLASSEXTEND")
        return

    # Restore BPN
    bpn =3D d.getVar('BPN')
    newbpn =3D bpn.replace('-release', '')
    d.setVar('BPN', newbpn)

    # Use default FILESPATH searching for patches and files
    filespath =3D d.getVar('FILESPATH', True)
    newfilespath =3D filespath.replace('-release', '')
    d.setVar('FILESPATH', newfilespath)
}

addhandler release_virtclass_handler
release_virtclass_handler[eventmask] =3D "bb.event.RecipePreFinalise"

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

In a bbappend you use the classes:


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

SRC_URI_append_class-production =3D " \
    file://rcS.production \
"

SRC_URI_append_class-rnd =3D " \
    file://rcS.rnd \
"

SRC_URI_append_class-release =3D " \
    file://rcS.release \
"

do_install_append_class-production () {
    install -m 755 ${WORKDIR}/rcS.production ${D}${sysconfdir}/init.d/rcS
}

do_install_append_class-rnd () {
    install -m 755 ${WORKDIR}/rcS.rnd ${D}${sysconfdir}/init.d/rcS
}

do_install_append_class-release () {
    install -m 755 ${WORKDIR}/rcS.release ${D}${sysconfdir}/init.d/rcS
}

BBCLASSEXTEND =3D "production rnd release"


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

In your production image you add

IMAGE_INSTALL_append =3D "busybox-production"


Do something similar for the other two.

BR

Ulf Samuelsson

________________________________
Fr=E5n: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> f=
=F6r Damien LEFEVRE <lefevre.da@gmail.com>
Skickat: den 1 juni 2018 13:17:53
Till: Iv=E1n Castell
Kopia: Yocto discussion list
=C4mne: Re: [yocto] Image specific configuration files

Thanks a lot everyone, this is very helpful =3D)

On Fri, Jun 1, 2018 at 2:14 PM, Iv=E1n Castell <icastell@nayarsystems.com<m=
ailto:icastell@nayarsystems.com>> wrote:


2018-06-01 11:24 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com<mailto=
:alex.kanavin@gmail.com>>:
I have to say defining multiple distros and then tweaking recipes according=
 to those definitions is not a good practice, as recipes should generally o=
nly access DISTRO_FEATURES and otherwise be distro-agnostic. The above ipta=
bles scenario should be handled with different image recipes, which pull in=
 (via packages) or create different configurations.


That has sense. We will refactorize our Yocto repo as suggested. Always ver=
y helpfull with all your comments Mr Alexander. Thank you very much! :)




--_000_VI1PR0301MB2240BA8DF2B59756CCC9849DCE620VI1PR0301MB2240_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Here is the idea developed at Atl=
as Copco.</p>
<p style=3D"margin-top:0;margin-bottom:0">Not my code, but I thought it use=
ful for this problem</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">define three bbclasses.</p>
<p style=3D"margin-top:0;margin-bottom:0">production.bbclass, rnd.bbclass, =
release.bbclass containing:</p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div># Class for use in BBCLASSEXTEND to make it easier to have a single re=
cipe that<br>
# build and generate packages separately for release and normal images.<br>
#<br>
# Usage:<br>
# BBCLASSEXTEND =3D &quot;release&quot;<br>
<br>
CLASSOVERRIDE .=3D &quot;:class-release&quot;<br>
<br>
python release_virtclass_handler () {<br>
&nbsp;&nbsp;&nbsp; # Do nothing if this is inherited, as it's for BBCLASSEX=
TEND<br>
&nbsp;&nbsp;&nbsp; if &quot;release&quot; not in (d.getVar('BBCLASSEXTEND')=
 or &quot;&quot;):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.error(&quot;Don't inherit rel=
ease, use BBCLASSEXTEND&quot;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return<br>
<br>
&nbsp;&nbsp;&nbsp; # Restore BPN<br>
&nbsp;&nbsp;&nbsp; bpn =3D d.getVar('BPN')<br>
&nbsp;&nbsp;&nbsp; newbpn =3D bpn.replace('-release', '')<br>
&nbsp;&nbsp;&nbsp; d.setVar('BPN', newbpn)<br>
<br>
&nbsp;&nbsp;&nbsp; # Use default FILESPATH searching for patches and files<=
br>
&nbsp;&nbsp;&nbsp; filespath =3D d.getVar('FILESPATH', True)<br>
&nbsp;&nbsp;&nbsp; newfilespath =3D filespath.replace('-release', '')<br>
&nbsp;&nbsp;&nbsp; d.setVar('FILESPATH', newfilespath)<br>
}<br>
<br>
addhandler release_virtclass_handler<br>
release_virtclass_handler[eventmask] =3D &quot;bb.event.RecipePreFinalise&q=
uot;</div>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
In a bbappend you use the classes:
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>SRC_URI_append_class-production =3D &quot; \<br>
&nbsp;&nbsp; &nbsp;file://rcS.production \<br>
&quot;<br>
<br>
SRC_URI_append_class-rnd =3D &quot; \<br>
&nbsp;&nbsp; &nbsp;file://rcS.rnd \<br>
&quot;<br>
<br>
SRC_URI_append_class-release =3D &quot; \<br>
&nbsp;&nbsp; &nbsp;file://rcS.release \<br>
&quot;<br>
<br>
do_install_append_class-production () {<br>
&nbsp;&nbsp; &nbsp;install -m 755 ${WORKDIR}/rcS.production ${D}${sysconfdi=
r}/init.d/rcS<br>
}<br>
<br>
do_install_append_class-rnd () {<br>
&nbsp;&nbsp; &nbsp;install -m 755 ${WORKDIR}/rcS.rnd ${D}${sysconfdir}/init=
.d/rcS<br>
}<br>
<br>
do_install_append_class-release () {<br>
&nbsp;&nbsp; &nbsp;install -m 755 ${WORKDIR}/rcS.release ${D}${sysconfdir}/=
init.d/rcS<br>
}<br>
<br>
BBCLASSEXTEND =3D &quot;production rnd release&quot;</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></p>
<p style=3D"margin-top:0;margin-bottom:0">In your production image you add =
<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">IMAGE_INSTALL_append =3D &quot;bu=
sybox-production&quot;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Do something similar for the othe=
r two.</p>
<p style=3D"margin-top:0;margin-bottom:0">BR</p>
<p style=3D"margin-top:0;margin-bottom:0">Ulf Samuelsson<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Fr=E5n:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; f=F6r Damien LEFEVRE &lt=
;lefevre.da@gmail.com&gt;<br>
<b>Skickat:</b> den 1 juni 2018 13:17:53<br>
<b>Till:</b> Iv=E1n Castell<br>
<b>Kopia:</b> Yocto discussion list<br>
<b>=C4mne:</b> Re: [yocto] Image specific configuration files</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Dutf-8">
<div>
<div dir=3D"ltr">Thanks a lot everyone, this is very helpful =3D)<br>
</div>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">On Fri, Jun 1, 2018 at 2:14 PM, Iv=E1n Castell=
 <span dir=3D"ltr">
&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell=
@nayarsystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr"><br>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote"><span class=3D"">2018-06-01 11:24 GMT&#43;02:0=
0 Alexander Kanavin
<span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_=
blank">alex.kanavin@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div>I have to say defining multiple distros and then tweaking recipes acco=
rding to those definitions is not a good practice, as recipes should genera=
lly only access DISTRO_FEATURES and otherwise be distro-agnostic. The above=
 iptables scenario should be handled
 with different image recipes, which pull in (via packages) or create diffe=
rent configurations.</div>
</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
</span>
<div><span style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font=
-size:small; font-style:normal; font-weight:400; letter-spacing:normal; tex=
t-align:start; text-indent:0px; text-transform:none; white-space:normal; wo=
rd-spacing:0px; background-color:rgb(255,255,255); float:none; display:inli=
ne">That
 has sense. W</span>e will refactorize our Yocto repo as suggested. Always =
very helpfull with all your comments Mr Alexander. Thank you very much! :)<=
/div>
<div><br>
</div>
<div>&nbsp;</div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</body>
</html>

--_000_VI1PR0301MB2240BA8DF2B59756CCC9849DCE620VI1PR0301MB2240_--
