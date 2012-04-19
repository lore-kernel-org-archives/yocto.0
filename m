Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5782AE00747
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 11:28:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Apr 2012 11:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="133009728"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 19 Apr 2012 11:28:43 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Apr 2012 11:28:43 -0700
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.141]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.112]) with mapi id
	14.01.0355.002; Thu, 19 Apr 2012 11:28:42 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: jack <woailinux@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] configure: error: C compiler cannot create executables
	when creating and building a hello world project.
Thread-Index: AQHNHg/EmTlPXsYUaEi/c9qfmQsFiZaicmcA
Date: Thu, 19 Apr 2012 18:28:41 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C451D4513@ORSMSX102.amr.corp.intel.com>
References: <BLU0-SMTP1526D7AA79BEFBC15BC6BACB93D0@phx.gbl>
In-Reply-To: <BLU0-SMTP1526D7AA79BEFBC15BC6BACB93D0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: configure: error: C compiler cannot create executables when creating and building a hello world project.
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
X-List-Received-Date: Thu, 19 Apr 2012 18:28:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C451D4513ORSMSX102amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C451D4513ORSMSX102amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jack,



I think you've hit a known issue that introduced by the latest LinuxTools p=
roject of Eclipse plug-in.  Here's steps that you can have your Eclipse IDE=
 updated to solve the issue:



1.       Under Help->About Eclipse SDK, click "Installation Details", there=
 what is the version of your "Autotools support for CDT(Incubation)" is it =
3.0.1.201202152032? And scroll to the bottom, if you see Yocto Plugin for E=
clipse and the version is older than 1.2.0.201203141639, then select Yocto =
Plugin for Eclipse and select uninstall, since the older version of plugin =
won't be able to handle the bug that introduced by LinuxTools project.  Fol=
low the steps to uninstall the Yocto plug-in and restart your Eclipse

2.       IF your "Autotools support for CDT" version is different from the =
above mentioned. Under Help->Install New Software, Click on "Available Soft=
ware Sites" and make sure "Indigo" got checked. And In the" Work With:" dro=
p down, select Indigo, extend "Programming Languages" and select "Autotools=
 support for CDT" and follow the steps to update to the latest version and =
restart Eclipse

3.       Go to http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1=
/eclipse-plugin/indigo, and download org.yocto.sdk-rc1-201203141638-archive=
.zip<http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-p=
lugin/indigo/org.yocto.sdk-rc1-201203141638-archive.zip> to your local syst=
em, and in Eclipse Help->Install New Software, "Work With:" click ADD, ther=
e you can put name as Yocto-1.1.1, and click on Archive and select the Yoct=
o plug-in archive zip file you just downloaded.  Then from the drop down se=
lect the Yocto-1.1.1 and follow the steps to finish reinstall and restart E=
clipse.



Now your Eclipse IDE should behave as desired which allows you to reconfigu=
re a specific Yocto project using certain sysroot.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jack
Sent: Thursday, April 19, 2012 2:15 AM
To: yocto@yoctoproject.org
Subject: [yocto] configure: error: C compiler cannot create executables whe=
n creating and building a hello world project.



hello all!
After creating a project in Eclipse, I tried to Configure the Cross-Toolcha=
ins.

But I did like this:"Select Project -> Change Yocto Project Settings: This =
selection brings up the Project Yocto Settings Dialog and allows you to mak=
e changes specific to an individual project.", there was not Project Yocto =
Settings Dialog.

Then I select Project -> Reconfigure Project,  the information on the conso=
le:

Invoking autogen.sh in build directory: /home/jackie/workspace/helloclutter

Command-line environment variables:
     CFLAGS=3D" -g -O0  -m32   -march=3Di586 --sysroot=3D/home/jackie/sysro=
ot" CXXFLAGS=3D" -g -O0  -m32   -march=3Di586 --sysroot=3D/home/jackie/sysr=
oot" LDFLAGS=3D"  --sysroot=3D/home/jackie/sysroot" CPPFLAGS=3D" -m32   -ma=
rch=3Di586 --sysroot=3D/home/jackie/sysroot"

sh /home/jackie/workspace/helloclutter/autogen.sh --with-libtool-sysroot=3D=
/home/jackie/sysroot --target=3Di586-poky-linux --host=3Di586-poky-linux --=
build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.1.1/sysroots/i586-p=
oky-linux
configure.ac:21: installing `./compile'
configure.ac:20: installing `./config.guess'
configure.ac:20: installing `./config.sub'
configure.ac:16: installing `./install-sh'
configure.ac:16: installing `./missing'
src/Makefile.am: installing `./depcomp'
configure: loading site script /opt/poky/1.1.1/site-config-i586-poky-linux
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for i586-poky-linux-strip... i586-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking build system type... i686-pc-linux-gnu
checking host system type... i586-poky-linux-gnu
checking how to print strings... printf
checking for style of include used by make... GNU
checking for i586-poky-linux-gcc... i586-poky-linux-gcc
checking whether the C compiler works... no
configure: error: in `/home/jackie/workspace/helloclutter':
configure: error: in `/home/jackie/workspace/helloclutter':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

Who can help me? Thank you!


--_000_C6510F6D410BB64A8C15398EDC6B847C451D4513ORSMSX102amrcor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1201355329;
	mso-list-type:hybrid;
	mso-list-template-ids:-1795893672 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Jack,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I think you&#8217;ve hit =
a known issue that introduced by the latest LinuxTools project of Eclipse p=
lug-in.&nbsp; Here&#8217;s steps that you can have your Eclipse IDE updated
 to solve the issue:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Under Help-&gt;Ab=
out Eclipse SDK, click &#8220;Installation Details&#8221;, there what is th=
e version of your &#8220;Autotools support for CDT(Incubation)&#8221; is it=
 3.0.1.201202152032?
 And scroll to the bottom, if you see Yocto Plugin for Eclipse and the vers=
ion is older than 1.2.0.201203141639, then select Yocto Plugin for Eclipse =
and select uninstall, since the older version of plugin won&#8217;t be able=
 to handle the bug that introduced by
 LinuxTools project.&nbsp; Follow the steps to uninstall the Yocto plug-in =
and restart your Eclipse<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">IF your &#8220;Au=
totools support for CDT&#8221; version is different from the above mentione=
d. Under Help-&gt;Install New Software, Click on &#8220;Available Software
 Sites&#8221; and make sure &#8220;Indigo&#8221; got checked. And In the&#8=
221; Work With:&#8221; drop down, select Indigo, extend &#8220;Programming =
Languages&#8221; and select &#8220;Autotools support for CDT&#8221; and fol=
low the steps to update to the latest version and restart Eclipse<o:p></o:p=
></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Go to
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/ecl=
ipse-plugin/indigo">
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin=
/indigo</a>, and download
</span><a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.=
1.1/eclipse-plugin/indigo/org.yocto.sdk-rc1-201203141638-archive.zip">org.y=
octo.sdk-rc1-201203141638-archive.zip</a> to your local system, and in Ecli=
pse Help-&gt;Install New Software, &#8220;Work
 With:&#8221; click ADD, there you can put name as Yocto-1.1.1, and click o=
n Archive and select the Yocto plug-in archive zip file you just downloaded=
.&nbsp; Then from the drop down select the Yocto-1.1.1 and follow the steps=
 to finish reinstall and restart Eclipse.<span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></=
o:p></span></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">Now your Eclipse IDE should behave as desired=
 which allows you to reconfigure a specific Yocto project using certain sys=
root.<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">Thanks,<o:p></o:p></p>
<p class=3D"MsoListParagraph">Jessica<span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> yocto-bounces@yoctoproject.org [mailto:yocto-boun=
ces@yoctoproject.org]
<b>On Behalf Of </b>jack<br>
<b>Sent:</b> Thursday, April 19, 2012 2:15 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] configure: error: C compiler cannot create executab=
les when creating and building a hello world project.<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">hello all!<br>
After creating a project in Eclipse, I tried to Configure the Cross-Toolcha=
ins. <br>
<br>
But I did like this:&quot;Select <code><span style=3D"font-size:10.0pt">Pro=
ject -&gt; Change Yocto Project Settings</span></code>: This selection brin=
gs up the
<code><span style=3D"font-size:10.0pt">Project Yocto Settings</span></code>=
 Dialog and allows you to make changes specific to an individual project.&q=
uot;, there was not
<code><span style=3D"font-size:10.0pt">Project Yocto Settings</span></code>=
 Dialog.
<br>
<br>
Then I select <code><span style=3D"font-size:10.0pt">Project -&gt; Reconfig=
ure Project</span></code>,&nbsp; the information on the console:<br>
<br>
Invoking autogen.sh in build directory: /home/jackie/workspace/helloclutter=
<br>
<br>
Command-line environment variables:<br>
&nbsp;&nbsp;&nbsp; &nbsp;CFLAGS=3D&quot; -g -O0&nbsp; -m32&nbsp;&nbsp; -mar=
ch=3Di586 --sysroot=3D/home/jackie/sysroot&quot; CXXFLAGS=3D&quot; -g -O0&n=
bsp; -m32&nbsp;&nbsp; -march=3Di586 --sysroot=3D/home/jackie/sysroot&quot; =
LDFLAGS=3D&quot;&nbsp; --sysroot=3D/home/jackie/sysroot&quot; CPPFLAGS=3D&q=
uot; -m32&nbsp;&nbsp; -march=3Di586 --sysroot=3D/home/jackie/sysroot&quot;<=
br>
<br>
sh /home/jackie/workspace/helloclutter/autogen.sh --with-libtool-sysroot=3D=
/home/jackie/sysroot --target=3Di586-poky-linux --host=3Di586-poky-linux --=
build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.1.1/sysroots/i586-p=
oky-linux
<br>
configure.ac:21: installing `./compile'<br>
configure.ac:20: installing `./config.guess'<br>
configure.ac:20: installing `./config.sub'<br>
configure.ac:16: installing `./install-sh'<br>
configure.ac:16: installing `./missing'<br>
src/Makefile.am: installing `./depcomp'<br>
configure: loading site script /opt/poky/1.1.1/site-config-i586-poky-linux<=
br>
checking for a BSD-compatible install... /usr/bin/install -c<br>
checking whether build environment is sane... yes<br>
checking for i586-poky-linux-strip... i586-poky-linux-strip<br>
checking for a thread-safe mkdir -p... /bin/mkdir -p<br>
checking for gawk... gawk<br>
checking whether make sets $(MAKE)... yes<br>
checking build system type... i686-pc-linux-gnu<br>
checking host system type... i586-poky-linux-gnu<br>
checking how to print strings... printf<br>
checking for style of include used by make... GNU<br>
checking for i586-poky-linux-gcc... i586-poky-linux-gcc<br>
checking whether the C compiler works... no<br>
configure: error: in `/home/jackie/workspace/helloclutter':<br>
configure: error: in `/home/jackie/workspace/helloclutter':<br>
configure: error: C compiler cannot create executables<br>
configure: error: C compiler cannot create executables<br>
See `config.log' for more details<br>
<br>
Configuration failed with error<br>
<br>
Who can help me? Thank you!<o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C451D4513ORSMSX102amrcor_--
