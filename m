Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.103])
 by mx.groups.io with SMTP id smtpd.web10.17217.1591199989593263184
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 08:59:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zpesystems.onmicrosoft.com header.s=selector2-zpesystems-onmicrosoft-com header.b=vYRxmiYP;
 spf=pass (domain: zpesystems.com, ip: 40.107.237.103, mailfrom: edson.seabra@zpesystems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XbdT4yrFshQCnL8jmvOmnGTALAd+IPWlKVVhWnPjPTk88bV+OH54WVcXCM7AsB5F8xne8aKeerOow+30o4dYEEgw4y7PV1ecAHv0S8WkGZtS443tFZz1zOAFhc3VXjZIGJ+1eppWxal3+hoqxMTCuSKaYXk24aXcuutKRvUyiE9aumyKJIuEDiBTH42ICUbXifDO+4/tUrvaGK/kCMTo+JAXQJcqk9+o7DZ3aCmk06SibgRUuzCzhjjstbj1mkqGzxDHM98IJNj9aFAHqqtRiPTw9mCpeQk7aweh5375Q17Yu0X6IRSBzSP8r/Ao09v+r8tiletlq8mpGpan4Mk0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GpUf6RiQ7Lr4InjNWDY52CiJtEbDJhuTYVZTK2QpxsU=;
 b=ZCxR1YJY2Bzb7rmKGsDQdQ5ltzUm7yfJenOzF6aBsb1aqpZDaYtDpZaRAXsqNzJ/tf+vgMr1KIatW3N3YcNzLiAmd/2pAO6GH6QW5IA2LRPIxEcCh4YHyyynJ5B7pHvh97G2D3QQiwm0xhZsnzGD8YM6LfoQ2IYdRi5EYW+wROSLnT/Y8my5USP2TWInaU+vinOiKaQtyznKzng6PO4YaU6LG0YiUttQBKQwt0tSpU9mlMHaPGEqLbMK4XMkGh4yGCHMGwEH8192th62P/MvHrOFvb3SwLMusZVTw5A8PpatRIJp/QWcsZgftNhDV/weGivTAFfQvXl/I4E8rbTqHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zpesystems.com; dmarc=pass action=none
 header.from=zpesystems.com; dkim=pass header.d=zpesystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ZPESystems.onmicrosoft.com; s=selector2-ZPESystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GpUf6RiQ7Lr4InjNWDY52CiJtEbDJhuTYVZTK2QpxsU=;
 b=vYRxmiYPPTmuE3clgfNsTq3aI6EnvD7BD8o6plFrdroVTvLgXuG+jak0Gwxqx0LVAPZxmAOyV3vYLxkGvZ/Dg+fmw5VOZKPjFgf40cy3g2GOoavmoHX1tbibiQAZlHRWVvK/xfAW8byeL8U97Bl95u4urZeaH6EkmQz7QXReaQM=
Received: from BN6PR19MB1219.namprd19.prod.outlook.com (2603:10b6:404:ea::8)
 by BN6PR19MB3154.namprd19.prod.outlook.com (2603:10b6:405:7b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Wed, 3 Jun
 2020 15:59:47 +0000
Received: from BN6PR19MB1219.namprd19.prod.outlook.com
 ([fe80::d574:ec21:d7a9:f710]) by BN6PR19MB1219.namprd19.prod.outlook.com
 ([fe80::d574:ec21:d7a9:f710%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 15:59:47 +0000
From: "Edson Seabra" <edson.seabra@zpesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto Dunfell - task package failing
Thread-Topic: Yocto Dunfell - task package failing 
Thread-Index: AQHWOb6DfJcQwMN4FkK7bb8SU/wvqw==
Date: Wed, 3 Jun 2020 15:59:47 +0000
Message-ID: 
 <BN6PR19MB12192E6B631DEE0E3242AD0AF7880@BN6PR19MB1219.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=zpesystems.com;
x-originating-ip: [2804:14d:7e81:88ba:196c:cca8:9528:9d0c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d080312-2545-4d95-c5c8-08d807d72427
x-ms-traffictypediagnostic: BN6PR19MB3154:
x-microsoft-antispam-prvs: 
 <BN6PR19MB315426F91183A99A8FD97425F7880@BN6PR19MB3154.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GV2iEcIwfYgE3it0TQOaEqbGVpIyNtAEjJSLLSQZLGmjTAEvzXiZOUSA3sadb52psmptkeCzg7VnjbjEZd9MUmcgtsnktEv9jFMCYMKsn4vjQuI1IOzr5Fh9ad6OpKakJvpPX7ZOB8gGAytZ+Bx4XUQu5SPRFwmzK7ICfRv4mrdH/MCSpepEnjCcGwkIEKrrCBLpD8x5W58GgJV07fACYyNWNWdJT6JtAapIKcnea585NtMoGwEcRJsrA26jLnFYrL5r70/BZp1YT/McCc2gbi/VqdTLEBPjzEAVqAbfEiuHcUEcDqT7Cvv7UVbsjM3Y2sBBu0qvRrNTDb4RECeo90qySU66a/1kx3zHm8Tiyu3KPqiKr90/V41m4mgiXhWVVWMKeDtFyJWAjPaMmCLWJA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR19MB1219.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(376002)(346002)(396003)(39830400003)(366004)(4743002)(66946007)(91956017)(76116006)(66616009)(99936003)(52536014)(64756008)(66446008)(55016002)(508600001)(9686003)(66476007)(6916009)(2906002)(186003)(66556008)(83380400001)(8676002)(86362001)(166002)(8936002)(5660300002)(33656002)(71200400001)(316002)(7696005)(6506007)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 qeAhEm4BS8LkwEKmcMn1ppOLlloD8hrUY7K/x9EF1K8An4aY3PRgAg9x7gGflBNleVeaeYp0Xgm9pYzyWSjnG4Zlm+o7ORDmzXUogQiN4yTyRhKVlULYvR8yhuPK3+Bw/JRkriGbsbBJyR5k3CE224ClRhvF1rYFPKG7uVke1rZQXsjiRTeo4zyL0l9pIi1xkKLmO+VlakOU0JUGpzstmx4CwBuRyEFNRwNHOKMlc42RzKgl72R2Rn22hFx3TzA7uzjmlvsE9Gos1MeuJSGTVMI1/He6Mtdj6mmg9VihSxqV2CKmYCZtxXH9dhUhhvnh7AnB+thZ7Wef4YvC2ZHBY5W9ta13RFe8IqPy/Qwa1pRszTYjNhnzVwWdOG9D2AAVVQjNlrAymASA7hCBqyPMkdHXyZblufJlgzq+mKdKTOOyAO1jXY3nzMwMgs/N5Z1Wo4rITPdmPbZ4inIvUpOE3ARby7qWdhBLgvJAgEe1432oDYI/D6zwzz1PjCWlSwFXbaRfyE/bB73cNlmWv7oftIDrqhI4B0QfJBBNaT3H5XC3aqCKXGHCDbHtOUt6QXDm
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d080312-2545-4d95-c5c8-08d807d72427
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 15:59:47.8524
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jvFXMrXBW3RGlfEpGmVRa6GteJvTcBSE7JNxvxdvFWI3PBR6AE7Yybtqj/HWjjSu41Jiyz3O2yr3Xkipt05digqfxx9nXVpes5wHwWWFPtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR19MB3154
X-Groupsio-MsgNum: 49572
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_";
	type="multipart/alternative"

--_004_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_"

--_000_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, folks.

I'm getting the error below in several packages. Some of then I could fix w=
hen the recipe "do_intall"
has commands like:

 "cp -a <src-files> <dest-dir>"

How can I solve this error when the recipe has no "cp" ? What else can caus=
e this issue ?

Thanks in advance...


WARNING: firefox-38.3.0esr-r0 do_package: KeyError in ./package/usr/lib/fir=
efox-devel-38.3.0/sdk/bin
ERROR: firefox-38.3.0esr-r0 do_package: Error executing a python function i=
n exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_report_unihash(d)
     0003:
File: '/home/edson/ng-trunk/poky/meta/classes/sstate.bbclass', lineno: 833,=
 function: sstate_report_unihash
     0829:    report_unihash =3D getattr(bb.parse.siggen, 'report_unihash',=
 None)
     0830:
     0831:    if report_unihash:
     0832:        ss =3D sstate_state_fromvars(d)
 *** 0833:        report_unihash(os.getcwd(), ss['task'], d)
     0834:}
     0835:
     0836:#
     0837:# Shell function to decompress and prepare a package for installa=
tion
File: '/home/edson/ng-trunk/poky/bitbake/lib/bb/siggen.py', lineno: 554, fu=
nction: report_unihash
     0550:
     0551:            if "." in self.method:
     0552:                (module, method) =3D self.method.rsplit('.', 1)
     0553:                locs['method'] =3D getattr(importlib.import_modul=
e(module), method)
 *** 0554:                outhash =3D bb.utils.better_eval('method(path, si=
gfile, task, d)', locs)
     0555:            else:
     0556:                outhash =3D bb.utils.better_eval(self.method + '(=
path, sigfile, task, d)', locs)
     0557:
     0558:            try:
File: '/home/edson/ng-trunk/poky/bitbake/lib/bb/utils.py', lineno: 420, fun=
ction: better_eval
     0416:    if extraglobals:
     0417:        ctx =3D copy.copy(ctx)
     0418:        for g in extraglobals:
     0419:            ctx[g] =3D extraglobals[g]
 *** 0420:    return eval(source, ctx, locals)
     0421:
     0422:@contextmanager
     0423:def fileslocked(files):
     0424:    """Context manager for locking and unlocking file locks."""
File: '<string>', lineno: 1, function: <module>
  File "<string>", line 1, in <module>

File: '/home/edson/ng-trunk/poky/meta/lib/oe/sstatesig.py', lineno: 585, fu=
nction: OEOuthashBasic
     0581:
     0582:                update_hash("\n")
     0583:
     0584:            # Process this directory and all its child files
 *** 0585:            process(root)
     0586:            for f in files:
     0587:                if f =3D=3D 'fixmepath':
     0588:                    continue
     0589:                process(os.path.join(root, f))
File: '/home/edson/ng-trunk/poky/meta/lib/oe/sstatesig.py', lineno: 548, fu=
nction: process
     0544:                    add_perm(stat.S_IXOTH, 'x')
     0545:
     0546:                if include_owners:
     0547:                    try:
 *** 0548:                        update_hash(" %10s" % pwd.getpwuid(s.st_u=
id).pw_name)
     0549:                        update_hash(" %10s" % grp.getgrgid(s.st_g=
id).gr_name)
     0550:                    except KeyError:
     0551:                        bb.warn("KeyError in %s" % path)
     0552:                        raise
Exception: KeyError: 'getpwuid(): uid not found: 1000'

ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work=
/core2-64-poky-linux/firefox/38.3.0esr-r0/temp/log.do_package.7911
ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-graphics/recipes-mozil=
la/firefox/firefox_38.3.0esr.bb:do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5386 tasks of which 5385 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /home/edson/ng-trunk/meta-extended/meta-graphics/recipes-mozilla/firefox/=
firefox_38.3.0esr.bb:do_package



Edson Seabra

Principal Engineer

M +1 510 579 0843

E   edson.seabra@zpesystems.com<mailto:alvin.chan@zpesystems.com>

[1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c=
90-8c28-e559c26bc7d1.png]
46757 Fremont Blvd., Fremont, CA 94538
zpesystems.com<https://www.zpesystems.com/> | Request a Nodegrid Demo<https=
://www.zpesystems.com/demo/>

--_000_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_
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
Hi, folks.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm getting the error below in several packages. Some of then I could fix w=
hen the recipe &quot;do_intall&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
has commands like:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp;&quot;cp -a &lt;src-files&gt; &lt;dest-dir&gt;&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
How can I solve this error when the recipe has no &quot;cp&quot; ? What els=
e can cause this issue ?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks in advance...</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>WARNING: firefox-38.3.0esr-r0 do_package: KeyError in ./package/usr/l=
ib/firefox-devel-38.3.0/sdk/bin<br>
</span>
<div>ERROR: firefox-38.3.0esr-r0 do_package: Error executing a python funct=
ion in exec_python_func() autogenerated:<br>
</div>
<div><br>
</div>
<div>The stack trace of python calls that resulted in this exception/failur=
e was:<br>
</div>
<div>File: 'exec_python_func() autogenerated', lineno: 2, function: &lt;mod=
ule&gt;<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0001:<br>
</div>
<div>&nbsp;*** 0002:sstate_report_unihash(d)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0003:<br>
</div>
<div>File: '/home/edson/ng-trunk/poky/meta/classes/sstate.bbclass', lineno:=
 833, function: sstate_report_unihash<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0829: &nbsp; &nbsp;report_unihash =3D getattr(bb.p=
arse.siggen, 'report_unihash', None)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0830:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0831: &nbsp; &nbsp;if report_unihash:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0832: &nbsp; &nbsp; &nbsp; &nbsp;ss =3D sstate_sta=
te_fromvars(d)<br>
</div>
<div>&nbsp;*** 0833: &nbsp; &nbsp; &nbsp; &nbsp;report_unihash(os.getcwd(),=
 ss['task'], d)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0834:}<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0835:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0836:#<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0837:# Shell function to decompress and prepare a =
package for installation<br>
</div>
<div>File: '/home/edson/ng-trunk/poky/bitbake/lib/bb/siggen.py', lineno: 55=
4, function: report_unihash<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0550:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0551: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if =
&quot;.&quot; in self.method:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0552: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;(module, method) =3D self.method.rsplit('.', 1)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0553: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;locs['method'] =3D getattr(importlib.import_module(module), meth=
od)<br>
</div>
<div>&nbsp;*** 0554: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;outhash =3D bb.utils.better_eval('method(path, sigfile, task, d)', locs)<b=
r>
</div>
<div>&nbsp; &nbsp; &nbsp;0555: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;els=
e:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0556: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;outhash =3D bb.utils.better_eval(self.method &#43; '(path, sigfi=
le, task, d)', locs)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0557:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0558: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;try=
:<br>
</div>
<div>File: '/home/edson/ng-trunk/poky/bitbake/lib/bb/utils.py', lineno: 420=
, function: better_eval<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0416: &nbsp; &nbsp;if extraglobals:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0417: &nbsp; &nbsp; &nbsp; &nbsp;ctx =3D copy.copy=
(ctx)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0418: &nbsp; &nbsp; &nbsp; &nbsp;for g in extraglo=
bals:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0419: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ctx=
[g] =3D extraglobals[g]<br>
</div>
<div>&nbsp;*** 0420: &nbsp; &nbsp;return eval(source, ctx, locals)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0421:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0422:@contextmanager<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0423:def fileslocked(files):<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0424: &nbsp; &nbsp;&quot;&quot;&quot;Context manag=
er for locking and unlocking file locks.&quot;&quot;&quot;<br>
</div>
<div>File: '&lt;string&gt;', lineno: 1, function: &lt;module&gt;<br>
</div>
<div>&nbsp; File &quot;&lt;string&gt;&quot;, line 1, in &lt;module&gt;<br>
</div>
<div><br>
</div>
<div>File: '/home/edson/ng-trunk/poky/meta/lib/oe/sstatesig.py', lineno: 58=
5, function: OEOuthashBasic<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0581:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0582: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;update_hash(&quot;\n&quot;)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0583:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0584: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# P=
rocess this directory and all its child files<br>
</div>
<div>&nbsp;*** 0585: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;process(root)=
<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0586: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for=
 f in files:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0587: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;if f =3D=3D 'fixmepath':<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0588: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;continue<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0589: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;process(os.path.join(root, f))<br>
</div>
<div>File: '/home/edson/ng-trunk/poky/meta/lib/oe/sstatesig.py', lineno: 54=
8, function: process<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0544: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;add_perm(stat.S_IXOTH, 'x')<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0545:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0546: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;if include_owners:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0547: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;try:<br>
</div>
<div>&nbsp;*** 0548: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;update_hash(&quot; %10s&quot; % pwd.getpwuid(s=
.st_uid).pw_name)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0549: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update_hash(&quot; %10s&quot; % grp.=
getgrgid(s.st_gid).gr_name)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0550: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;except KeyError:<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0551: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bb.warn(&quot;KeyError in %s&quot; %=
 path)<br>
</div>
<div>&nbsp; &nbsp; &nbsp;0552: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise<br>
</div>
<div>Exception: KeyError: 'getpwuid(): uid not found: 1000'<br>
</div>
<div><br>
</div>
<div>ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/firefox/38.3.0esr-r0/temp/log.do_package.7911<br>
</div>
<div>ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-graphics/recipes-=
mozilla/firefox/firefox_38.3.0esr.bb:do_package) failed with exit code '1'<=
br>
</div>
<div>NOTE: Tasks Summary: Attempted 5386 tasks of which 5385 didn't need to=
 be rerun and 1 failed.<br>
</div>
<div><br>
</div>
<div>Summary: 1 task failed:<br>
</div>
<div>&nbsp; /home/edson/ng-trunk/meta-extended/meta-graphics/recipes-mozill=
a/firefox/firefox_38.3.0esr.bb:do_package<br>
</div>
<span></span><br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; background-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,san=
s-serif">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"x_MsoNormal" style=3D"margin:0px 0in 0.000133333px; font-size=
:11pt; font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<a style=3D"margin:0px; font-size:11pt; font-family:Calibri,sans-serif; tex=
t-align:start; background-color:rgb(255,255,255)"><font face=3D"Source Sans=
 Pro" size=3D"2" color=3D"#0BABC6"><span style=3D"margin:0px; font-size:10p=
t"><b>Edson Seabra</b></span></font></a><br>
</div>
<p class=3D"x_MsoNormal" style=3D"margin-top:0px; margin-bottom:0px; margin=
:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-serif; color:rg=
b(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Principal Engineer</sp=
an></p>
<p class=3D"x_MsoNormal" style=3D"margin-top:0px; margin-bottom:0px; margin=
:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-serif; color:rg=
b(33,33,33)">
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
<p style=3D"margin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; fon=
t-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"></span></p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; fon=
t-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"><img class=3D"EmojiInsert" alt=3D"15061=
69147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c2=
8-e559c26bc7d1.png" style=3D"" data-outlook-trace=3D"F:1|T:1" src=3D"cid:a6=
c0d5a6-ae8c-4564-8f31-028e7985916e"><br>
<span class=3D"contextualExtensionHighlight ms-font-color-themePrimary ms-b=
order-color-themePrimary ident_378_416" tabindex=3D"0">46757 Fremont Blvd.,=
 Fremont, CA 94538</span><br>
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
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_--

--_004_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Wed, 03 Jun 2020 15:59:47 GMT";
	modification-date="Wed, 03 Jun 2020 15:59:47 GMT"
Content-ID: <a6c0d5a6-ae8c-4564-8f31-028e7985916e>
Content-Transfer-Encoding: base64

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

--_004_BN6PR19MB12192E6B631DEE0E3242AD0AF7880BN6PR19MB1219namp_--
