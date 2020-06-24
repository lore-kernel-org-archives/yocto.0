Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.62])
 by mx.groups.io with SMTP id smtpd.web12.4016.1592961137286118074
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 18:12:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@witekio.com header.s=selector1 header.b=luhes0RJ;
 spf=pass (domain: witekio.com, ip: 40.107.21.62, mailfrom: pbudny@witekio.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NDQjdWIStJXQZr3+6rE69zvg8kRiGliSzgofGUdam3g9UXxe5a2dzxbRH3Ai9BOO3aLwXlk4F8md+LECpyTzWL9h3Z2gnuCva4LO4oUngALat29aCajeh4GRJpF005Plpmo8IVQ1PwhnCTSFWMOxsGO1ki8pPxplhmngE3o0DXW7eautAwh+VFU91q3ITdZBttVjyirh/R5WY8BkJuo7Oxwm8kF8/40/6Q3G2SymkAa35Nb7vKNAePDU66oz724ffwAzvstkIWPlrD1h8tZr9+2lULEbyBDHVSxNuX+vF/beT6gAM8LjsEEReDIYvU/sZ7WiZRvotLIGJpvE/AQtLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rHR4xDsKg5k5aaHmpaT7kyvlaTZAwDWLs5i9fC3S27w=;
 b=j7S5DhV/qC36ruAIDW6NyPYGKdtHgBkJJrkZi8OInGndGhImoEZ0lTC80VGTeOJk9KjF8k2DDzHkD2b2qg+WApW3PdA3XFLGcm7Uk/oIdOiDCspxpN9C5HvI4cxns9n6gs2dc4zUIODrS1Z3cERzBAT/FFnP1cbDxl2o65l+8MCgUA9jDTGCDFhsuqaw8H6flagKgYEOK8E24Ly69knm06t50dszYoT5D5Fv6PVTyHjUIMrJBwD4z9jBpuggh2teqg0pI2G0k6uOsf0N00aWMqGw7QIJALvT0ThM7U/5O8C9O9stfwPpWOUi91G5GVflVeQxRCH9ljFZpXpy7jO3Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rHR4xDsKg5k5aaHmpaT7kyvlaTZAwDWLs5i9fC3S27w=;
 b=luhes0RJss5g3/zFydmK8MZXSyfHBx7Oz3zCyvnw37IrhMUAdfAw4973cx8QGIIOdVQqEItwqPCH7Nm5132lcaN7O2MvdioQGwZf/D14XfxjajfLTmB+rFHcyBCykt/mRi+gZWfKEUKa7fcJqKeND2Qal4RuxwYZGKaaPUjXLzY=
Received: from DB6P192MB0214.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:be::14) by
 DB6P192MB0184.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:bd::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.24; Wed, 24 Jun 2020 01:12:14 +0000
Received: from DB6P192MB0214.EURP192.PROD.OUTLOOK.COM
 ([fe80::c116:75f5:72f3:9d10]) by DB6P192MB0214.EURP192.PROD.OUTLOOK.COM
 ([fe80::c116:75f5:72f3:9d10%10]) with mapi id 15.20.3131.020; Wed, 24 Jun
 2020 01:12:14 +0000
From: pbudny@witekio.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Nested images, a.k.a. two-stage booting
Thread-Topic: Nested images, a.k.a. two-stage booting
Thread-Index: AQHWScRJg+zcrYqP50mMlaaVJmpvFw==
Date: Wed, 24 Jun 2020 01:12:13 +0000
Message-ID: 
 <DB6P192MB0214395F93E78A3751ABF4EFC3950@DB6P192MB0214.EURP192.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=witekio.com;
x-originating-ip: [73.221.194.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bd7b0fd-ee21-42d2-a0a0-08d817dba11f
x-ms-traffictypediagnostic: DB6P192MB0184:
x-microsoft-antispam-prvs: 
 <DB6P192MB018436316AEF48AD080D6AA8C3950@DB6P192MB0184.EURP192.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 finuAzweTHRytitN6q70XxTI+VuXQfR7vA9WFDaRNpRFA4LPXUBuMmBcCisWCbao86tDh3x9OzqeN5kB9Eijv4sbc9lLffVgjbggTZDl4sCF5VwxaF9y7OV03scwfjz4TFidJCHssHPbpwh5kh1TLwmPfzEaPE+akrObTOyc7/UpEPh+gkGo5cUosjnmzUx49PAuJ63RK8IgsiyYNMFXNRr+TsfQsf0K+abyP5GEsA9XBk+Po1p8WeEvVMzKRMsAh4hZeha7Sl1k931bliXt7gvACG8Bem/wF4z08qDkBGg4JSHJKs0DecZlebf4BLhxd1wevsPvjp07sKlwkQcLUw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6P192MB0214.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(366004)(376002)(396003)(39840400004)(346002)(136003)(6506007)(2906002)(9686003)(71200400001)(86362001)(83380400001)(6916009)(508600001)(55016002)(7696005)(8936002)(316002)(186003)(26005)(8676002)(33656002)(66946007)(66476007)(5660300002)(76116006)(91956017)(66556008)(64756008)(52536014)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 ONIg6Pnf0+FaTmPQG2dXbreI3SkaSt86zSYqgSgAIU/RASQgUxXT80bdpdkJ9UyFjhtIUYvz0zn/2uZSellron3bcmLpajt4HfVAeNCf2Vo9h0hPWb7OSMK+SriKuqOXESPFAVZa9jgvLCiDykG/4WrE8V7SW3LlavQmlJe5Je+9n6ZGIj9GbJQvZxDDf3D4bSfpsMxb6hDbs/+xR+7PeVr1ldJNPQo9cMSo0/eK05MGFc/5sLyWNMc+J9KTidseQnePnf0nePe0bhSPFRsQ2alue2KGV7OHm/tC7Z+zj8gh+vCwtWL7Qd6+rWJ2O9TERPHo/Uw7vdNYD2X/5AWY4XETQIvvA0+HeUgRyE/Lnmz0rn5b4VkLN96TvunF/gGUpYl2Uu0z+ph5bvqQEeVM8yiu3+bueU/TctBLmqOKGBTf4j8t5dHOr6PqQ+dhxaB/6EN1A89U9zRHTo8XdGTw+jLGIERgifM6gdDmVY2LiY5NWjIY9fOI7uOFgRS50lE5
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd7b0fd-ee21-42d2-a0a0-08d817dba11f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:12:13.9717
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 768ywimUABW2Tok9mmxfFi7ElIlVge+y17D4wwhKMvH1PlCToedYPrQ5ny/aPheJnHO92yqjptykFBdpJKVhZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6P192MB0184
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,=0A=
=0A=
I have an unusual and uncommon situation, and could use some help to get Yo=
cto to do what I need.=0A=
=0A=
I'm working on a legacy system which is being ported to use Yocto and Linux=
. The hardware architecture is complex, but the main detail to know is that=
 the processor I'm running on boots entirely from RAM. A co-processor puts =
a FIT image into shared memory, which this processor uses to boot Linux and=
 then decompress the initramfs, which is not an "initial" ramdisk but is ac=
tually the only rootfs it uses.=A0Unfortunately, RAM is quite limited, and =
the image has become large enough that Linux runs out of space decompressin=
g it.=0A=
=0A=
The problem is that to decompress the rootfs, there has to be enough RAM fo=
r the compressed image, and the decompressed image, and working space for t=
he decompressor. However, I figured out a workaround: I can have a minimal =
initramfs that contains just enough to boot plus the desired compressed roo=
tfs. This way it only needs ~12MB free to decompress the outer rootfs. Once=
 the kernel is done booting and has freed some memory used during boot, the=
re's enough free memory that it can decompress the inner rootfs and pivot_r=
oot. It sounds a little crazy, but it does work.=0A=
=0A=
This is easy enough to do manually:=0A=
* Create the inner rootfs as a .cpio.xz (or whatever)=0A=
* Create the outer rootfs, which is similar to core-image-minimal-initramfs=
.=0A=
* To the outer rootfs, manually add inner_rootfs.cpio.xz and a script to de=
compress it and pivot_root.=0A=
=0A=
I can do that the evil way (by modifying the outer rootfs inside the build/=
tmp/work/ directory, which I know will confuse sstate) or in a nicer but st=
ill manual way (with a script run afterwards to decompress the outer rootfs=
, add the files, and recompress it... however, putting a bootable image bac=
k together involves several extra steps on this baroque system, more than j=
ust building a CPIO and FIT image).=0A=
=0A=
The ideal way would be to put this into a recipe or class, and that's where=
 I'm stuck. There doesn't seem to be a way to do it with just an image reci=
pe; you can't simply RDEPEND on it, nor do image recipes generate package o=
utput that could be "installed" in another recipe. I was hoping that IMAGE_=
FSTYPES=3D"live" might get me close, but alas that depends on Syslinux and =
is only for x86.=0A=
=0A=
Has anyone seen something like this two-stage boot or nested images before?=
 I searched around but couldn't find anything useful to my situation.=0A=
=0A=
Assuming a class is the best way to do this, any suggestions=A0on how to im=
plement this? I'm pretty competent with ordinary recipes, but the code for =
generating images is a lot more opaque, and I'm having a hard time figuring=
 out what will be required. (For instance, it's not even clear to me whethe=
r inner image should depend on outer image, or outer image should depend on=
 inner image.)=
