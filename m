Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D1FE00CED; Sun, 18 Mar 2018 23:26:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 567 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Mar 2018 23:26:54 PDT
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F3EDE0086B
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 23:26:54 -0700 (PDT)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01lp0179.outbound.protection.outlook.com
	[213.199.154.179])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w2J6HLJh018932
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Mon, 19 Mar 2018 07:17:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=lbm2wUywPHAyAiYJ1Oog/kgDzJcNUA+IiH64YiS0onU=;
	b=j8PYciuwlALfE1q3PPEjAyPGT/bK1f2QcO0Sra/DvqMqvRfzn2UQjnmhjOQ1QRbZKznOP3/kRhigNQhBJ/La69OKjWL6c57XEQuiFga6TTUz6GhousPJjcGD2z0eoarZsfdLKo6JCBTLUBNR3JkjvmL5zeoCY49QRN6aKOzUQW4=
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com (10.173.79.138) by
	VI1PR0202MB2687.eurprd02.prod.outlook.com (10.173.81.15) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Mon, 19 Mar 2018 06:17:19 +0000
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd]) by
	VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd%18]) with mapi id 15.20.0588.016;
	Mon, 19 Mar 2018 06:17:19 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgaPW/52A///IbzCAAASyMIAARmI3
Date: Mon, 19 Mar 2018 06:17:19 +0000
Message-ID: <VI1PR0202MB2559BE6972EE480053BC63D4CDD40@VI1PR0202MB2559.eurprd02.prod.outlook.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
	<CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
	,<1B858668EC6A94408DCA5225FDFA85AA015868FE71@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <1B858668EC6A94408DCA5225FDFA85AA015868FE71@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0202MB2687;
	6:0LrBsEw6wc6YyfindoheYLRhC0sU9uya7zNz9qBv2x2BBu9yOdAFgTfsyRnsZgbq48hzsClJhOshwNu/a7r8u0xUALXPJ8sAjkZ7+abLHOhZVhekuowro8wZIgGSJoNgY1kkSg6DaX8uWGIZ1qeTiSrG7h4DfxjtEnYwVamVggsv7XrTeTy0DGslL7atQN8jkTeY11nT7puyir0U+ZRMbDKr7oT7/PrSVzcvujCVPHCfX7jDqnujYxI7b8VMFE33LhL76h64ubcf65VO8HSQmiH1eDQhXK/eJlSIyVq51E+T82tVT4AiwzuyMTdCnUqVlRzgMgdIEZuv1I7p5brjhKpOrF4haHELpOV+XRLtAtHQAZ3ZuJIufsoQqyZsl8uf;
	5:Hq8G834V9sODlqsU2i+uX7lXXkG8rUEEhxPWXDoBv/oJ1MMYEXA6nsb1GxvYDPCxKhwmVjtxglnS7S44tyxbXOo83VxrRM8/BeCUOiNZf61GIFyFJjAhinKqXy6qfiHqbrSV9PCrqzabuJU1DhffqxN+jC7Jn5j97CbaSxDMIWg=;
	24:4GEGLU2c3wI6n3Xc4quDHDaia3lLNVKFsGVWOxD93YLBph487Fl4MeNQwYqOVB57twmVBSTe66/+s8MIqX2E874G8uqAXCxRTakQ/eZ26+A=;
	7:3FwoKjXueEQfROvgFiwHmN8vVjFdD231SaHYlNMvNpJclGE4TDyS2AloC4LHmhKjT9EMM/2KPFhuTV7wORwVaI1l33eL8U8eO8umfOitim1nSnIF+acvx1dn8YqbjaQGltsrsuJfAo9amA5/N2PnYccRIxyTd3zcZtGN31sEMgkhBSVkjoBZeFDWlZWlESTuIqV3NDrQCGZlvT6FDXGhhwWXmJbm231csFFN+xG7OAvz5eKEgdgy9XHQt7d2ce3W
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 1dd77b5f-bd91-4978-8e16-08d58d611201
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR0202MB2687; 
x-ms-traffictypediagnostic: VI1PR0202MB2687:
x-microsoft-antispam-prvs: <VI1PR0202MB268727B8D46248EB68FCDCA6CDD40@VI1PR0202MB2687.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3231221)(944501244)(52105095)(3002001)(93006095)(93001095)(6041310)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123560045)(6072148)(201708071742011);
	SRVR:VI1PR0202MB2687; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0202MB2687; 
x-forefront-prvs: 06167FAD59
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39380400002)(376002)(396003)(346002)(366004)(39840400004)(13464003)(189003)(199004)(6306002)(606006)(39060400002)(8676002)(59450400001)(80792005)(26005)(81156014)(3660700001)(81166006)(53936002)(9686003)(6116002)(55016002)(4326008)(74316002)(186003)(5660300001)(54896002)(53546011)(6506007)(3846002)(2900100001)(236005)(19627405001)(102836004)(7736002)(106356001)(72206003)(966005)(8936002)(105586002)(5890100001)(5250100002)(14454004)(3280700002)(316002)(54906003)(2906002)(99286004)(86362001)(2950100002)(229853002)(6606003)(66066001)(25786009)(6246003)(7696005)(97736004)(68736007)(33656002)(76176011)(6436002)(478600001)(110136005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0202MB2687;
	H:VI1PR0202MB2559.eurprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: gotTE1Zso1h/qQO/4doJ4DT7G9z5LwEKrQDFnom+GBVRvNSTSHtJJdujqg+Z8Sj04Mi7AnwxVEFAQAlvjk2cJwjqBy8AavQXOQmOGUI9OI2CxWkd8XXpd/2r2qTr9xyZsyX5OmvWPi1zKigWAD9uEMZ4jwNYta5D6ywyS0kFbXxOgizku4vcUhaoWJZw4VCY09GBNXxb73MJ4OzwF+zjopJPsyPwSsxA46quqbuFbM0mcuGbBcJzfvYjev9A+edEpViXp9ONYluKCINI5MIoaOjlX/qaFLN3C0108nJ2MBcLFrFVdJTKyG46uRv2OE1ij3n185PIaN/XJ0ScMofusg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd77b5f-bd91-4978-8e16-08d58d611201
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2018 06:17:19.5135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0202MB2687
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-03-19_03:, , signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhou,
	Li" <li.zhou@windriver.com>, "Enache,
	Catalin" <catalin.enache@windriver.com>
Subject: Re: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Mon, 19 Mar 2018 06:26:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0202MB2559BE6972EE480053BC63D4CDD40VI1PR0202MB2559_"

--_000_VI1PR0202MB2559BE6972EE480053BC63D4CDD40VI1PR0202MB2559_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> are there specific issue you are seeing besides the packages being empty =
?
> I would suggest to apply _remove operation to remove the empty packages
> if needed from PACKAGES variable

No any other specific issues are seen.

> I agree, I don't think it's an issue that the packages
> being empty, and actually they're handled properly with:
>
> ALLOW_EMPTY_${PN} =3D "1"
> ALLOW_EMPTY_${PN}-server =3D "1"
>
> RDEPENDS_${PN} +=3D "${@bb.utils.contains('PACKAGECONFIG', 'perl', 'net-s=
nmp-perl-modules', '', d)}"
> RDEPENDS_${PN} +=3D "net-snmp-client"
> RDEPENDS_${PN}-server +=3D "net-snmp-server-snmpd net-snmp-server-snmptra=
pd"
>
> So you can assume that "net-snmp" =3D "net-snmp-client" ( plus 'net-snmp-=
perl-modules'
> if 'perl' packgeconfig is enabled ), and "net-snmp-server" =3D " net-snmp=
-server-snmpd"
> +"net-snmp-server-snmptrapd "

So, you mean that 'PACKAGEs =3D ...' was changed to 'PACKAGES +=3D ...' in =
order
to create the default packages (${PN}, ${PN}-doc, ${PN}-locale, etc.) that =
are
empty? Is there a chance it was done to satisfy a default dependencies in
bitbake.conf? I just fail to see the original meaning...


--- Kosta Z.

________________________________
From: Huang, Jie (Jackie) <Jackie.Huang@windriver.com>
Sent: Monday, March 19, 2018 3:56:28 AM
To: Khem Raj; Kosta Zertsekel
Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li
Subject: RE: [yocto] Fix 'PACKAGES' in net-snmp recipe



> -----Original Message-----
> From: Huang, Jie (Jackie)
> Sent: Monday, March 19, 2018 09:51
> To: 'Khem Raj'; Kosta Zertsekel
> Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li
> Subject: RE: [yocto] Fix 'PACKAGES' in net-snmp recipe
>
>
>
> > -----Original Message-----
> > From: Khem Raj [mailto:raj.khem@gmail.com]
> > Sent: Monday, March 19, 2018 05:54
> > To: Kosta Zertsekel
> > Cc: yocto@yoctoproject.org; Huang, Jie (Jackie); Enache, Catalin; Zhou,=
 Li
> > Subject: Re: [yocto] Fix 'PACKAGES' in net-snmp recipe
> >
> > On Sat, Mar 17, 2018 at 11:46 PM, Kosta Zertsekel
> > <KZertsekel@advaoptical.com> wrote:
> > > Hi guys,
> > >
> > >
> > > As for now (master branch) 'PACKAGES' variable in net-snmp equals to:
> > >
> > > ```
> > >
> > > $ bitbake -e net-snmp | grep "^PACKAGES=3D"
> > >
> > > PACKAGES=3D"net-snmp-dbg net-snmp-staticdev net-snmp-dev net-snmp-doc
> > > net-snmp-locale  net-snmp net-snmp-libs net-snmp-mibs net-snmp-server
> > > net-snmp-client net-snmp-server-snmpd net-snmp-server-snmptrapd "
> > > ```
> > >
> > > This seems to be wrong as many built packages from 'packages-split'
> > > directory of net-snmp are empty:
> > >
> > > ```
> > > $ du -a --max-depth=3D1 . | sort -n
> > > 4    ./net-snmp
> > > 4    ./net-snmp-client.shlibdeps
> > > 4    ./net-snmp-doc
> > > 4    ./net-snmp-libs.shlibdeps
> > > 4    ./net-snmp-locale
> > > 4    ./net-snmp-server
> > > 4    ./net-snmp-server-snmpd.shlibdeps
> > > 4    ./net-snmp-server-snmptrapd.shlibdeps
> > > 4    ./net-snmp-staticdev
> > > 48    ./net-snmp-server-snmptrapd
> > > 72    ./net-snmp-server-snmpd
> > > 1208    ./net-snmp-dev
> > > 1480    ./net-snmp-client
> > > 1812    ./net-snmp-mibs
> > > 2872    ./net-snmp-libs
> > > 15308    ./net-snmp-dbg
> > > ```
> > >
> > > Well, the culprit commit is 5eec0615e548f58ecdfadfc45af5805eeb58f69c =
where
> > > the below change has happened:
> > > ```
> > > -PACKAGES =3D "${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-st=
atic
> > > ${PN}-libs \
> > > -            ${PN}-mibs ${PN}-server ${PN}-client ${PN}-server-snmpd
> > > ${PN}-server-snmptrapd"
> > > +PACKAGES +=3D "${PN}-libs ${PN}-mibs ${PN}-server ${PN}-client
> > > ${PN}-server-snmpd ${PN}-server-snmptrapd"
> > > ```
> > >
> > > This new 'PACKAGES' variable is wrong IMHO, because it contains
> > > the 'net-snmp' package and other empty packages.
> > >
> > >
> > > Please review (and apply if ok) the attached commit that fixes it.
> > >
> >
> > are there specific issue you are seeing besides the packages being empt=
y ?
> > I would suggest to apply _remove operation to remove the empty packages
> > if needed from PACKAGES variable
>
> I agree, I don't think it's an issue that the packages being empty, and a=
ctually they're handled properly with:
>
> ALLOW_EMPTY_${PN} =3D "1"
> ALLOW_EMPTY_${PN}-server =3D "1"
>
> RDEPENDS_${PN} +=3D "${@bb.utils.contains('PACKAGECONFIG', 'perl', 'net-s=
nmp-perl-modules', '', d)}"
> RDEPENDS_${PN} +=3D "net-snmp-client"
> RDEPENDS_${PN}-server +=3D "net-snmp-server-snmpd net-snmp-server-snmptra=
pd"
>
> So you can assume that "net-snmp" =3D "net-snmp-client" ( plus 'net-snmp-=
perl-modules' if 'perl' packgeconfig
> is enabled ), and "net-snmp-server" =3D " net-snmp-server-snmpd" + "net-s=
nmp-server-snmptrapd "

And if you really want to remove them with _remove operations, you may also=
 need to remove the RDEPENDS.

Thanks,
Jackie

>
> Thanks,
> Jackie
>
> >
> > >
> > > Thanks,
> > >
> > > --- Kosta Z.
> > >
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >

--_000_VI1PR0202MB2559BE6972EE480053BC63D4CDD40VI1PR0202MB2559_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div>&gt; are there specific issue you are seeing besides the packages bein=
g empty ?<br>
&gt; I would suggest to apply _remove operation to remove the empty package=
s<br>
&gt; if needed from PACKAGES variable<br>
<br>
No any other specific issues are seen.<br>
<br>
&gt; I agree, I don't think it's an issue that the packages<br>
&gt; being empty, and actually they're handled properly with:<br>
&gt; <br>
&gt; ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
&gt; ALLOW_EMPTY_${PN}-server =3D &quot;1&quot;<br>
&gt; <br>
&gt; RDEPENDS_${PN} &#43;=3D &quot;${@bb.utils.contains('PACKAGECONFIG', 'p=
erl', 'net-snmp-perl-modules', '', d)}&quot;<br>
&gt; RDEPENDS_${PN} &#43;=3D &quot;net-snmp-client&quot;<br>
&gt; RDEPENDS_${PN}-server &#43;=3D &quot;net-snmp-server-snmpd net-snmp-se=
rver-snmptrapd&quot;<br>
&gt; <br>
&gt; So you can assume that &quot;net-snmp&quot; =3D &quot;net-snmp-client&=
quot; ( plus 'net-snmp-perl-modules'<br>
&gt; if 'perl' packgeconfig is enabled ), and &quot;net-snmp-server&quot; =
=3D &quot; net-snmp-server-snmpd&quot;<br>
&gt; &#43;&quot;net-snmp-server-snmptrapd &quot; <br>
<br>
So, you mean that 'PACKAGEs =3D ...' was changed to 'PACKAGES &#43;=3D ...'=
 in order<br>
to create the default packages (${PN}, ${PN}-doc, ${PN}-locale, etc.) that =
are<br>
empty? Is there a chance it was done to satisfy a default dependencies in<b=
r>
bitbake.conf? I just fail to see the original meaning...<br>
<br>
</div>
<p style=3D"margin-top:0;margin-bottom:0">--- Kosta Z.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Huang, Jie (Jackie) &=
lt;Jackie.Huang@windriver.com&gt;<br>
<b>Sent:</b> Monday, March 19, 2018 3:56:28 AM<br>
<b>To:</b> Khem Raj; Kosta Zertsekel<br>
<b>Cc:</b> yocto@yoctoproject.org; Enache, Catalin; Zhou, Li<br>
<b>Subject:</b> RE: [yocto] Fix 'PACKAGES' in net-snmp recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Huang, Jie (Jackie)<br>
&gt; Sent: Monday, March 19, 2018 09:51<br>
&gt; To: 'Khem Raj'; Kosta Zertsekel<br>
&gt; Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li<br>
&gt; Subject: RE: [yocto] Fix 'PACKAGES' in net-snmp recipe<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Khem Raj [<a href=3D"mailto:raj.khem@gmail.com">mailto:raj.=
khem@gmail.com</a>]<br>
&gt; &gt; Sent: Monday, March 19, 2018 05:54<br>
&gt; &gt; To: Kosta Zertsekel<br>
&gt; &gt; Cc: yocto@yoctoproject.org; Huang, Jie (Jackie); Enache, Catalin;=
 Zhou, Li<br>
&gt; &gt; Subject: Re: [yocto] Fix 'PACKAGES' in net-snmp recipe<br>
&gt; &gt;<br>
&gt; &gt; On Sat, Mar 17, 2018 at 11:46 PM, Kosta Zertsekel<br>
&gt; &gt; &lt;KZertsekel@advaoptical.com&gt; wrote:<br>
&gt; &gt; &gt; Hi guys,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; As for now (master branch) 'PACKAGES' variable in net-snmp e=
quals to:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; $ bitbake -e net-snmp | grep &quot;^PACKAGES=3D&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; PACKAGES=3D&quot;net-snmp-dbg net-snmp-staticdev net-snmp-de=
v net-snmp-doc<br>
&gt; &gt; &gt; net-snmp-locale&nbsp; net-snmp net-snmp-libs net-snmp-mibs n=
et-snmp-server<br>
&gt; &gt; &gt; net-snmp-client net-snmp-server-snmpd net-snmp-server-snmptr=
apd &quot;<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This seems to be wrong as many built packages from 'packages=
-split'<br>
&gt; &gt; &gt; directory of net-snmp are empty:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt; $ du -a --max-depth=3D1 . | sort -n<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-client.shlibdeps<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-doc<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-libs.shlibdeps<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-locale<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-server<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-server-snmpd.shlibdeps<br>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-server-snmptrapd.shlibdeps<br=
>
&gt; &gt; &gt; 4&nbsp;&nbsp;&nbsp; ./net-snmp-staticdev<br>
&gt; &gt; &gt; 48&nbsp;&nbsp;&nbsp; ./net-snmp-server-snmptrapd<br>
&gt; &gt; &gt; 72&nbsp;&nbsp;&nbsp; ./net-snmp-server-snmpd<br>
&gt; &gt; &gt; 1208&nbsp;&nbsp;&nbsp; ./net-snmp-dev<br>
&gt; &gt; &gt; 1480&nbsp;&nbsp;&nbsp; ./net-snmp-client<br>
&gt; &gt; &gt; 1812&nbsp;&nbsp;&nbsp; ./net-snmp-mibs<br>
&gt; &gt; &gt; 2872&nbsp;&nbsp;&nbsp; ./net-snmp-libs<br>
&gt; &gt; &gt; 15308&nbsp;&nbsp;&nbsp; ./net-snmp-dbg<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Well, the culprit commit is 5eec0615e548f58ecdfadfc45af5805e=
eb58f69c where<br>
&gt; &gt; &gt; the below change has happened:<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt; -PACKAGES =3D &quot;${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-stat=
icdev ${PN}-static<br>
&gt; &gt; &gt; ${PN}-libs \<br>
&gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; ${PN}-mibs ${PN}-server ${PN}-client ${PN}-server-snmpd<br>
&gt; &gt; &gt; ${PN}-server-snmptrapd&quot;<br>
&gt; &gt; &gt; &#43;PACKAGES &#43;=3D &quot;${PN}-libs ${PN}-mibs ${PN}-ser=
ver ${PN}-client<br>
&gt; &gt; &gt; ${PN}-server-snmpd ${PN}-server-snmptrapd&quot;<br>
&gt; &gt; &gt; ```<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This new 'PACKAGES' variable is wrong IMHO, because it conta=
ins<br>
&gt; &gt; &gt; the 'net-snmp' package and other empty packages.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Please review (and apply if ok) the attached commit that fix=
es it.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; are there specific issue you are seeing besides the packages bein=
g empty ?<br>
&gt; &gt; I would suggest to apply _remove operation to remove the empty pa=
ckages<br>
&gt; &gt; if needed from PACKAGES variable<br>
&gt; <br>
&gt; I agree, I don't think it's an issue that the packages being empty, an=
d actually they're handled properly with:<br>
&gt; <br>
&gt; ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
&gt; ALLOW_EMPTY_${PN}-server =3D &quot;1&quot;<br>
&gt; <br>
&gt; RDEPENDS_${PN} &#43;=3D &quot;${@bb.utils.contains('PACKAGECONFIG', 'p=
erl', 'net-snmp-perl-modules', '', d)}&quot;<br>
&gt; RDEPENDS_${PN} &#43;=3D &quot;net-snmp-client&quot;<br>
&gt; RDEPENDS_${PN}-server &#43;=3D &quot;net-snmp-server-snmpd net-snmp-se=
rver-snmptrapd&quot;<br>
&gt; <br>
&gt; So you can assume that &quot;net-snmp&quot; =3D &quot;net-snmp-client&=
quot; ( plus 'net-snmp-perl-modules' if 'perl' packgeconfig<br>
&gt; is enabled ), and &quot;net-snmp-server&quot; =3D &quot; net-snmp-serv=
er-snmpd&quot; &#43; &quot;net-snmp-server-snmptrapd &quot;<br>
<br>
And if you really want to remove them with _remove operations, you may also=
 need to remove the RDEPENDS.<br>
<br>
Thanks,<br>
Jackie<br>
<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Jackie<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Thanks,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --- Kosta Z.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; yocto@yoctoproject.org<br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">ht=
tps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; &gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_VI1PR0202MB2559BE6972EE480053BC63D4CDD40VI1PR0202MB2559_--
