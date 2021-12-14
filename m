Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01CA5C433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 19:23:55 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.30429.1639509833297458292
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 11:23:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=YnrauSVx;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1639509833; x=1797189833;
  h=from:to:subject:date:mime-version;
  bh=TahA1e2qTJQ+Be9HjXcPLFFecRCzU1QwoGWnHynKhco=;
  b=YnrauSVxArUu39QCE8dv5S6svVyeI1UEPcWIEvKXv65YjFNfb0SfTp2v
   P2fI2Ze9Xj0ZK04t/Ndtcxq/4jNGrgt1AThvhQ4TMYZquBu8DDA9eJlAF
   fDCRxd+tg/8iyrfYCqezXO86xMYlQwXkGeJV6OynLOGatTMkyEOSGIzBx
   0=;
IronPort-SDR: 
 hPufSY4fDYFZbio6DAJieNe2vFQz0MR9b0wICPKTM1Lvz9GsqN6HeYg5nbBDSHT00Q/6h46r0q
 B/cJjxB9zB7A==
IronPort-PHdr: =?us-ascii?q?A9a23=3AnRqN0xBrtGXKY0kBZDMbUyQU0UMY04WdBeb1w?=
 =?us-ascii?q?qQuh78GSKm/5ZOqZBWZua80yg+WFtyCo9t/yMPu+5j6XmIB5ZvT+FsjS7drE?=
 =?us-ascii?q?yE/tMMNggY7C9SEA0CoZNTjbig9AdgQHAQ9pyLzPkdaAtvxaEPPqXOu8zESB?=
 =?us-ascii?q?g//NQ1oLejpB4Lelcu62/6v95HJYAhFhjWxba5vIB6rsQjfq84ajJd4JK0s0?=
 =?us-ascii?q?BXJuHxIe+pXxWNsO12emgv369mz8pB+7Sleouot+MFcX6r0eaQ4VqFYAy89M?=
 =?us-ascii?q?28p/s3rtALMQhWJ63ABT2gZiBtIAwzC7BHnQpf8tzbxu+Rh1CWGO8D9ULY5U?=
 =?us-ascii?q?img4ah2Uh/lkCcJOSAk/mHLhMJ+j6Nbrw6uqBFk2YHYfIOVOeBicq/BY98XQ?=
 =?us-ascii?q?3dKUMZLVyxGB4Oxd4UDAe0GPeZetInyuUUBrQCmCQKxGe3v1iFHhmHo0q08z?=
 =?us-ascii?q?u8sDxzN0AguENwTtXjYosj+OaAJUeCp0qbI0yvMb/VM1Tf474jIdAshru+SU?=
 =?us-ascii?q?rJrasfe0lMgGB3ejlSQsozlIy2a1uEWs2SB8+VgUuevhnchpgpsrTeh2t0ih?=
 =?us-ascii?q?ZPVhoIJ1F/E7yN5zZ47K9C2VEN2YNypHZpOuy2HKYZ7QcMvTmVntSs117EIt?=
 =?us-ascii?q?562cicXxJkjxRPSa/OKfomV7h/9UOucIjR1iW94dLywgRu57EuuyvXkW8Wpz?=
 =?us-ascii?q?FpGtCRIn9vWunwTyRDe6tKLR/p980u5xDqDyxrf5+5LLEwumqfXMYMtz742m?=
 =?us-ascii?q?5EOq0rMBDX2l1/zjKKOc0Uk/fWn5Pr/b7X9o5+cK5d0igbjMqQygsC/Afo3M?=
 =?us-ascii?q?gwJX2WD5eS926fs/Uv8QLVRivA6jrXVvIzHKcgBoK62GRVZ3Z055BmhFDen0?=
 =?us-ascii?q?M8YnWUZI1JAYxKLlZTmO1bLIPzgDPe/hUqjkCtzyvzbIrHtGJvAI3rZnLv/Y?=
 =?us-ascii?q?7pw61RQxQszwNxH4pJbELABIPb9Wk/rs9zYCwc0Mxeow+n5FtVyyIUeVXiKA?=
 =?us-ascii?q?q+eNqPSqkGH6fw0I+SXf4AaoijyK+Ml5v71kX82h1odfbKz0ZQLb3C4G+xqI?=
 =?us-ascii?q?1+Fbnr0ntcBDWAKsxI+TeztlFKCTTlTam22X6I9/TE7FJmmAZ3DR4CqnLOBw?=
 =?us-ascii?q?CC7HoVMZmBBCFCDD2vnd5meV/cLciKSLZwprjtRH6mmQJMm/RWvrxPhjatgJ?=
 =?us-ascii?q?fbT4jcft5/oyJ5y/eKZ3UUj8jdoCOyZ0nqRVCdlmWgUQCcs26JyqlA7zU2Mh?=
 =?us-ascii?q?/tWmftdQJZ24PVSXwohcdbn0+FkBta6cUqBQ+zIAh7yWcmrHzw3CNc2xcQDb?=
 =?us-ascii?q?l1VEdyvlQHYwyevGPkekLndV898yb7Vw3Wkf5U18H3BzqR01zEb?=
IronPort-Data: =?us-ascii?q?A9a23=3A8zS0rqqCK7R08bhmAfw/XdnJUh5eBmIyZxIvg?=
 =?us-ascii?q?KrLsJaIsI4StFCztgarIBmDMq6INGfxft8lYN62pBsDsMeHmtQyGQZv+SthQ?=
 =?us-ascii?q?n4X9+PIVI+TRqvS04N+DSFhoHqKZKzyU/GYRCwPZiKa9kfF3oTJ9yEmjPjSH?=
 =?us-ascii?q?+akUoYoBwgoLeNaYHZ54f5cs7Nh6mJYqYDR7zKl4bsekeWGULOW82Ic3lYv1?=
 =?us-ascii?q?k62gEgHUMIeGd8vlgdWifhj5DcynpSOZX4VDfnZw3DQGuG4EgMmLtsvwo1V/?=
 =?us-ascii?q?kuBl/ssIs+1m7D+aRxSGuaLew6HzHBfVrOzmQRPozd02aE+XBYeQR4PzW7W2?=
 =?us-ascii?q?YorlZMT6PRcSi9wVkHIsP8BXgdVFWd7Oqtd9bLcCXK2vNeC1FHLdmCqyPJrZ?=
 =?us-ascii?q?K0zFdFDp70pWT4frJT0LxhINHhvndme0bWwVu5EgsU4MNKtLYQUpnZ41zbbA?=
 =?us-ascii?q?P06B5fZTM33CXVwtNsrrpkWW62BIZBDNHwxMXz9j9R0Eg9/IPoDcC2A3BETq?=
 =?us-ascii?q?wFllW8=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A4Dwgka+YdMIbA7QBvn5uk+DdI+orL9Y04l?=
 =?us-ascii?q?Q7vn2ZKCYlFfBx9aiV9psmPHrP5Qr5N0tQ/OxoVJPwIk80lqQV3WByB8bFYO?=
 =?us-ascii?q?COggLBR+0N0WLM+V3d8kbFh4pgPMlbAspD4JaZNykCsS8k2njBL+od?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AyAwAJ7rhh/0HhJQpagQkJgVCBIYI?=
 =?us-ascii?q?FgUILshqBfAsBAQEBAQEBAQEIAS0UBAEBiDImNAkOAQIEAQEBEgEBBgEBAQE?=
 =?us-ascii?q?BBgQBgRuFaAEMgjUihB9eARVrJgEEG4Jtgg6yWYEzGgJlhGqFDwkBgTCBZoV?=
 =?us-ascii?q?Egn6ECoINQ48/BJQbTYEjoBmgNgcDg0CKZZQ1MBWFOZByA5ElhWOQSh+mAQI?=
 =?us-ascii?q?EAgQFAhaBYYIUcIM5CUgXApgGhHl0OAIGCwEBAwmPYIEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2AyAwAJ7rhh/0HhJQpagQkJgVCBIYIFgUILshqBfAsBA?=
 =?us-ascii?q?QEBAQEBAQEIAS0UBAEBiDImNAkOAQIEAQEBEgEBBgEBAQEBBgQBgRuFaAEMg?=
 =?us-ascii?q?jUihB9eARVrJgEEG4Jtgg6yWYEzGgJlhGqFDwkBgTCBZoVEgn6ECoINQ48/B?=
 =?us-ascii?q?JQbTYEjoBmgNgcDg0CKZZQ1MBWFOZByA5ElhWOQSh+mAQIEAgQFAhaBYYIUc?=
 =?us-ascii?q?IM5CUgXApgGhHl0OAIGCwEBAwmPYIEQAQE?=
X-IronPort-AV: E=Sophos;i="5.88,205,1635206400";
   d="scan'208,217";a="435360791"
IronPort-SDR: 
 o+X5n4otkAeGm8sXXmkr0Ms1arbFqMs3sed0/O4n0DTTDj3Gi0eU6m8lk9Ufqovn/Gd6G9hvM9
 sdkYSNupb4YjICH4olHSuUM8lAWa2PfTj/6NX1RKPJaSP8Ht4cG5z5ELe8fP6VSWCqCZHI5HPY
 fMYQPbJ85WRiEpSRyGXi/aUxDnd+2j9NM0jcstgHQY2vJW29kVTBWOQOeX0AfBmS28j1m9UuwP
 H0tAxckYUVG2eoemavjS7Lloeyv6/TnUetKy2l09J4YO4X9qf+s6E99Wt1gRqP5NKWoljNANc7
 RAQ=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto BUILD ENV
Thread-Topic: Yocto BUILD ENV
Thread-Index: AdfxGvQ33X3AYIy7TyuxKWNiy7VDsQ==
Date: Tue, 14 Dec 2021 19:22:49 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_bc22166048934f9ca80a78b5d82699a1baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 19:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55587
Message-Id: <20211214192355.01CA5C433EF@smtp.lore.kernel.org>

--_000_bc22166048934f9ca80a78b5d82699a1baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am using a pre-installed tools on my linux development box for centos7, t=
hat being devtoolset-8...

Running "source /opt/rh/devtoolset-8/enable" allows me to build my bootapp,=
 kernel, and the standard SDK without issues..., but there seems to be a pr=
oblem when I go to build the extended SDK.

It appears to end up referencing the wrong/default tool set.

Is the something I need to set in my sdk-extra.conf (or one of the vcarious=
 other configuration files)  to make the extended SDK build aware of the en=
vironment dependency ?


/opt/rh/devtoolset-8/enable script does the following:

# General environment variables
export PATH=3D/opt/rh/devtoolset-8/root/usr/bin${PATH:+:${PATH}}
export MANPATH=3D/opt/rh/devtoolset-8/root/usr/share/man:${MANPATH}
export INFOPATH=3D/opt/rh/devtoolset-8/root/usr/share/info${INFOPATH:+:${IN=
FOPATH}}
export PCP_DIR=3D/opt/rh/devtoolset-8/root
# Some perl Ext::MakeMaker versions install things under /usr/lib/perl5
# even though the system otherwise would go to /usr/lib64/perl5.
export PERL5LIB=3D/opt/rh/devtoolset-8/root//usr/lib64/perl5/vendor_perl:/o=
pt/rh/devtoolset-8/root/usr/lib/perl5:/opt/rh/devtoolset-8/root//usr/share/=
perl5/vendor_perl${PERL5LIB:+:${PERL5LIB}}
# bz847911 workaround:
# we need to evaluate rpm's installed run-time % { _libdir }, not rpmbuild =
time
# or else /etc/ld.so.conf.d files?
rpmlibdir=3D$(rpm --eval "%{_libdir}")
# bz1017604: On 64-bit hosts, we should include also the 32-bit library pat=
h.
if [ "$rpmlibdir" !=3D "${rpmlibdir/lib64/}" ]; then
  rpmlibdir32=3D":/opt/rh/devtoolset-8/root${rpmlibdir/lib64/lib}"
fi
export LD_LIBRARY_PATH=3D/opt/rh/devtoolset-8/root$rpmlibdir$rpmlibdir32${L=
D_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=3D/opt/rh/devtoolset-8/root$rpmlibdir$rpmlibdir32:/o=
pt/rh/devtoolset-8/root$rpmlibdir/dyninst$rpmlibdir32/dyninst${LD_LIBRARY_P=
ATH:+:${LD_LIBRARY_PATH}}
# duplicate python site.py logic for sitepackages
pythonvers=3D2.7
export PYTHONPATH=3D/opt/rh/devtoolset-8/root/usr/lib64/python$pythonvers/s=
ite-packages:/opt/rh/devtoolset-8/root/usr/lib/python$pythonvers/site-packa=
ges${PYTHONPATH:+:${PYTHONPATH}}
export PKG_CONFIG_PATH=3D/opt/rh/devtoolset-8/root/usr/lib64/pkgconfig${PKG=
_CONFIG_PATH:+:${PKG_CONFIG_PATH}}


--_000_bc22166048934f9ca80a78b5d82699a1baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using a pre-installed tools on my linux develop=
ment box for centos7, that being devtoolset-8&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Running &#8220;source /opt/rh/devtoolset-8/enable&#8=
221; allows me to build my bootapp, kernel, and the standard SDK without is=
sues&#8230;, but there seems to be a problem when I go to build the extende=
d SDK.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>It appears to end up referencing the wrong/defaul=
t tool set.<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Is the something I need to set in my sdk-extra.co=
nf (or one of the vcarious other configuration files) &nbsp;to make the ext=
ended SDK build aware of the environment dependency ?<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/opt/rh/devtoolset-8/enable script does the followin=
g:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># General environment variables<o:p></o:p></p>
<p class=3D"MsoNormal">export PATH=3D/opt/rh/devtoolset-8/root/usr/bin${PAT=
H:&#43;:${PATH}}<o:p></o:p></p>
<p class=3D"MsoNormal">export MANPATH=3D/opt/rh/devtoolset-8/root/usr/share=
/man:${MANPATH}<o:p></o:p></p>
<p class=3D"MsoNormal">export INFOPATH=3D/opt/rh/devtoolset-8/root/usr/shar=
e/info${INFOPATH:&#43;:${INFOPATH}}<o:p></o:p></p>
<p class=3D"MsoNormal">export PCP_DIR=3D/opt/rh/devtoolset-8/root<o:p></o:p=
></p>
<p class=3D"MsoNormal"># Some perl Ext::MakeMaker versions install things u=
nder /usr/lib/perl5<o:p></o:p></p>
<p class=3D"MsoNormal"># even though the system otherwise would go to /usr/=
lib64/perl5.<o:p></o:p></p>
<p class=3D"MsoNormal">export PERL5LIB=3D/opt/rh/devtoolset-8/root//usr/lib=
64/perl5/vendor_perl:/opt/rh/devtoolset-8/root/usr/lib/perl5:/opt/rh/devtoo=
lset-8/root//usr/share/perl5/vendor_perl${PERL5LIB:&#43;:${PERL5LIB}}<o:p><=
/o:p></p>
<p class=3D"MsoNormal"># bz847911 workaround:<o:p></o:p></p>
<p class=3D"MsoNormal"># we need to evaluate rpm's installed run-time % { _=
libdir }, not rpmbuild time<o:p></o:p></p>
<p class=3D"MsoNormal"># or else /etc/ld.so.conf.d files?<o:p></o:p></p>
<p class=3D"MsoNormal">rpmlibdir=3D$(rpm --eval &quot;%{_libdir}&quot;)<o:p=
></o:p></p>
<p class=3D"MsoNormal"># bz1017604: On 64-bit hosts, we should include also=
 the 32-bit library path.<o:p></o:p></p>
<p class=3D"MsoNormal">if [ &quot;$rpmlibdir&quot; !=3D &quot;${rpmlibdir/l=
ib64/}&quot; ]; then<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; rpmlibdir32=3D&quot;:/opt/rh/devtoolset-8/roo=
t${rpmlibdir/lib64/lib}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">fi<o:p></o:p></p>
<p class=3D"MsoNormal">export LD_LIBRARY_PATH=3D/opt/rh/devtoolset-8/root$r=
pmlibdir$rpmlibdir32${LD_LIBRARY_PATH:&#43;:${LD_LIBRARY_PATH}}<o:p></o:p><=
/p>
<p class=3D"MsoNormal">export LD_LIBRARY_PATH=3D/opt/rh/devtoolset-8/root$r=
pmlibdir$rpmlibdir32:/opt/rh/devtoolset-8/root$rpmlibdir/dyninst$rpmlibdir3=
2/dyninst${LD_LIBRARY_PATH:&#43;:${LD_LIBRARY_PATH}}<o:p></o:p></p>
<p class=3D"MsoNormal"># duplicate python site.py logic for sitepackages<o:=
p></o:p></p>
<p class=3D"MsoNormal">pythonvers=3D2.7<o:p></o:p></p>
<p class=3D"MsoNormal">export PYTHONPATH=3D/opt/rh/devtoolset-8/root/usr/li=
b64/python$pythonvers/site-packages:/opt/rh/devtoolset-8/root/usr/lib/pytho=
n$pythonvers/site-packages${PYTHONPATH:&#43;:${PYTHONPATH}}<o:p></o:p></p>
<p class=3D"MsoNormal">export PKG_CONFIG_PATH=3D/opt/rh/devtoolset-8/root/u=
sr/lib64/pkgconfig${PKG_CONFIG_PATH:&#43;:${PKG_CONFIG_PATH}}<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_bc22166048934f9ca80a78b5d82699a1baesystemscom_--

