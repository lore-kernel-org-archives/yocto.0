Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5B57E0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 13:37:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2012 13:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="142036933"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2012 13:37:27 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 9 May 2012 13:37:27 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.157]) with mapi id
	14.01.0355.002; Wed, 9 May 2012 13:37:27 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: KERNEL build failure for Master
Thread-Index: Ac0uI4uCE6w8e6uIQ7WlYwJv9qIp/Q==
Date: Wed, 9 May 2012 20:37:26 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACA749B@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: KERNEL build failure for Master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 May 2012 20:37:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20ACA749BORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20ACA749BORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Linux-yocto  build is failing for Cedartrail for the Master and denzil bran=
ch.
Is it failing for any other BSPs?
Below is the error.

ERROR: Function failed: Fetcher failure: Fetch command export HOME=3D"/home=
/kishore"; export https_proxy=3D"https://proxy.sc.intel.com:911/"; export f=
tp_proxy=3D"http://proxy.sc.intel.com:911/"; export http_proxy=3D"http://pr=
oxy.sc.intel.com:911/"; export GIT_CONFIG=3D"/usr/local/src/may_9/build/tmp=
/sysroots/x86_64-linux/etc/gitconfig"; export GIT_PROXY_COMMAND=3D"/usr/loc=
al/bin/git-proxy"; export PATH=3D"/usr/local/src/may_9/build/tmp/sysroots/x=
86_64-linux/usr/bin/core2-poky-linux:/usr/local/src/may_9/build/tmp/sysroot=
s/cedartrail/usr/bin/crossscripts:/usr/local/src/may_9/build/tmp/sysroots/x=
86_64-linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/u=
sr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/sbin:/usr/local=
/src/may_9/build/tmp/sysroots/x86_64-linux//bin:/usr/local/src/may_9/script=
s:/usr/local/src/may_9/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbi=
n:/usr/bin:/sbin:/bin:/usr/games:/usr/local/src/may_9/scripts"; git clone -=
s -n --mirror /usr/local/src/may_9/build/downloads/git2/git.yoctoproject.or=
g.linux-yocto-3.0/ /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linu=
x/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c=
307997aff37916828dc8b4ef72f5d35a94-r4/git/ could not be run:
None
ERROR: Logfile of failure stored in: /usr/local/src/may_9/build/tmp/work/ce=
dartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b889147=
25dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_unpack.=
4250
Log data follows:
| DEBUG: Running export HOME=3D"/home/kishore"; export https_proxy=3D"https=
://proxy.sc.intel.com:911/"; export ftp_proxy=3D"http://proxy.sc.intel.com:=
911/"; export http_proxy=3D"http://proxy.sc.intel.com:911/"; export GIT_CON=
FIG=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/etc/gitconfig";=
 export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export PATH=3D"/usr=
/local/src/may_9/build/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/=
usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crossscripts:/usr=
/local/src/may_9/build/tmp/sysroots/x86_64-linux/usr/sbin:/usr/local/src/ma=
y_9/build/tmp/sysroots/x86_64-linux/usr/bin:/usr/local/src/may_9/build/tmp/=
sysroots/x86_64-linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-l=
inux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin/:/u=
sr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/=
local/src/may_9/scripts"; git clone -s -n --mirror /usr/local/src/may_9/bui=
ld/downloads/git2/git.yoctoproject.org.linux-yocto-3.0/ /usr/local/src/may_=
9/build/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f=
08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/=
git/
| ERROR: Function failed: Fetcher failure: Fetch command export HOME=3D"/ho=
me/kishore"; export https_proxy=3D"https://proxy.sc.intel.com:911/"; export=
 ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export http_proxy=3D"http://=
proxy.sc.intel.com:911/"; export GIT_CONFIG=3D"/usr/local/src/may_9/build/t=
mp/sysroots/x86_64-linux/etc/gitconfig"; export GIT_PROXY_COMMAND=3D"/usr/l=
ocal/bin/git-proxy"; export PATH=3D"/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/bin/core2-poky-linux:/usr/local/src/may_9/build/tmp/sysro=
ots/cedartrail/usr/bin/crossscripts:/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux=
/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/sbin:/usr/loc=
al/src/may_9/build/tmp/sysroots/x86_64-linux//bin:/usr/local/src/may_9/scri=
pts:/usr/local/src/may_9/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/s=
bin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/src/may_9/scripts"; git clone=
 -s -n --mirror /usr/local/src/may_9/build/downloads/git2/git.yoctoproject.=
org.linux-yocto-3.0/ /usr/local/src/may_9/build/tmp/work/cedartrail-poky-li=
nux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd=
8c307997aff37916828dc8b4ef72f5d35a94-r4/git/ could not be run:
| None
NOTE: package linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99=
c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4: task do_unpack: Failed
ERROR: Task 858 (/usr/local/src/may_9/meta/recipes-kernel/linux/linux-yocto=
_3.0.bb, do_unpack) failed with exit code '1'

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20ACA749BORSMSX105amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Linux-yocto &nbsp;build is failing for Cedartrail fo=
r the Master and denzil branch.<o:p></o:p></p>
<p class=3D"MsoNormal">Is it failing for any other BSPs? &nbsp;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Below is the error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: Fetcher failure: Fetch comma=
nd export HOME=3D&quot;/home/kishore&quot;; export https_proxy=3D&quot;http=
s://proxy.sc.intel.com:911/&quot;; export ftp_proxy=3D&quot;http://proxy.sc=
.intel.com:911/&quot;; export http_proxy=3D&quot;http://proxy.sc.intel.com:=
911/&quot;;
 export GIT_CONFIG=3D&quot;/usr/local/src/may_9/build/tmp/sysroots/x86_64-l=
inux/etc/gitconfig&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/g=
it-proxy&quot;; export PATH=3D&quot;/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/bin/core2-poky-linux:/usr/local/src/may_9/build/tmp/sysro=
ots/cedartrail/usr/bin/crossscripts:/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux=
/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/sbin:/usr/loc=
al/src/may_9/build/tmp/sysroots/x86_64-linux//bin:/usr/local/src/may_9/scri=
pts:/usr/local/src/may_9/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/s=
bin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/src/may_9/scripts&quot;;
 git clone -s -n --mirror /usr/local/src/may_9/build/downloads/git2/git.yoc=
toproject.org.linux-yocto-3.0/ /usr/local/src/may_9/build/tmp/work/cedartra=
il-poky-linux/linux-yocto-3.0.24&#43;git1&#43;a4ac64fe873f08ef718e2849b8891=
4725dc99c1c_1&#43;81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/git/
 could not be run:<o:p></o:p></p>
<p class=3D"MsoNormal">None<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /usr/local/src/=
may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24&#43;git1&#43;=
a4ac64fe873f08ef718e2849b88914725dc99c1c_1&#43;81fd8c307997aff37916828dc8b4=
ef72f5d35a94-r4/temp/log.do_unpack.4250<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Running export HOME=3D&quot;/home/kishore&q=
uot;; export https_proxy=3D&quot;https://proxy.sc.intel.com:911/&quot;; exp=
ort ftp_proxy=3D&quot;http://proxy.sc.intel.com:911/&quot;; export http_pro=
xy=3D&quot;http://proxy.sc.intel.com:911/&quot;; export GIT_CONFIG=3D&quot;=
/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/etc/gitconfig&quot;;
 export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/git-proxy&quot;; export PA=
TH=3D&quot;/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/usr/bin/cor=
e2-poky-linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/cr=
ossscripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/usr/sbin:/u=
sr/local/src/may_9/build/tmp/sysroots/x86_64-linux/usr/bin:/usr/local/src/m=
ay_9/build/tmp/sysroots/x86_64-linux/sbin:/usr/local/src/may_9/build/tmp/sy=
sroots/x86_64-linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/=
bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/=
usr/games:/usr/local/src/may_9/scripts&quot;;
 git clone -s -n --mirror /usr/local/src/may_9/build/downloads/git2/git.yoc=
toproject.org.linux-yocto-3.0/ /usr/local/src/may_9/build/tmp/work/cedartra=
il-poky-linux/linux-yocto-3.0.24&#43;git1&#43;a4ac64fe873f08ef718e2849b8891=
4725dc99c1c_1&#43;81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/git/<o:p></o:=
p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: Fetcher failure: Fetch com=
mand export HOME=3D&quot;/home/kishore&quot;; export https_proxy=3D&quot;ht=
tps://proxy.sc.intel.com:911/&quot;; export ftp_proxy=3D&quot;http://proxy.=
sc.intel.com:911/&quot;; export http_proxy=3D&quot;http://proxy.sc.intel.co=
m:911/&quot;;
 export GIT_CONFIG=3D&quot;/usr/local/src/may_9/build/tmp/sysroots/x86_64-l=
inux/etc/gitconfig&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/g=
it-proxy&quot;; export PATH=3D&quot;/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/bin/core2-poky-linux:/usr/local/src/may_9/build/tmp/sysro=
ots/cedartrail/usr/bin/crossscripts:/usr/local/src/may_9/build/tmp/sysroots=
/x86_64-linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux=
/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-linux/sbin:/usr/loc=
al/src/may_9/build/tmp/sysroots/x86_64-linux//bin:/usr/local/src/may_9/scri=
pts:/usr/local/src/may_9/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/s=
bin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/src/may_9/scripts&quot;;
 git clone -s -n --mirror /usr/local/src/may_9/build/downloads/git2/git.yoc=
toproject.org.linux-yocto-3.0/ /usr/local/src/may_9/build/tmp/work/cedartra=
il-poky-linux/linux-yocto-3.0.24&#43;git1&#43;a4ac64fe873f08ef718e2849b8891=
4725dc99c1c_1&#43;81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/git/
 could not be run:<o:p></o:p></p>
<p class=3D"MsoNormal">| None<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package linux-yocto-3.0.24&#43;git1&#43;a4ac64=
fe873f08ef718e2849b88914725dc99c1c_1&#43;81fd8c307997aff37916828dc8b4ef72f5=
d35a94-r4: task do_unpack: Failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 858 (/usr/local/src/may_9/meta/recipes-k=
ernel/linux/linux-yocto_3.0.bb, do_unpack) failed with exit code '1'<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20ACA749BORSMSX105amrcor_--
