Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.90])
 by mx.groups.io with SMTP id smtpd.web12.8215.1585409917341179122
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 08:38:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zpesystems.onmicrosoft.com header.s=selector2-zpesystems-onmicrosoft-com header.b=KtKpoMo6;
 spf=pass (domain: zpesystems.com, ip: 40.107.223.90, mailfrom: edson.seabra@zpesystems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2KTQcmk2WZ73nBRD4O9PLsGQvMmEVNINEhu2x3us4eWAn6Au/Ogvyna/livo3LNhQBA6FV0GBdMxAApYuWM9JWar62LVe1e9WBNZ/UKJlT75kUkOVZWpnNKigNWJU2R97rtKz8vdmkBXBAZVfqqxJgokAxM9cnRL+9T4fL09UHX+4QUFmMLLq9eukNfZnjVEkNXIGI5w6UuJ0tK/PLM3Ia0Lye/Qld8VNfmZXDNJacCIR64g5Q5KQEEPwojKm8rrUGceZRZwMBnKWtNGhOPnu0jubaaCt3fPXF2JkUgt52ZTg37BqhppU8n/0PlgVkmDrCqTR7Yd4OJpcV0fidLvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IQjg3FFbulMybA70pYgSqwkTT/s8GQZ2P1eJuE/1ChY=;
 b=HhTLclp9b572+Eaogp0hZPBfU+3dVOERxomIyIXAL7Au+VytmJbIcIdjoIEAjHOxZpbr5297yLnMh4RdzVO9nh+zPA+FtuZUFTYaS3Hnl6sol0iuaUwVW9GUUizVs4bbARUgO5ZyODPjmhaCAJdTS//3lKqywT35zD5gp+Qa/Zk7uh6grruPdVpuggmHdziWEhqlz3MMUt5q9aaATf56p6KiyDNwrYWQuBe6d1x2S+9tXyxAXVYGeqLAU5iRHY5oZymiFRNfuy7NnOfOnjHW3kJdPWqmRGg/iLDX4yrVk8d0UB2rSOE4N8O9JTPzcPR+0jY5BmU6FoT3Tc1diaoXJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zpesystems.com; dmarc=pass action=none
 header.from=zpesystems.com; dkim=pass header.d=zpesystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ZPESystems.onmicrosoft.com; s=selector2-ZPESystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IQjg3FFbulMybA70pYgSqwkTT/s8GQZ2P1eJuE/1ChY=;
 b=KtKpoMo6JRgSOaCBVZaKQ73ggQr9wfZy3fEfOTL6btlwyxckKI4/3ZaK5eBzDYVVyNve790b2bZqm/5E+iAaLaC5rRlVlY/pFYv8746iXbNNrakhVStqJD1f6WaQTlp96caFYv//7LdLpA7G9S9/diJvtOy1QxLCHqCg+2SH+fM=
Received: from BN6PR19MB3249.namprd19.prod.outlook.com (2603:10b6:405:7b::25)
 by BN6PR19MB0066.namprd19.prod.outlook.com (2603:10b6:405:62::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Sat, 28 Mar
 2020 15:38:35 +0000
Received: from BN6PR19MB3249.namprd19.prod.outlook.com
 ([fe80::ecd6:b454:48cd:da3a]) by BN6PR19MB3249.namprd19.prod.outlook.com
 ([fe80::ecd6:b454:48cd:da3a%3]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 15:38:35 +0000
From: "Edson Seabra" <edson.seabra@zpesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Compressing btrfs image
Thread-Topic: Compressing btrfs image 
Thread-Index: AQHWBRGhLgjqnm44F0OQQSZpHRJSaqheI395
Date: Sat, 28 Mar 2020 15:38:35 +0000
Message-ID: 
 <BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0@BN6PR19MB3249.namprd19.prod.outlook.com>
References: 
 <BN6PR19MB3249AD0F7FD9FD9CEFD2BEA8F7CD0@BN6PR19MB3249.namprd19.prod.outlook.com>
In-Reply-To: 
 <BN6PR19MB3249AD0F7FD9FD9CEFD2BEA8F7CD0@BN6PR19MB3249.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Edson.Seabra@zpesystems.com; 
x-originating-ip: [2804:14d:7e81:88ba:c536:4eea:9213:3ea3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0d458d1-431a-43f9-4e81-08d7d32e142b
x-ms-traffictypediagnostic: BN6PR19MB0066:
x-microsoft-antispam-prvs: 
 <BN6PR19MB006655854775AF1CAA675AB7F7CD0@BN6PR19MB0066.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03569407CC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR19MB3249.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(396003)(346002)(39840400004)(366004)(376002)(136003)(53546011)(3480700007)(508600001)(55016002)(6506007)(5660300002)(33656002)(8676002)(52536014)(9686003)(4743002)(2906002)(186003)(2940100002)(6916009)(19627405001)(8936002)(81156014)(81166006)(86362001)(71200400001)(66476007)(66946007)(7116003)(66616009)(99936003)(64756008)(91956017)(66556008)(66446008)(76116006)(7696005)(316002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: zpesystems.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CcD57aNLV5EF2y9oHNpeoFH6mkXhY+olmLNomhJL86BkXCY7Aj21wR5qZVJzLAu6vPSzXSQj83aTjJgQaDSOrdQYws5RG87ITiiiYbFiKI7rxSyN4UK7yCBk3hH0J2QDGyb8I9tPiF4ysQhsq/uFKz0S5sW364cJMpPt5FbM0BMwQiwu2y4+zbaDgn+U1I0RageZPxCY0TZCuYPP5mx8SwFerE5Hw+wU+SJl2NIsKEjNgdmiOvfnhFhb6alBMWPV/fPuabPEqmPnLU58I8aS/oNPojv0pQmUBrmxU3HNHMV1/Fj+wh9HfEDfbO96u5MLkTqVUzBttMp2Xe/l8ra+pI+nlhN2sHtQUZR1hN36L4ywup+naaoxk5NmGKP+6ty4bFgrUtSLP/2ryjoQW44DFE5KKenxhM8PWPyBfyckt6oipLUFeGUbP9QhIMelF1+2r8elAGq8955z9HF0MPWPsddRtbnetvZjr8BHNic3EahQYXGHMjHcK9pgxjHf+geG977MLNfoOljZvUjs9BpnAg==
x-ms-exchange-antispam-messagedata: 
 N7IYU1He/eZl/uQ1sovz9Z5KEBd0f+0zdgqvEm20WKKOJIbJT0w0AcuzqGVFWWtkBTa/fNvCR3pZGm1ev3H01YEJz++QQ2Osh41Qnt3PIi3j2gLcmcnza0G7ytuHcCfCjkd9Aw61E+3hNFst+ztzplqF2HdvyTHLbDqRLyItY00YxUzoPm42RPDU8UDGoC8K8TC1jD3m356hAxpm0IMyCA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0d458d1-431a-43f9-4e81-08d7d32e142b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2020 15:38:35.4844
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W3AIl48jpkwzGcQE42loRCq87SdgUzkMDjiOUaj/w8tYgxSaq+9m5lj4G9AL0wi2HFmQH0nHjU9VmOO8QWHiu6/t31gqRmU76cTd80BOdMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR19MB0066
X-Groupsio-MsgNum: 48965
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_";
	type="multipart/alternative"

--_004_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_"

--_000_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I forget to say I'm using zeus...

________________________________
From: Edson Seabra
Sent: Saturday, March 28, 2020 12:30 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Compressing btrfs image

Hi all.

I'm trying to compress a btrfs rootfs

I added  in "image_types.bbclass:IMAGE_CMD_btrfs ()"  two commands:

1) mount the btrfs image after mkfs.btrfs
2) btrfs filesystem defrag + compress option

But the command mount fails:

mount: /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/node=
grid/1.0-r0/deploy-nodegrid-image-complete/temp_btrfs: failed to setup loop=
 device for /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux=
/nodegrid/1.0-r0/deploy-nodegrid-image-complete/nodegrid-genericx86-64-2020=
0328134151.rootfs.btrfs.

I saw in image.bbclass the creation of do_image_btrfs task with flag 'faker=
oot'.

=3D=3D=3D=3D=3D=3D image.bbclass =3D=3D=3D=3D
        task =3D "do_image_%s" % t.replace("-", "_").replace(".", "_")

        d.setVar(task, '\n'.join(cmds))
        d.setVarFlag(task, 'func', '1')
        d.setVarFlag(task, 'fakeroot', '1')
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

would the fakeroot flag allow do_image_btrfs execute commands that requires=
 root privilege ?

If not what would be the way to execute the mount command ?

I tried "pseudo mount" but it failed same way...

Thanks in advance.

Edson.


Edson Seabra

Principal Engineer

M +1 510 579 0843

E   edson.seabra@zpesystems.com<mailto:alvin.chan@zpesystems.com>

[1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c=
90-8c28-e559c26bc7d1.png]
46757 Fremont Blvd., Fremont, CA 94538
zpesystems.com<https://www.zpesystems.com/> | Request a Nodegrid Demo<https=
://www.zpesystems.com/demo/>

--_000_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I forget to say I'm using zeus...</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Edson Seabra<br>
<b>Sent:</b> Saturday, March 28, 2020 12:30 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Compressing btrfs image </font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi all.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm trying to compress a btrfs rootfs</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I added&nbsp; in &quot;<span style=3D"font-family:Calibri,Arial,Helvetica,s=
ans-serif; background-color:rgb(255,255,255); display:inline!important">ima=
ge_types.bbclass:</span>IMAGE_CMD_btrfs ()&quot;&nbsp; two commands:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
1) mount the btrfs image after mkfs.btrfs</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
2) btrfs filesystem defrag &#43; compress option</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
But the command mount fails:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
mount: /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/node=
grid/1.0-r0/deploy-nodegrid-image-complete/temp_btrfs: failed to setup loop=
 device for /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux=
/nodegrid/1.0-r0/deploy-nodegrid-image-complete/nodegrid-genericx86-64-2020=
0328134151.rootfs.btrfs.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I saw in image.bbclass the creation of do_image_btrfs task with flag 'faker=
oot'.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif">
<br>
=3D=3D=3D=3D=3D=3D image.bbclass =3D=3D=3D=3D</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif">
<span style=3D"margin:0px">&nbsp; &nbsp; &nbsp; &nbsp; task =3D &quot;do_im=
age_%s&quot; % t.replace(&quot;-&quot;, &quot;_&quot;).replace(&quot;.&quot=
;, &quot;_&quot;)<br>
</span>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVar(task, '\n'.j=
oin(cmds))<br>
</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVarFlag(task, 'f=
unc', '1')<br>
</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVarFlag(task, '<=
span style=3D"margin:0px; color:rgb(12,136,42)">fakeroot</span>', '1')<br>
</div>
<span style=3D"margin:0px"></span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif">
<br>
</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
would the fakeroot flag allow do_image_btrfs execute commands that requires=
 root privilege ?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If not what would be the way to execute the mount command ?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I tried &quot;pseudo mount&quot; but it failed same way...</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks in advance.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Edson.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_Signature">
<div></div>
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; background-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,s=
ans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px">
</p>
<div class=3D"x_x_MsoNormal" style=3D"margin:0px 0in 0.000133333px; font-si=
ze:11pt; font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<a style=3D"margin:0px; font-size:11pt; font-family:Calibri,sans-serif; tex=
t-align:start; background-color:rgb(255,255,255)"><font face=3D"Source Sans=
 Pro" size=3D"2" color=3D"#0BABC6"><span style=3D"margin:0px; font-size:10p=
t"><b>Edson Seabra</b></span></font></a><br>
</div>
<p class=3D"x_x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;mar=
gin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Principal Engineer</sp=
an></p>
<p class=3D"x_x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;mar=
gin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; font-size:11pt; fo=
nt-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">M &#43;1 510 579 0843<=
/span></p>
<div><span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;=
,serif,EmojiFont; color:rgb(96,109,117)"><b>E&nbsp;&nbsp;&nbsp;</b></span><=
a href=3D"mailto:alvin.chan@zpesystems.com" target=3D"_blank" rel=3D"noopen=
er noreferrer" id=3D"LPNoLP" style=3D"font-size:12pt; font-family:Calibri">=
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(5,99,193)">edson.seabra@zpesystems.com</span></a><br=
>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"></span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"><img class=3D"x_EmojiInsert" alt=3D"150=
6169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8=
c28-e559c26bc7d1.png" style=3D"max-width: 100%; height: auto;" data-outlook=
-trace=3D"F:2|T:2" src=3D"cid:8e42854f-86dd-4d55-9798-3cd55a6f2ef4"><br>
<span class=3D"x_contextualExtensionHighlight x_ms-font-color-themePrimary =
x_ms-border-color-themePrimary x_ident_378_416" tabindex=3D"0">46757 Fremon=
t Blvd., Fremont, CA 94538</span><br>
</span><a href=3D"https://www.zpesystems.com/" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><b><span style=3D"font-size:10pt; font-fami=
ly:&quot;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)">zpes=
ystems.com</span></b></a><b><span style=3D"font-size:10pt; font-family:&quo=
t;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)">&nbsp;|&nbs=
p;</span></b><b><span style=3D"font-size:10pt; font-family:&quot;Source San=
s Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"><a href=3D"https://www.=
zpesystems.com/demo/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"L=
PNoLP">Request
 a Nodegrid Demo</a></span></b></p>
</div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px">
</p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_--

--_004_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Sat, 28 Mar 2020 15:30:27 GMT";
	modification-date="Sat, 28 Mar 2020 15:30:28 GMT"
Content-ID: <8e42854f-86dd-4d55-9798-3cd55a6f2ef4>
Content-Transfer-Encoding: base64

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

--_004_BN6PR19MB3249C4816DAEC312FF6BAE53F7CD0BN6PR19MB3249namp_--
