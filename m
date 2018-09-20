Return-Path: <evan.oloughlin@vitalograph.ie>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB9EBE00C09; Thu, 20 Sep 2018 06:50:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.162.217.194 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out6.electric.net (smtp-out6.electric.net
	[192.162.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CCEE006AF
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 06:50:51 -0700 (PDT)
Received: from 1g2zM1-0002Ee-V3 by out6c.electric.net with emc1-ok (Exim
	4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g2zM2-0002I9-UD; Thu, 20 Sep 2018 06:50:50 -0700
Received: by emcmailer; Thu, 20 Sep 2018 06:50:50 -0700
Received: from [176.58.6.8] (helo=VitalExchange.vitalograph.local)
	by out6c.electric.net with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g2zM1-0002Ee-V3; Thu, 20 Sep 2018 06:50:49 -0700
Received: from VITALEXCHANGE.vitalograph.local ([fe80::93c:7e0f:858e:c090]) by
	VitalExchange.vitalograph.local ([fe80::93c:7e0f:858e:c090%12]) with
	mapi id 14.03.0399.000; Thu, 20 Sep 2018 14:49:32 +0100
From: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
To: Jakob Hasse <jakob.hasse@qiio.com>
Thread-Topic: [yocto] git works standalone, but not within yocto for weird
	Azure Devops ssh uri
Thread-Index: AQHUUOde5epY33GY40asLvpTMNYQK6T5Lgx0
Date: Thu, 20 Sep 2018 13:49:32 +0000
Message-ID: <2EE3E45FEAD8944697CC29BFE83DD70F289B9403@VitalExchange.vitalograph.local>
References: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
In-Reply-To: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
Accept-Language: en-IE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.245.60]
MIME-Version: 1.0
X-Outbound-IP: 176.58.6.8
X-Env-From: evan.oloughlin@vitalograph.ie
X-Proto: esmtps
X-Revdns: 
X-HELO: VitalExchange.vitalograph.local
X-TLS: TLSv1.2:AES256-GCM-SHA384:256
X-Authenticated_ID: 
X-PolicySMART: 14033467
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: Yocto List <yocto@yoctoproject.org>,
	Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Re: git works standalone, but not within yocto for weird Azure Devops ssh uri
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
X-List-Received-Date: Thu, 20 Sep 2018 13:50:51 -0000
Content-Language: en-IE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Jakob Hasse [jakob.hasse@qiio.com]
Sent: 19 September 2018 10:05
To: Yocto List
Cc: Andrii Voloshyn
Subject: [yocto] git works standalone, but not within yocto for weird Azure=
 Devops ssh uri

Hello,

I have several projects hosted in Azure DepOs (former Visual Studio online)=
.
When I glone them with git inside my host machine or the Ubuntu 16.04 conta=
iner, everything works fine. When I use bitbake to build the recipe with th=
e same ssh uri, it fails (yocto inside Ubuntu 16.04 container).

The SCR_URI in my recipe looks like this:

SRC_URI =3D "gitsm://XXX@vs-ssh.visualstudio.com:v3/XXX-app"<mailto:gitsm:/=
/XXX@vs-ssh.visualstudio.com:v3/XXX-app>

What strikes me is the weird "v3" in the app uri, with the other ssh uris n=
ot containing this but the ssh port (22) instead, I didn't have any problem=
 so far.
I also upgraded git to version 2.17 or 2.19 or so already.

Does anyone have a solution for this?
The actual recipe looks like this:

DESCRIPTION =3D "My app"
LICENSE =3D "CLOSED"
SECTION =3D "app"

# util-linux is for some uuid headers
DEPENDS =3D "openssl curl u-boot-fw-utils restart-me util-linux"

SRC_URI =3D "gitsm://my-company@vs-ssh.visualstudio.com:v3/my-company/IoTSo=
lutions/my-app"<mailto:gitsm://my-company@vs-ssh.visualstudio.com:v3/my-com=
pany/IoTSolutions/my-app>
SRC_URI_append =3D "file://start_my-app.sh"<file://start_my-app.sh>

SRCREV_pn-my-app =3D "356dfb095d4b162120f43769cd5b23c7f5a15bd0"
#SRCREV_pn-swisscom-app =3D "${AUTOREV}"
S =3D "${WORKDIR}/git"

inherit cmake update-rc.d

INITSCRIPT_NAME =3D "start_my-app.sh"
INITSCRIPT_PARAMS =3D "start 23 3 5 ."

EXTRA_OECMAKE =3D ""

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/bin/my-app ${D}${bindir}/my-app
    chrpath -d ${D}${bindir}/my-app

    install -d ${D}${sysconfdir}/init.d

    install -c -m 755 ${WORKDIR}/${INITSCRIPT_NAME} ${D}${sysconfdir}/init.=
d/${INITSCRIPT_NAME}
}

All the Best
Jakob


--
Jakob Hasse
Software Developement

E: jakob.hasse@qiio.ch<mailto:jakob.hasse@qiio.ch>
T: +41 44 552 02 66

Qiio GmbH
www.qiio.com<http://www.qiio.com>


Hi Jacob,

I had a similar issue setting-up my recipe recently.

Our git server uses ssh key authentication and i finally got it working usi=
ng the following SRC_URI in my recipe:
SRC_URI =3D "git://user@server:ProjectName;protocol=3Dfile;branch=3DDevBran=
ch"


Hope this helps,

Regards,
Evan


