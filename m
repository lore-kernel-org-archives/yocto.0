Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web11.7680.1583932655168990134
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 06:17:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=0339a7b25a=sean.mckay@hpe.com)
Received: from pps.filterd (m0150245.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02BD8glb005410;
	Wed, 11 Mar 2020 13:17:31 GMT
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	by mx0b-002e3701.pphosted.com with ESMTP id 2ypxe8s7yv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2020 13:17:31 +0000
Received: from G2W6310.americas.hpqcorp.net (g2w6310.austin.hp.com [16.197.64.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id 0DB64B1;
	Wed, 11 Mar 2020 13:17:30 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) by
 G2W6310.americas.hpqcorp.net (2002:10c5:4034::10c5:4034) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Wed, 11 Mar 2020 13:16:49 +0000
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (15.241.52.12) by
 G9W8455.americas.hpqcorp.net (16.216.161.94) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3 via Frontend Transport; Wed, 11 Mar 2020 13:16:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qh7yz1SNYn1U+EPl1Gc4vrUX5fCWCylagGBrCSSDzCpBSMFUpLqC+4djnVDoiqQ/SrPUBTjLIFQf2x3T3aQV0KGNXq2bOXXVl//aAnHV16Tb0/bj8m+gp4V82sGyj30CycvKMOSci79Ci82NbgtTvkTkRI0i29bWtJFltN9PUmJHM6nWKSwya/0gopR0Hef8/IYO0k0JZjJ+N0P4avR3uRePMz+RsB9a+w/OKkZvfs/PSaqAUBbNR6Y9pfLWuNXyZ0bl2znPhD5IcHcoMxGJAeVBSqI4eiYtTnrrzqCVI+OvpIfu3JQ2faMairXaoBo1Zun9hI/C3Q0OOK/Nryv8ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bGa6IjBBggg2aEtAhts5r1tqUAbdNrTwwrOQxz1qD9c=;
 b=T7fqA4MOkcYHd3v/+aMYvEhu/lQW0QY7dZjmUdr52GLs4Tn9rzIMNopWFmu60ongQRY+6SQhaCUKQuELLa9qlIK1rFsdqtBsbjHfCkaH4Qo978q/N/xo8IYntfP2cop6G6mhdYTUf0Lcuy2RNGKWfIsfY2GX/fq1MWuJ+GT3v0l43eNvP44G/ORGeWI2uu9o+FhhJfSQHHVdSdE9nnFNhUoVA3DgAfV3PaUBTr2YL+5rw/vnLKJyTSe6Eg2nyAkTTVLvCCGRdlC4o2/pGUqXzlRKFV1mxU4FptV8GyX6WLg99KfVd6jrZiBAGqcAs07kv1jn10ER4pblSA32N6IPaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0816.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7710::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Wed, 11 Mar
 2020 13:16:48 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::d52b:149f:c4d3:a17b%5]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 13:16:48 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
        "Mikko.Rapeli@bmw.de" <Mikko.Rapeli@bmw.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
Thread-Topic: [yocto] Should changing a task in the .bb file cause the task to
 be rerun?
Thread-Index: AdXuiL6uK0y0gl2pQLikRTwB+tl67gABbAuAAhBVX4AAACSogAA0pYGAAAEEI7g=
Date: Wed, 11 Mar 2020 13:16:48 +0000
Message-ID: <TU4PR8401MB11511764DAB14C8C1E7723B782FC0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
 <20200310113348.GT104502@korppu>
 <da7cd1ba55525b1f63884bd83286555d1dd72218.camel@linuxfoundation.org>,<20200311124520.GX104502@korppu>
In-Reply-To: <20200311124520.GX104502@korppu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [92.184.107.112]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d42250be-172e-4bd7-b1ff-08d7c5be746b
x-ms-traffictypediagnostic: TU4PR8401MB0816:
x-microsoft-antispam-prvs: <TU4PR8401MB081615B1CB8F9A97B465E71682FC0@TU4PR8401MB0816.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(39860400002)(396003)(376002)(346002)(366004)(199004)(186003)(5660300002)(64756008)(52536014)(478600001)(4326008)(7696005)(86362001)(66476007)(66446008)(66946007)(55016002)(66556008)(91956017)(110136005)(2906002)(76116006)(81166006)(81156014)(8936002)(316002)(71200400001)(8676002)(33656002)(9686003)(53546011)(26005)(6506007)(142923001);DIR:OUT;SFP:1102;SCL:1;SRVR:TU4PR8401MB0816;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Zw0kBPRM6uY9FJXPOT80uhtJ4RT1etDSk6Gs1hM3B0ME005Vic9BmbqoxbBgxrIPiXePmQsBhiflKZpLuN7FdQqZeIhPywG1dZldTwdiKnMUU4IQWTHRGoxcjpqsJhKrLiIbprQbycQxOpr8FcdbP8qETiyDBmDwrlUoemd8sJa7RG/8/NSbPplSTvfuZ7c4H4aSjdT8PJM9pt1kf/RMcvbY27tZPJYMhqGtnL92qiAYmm4LyizH67yE4lNLebMRDMEO+3whXU5evrjad/ZimofWCm5EFgLB6az2IZra0yQyAjEh2agRVbJcz+Dn/8ht9XHFwFF4qKqExs+wMqNor5XmvvKT4IemEF1RN3NrIFyc4ZiMyKnXtLGaklC9f2jwr1Hu4ZIjGuxLv2W2+O8KpfZVU5896VKIj/K1+uAZyid9MuNfLl7aMYMlIbete486BxxJwpLRu+Zl7bXSPk6p6Pqo2beRP+XLJbzA4lSqZ2aKFKV58oUvWZp7pk9WT04
x-ms-exchange-antispam-messagedata: /ou7JnL3IPgm4natNgiBUTMiSZCRkA0TVxFwe51OSDxotOyk/GTDF8i8rXG3Ggh2pmACavki+Epnml1poy9+GfWJ/+XbzPiqFwJ0WsYs9K/bzYEo5sNSKNNX/1z1ELIWLEYLjMPZktEib6ndkKOmLQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d42250be-172e-4bd7-b1ff-08d7c5be746b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 13:16:48.2268
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uofd4zWes8WwCpmf3pDZkUDU4c7KOQKdx4er32KMcFFgGv1KKbXqVjO0hfTWEZsRdRGteyFfm0m9sokcx0gHyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0816
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-03-11_05:2020-03-11,2020-03-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 clxscore=1011 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003110084
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11511764DAB14C8C1E7723B782FC0TU4PR8401MB1151_"

--_000_TU4PR8401MB11511764DAB14C8C1E7723B782FC0TU4PR8401MB1151_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I actually went on vacation right after I sent that message. (Thank you for=
 your incredibly quick reply, by the way!)
Once I get back late next week, I'll try to see how reproducible it is in o=
ur environment and if so, what the minimum steps are to do so.

Thanks!
-Sean

~Sean
Sent from my phone. Please forgive terseness and typos!

________________________________
From: Mikko.Rapeli@bmw.de <Mikko.Rapeli@bmw.de>
Sent: Wednesday, March 11, 2020 12:45:21 PM
To: richard.purdie@linuxfoundation.org <richard.purdie@linuxfoundation.org>
Cc: McKay, Sean <sean.mckay@hpe.com>; yocto@lists.yoctoproject.org <yocto@l=
ists.yoctoproject.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task =
to be rerun?

On Tue, Mar 10, 2020 at 11:37:55AM +0000, Richard Purdie wrote:
> On Tue, 2020-03-10 at 11:33 +0000, Mikko.Rapeli@bmw.de wrote:
> > On Fri, Feb 28, 2020 at 11:25:59PM +0000, Richard Purdie wrote:
> > > On Fri, 2020-02-28 at 22:51 +0000, Sean McKay wrote:
> > > > This is probably a fairly short question (I hope):
> > > > I=92m working on a branch based on zeus. I found a bug in the way t=
hat
> > > > one of our recipes was handling something during do_configure (whic=
h
> > > > caused an error to pop up in a do_compile task). When I modified th=
e
> > > > do_configure task (do_configure_append, actually) to behave properl=
y
> > > > (which involved changing the actual commands run in that function)
> > > > and reran bitbake -c compile <recipe>, the do_configure task wasn=
=92t
> > > > rerun despite the change to the function=92s code.
> > > >
> > > > Is it safe to assume this means we=92ve done something to mess up t=
he
> > > > way our system is processing things? Or is that expected behavior
> > >
> > > Its not expected behaviour and yes, it sounds like something is messe=
d
> > > up...
> >
> > This is what I've come to expect with yocto 2.0 jethro, 2.5 sumo and
> > 3.0 zeus.
> >
> > That's why I always write:
> >
> > $ bitbake -c clean recipe && bitbake -c cleansstate && bitbake -c compi=
le recipe
> >
> > when debugging changes in recipes to_compile and other dependent tasks.
> > I'm also cleaning up sstate to be sure it's not corrupt or filled with
> > somehow bad data.
>
> This is bad and shouldn't be happening. Can anyone provide some
> examples I can look at?
>
> You shouldn't ever need to run cleansstate in particular. If you have
> to, there is another underlying bug that should get fixed.

Sadly custom bbclasses and BSP layers have this effect on my builds and I
can't fully trust local incremental builds. Hence I clean sstate cache
often.

-Mikko

--_000_TU4PR8401MB11511764DAB14C8C1E7723B782FC0TU4PR8401MB1151_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I actually went on vacation right after I sent that message. (Thank you for=
 your incredibly quick reply, by the way!)
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Once I get back late next week, I'll try to see how reproducible it is in o=
ur environment and if so, what the minimum steps are to do so.
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Thanks!<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
-Sean <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<span id=3D"OutlookSignature">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
~Sean<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Sent from my phone. Please forgive terseness and typos!</div>
</span><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mikko.Rapeli@bmw.de &=
lt;Mikko.Rapeli@bmw.de&gt;<br>
<b>Sent:</b> Wednesday, March 11, 2020 12:45:21 PM<br>
<b>To:</b> richard.purdie@linuxfoundation.org &lt;richard.purdie@linuxfound=
ation.org&gt;<br>
<b>Cc:</b> McKay, Sean &lt;sean.mckay@hpe.com&gt;; yocto@lists.yoctoproject=
.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Should changing a task in the .bb file cause th=
e task to be rerun?</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Tue, Mar 10, 2020 at 11:37:55AM &#43;0000, Rich=
ard Purdie wrote:<br>
&gt; On Tue, 2020-03-10 at 11:33 &#43;0000, Mikko.Rapeli@bmw.de wrote:<br>
&gt; &gt; On Fri, Feb 28, 2020 at 11:25:59PM &#43;0000, Richard Purdie wrot=
e:<br>
&gt; &gt; &gt; On Fri, 2020-02-28 at 22:51 &#43;0000, Sean McKay wrote:<br>
&gt; &gt; &gt; &gt; This is probably a fairly short question (I hope):<br>
&gt; &gt; &gt; &gt; I=92m working on a branch based on zeus. I found a bug =
in the way that<br>
&gt; &gt; &gt; &gt; one of our recipes was handling something during do_con=
figure (which<br>
&gt; &gt; &gt; &gt; caused an error to pop up in a do_compile task). When I=
 modified the<br>
&gt; &gt; &gt; &gt; do_configure task (do_configure_append, actually) to be=
have properly<br>
&gt; &gt; &gt; &gt; (which involved changing the actual commands run in tha=
t function)<br>
&gt; &gt; &gt; &gt; and reran bitbake -c compile &lt;recipe&gt;, the do_con=
figure task wasn=92t<br>
&gt; &gt; &gt; &gt; rerun despite the change to the function=92s code.<br>
&gt; &gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; &gt; Is it safe to assume this means we=92ve done something =
to mess up the<br>
&gt; &gt; &gt; &gt; way our system is processing things? Or is that expecte=
d behavior<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Its not expected behaviour and yes, it sounds like something=
 is messed<br>
&gt; &gt; &gt; up...<br>
&gt; &gt; <br>
&gt; &gt; This is what I've come to expect with yocto 2.0 jethro, 2.5 sumo =
and<br>
&gt; &gt; 3.0 zeus.<br>
&gt; &gt; <br>
&gt; &gt; That's why I always write:<br>
&gt; &gt; <br>
&gt; &gt; $ bitbake -c clean recipe &amp;&amp; bitbake -c cleansstate &amp;=
&amp; bitbake -c compile recipe<br>
&gt; &gt; <br>
&gt; &gt; when debugging changes in recipes to_compile and other dependent =
tasks.<br>
&gt; &gt; I'm also cleaning up sstate to be sure it's not corrupt or filled=
 with<br>
&gt; &gt; somehow bad data.<br>
&gt; <br>
&gt; This is bad and shouldn't be happening. Can anyone provide some<br>
&gt; examples I can look at?<br>
&gt; <br>
&gt; You shouldn't ever need to run cleansstate in particular. If you have<=
br>
&gt; to, there is another underlying bug that should get fixed.<br>
<br>
Sadly custom bbclasses and BSP layers have this effect on my builds and I<b=
r>
can't fully trust local incremental builds. Hence I clean sstate cache<br>
often.<br>
<br>
-Mikko</div>
</span></font></div>
</body>
</html>

--_000_TU4PR8401MB11511764DAB14C8C1E7723B782FC0TU4PR8401MB1151_--
