Return-Path: <shane.wang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF649E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 21:30:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Feb 2012 21:30:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="120117352"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2012 21:30:01 -0800
Received: from pgsmsx101.gar.corp.intel.com (10.221.44.78) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 13:29:59 +0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 3 Feb 2012 13:29:59 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Fri, 3 Feb 2012 13:29:57 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: RFC: Hob 1.2 design
Thread-Index: AQHM1ghN2ta+vDnY0kiXcbK0irRQ85YS108ggAGuLCCAAHlrgIAGmYWAgAb8MNCAAqn0gIACotQAgABGdBCAAFS8AIAAmk2AgABm6zCAAOoDcIAACL3wgAA+c2A=
Date: Fri, 3 Feb 2012 05:29:57 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDF@SHSMSX102.ccr.corp.intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9F5F@SHSMSX102.ccr.corp.intel.com>
	<CB4F0427.6A93%belen.barros.pena@intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255@SHSMSX102.ccr.corp.intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEBC20@SHSMSX102.ccr.corp.intel.com>
	<40776A41FC278F40B59438AD47D147A90FCD04D6@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <40776A41FC278F40B59438AD47D147A90FCD04D6@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Fri, 03 Feb 2012 05:30:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDFSHSMSX102ccrcor_"

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDFSHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dongxiao and I have a discussion on that again.

Belen, please ignore the issue for the deployment button below, and we have=
 several suggestions.

1. To make the Packages Screen and the Packages dialog the same.
The Packages Screen is shown after users click "Build packages". That is on=
e step of the process.
However, the content shown in the Package dialog is all what we have built =
out last time. It is very possible users start from there and don't want to=
 go back to the Image configuration screen and click "Build Image".

2. As mentioned in my last email, we want to add "Clean" in the GUI. The re=
ason is the build will fail, say, do_fetch, then we have an option to allow=
 users to clean what we built out and rebuild. Otherwise, the sstate could =
be reused for the next build. Users can do it by running "bitbake -c cleana=
ll" in the command line. But we hope to provide this feature in the GUI.
If you agree the above, then the action "Clean" is for a recipe or multiple=
 recipes, and clicking "Clean" will go to the screen at 4:00, since cleanin=
g includes some tasks.
Then we could make the Recipes dialog to be a screen, do you agree?
The other reason is users can view recipes and click "Build Packages", no n=
eed go back to the Image configuration screen.
The use case is:
1) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes and Build packages -> Log -> the Packages screen ...
2) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes and Build packages -> Log -> Failure -> Go back to the Recipes scre=
en -> Clean something -> Log -> the Recipes screen -> Build packages again =
-> Log -> Success -> the Packages screen ...
3) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes -> Go back to the Image configuraion -> "Build Image"
4) Nothing want to view in the Image configuration after choosing "base ima=
ge" -> "Build packages" -> Log -> the Packages screen ...
5) Nothing want to view in the Image configuration after choosing "base ima=
ge" -> "Build packages" -> Log -> Failure -> Go back to the Image configura=
tion -> View Recipes -> the Recipes screen -> Clean something -> Log -> the=
 Recipe screen -> ...
6) Nothing want to view in the Image configuration after choosing "base ima=
ge" -> "Build Image" -> Log -> the Image details ...
and so on...

3. When build is failed, there is a "Back" button. But go back to where is =
determined by where you come from.

4. After users open an image by "My images", some time there should not be =
a "Save Template" because we don't have build process.
Let's show "Save Template" when "Congratulations! Your image is ready!" is =
shown, OK?

5. In the Image details screen, "Settings" is obviously not good to be show=
n there. Can we remove "Load Template"? Because it will initiate a new buil=
d. Let's ask users to click "Build new image" to be on the Image configurat=
ion and click "Load Template".
We just keep "My Images" in the last screen (the Image details screen), is =
it OK?
And remove "Edit Packages" and "Edit Configuration", if the build process i=
s not executed this time. (ditto for "Save Template" in 4.)

6. In Josh's email, FRI 2 image can also be run, though it is an image for =
real machine. Can we keep two buttons "Run" and "Deploy" on the Image detai=
ls screen and let uses decide what he/she wants? I admit an error possibly =
happens if the image doesn't match the action, but we just report the error=
.

Thoughts?
Thanks.
--
Shane

From: Xu, Dongxiao
Sent: Friday, February 03, 2012 8:57 AM
To: Wang, Shane; Barros Pena, Belen; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Son=
g; Stewart, David C; yocto@yoctoproject.org
Subject: RE: RFC: Hob 1.2 design

One more from me that, Hob may work as a deploy tool, and in the new movie,=
 the approach is to select "My images" and then click deploy button. I thin=
k normal user may not have such knowledge. I am still wondering if adding a=
 "deploy" button in the tool bar?

Thanks,
Dongxiao

From: Wang, Shane
Sent: Friday, February 03, 2012 8:26 AM
To: Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Son=
g; Stewart, David C; yocto@yoctoproject.org
Subject: RE: RFC: Hob 1.2 design

I get one more:

In the Image details screen, after opening an image file by clicking "My im=
ages", we don't allow to "Edit Package", I think.
Because with an image only, we can't generate the packages from it, you can=
't assume there is a build directory (tmp/), is my understanding correct?

--
Shane

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDFSHSMSX102ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Courier New";
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Dongxiao and =
I have a discussion on that again.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Belen, please=
 ignore the issue for the deployment button below, and we have several sugg=
estions.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">1. To make th=
e Packages Screen and the Packages dialog the same.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">The Packages =
Screen is shown after users click &#8220;Build packages&#8221;. That is one=
 step of the process.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">However, the =
content shown in the Package dialog is all what we have built out last time=
. It is very possible users start from there and don&#8217;t want
 to go back to the Image configuration screen and click &#8220;Build Image&=
#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">2. As mention=
ed in my last email, we want to add &#8220;Clean&#8221; in the GUI. The rea=
son is the build will fail, say, do_fetch, then we have an option to allow
 users to clean what we built out and rebuild. Otherwise, the sstate could =
be reused for the next build. Users can do it by running &#8220;bitbake &#8=
211;c cleanall&#8221; in the command line. But we hope to provide this feat=
ure in the GUI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">If you agree =
the above, then the action &#8220;Clean&#8221; is for a recipe or multiple =
recipes, and clicking &#8220;Clean&#8221; will go to the screen at 4:00, si=
nce cleaning
 includes some tasks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Then we could=
 make the Recipes dialog to be a screen, do you agree?<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">The other rea=
son is users can view recipes and click &#8220;Build Packages&#8221;, no ne=
ed go back to the Image configuration screen.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">The use case =
is:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">1) View Recip=
es in the Image configuration -&gt; the Recipes screen -&gt; Select recipes=
 and Build packages -&gt; Log -&gt; the Packages screen &#8230;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">2) View Recip=
es in the Image configuration -&gt; the Recipes screen -&gt; Select recipes=
 and Build packages -&gt; Log -&gt; Failure -&gt; Go back to the Recipes
 screen -&gt; Clean something -&gt; Log -&gt; the Recipes screen -&gt; Buil=
d packages again -&gt; Log -&gt; Success -&gt; the Packages screen &#8230;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">3) View Recip=
es in the Image configuration -&gt; the Recipes screen -&gt; Select recipes=
 -&gt; Go back to the Image configuraion -&gt; &#8220;Build Image&#8221;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">4) Nothing wa=
nt to view in the Image configuration after choosing &#8220;base image&#822=
1; -&gt; &#8220;Build packages&#8221; -&gt; Log -&gt; the Packages screen &=
#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">5) Nothing wa=
nt to view in the Image configuration after choosing &#8220;base image&#822=
1; -&gt; &#8220;Build packages&#8221; -&gt; Log -&gt; Failure -&gt; Go back=
 to the Image configuration
 -&gt; View Recipes -&gt; the Recipes screen -&gt; Clean something -&gt; Lo=
g -&gt; the Recipe screen -&gt; &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">6) Nothing wa=
nt to view in the Image configuration after choosing &#8220;base image&#822=
1; -&gt; &#8220;Build Image&#8221; -&gt; Log -&gt; the Image details &#8230=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">and so on&#82=
30;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">3. When build=
 is failed, there is a &#8220;Back&#8221; button. But go back to where is d=
etermined by where you come from.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">4. After user=
s open an image by &#8220;My images&#8221;, some time there should not be a=
 &#8220;Save Template&#8221; because we don&#8217;t have build process.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Let&#8217;s s=
how &#8220;Save Template&#8221; when &#8220;Congratulations! Your image is =
ready!&#8221; is shown, OK?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">5. In the Ima=
ge details screen, &#8220;Settings&#8221; is obviously not good to be shown=
 there. Can we remove &#8220;Load Template&#8221;? Because it will initiate=
 a new
 build. Let&#8217;s ask users to click &#8220;Build new image&#8221; to be =
on the Image configuration and click &#8220;Load Template&#8221;.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">We just keep =
&#8220;My Images&#8221; in the last screen (the Image details screen), is i=
t OK?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">And remove &#=
8220;Edit Packages&#8221; and &#8220;Edit Configuration&#8221;, if the buil=
d process is not executed this time. (ditto for &#8220;Save Template&#8221;=
 in 4.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">6. In Josh&#8=
217;s email, FRI 2 image can also be run, though it is an image for real ma=
chine. Can we keep two buttons &#8220;Run&#8221; and &#8220;Deploy&#8221; o=
n the Image details
 screen and let uses decide what he/she wants? I admit an error possibly ha=
ppens if the image doesn&#8217;t match the action, but we just report the e=
rror.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thoughts?<o:p=
></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">--<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Shane<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> Xu, Dongxiao
<br>
<b>Sent:</b> Friday, February 03, 2012 8:57 AM<br>
<b>To:</b> Wang, Shane; Barros Pena, Belen; Lu, Lianhao<br>
<b>Cc:</b> Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; L=
iu, Song; Stewart, David C; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: RFC: Hob 1.2 design<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">One more from me that, Hob may w=
ork as a deploy tool, and in the new movie, the approach is to select &#822=
0;My images&#8221; and then click deploy button. I think normal
 user may not have such knowledge. I am still wondering if adding a &#8220;=
deploy&#8221; button in the tool bar?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">Dongxiao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> Wang, Shane
<br>
<b>Sent:</b> Friday, February 03, 2012 8:26 AM<br>
<b>To:</b> Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao<br>
<b>Cc:</b> Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; L=
iu, Song; Stewart, David C; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: RFC: Hob 1.2 design<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I get one =
more:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">In the Ima=
ge details screen, after opening an image file by clicking &#8220;My images=
&#8221;, we don&#8217;t allow to &#8220;Edit Package&#8221;, I think.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Because wi=
th an image only, we can&#8217;t generate the packages from it, you can&#82=
17;t assume there is a build directory (tmp/), is my understanding correct?=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">--<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Shane<o:p>=
</o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDFSHSMSX102ccrcor_--
