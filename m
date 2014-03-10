Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0188.outbound.protection.outlook.com [207.46.163.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51F98E00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 05:10:28 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB257.namprd05.prod.outlook.com (10.141.22.15) with Microsoft
	SMTP Server (TLS) id 15.0.893.10; Mon, 10 Mar 2014 12:10:23 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.158]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.247]) with mapi id
	15.00.0888.003; Mon, 10 Mar 2014 12:10:23 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Thread-Topic: [yocto] Remote management of embedded devices
Thread-Index: AQHPOgESurAJDez0R0OzXTUvAo0IoJrVkrHwgAFX/gCAA1ERAA==
Date: Mon, 10 Mar 2014 12:10:22 +0000
Message-ID: <71e128033e0b4d9e98230c2ab6379a2b@BLUPR05MB037.namprd05.prod.outlook.com>
References: <5319BBD3.2040703@dynamicdevices.co.uk>
	<d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
	<531AE05C.1070209@dynamicdevices.co.uk>
In-Reply-To: <531AE05C.1070209@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0013AC93006A800013ADE0
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 014617085B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(199002)(189002)(13464003)(479174003)(51704005)(377454003)(24454002)(83322001)(74366001)(97336001)(50986001)(54356001)(47976001)(54316002)(65816001)(87266001)(4396001)(97186001)(56776001)(56816005)(80022001)(53806001)(74876001)(83072002)(81686001)(81816001)(46102001)(85852003)(90146001)(51856001)(19580405001)(49866001)(76482001)(19580395003)(95416001)(94316002)(47736001)(87936001)(93136001)(94946001)(47446002)(81542001)(77982001)(80976001)(66066001)(59766001)(74706001)(93516002)(33646001)(92566001)(74502001)(95666003)(79102001)(77096001)(63696002)(85306002)(76576001)(69226001)(76796001)(76786001)(31966008)(74662001)(86362001)(81342001)(74316001)(2656002)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB257;
	H:BLUPR05MB037.namprd05.prod.outlook.com; CLIP:98.100.91.242;
	FPR:B43CF234.ACF29D80.7EFD714F.43E4DA11.204C6; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Mar 2014 12:10:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex,

> -----Original Message-----
> From: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
> Sent: Saturday, March 08, 2014 4:18 AM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Remote management of embedded devices
>=20
> +
> On 07/03/2014 13:41, Bryan Evenson wrote:
> > Alex,
> >
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >> bounces@yoctoproject.org] On Behalf Of Alex J Lennon
> >> Sent: Friday, March 07, 2014 7:30 AM
> >> To: yocto@yoctoproject.org
> >> Subject: [yocto] Remote management of embedded devices
> >>
> >> Hi,
> >>
> >> I'm looking into remote management solutions for an upcoming headless
> >> mesh edge router running Poky. I think, at least in the initial
> >> rollout we're going to need something more than, say, a cron-based
> >> package update facility.
> >>
> >> I'm currently thinking of going down the route of a cloud based
> >> server providing SSH port forwarding to the embedded devices, and
> >> then perhaps putting some scripting together on top of that to enable
> >> monitoring, configuration, and control.
> > This is similar to what we have running.  We're using opkg for the pack=
age
> management system and allow firmware upgrade through the USB stick or
> through remote access.  We have an SSH server for remote access, and each
> device has its own private key for access into the server.  If the device=
 is in
> the middle of an SSH session with the remote access server, we can then S=
SH
> into the device from our server if we want to do some deeper diagnostics =
on
> an issue with a device.  We have separate HTTP server which each device
> queries to see if it needs to check in.  So instead of having to do an ss=
h login
> each time to check if there's a firmware upgrade available, it just needs=
 to do
> a HTTP GET to see if there's firmware available or if we want to check on=
 its
> status.
> >
> > The biggest issues we've had have been due to our network setup and
> handling upgrade both through the network and the USB stick.  We are usin=
g
> "opkg upgrade --download-only" as the first step of the upgrade process t=
o
> make sure that we don't do a partial upgrade.  opkg-0.1.8 doesn't do --
> download-only for file:// sources; why download a file that is already on=
 the
> filesystem?  So I had to add a patch so it would download files from the =
USB
> stick.  We also had an issue with DNS names because the server has a
> different name when the device finds it locally on our intranet then when=
 it
> connects remotely, so we had to setup separate mirrors.  Other than that =
it's
> been working pretty well.
>=20
> Thanks Bryan, thanks really interesting. We do something similar with HTT=
P
> requests on various projects and that might well be something to apply he=
re.
> I guess the limitation of this approach is that you are limited in when y=
ou can
> obtain your back channel to the device to the frequency with which they
> connect to the HTTP server. I do wonder just how much load there would be
> on a server handling a lot of SSH connections if almost all of those
> connections were just idling, sending keep alives now and again. I keep
> meaning to try to put together some metrics on that as, if I'm right and =
the
> load is low (as long as we ensure connections from devices are never
> synchronised, e.g. power
> failure) then I'd like to have an "always on" back-channel available

We considered the same thing.  We weren't certain how scalable the idle SSH=
 connection would be, as every device doesn't need to be connected at any g=
iven time.  Depends on how many devices you plan on deploying, how many you=
 think need to be connected at any given time, and what kind of response ti=
me you need.  In our case, an HTTP request followed by the SSH connection i=
f needed was a better solution.=20

Regards,
Bryan

