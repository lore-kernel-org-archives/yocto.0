Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF0F0E0095D; Tue, 10 Feb 2015 02:25:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85144E00949
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 02:24:49 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqEFAFfb2VSHCzIm/2dsb2JhbABcgkMhIiIwXsBpgX8dAYV6AoEhQwEBAQEBAXyEDgEBAxIbXgEVFVYmAQQbGogLAadMhH+hSQwBH49GgmUMQB2BFAWPIIpGhT8LjBQig26CM34BAQE
X-IronPort-AV: E=Sophos;i="5.09,549,1418101200"; 
	d="scan'208,217";a="106184406"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	10 Feb 2015 05:24:47 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC04.global.avaya.com) ([135.64.58.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	10 Feb 2015 05:24:47 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC04.global.avaya.com ([135.64.58.14]) with mapi id
	14.03.0174.001; Tue, 10 Feb 2015 11:24:45 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while trying to read environment variable from a recipe
	file
Thread-Index: AdBFG8WI5RcA4wepTKWsjLXXqcUs2g==
Date: Tue, 10 Feb 2015 10:24:45 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A34CACD@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Error while trying to read environment variable from a recipe file
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
X-List-Received-Date: Tue, 10 Feb 2015 10:25:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A34CACDAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A34CACDAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I was trying to read some of the environment variables from a recipe file u=
sing below python code

PACKAGES =3D "{TEST_PACKAGE}"
python __anonymous () {
    packages =3D []
    buildScriptVersion =3D os.environ['MajorVersion'] + "." + os.environ['M=
inorVersion']
    buildID =3D os.environ['BuildID']
    buildOffSet =3D os.environ['BuildOffsetNum']
    buildNum =3D int(buildID) - int(buildOffSet)
    if buildNum <=3D 0:
        buildNum =3D 1
    Num =3D os.environ['Num']
    version =3D buildScriptVersion + "." + sprintNum + "." + str(buildNum)
    packageName =3D "test-" + version
    d.setVar("TEST_PACKAGE", " ".join(packages))
}

But while running I am getting below error

0001:def __anon_29__test_bb(d):
     0002:    packages =3D []
*** 0003:    buildScriptVersion =3D os.environ['MajorVersion'] + "." + os.e=
nviron['MinorVersion']
     0004:    buildID =3D os.environ['BuildID']
     0005:    buildOffSet =3D os.environ['BuildOffsetNum']
     0006:    buildNum =3D int(buildID) - int(buildOffSet)
     0007:    if buildNum <=3D 0:
File: '/usr/lib64/python2.7/UserDict.py', lineno: 23, function: __getitem__
     0019:        if key in self.data:
     0020:            return self.data[key]
     0021:        if hasattr(self.__class__, "__missing__"):
     0022:            return self.__class__.__missing__(self, key)
*** 0023:        raise KeyError(key)
     0024:    def __setitem__(self, key, item): self.data[key] =3D item
     0025:    def __delitem__(self, key): del self.data[key]
     0026:    def clear(self): self.data.clear()
     0027:    def copy(self):
Exception: KeyError: 'MajorVersion'

So any thoughts to fix this issue. As we need to have a package name with s=
uch variable which will be set in the environment at run time.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A34CACDAZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was trying to read some of the environment variabl=
es from a recipe file using below python code<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGES =3D &quot;{TEST_PACKAGE}&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">python __anonymous () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; packages =3D []<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; buildScriptVersion =3D os.environ=
['MajorVersion'] &#43; &quot;.&quot; &#43; os.environ['MinorVersion']<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; buildID =3D os.environ['BuildID']=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; buildOffSet =3D os.environ['Build=
OffsetNum']<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; buildNum =3D int(buildID) - int(b=
uildOffSet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; if buildNum &lt;=3D 0:<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buildNum =
=3D 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Num =3D os.environ['Num']<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; version =3D buildScriptVersion &#=
43; &quot;.&quot; &#43; sprintNum &#43; &quot;.&quot; &#43; str(buildNum)<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; packageName =3D &quot;test-&quot;=
 &#43; version<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; d.setVar(&quot;TEST_PACKAGE&quot;=
, &quot; &quot;.join(packages))<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But while running I am getting below error<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">0001:def __anon_29__test_bb(d):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0002:&nbsp;&nbsp;&nbsp; pac=
kages =3D []<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0003:&nbsp;&nbsp;&nbsp; buildScriptVersion =3D o=
s.environ['MajorVersion'] &#43; &quot;.&quot; &#43; os.environ['MinorVersio=
n']<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0004:&nbsp;&nbsp;&nbsp; bui=
ldID =3D os.environ['BuildID']<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0005:&nbsp;&nbsp;&nbsp; bui=
ldOffSet =3D os.environ['BuildOffsetNum']<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0006:&nbsp;&nbsp;&nbsp; bui=
ldNum =3D int(buildID) - int(buildOffSet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0007:&nbsp;&nbsp;&nbsp; if =
buildNum &lt;=3D 0:<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/usr/lib64/python2.7/UserDict.py', lineno: 23=
, function: __getitem__<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0019:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if key in self.data:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0020:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return self.data[key]<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0021:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if hasattr(self.__class__, &quot;__missing__&quot;):<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0022:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return self.__class__.__missin=
g__(self, key)<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0023:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
raise KeyError(key)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0024:&nbsp;&nbsp;&nbsp; def=
 __setitem__(self, key, item): self.data[key] =3D item<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0025:&nbsp;&nbsp;&nbsp; def=
 __delitem__(self, key): del self.data[key]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0026:&nbsp;&nbsp;&nbsp; def=
 clear(self): self.data.clear()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0027:&nbsp;&nbsp;&nbsp; def=
 copy(self):<o:p></o:p></p>
<p class=3D"MsoNormal">Exception: KeyError: 'MajorVersion'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So any thoughts to fix this issue. As we need to hav=
e a package name with such variable which will be set in the environment at=
 run time.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A34CACDAZFFEXMB01globa_--
