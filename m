Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87827E00C8F; Wed,  3 Feb 2016 23:31:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F614E00C88
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 23:31:52 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-54-56b2fe66fa4b
X-Invalid-Recipients: 
Received: from BLR-OUT-EDG02.wipro.com ( [203.91.201.88])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	9A.4E.05428.66EF2B65; Thu,  4 Feb 2016 13:01:50 +0530 (IST)
Received: from BLR-EC-MBX7.wipro.com (10.208.51.117) by
	BLR-OUT-EDG02.wipro.com (203.91.193.32) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 13:01:35 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.193.38) by
	BLR-EC-MBX7.wipro.com (10.208.51.117) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Thu, 4 Feb 2016 13:01:37 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.208) by
	wipro-blr-tls01.wipro.com (203.91.193.38) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 13:01:31 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Thu, 4 Feb 2016 07:31:32 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Thu, 4 Feb 2016 07:31:32 +0000
From: <shubham.kumar4@wipro.com>
To: <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-intel]:Quark not accepting "root" username at
	login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkp8aVidlgAARJ4CAAAEaD4AAK4sAgADU8W2AABK4gIAAAiOB
Date: Thu, 4 Feb 2016 07:31:32 +0000
Message-ID: <SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1454510985.3990.8.camel@open-rnd.pl>
	<SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
	<SIXPR03MB06725C3D253D8E985C10B753D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
In-Reply-To: <CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [198.175.68.37]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0672;
	5:cF0+xpZ4OmGgHEffQSMUwNgNhxDSaAstJBSHmIBZbRyANeU3abTCKJL5Ixg54o4TMErum/kG6HQsPPCgJ5BRbXp4/4VKPdf8Tg9YJh9q/Bp5WsKHFPHAIaXk9jaOrJ0cjacJd9Zh5U62XroWFjCwrw==;
	24:8AfUOBq/pPzT8QOOOgZhc+dMI+Hck/8K9l5k5wRbBxM6+5eNdE6eG70X2e84kcyym7ykbgb48jO3VjwiQd74GW1ZB5v31nrDfj2IHhEMb6c=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0672;
x-ms-office365-filtering-correlation-id: 2e9631e7-4301-4e7e-7096-08d32d353468
x-microsoft-antispam-prvs: <SIXPR03MB06729FC3E1FCB984F41AFAACD4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(62627912741753);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(61426038)(61427038);
	SRVR:SIXPR03MB0672; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0672; 
x-forefront-prvs: 084285FC5C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(164054003)(377454003)(586003)(3846002)(6116002)(10400500002)(66066001)(15975445007)(102836003)(40100003)(5002640100001)(5001960100002)(1220700001)(110136002)(76576001)(551544002)(5890100001)(15974865002)(5004730100002)(11100500001)(2900100001)(122556002)(5008740100001)(86362001)(92566002)(2950100001)(74316001)(93886004)(77096005)(106116001)(87936001)(3280700002)(3660700001)(54356999)(76176999)(19580405001)(50986999)(5003600100002)(3900700001)(189998001)(19580395003)(33656002)(2906002)(4326007)(1096002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0672;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2016 07:31:32.4054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0672
X-OrganizationHeadersPreserved: SIXPR03MB0672.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: BLR-HES-EDG01.wipro.com
X-CrossPremisesHeadersFiltered: BLR-HES-EDG01.wipro.com
X-CFilter-Loop: Reflected
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Thu, 04 Feb 2016 07:31:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Thanks for your quick response.

That entry is already there in "<build>/conf/local.conf " file as follows:-

# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"

In addition to the above, I have also added "tools-sdk" and "tools-debug" a=
s follows in the same file :-

#Other packages
EXTRA_IMAGE_FEATURES =3D "tools-sdk"
EXTRA_IMAGE_FEATURES =3D "tools-debug"

Is there anything else I'm missing?


Thanks,
Shubham_K


________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Thursday, February 4, 2016 12:48 PM
To: Shubham Kumar (Product Engineering Service)
Cc: yocto@yoctoproject.org; maciej.borzecki@open-rnd.pl
Subject: Re: [yocto] [meta-intel]:Quark not accepting "root" username at lo=
gin prompt

On Wed, Feb 3, 2016 at 10:43 PM,  <shubham.kumar4@wipro.com> wrote:
> Hi Maciej,
>
>
> I did "bitbake -r core-image-sato" and redirected the output to a file. F=
rom that I found that IMAGE_FEATURES is assigned in image.bblass. A few of =
the contents in the file were as follows:-
>
> # IMAGE_FEATURES may contain any available package group
> IMAGE_FEATURES ?=3D ""
> IMAGE_FEATURES[type] =3D "list"
> IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs empty-root=
-password allow-empty-password post-install-logging"
>
> I thought of modifying the last entry and made it as follows:-
>
> IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs"

thats not how you do it. you add it to local configuration metadata
e.g. in your conf/local.conf

you define it e.g.

EXTRA_IMAGE_FEATURES =3D "debug-tweaks"

>
> Then I rebuilt the images using "bitbake core-image-sato" and then wic to=
ol.But still same issue persists.The Galileo is booting , but not accepting=
 "root"  as username and again asking for password.
>
>
> .
> .
> .
> I also checked for IMAGE_ROOTFS in "image.bbclass" file and got the path =
to the rootfs as follows:-
> IMAGE_ROOTFS=3D"/home/yogesh/myYocto/poky/final_build/tmp/work/intel_quar=
k-poky-linux/core-image-sato/1.0-r0/rootfs"
>
> In etc/shadow, proper entry is present with ----  root:*:16834:0:99999:7:=
::
>
> Thanks for your co-operation, Maciej. Looking forward to reaolving this i=
ssue asap.
>
>
> Thanks,
> Shubham_K
>
>
>
> ________________________________________
> From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
> Sent: Wednesday, February 3, 2016 10:59 PM
> To: Shubham Kumar (Product Engineering Service); yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-intel]:Quark not accepting "root" username at =
login prompt
>
>> Dnia 3 luty 2016 o 15:55 shubham.kumar4@wipro.com napisa=B3(a):
>>
>>
>> In "final_build/conf/local.conf" , EXTRA_IMAGE_FEATURES =3D "debug-tweak=
s".
>>
>> So, yes "debug-tweaks" is present.
>>
>
> Try running bitbake -e <yourimagename> and check the value of
> IMAGE_FEATURES (and where it gets assigned).
>
> You may also want to check if /etc/shadow in the rootfs contains proper
> entry. It should look like this:
>
>        root:*:16834:0:99999:7:::
>
> When inspecting the output of bitbake -e, look for IMAGE_ROOTFS, this
> will point to the location of the rootfs for your image.
>
> --
> Maciej Borz=EAcki
> Senior Software Engineer at Open-RnD Sp. z o.o.
> www.open-rnd.pl, Facebook, Twitter
>
> Niniejsza wiadomo=B6=E6 wraz z za=B3=B1cznikami mo=BFe zawiera=E6 chronio=
ne prawem
> lub poufne informacje i zosta=B3a wys=B3ana wy=B3=B1cznie do wiadomo=B6ci=
 i
> u=BFytku os=F3b, do kt=F3rych zosta=B3a zaadresowana. Je=B6li wiadomo=B6=
=E6 zosta=B3a
> otrzymana przypadkowo zabrania si=EA jej kopiowania lub rozsy=B3ania do
> os=F3b trzecich. W takim przypadku uprasza si=EA o natychmiastowe
> zniszczenie wiadomo=B6ci oraz poinformowanie nadawcy o zaistnia=B3ej
> sytuacji za pomoc=B1 wiadomo=B6ci zwrotnej. Dzi=EAkujemy.
>
> This message, including any attachments hereto, may contain privileged
> or confidential information and is sent solely for the attention and
> use of the intended addressee(s). If you are not an intended
> addressee, you may neither use this message nor copy or deliver it to
> anyone. In such case, you should immediately destroy this message and
> kindly notify the sender by reply email. Thank you.
> The information contained in this electronic message and any attachments =
to this message are intended for the exclusive use of the addressee(s) and =
may contain proprietary, confidential or privileged information. If you are=
 not the intended recipient, you should not disseminate, distribute or copy=
 this e-mail. Please notify the sender immediately and destroy all copies o=
f this message and any attachments. WARNING: Computer viruses can be transm=
itted via email. The recipient should check this email and any attachments =
for the presence of viruses. The company accepts no liability for any damag=
e caused by any virus transmitted by this email. www.wipro.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

