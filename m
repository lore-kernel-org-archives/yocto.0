Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0208.outbound.protection.outlook.com [207.46.163.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 951CFE009FC
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 05:41:34 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB184.namprd05.prod.outlook.com (10.255.190.156) with Microsoft
	SMTP Server (TLS) id 15.0.893.10; Fri, 7 Mar 2014 13:41:19 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.158]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.247]) with mapi id
	15.00.0888.003; Fri, 7 Mar 2014 13:41:19 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Remote management of embedded devices
Thread-Index: AQHPOgESurAJDez0R0OzXTUvAo0IoJrVkrHw
Date: Fri, 7 Mar 2014 13:41:18 +0000
Message-ID: <d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
References: <5319BBD3.2040703@dynamicdevices.co.uk>
In-Reply-To: <5319BBD3.2040703@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00399A2D006A1A00399B7A
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(189002)(199002)(51704005)(13464003)(164054003)(377454003)(90146001)(74316001)(74662001)(31966008)(77096001)(95666003)(74366001)(80976001)(15975445006)(81686001)(76786001)(76796001)(76576001)(85306002)(81816001)(56816005)(74502001)(74706001)(97336001)(97186001)(81342001)(81542001)(74876001)(69226001)(87936001)(47446002)(92566001)(93516002)(87266001)(2656002)(83072002)(76482001)(46102001)(56776001)(86362001)(54316002)(80022001)(53806001)(93136001)(54356001)(51856001)(94946001)(63696002)(66066001)(65816001)(85852003)(94316002)(77982001)(95416001)(79102001)(19580395003)(47976001)(49866001)(47736001)(59766001)(83322001)(19580405001)(50986001)(4396001)(33646001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB184;
	H:BLUPR05MB037.namprd05.prod.outlook.com; CLIP:98.100.91.242;
	FPR:BCB6C204.9CF29DA0.42E17348.4AE4DA11.203CA; PTR:InfoNoRecords;
	MX:1; A:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: Remote management of embedded devices
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
X-List-Received-Date: Fri, 07 Mar 2014 13:41:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Alex J Lennon
> Sent: Friday, March 07, 2014 7:30 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Remote management of embedded devices
>=20
> Hi,
>=20
> I'm looking into remote management solutions for an upcoming headless
> mesh edge router running Poky. I think, at least in the initial rollout w=
e're
> going to need something more than, say, a cron-based package update
> facility.
>=20
> I'm currently thinking of going down the route of a cloud based server
> providing SSH port forwarding to the embedded devices, and then perhaps
> putting some scripting together on top of that to enable monitoring,
> configuration, and control.

This is similar to what we have running.  We're using opkg for the package =
management system and allow firmware upgrade through the USB stick or throu=
gh remote access.  We have an SSH server for remote access, and each device=
 has its own private key for access into the server.  If the device is in t=
he middle of an SSH session with the remote access server, we can then SSH =
into the device from our server if we want to do some deeper diagnostics on=
 an issue with a device.  We have separate HTTP server which each device qu=
eries to see if it needs to check in.  So instead of having to do an ssh lo=
gin each time to check if there's a firmware upgrade available, it just nee=
ds to do a HTTP GET to see if there's firmware available or if we want to c=
heck on its status.

The biggest issues we've had have been due to our network setup and handlin=
g upgrade both through the network and the USB stick.  We are using "opkg u=
pgrade --download-only" as the first step of the upgrade process to make su=
re that we don't do a partial upgrade.  opkg-0.1.8 doesn't do --download-on=
ly for file:// sources; why download a file that is already on the filesyst=
em?  So I had to add a patch so it would download files from the USB stick.=
  We also had an issue with DNS names because the server has a different na=
me when the device finds it locally on our intranet then when it connects r=
emotely, so we had to setup separate mirrors.  Other than that it's been wo=
rking pretty well. =20

I'd also love to hear other people's solutions to see if they have done som=
ething similar or came up with a different solution.

Regards,
Bryan

>=20
> I was wondering if there are better solutions already supported by the Yo=
cto
> project which people might be using to good effect in production systems =
?
>=20
> Thanks,
>=20
> Alex
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

