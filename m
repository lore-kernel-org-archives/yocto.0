Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7705AE01217
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 05:54:37 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Feb 2012 05:54:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208,217";a="63740818"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Feb 2012 05:54:29 -0800
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 13:54:03 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.165]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 13:54:02 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, Joshua Lock <josh@linux.intel.com>, 
	"Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: [yocto] Hob 1.2 design - visuals
Thread-Index: AQHM5NbHHh6YUORDy0KS4NiMLZICTw==
Date: Mon, 6 Feb 2012 13:54:01 +0000
Message-ID: <CB558AF2.739A%belen.barros.pena@intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEDE87@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.18.204]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Metthey,
	Mikael" <mikael.metthey@intel.com>
Subject: Re: Hob 1.2 design - visuals
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
X-List-Received-Date: Mon, 06 Feb 2012 13:54:38 -0000
X-Groupsio-MsgNum: 4690
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_CB558AF2739Abelenbarrospenaintelcom_"

--_002_CB558AF2739Abelenbarrospenaintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <94C3175D529D0444B60DF40D38A699C5@intel.com>
Content-Transfer-Encoding: quoted-printable

>>3. Inherit colour scheme from applied OS theme in host computer
>Is it to say we use the default colors from OS, and don't specify any
>color?
>For example, Jessica wants progress bars to be green but in Ubuntu it
>should be orange.
>If so, Belen, I agree with you.

Yes, I think that's what Joshua recommended, and I can see why it makes
sense. Joshua, could you confirm when you have a chance?

If we decide to implement this way, people will need to understand that
this applies to all UI elements without exceptions. Any particular
requests (like Jessica's) could be looked at on a case by case basis.

Cheers

Belen



On 06/02/2012 11:42, "Wang, Shane" <shane.wang@intel.com> wrote:

>Barros Pena, Belen wrote on 2012-02-06:
>
>> Hi all,
>>=20
>> It looks like there are some design implementation principles laid out
>>on
>> the email below. Just to summarise:
>>=20
>> 1. Implement the Hob design with the toolkit provided widgets and OS
>>theme
>> and review which things we might want to enhance later. I understand
>>this
>> excludes icons: we will use the ones provided by the visual design.
>>=20
>> 2. Make sure that all action buttons in windows and dialogues follow up
>> the spacing GNOME rules set by the Human Interface Guidelines at
>> http://developer.gnome.org/hig-book/3.0/index.html.en
>>=20
>> 3. Inherit colour scheme from applied OS theme in host computer
>>=20
>Is it to say we use the default colors from OS, and don't specify any
>color?
>For example, Jessica wants progress bars to be green but in Ubuntu it
>should be orange.
>If so, Belen, I agree with you.
>
>> Shane, Dongxiao: if you have any comments about the above, please let us
>> know.
>>=20
>> Cheers
>>=20
>> Belen

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_002_CB558AF2739Abelenbarrospenaintelcom_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Mon, 06 Feb 2012 13:54:01 GMT";
	modification-date="Mon, 06 Feb 2012 13:54:01 GMT"
Content-ID: <BE8915861681E141931974AAB576983C@intel.com>

User-Agent: Microsoft-MacOutlook/14.14.0.111121
Date: Mon, 6 Feb 2012 11:53:51 +0000
Subject: Re: RFC: Hob 1.2 design
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, "Xu, Dongxiao"
	<dongxiao.xu@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
CC: "Eggleton, Paul" <paul.eggleton@intel.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>,
	"Lock, Joshua" <joshua.lock@intel.com>, "Liu, Song" <song.liu@intel.com>,
	"Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Message-ID: <CB5565F6.72C6%belen.barros.pena@intel.com>
Thread-Topic: RFC: Hob 1.2 design
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDF@SHSMSX102.ccr.corp.intel.com>
Content-Type: multipart/alternative; boundary="B_3411374031_5472995"
MIME-Version: 1.0

--B_3411374031_5472995
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Shane and team,

In general all sounds good. I just have a couple of small comments, which
I've added below.

Belen

From:  "Wang, Shane" <shane.wang@intel.com>
Date:  Fri, 3 Feb 2012 05:29:57 +0000
To:  "Xu, Dongxiao" <dongxiao.xu@intel.com>, "Belen Barros Pena (Intel)"
<belen.barros.pena@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Cc:  "Eggleton, Paul" <paul.eggleton@intel.com>, "Purdie, Richard"
<richard.purdie@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>,
"Lock, Joshua" <joshua.lock@intel.com>, "Liu, Song" <song.liu@intel.com>,
"Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
<yocto@yoctoproject.org>
Subject:  RE: RFC: Hob 1.2 design

Dongxiao and I have a discussion on that again.
=20
Belen, please ignore the issue for the deployment button below, and we have
several suggestions.
=20
1. To make the Packages Screen and the Packages dialog the same.
The Packages Screen is shown after users click =B3Build packages=B2. That is on=
e
step of the process.
However, the content shown in the Package dialog is all what we have built
out last time. It is very possible users start from there and don=B9t want to
go back to the Image configuration screen and click =B3Build Image=B2.

Sorry, I am not sure I understand. What you seem to be saying is that we
will eliminate the 'View packages' button from the Image configuration
screen and the Packages dialogue. Users will access packages information vi=
a
the 'Build packages' option, which will bring them to the Packages screen.
Is this correct?
=20
2. As mentioned in my last email, we want to add =B3Clean=B2 in the GUI. The
reason is the build will fail, say, do_fetch, then we have an option to
allow users to clean what we built out and rebuild. Otherwise, the sstate
could be reused for the next build. Users can do it by running =B3bitbake =ADc
cleanall=B2 in the command line. But we hope to provide this feature in the
GUI.
If you agree the above, then the action =B3Clean=B2 is for a recipe or multiple
recipes, and clicking =B3Clean=B2 will go to the screen at 4:00, since cleaning
includes some tasks.
Then we could make the Recipes dialog to be a screen, do you agree?

Yes: I agree with you. Making Recipes a screen instead of a dialogue seems
like a good solution. However, I am not sure the 'Clean' function should be
in the Recipes screen: it should probably be an option that is displayed
when the build fails. If you select it you go to the screen at 4:00 to
provide information about the cleaning tasks and once they are done, you ge=
t
the Recipes screen ready for you to build again. I think this 'build failed=
'
scenario is very important, and I would like to design it carefully. Would
it be ok if I work on it this week and send you some suggestions?

The other reason is users can view recipes and click =B3Build Packages=B2, no
need go back to the Image configuration screen.
The use case is:=20
1) View Recipes in the Image configuration -> the Recipes screen -> Select
recipes and Build packages -> Log -> the Packages screen =8A
2) View Recipes in the Image configuration -> the Recipes screen -> Select
recipes and Build packages -> Log -> Failure -> Go back to the Recipes
screen -> Clean something -> Log -> the Recipes screen -> Build packages
again -> Log -> Success -> the Packages screen =8A
3) View Recipes in the Image configuration -> the Recipes screen -> Select
recipes -> Go back to the Image configuraion -> =B3Build Image=B2
4) Nothing want to view in the Image configuration after choosing =B3base
image=B2 -> =B3Build packages=B2 -> Log -> the Packages screen =8A
5) Nothing want to view in the Image configuration after choosing =B3base
image=B2 -> =B3Build packages=B2 -> Log -> Failure -> Go back to the Image
configuration -> View Recipes -> the Recipes screen -> Clean something ->
Log -> the Recipe screen -> =8A
6) Nothing want to view in the Image configuration after choosing =B3base
image=B2 -> =B3Build Image=B2 -> Log -> the Image details =8A
and so on=8A

This seems to make sense. Just a small comment about the use case number 3.
I think the Recipes screen should have 2 actions: "build packages" and
"build image", so that users who want to build an image directly from the
Recipes screen don't need to go back to the Image configuration screen in
order to build the image.
=20
3. When build is failed, there is a =B3Back=B2 button. But go back to where is
determined by where you come from.

I'll keep this in mind when designing the 'build failed' scenario.
=20
4. After users open an image by =B3My images=B2, some time there should not be =
a
=B3Save Template=B2 because we don=B9t have build process.
Let=B9s show =B3Save Template=B2 when =B3Congratulations! Your image is ready!=B2 is
shown, OK?

This sounds ok to me. Should we have a 'save as template' option in the
Image configuration screen? Or will we just have it in the Image details
screen when you get there after completing the build process?
=20
5. In the Image details screen, =B3Settings=B2 is obviously not good to be show=
n
there. Can we remove =B3Load Template=B2? Because it will initiate a new build.
Let=B9s ask users to click =B3Build new image=B2 to be on the Image configuration
and click =B3Load Template=B2.
We just keep =B3My Images=B2 in the last screen (the Image details screen), is
it OK?
And remove =B3Edit Packages=B2 and =B3Edit Configuration=B2, if the build process i=
s
not executed this time. (ditto for =B3Save Template=B2 in 4.)

Happy with this.
=20
6. In Josh=B9s email, FRI 2 image can also be run, though it is an image for
real machine. Can we keep two buttons =B3Run=B2 and =B3Deploy=B2 on the Image
details screen and let uses decide what he/she wants? I admit an error
possibly happens if the image doesn=B9t match the action, but we just report
the error.

Not so happy with this one ;) If an option is going to generate an error
when selected, it should not be there at all. GUI's must be defensive: they
must prevent user errors. This is a fundamental principle of interaction
design. We should only present the  'Run' (on qemu) option if the image is
suitable for qemu running. We should only display the 'Deploy' option for
live images. If there is no way to reliably determine what type of image we
are dealing with and which options are suitable for them, the 'Run' and
'Deploy' functionality should not be there at all. Better wait until we fin=
d
a work around.

Having said that, it seems to me that using the file extension to determine
what's the appropriate action for each image should work the vast majority
of times. If someone has changed the extension of the image, well, that
would be an edge case (how likely are people to do that?), and we should no=
t
get into the trap of designing for the edge case, which is what we would be
doing if we were to display both 'run' and 'deploy' for all images.
=20
Thoughts?
Thanks.
--
Shane
=20

From: Xu, Dongxiao=20
Sent: Friday, February 03, 2012 8:57 AM
To: Wang, Shane; Barros Pena, Belen; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu,
Song; Stewart, David C; yocto@yoctoproject.org
Subject: RE: RFC: Hob 1.2 design
=20
One more from me that, Hob may work as a deploy tool, and in the new movie,
the approach is to select =B3My images=B2 and then click deploy button. I think
normal user may not have such knowledge. I am still wondering if adding a
=B3deploy=B2 button in the tool bar?
=20
Thanks,
Dongxiao
=20

From: Wang, Shane=20
Sent: Friday, February 03, 2012 8:26 AM
To: Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu,
Song; Stewart, David C; yocto@yoctoproject.org
Subject: RE: RFC: Hob 1.2 design
=20

I get one more:
=20
In the Image details screen, after opening an image file by clicking =B3My
images=B2, we don=B9t allow to =B3Edit Package=B2, I think.
Because with an image only, we can=B9t generate the packages from it, you
can=B9t assume there is a build directory (tmp/), is my understanding correct=
?
=20
--
Shane



--B_3411374031_5472995
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -=
webkit-line-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px;=
 font-family: Calibri, sans-serif; "><div>Hi Shane and team,</div><div><br>=
</div><div>In general all sounds good. I just have a couple of small commen=
ts, which I've added below.</div><div><br></div><div>Belen</div><div><br></=
div><span id=3D"OLK_SRC_BODY_SECTION"><div style=3D"font-family:Calibri; fo=
nt-size:11pt; text-align:left; color:black; BORDER-BOTTOM: medium none; BOR=
DER-LEFT: medium none; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGH=
T: 0in; BORDER-TOP: #b5c4df 1pt solid; BORDER-RIGHT: medium none; PADDING-T=
OP: 3pt"><span style=3D"font-weight:bold">From: </span> &quot;Wang, Shane&q=
uot; &lt;<a href=3D"mailto:shane.wang@intel.com">shane.wang@intel.com</a>&g=
t;<br><span style=3D"font-weight:bold">Date: </span> Fri, 3 Feb 2012 05:29:=
57 &#43;0000<br><span style=3D"font-weight:bold">To: </span> &quot;Xu, Dong=
xiao&quot; &lt;<a href=3D"mailto:dongxiao.xu@intel.com">dongxiao.xu@intel.c=
om</a>&gt;, &quot;Belen Barros Pena (Intel)&quot; &lt;<a href=3D"mailto:bel=
en.barros.pena@intel.com">belen.barros.pena@intel.com</a>&gt;, &quot;Lu, Li=
anhao&quot; &lt;<a href=3D"mailto:lianhao.lu@intel.com">lianhao.lu@intel.co=
m</a>&gt;<br><span style=3D"font-weight:bold">Cc: </span> &quot;Eggleton, P=
aul&quot; &lt;<a href=3D"mailto:paul.eggleton@intel.com">paul.eggleton@inte=
l.com</a>&gt;, &quot;Purdie, Richard&quot; &lt;<a href=3D"mailto:richard.pu=
rdie@intel.com">richard.purdie@intel.com</a>&gt;, &quot;Zhang, Jessica&quot=
; &lt;<a href=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a=
>&gt;, &quot;Lock, Joshua&quot; &lt;<a href=3D"mailto:joshua.lock@intel.com=
">joshua.lock@intel.com</a>&gt;, &quot;Liu, Song&quot; &lt;<a href=3D"mailt=
o:song.liu@intel.com">song.liu@intel.com</a>&gt;, &quot;Stewart, David C&qu=
ot; &lt;<a href=3D"mailto:david.c.stewart@intel.com">david.c.stewart@intel.=
com</a>&gt;, &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a>&gt;<br><span style=3D"font-weight:bold">Subject: </span> R=
E: RFC: Hob 1.2 design<br></div><div><br></div><div xmlns:v=3D"urn:schemas-=
microsoft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmln=
s:w=3D"urn:schemas-microsoft-com:office:word" xmlns:x=3D"urn:schemas-micros=
oft-com:office:excel" xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoin=
t" xmlns:a=3D"urn:schemas-microsoft-com:office:access" xmlns:dt=3D"uuid:C2F=
41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A2A3-=
00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"#Row=
setSchema" xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" xmlns:ss=
=3D"urn:schemas-microsoft-com:office:spreadsheet" xmlns:c=3D"urn:schemas-mi=
crosoft-com:office:component:spreadsheet" xmlns:odc=3D"urn:schemas-microsof=
t-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmlns:q=3D"http://schemas.xm=
lsoap.org/soap/envelope/" xmlns:rtc=3D"http://microsoft.com/officenet/confe=
rencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://schemas.microsoft.com/repl/"=
 xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" xmlns:=
x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" xmlns:ppda=3D"htt=
p://www.passport.com/NameSpace.xsd" xmlns:ois=3D"http://schemas.microsoft.c=
om/sharepoint/soap/ois/" xmlns:dir=3D"http://schemas.microsoft.com/sharepoi=
nt/soap/directory/" xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" xmlns:d=
sp=3D"http://schemas.microsoft.com/sharepoint/dsp" xmlns:udc=3D"http://sche=
mas.microsoft.com/data/udc" xmlns:xsd=3D"http://www.w3.org/2001/XMLSchema" =
xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts/" x=
mlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns:sp=3D"http://schemas.mi=
crosoft.com/sharepoint/" xmlns:sps=3D"http://schemas.microsoft.com/sharepoi=
nt/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" xmlns:udc=
s=3D"http://schemas.microsoft.com/data/udc/soap" xmlns:udcxf=3D"http://sche=
mas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D"http://schemas.microsof=
t.com/data/udc/parttopart" xmlns:wf=3D"http://schemas.microsoft.com/sharepo=
int/soap/workflow/" xmlns:dsss=3D"http://schemas.microsoft.com/office/2006/=
digsig-setup" xmlns:dssi=3D"http://schemas.microsoft.com/office/2006/digsig=
" xmlns:mdssi=3D"http://schemas.openxmlformats.org/package/2006/digital-sig=
nature" xmlns:mver=3D"http://schemas.openxmlformats.org/markup-compatibilit=
y/2006" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns:=
mrels=3D"http://schemas.openxmlformats.org/package/2006/relationships" xmln=
s:spwp=3D"http://microsoft.com/sharepoint/webpartpages" xmlns:ex12t=3D"http=
://schemas.microsoft.com/exchange/services/2006/types" xmlns:ex12m=3D"http:=
//schemas.microsoft.com/exchange/services/2006/messages" xmlns:pptsl=3D"htt=
p://schemas.microsoft.com/sharepoint/soap/SlideLibrary/" xmlns:spsl=3D"http=
://microsoft.com/webservices/SharePointPortalServer/PublishedLinksService" =
xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><meta name=3D"G=
enerator" content=3D"Microsoft Word 12 (filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--><div lang=3D"ZH-CN" link=3D"blue" vlink=
=3D"purple"><div class=3D"WordSection1"><div><p class=3D"MsoNormal"><span l=
ang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family=
: Calibri, sans-serif; ">Dongxiao and I have a discussion on that again.<o:=
p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "><=
o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=
=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-=
serif; ">Belen, please ignore the issue for the deployment button below, an=
d we have several suggestions.<o:p></o:p></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font=
-family: Calibri, sans-serif; "><o:p>&nbsp;</o:p></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 12=
5); font-family: Calibri, sans-serif; ">1. To make the Packages Screen and =
the Packages dialog the same.<o:p></o:p></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-=
family: Calibri, sans-serif; ">The Packages Screen is shown after users cli=
ck &#8220;Build packages&#8221;. That is one step of the process.<o:p></o:p=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10=
.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">However,=
 the content shown in the Package dialog is all what we have built out last=
 time. It is very possible users start from there and don&#8217;t want
 to go back to the Image configuration screen and click &#8220;Build Image&=
#8221;.</span></p></div></div></div></div></span><div><br></div><div>Sorry,=
 I am not sure I understand. What you seem to be saying is that&nbsp;we wil=
l eliminate the 'View packages' button from the Image configuration screen =
and the Packages dialogue. Users will access packages information via the '=
Build packages' option, which will bring them to the Packages screen. Is th=
is correct?</div><span id=3D"OLK_SRC_BODY_SECTION"><div xmlns:v=3D"urn:sche=
mas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" xmlns:x=3D"urn:schemas-mi=
crosoft-com:office:excel" xmlns:p=3D"urn:schemas-microsoft-com:office:power=
point" xmlns:a=3D"urn:schemas-microsoft-com:office:access" xmlns:dt=3D"uuid=
:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A=
2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"=
#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" xmlns=
:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" xmlns:c=3D"urn:schemas=
-microsoft-com:office:component:spreadsheet" xmlns:odc=3D"urn:schemas-micro=
soft-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft-com:office:activatio=
n" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmlns:q=3D"http://schemas=
.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://microsoft.com/officenet/co=
nferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://schemas.microsoft.com/rep=
l/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" xml=
ns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" xmlns:ppda=3D"=
http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"http://schemas.microsof=
t.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schemas.microsoft.com/share=
point/soap/directory/" xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" xmln=
s:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" xmlns:udc=3D"http://s=
chemas.microsoft.com/data/udc" xmlns:xsd=3D"http://www.w3.org/2001/XMLSchem=
a" xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts/=
" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns:sp=3D"http://schemas=
.microsoft.com/sharepoint/" xmlns:sps=3D"http://schemas.microsoft.com/share=
point/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" xmlns:=
udcs=3D"http://schemas.microsoft.com/data/udc/soap" xmlns:udcxf=3D"http://s=
chemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D"http://schemas.micro=
soft.com/data/udc/parttopart" xmlns:wf=3D"http://schemas.microsoft.com/shar=
epoint/soap/workflow/" xmlns:dsss=3D"http://schemas.microsoft.com/office/20=
06/digsig-setup" xmlns:dssi=3D"http://schemas.microsoft.com/office/2006/dig=
sig" xmlns:mdssi=3D"http://schemas.openxmlformats.org/package/2006/digital-=
signature" xmlns:mver=3D"http://schemas.openxmlformats.org/markup-compatibi=
lity/2006" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xml=
ns:mrels=3D"http://schemas.openxmlformats.org/package/2006/relationships" x=
mlns:spwp=3D"http://microsoft.com/sharepoint/webpartpages" xmlns:ex12t=3D"h=
ttp://schemas.microsoft.com/exchange/services/2006/types" xmlns:ex12m=3D"ht=
tp://schemas.microsoft.com/exchange/services/2006/messages" xmlns:pptsl=3D"=
http://schemas.microsoft.com/sharepoint/soap/SlideLibrary/" xmlns:spsl=3D"h=
ttp://microsoft.com/webservices/SharePointPortalServer/PublishedLinksServic=
e" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><div lang=3D=
"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"WordSection1"><div><p =
class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: rg=
b(31, 73, 125); font-family: Calibri, sans-serif; "><o:p></o:p></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: =
rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o:p>&nbsp;</o:p></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt;=
 color: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">2. As mention=
ed in my last email, we want to add &#8220;Clean&#8221; in the GUI. The rea=
son is the build will fail, say, do_fetch, then we have an option to allow
 users to clean what we built out and rebuild. Otherwise, the sstate could =
be reused for the next build. Users can do it by running &#8220;bitbake &#8=
211;c cleanall&#8221; in the command line. But we hope to provide this feat=
ure in the GUI.<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibr=
i, sans-serif; ">If you agree the above, then the action &#8220;Clean&#8221=
; is for a recipe or multiple recipes, and clicking &#8220;Clean&#8221; wil=
l go to the screen at 4:00, since cleaning
 includes some tasks.<o:p></o:p></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: =
Calibri, sans-serif; ">Then we could make the Recipes dialog to be a screen=
, do you agree?</span></p></div></div></div></div></span><div><br></div><di=
v>Yes: I agree with you. Making Recipes a screen instead of a dialogue seem=
s like a good solution. However, I am not sure the 'Clean' function should =
be in the Recipes screen: it should probably be an option that is displayed=
 when the build fails. If you select it you go to the screen at 4:00 to pro=
vide information about the cleaning tasks and once they are done, you get t=
he Recipes screen ready for you to build again. I think this 'build failed'=
 scenario is very important, and I would like to design it carefully. Would=
 &nbsp;it be ok if I work on it this week and send you some suggestions?</d=
iv><div><br></div><span id=3D"OLK_SRC_BODY_SECTION"><div xmlns:v=3D"urn:sch=
emas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"=
 xmlns:w=3D"urn:schemas-microsoft-com:office:word" xmlns:x=3D"urn:schemas-m=
icrosoft-com:office:excel" xmlns:p=3D"urn:schemas-microsoft-com:office:powe=
rpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:access" xmlns:dt=3D"uui=
d:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-=
A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D=
"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" xmln=
s:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" xmlns:c=3D"urn:schema=
s-microsoft-com:office:component:spreadsheet" xmlns:odc=3D"urn:schemas-micr=
osoft-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft-com:office:activati=
on" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmlns:q=3D"http://schema=
s.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://microsoft.com/officenet/c=
onferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://schemas.microsoft.com/re=
pl/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" xm=
lns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" xmlns:ppda=3D=
"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"http://schemas.microso=
ft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schemas.microsoft.com/shar=
epoint/soap/directory/" xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" xml=
ns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" xmlns:udc=3D"http://=
schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://www.w3.org/2001/XMLSche=
ma" xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts=
/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns:sp=3D"http://schema=
s.microsoft.com/sharepoint/" xmlns:sps=3D"http://schemas.microsoft.com/shar=
epoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" xmlns=
:udcs=3D"http://schemas.microsoft.com/data/udc/soap" xmlns:udcxf=3D"http://=
schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D"http://schemas.micr=
osoft.com/data/udc/parttopart" xmlns:wf=3D"http://schemas.microsoft.com/sha=
repoint/soap/workflow/" xmlns:dsss=3D"http://schemas.microsoft.com/office/2=
006/digsig-setup" xmlns:dssi=3D"http://schemas.microsoft.com/office/2006/di=
gsig" xmlns:mdssi=3D"http://schemas.openxmlformats.org/package/2006/digital=
-signature" xmlns:mver=3D"http://schemas.openxmlformats.org/markup-compatib=
ility/2006" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xm=
lns:mrels=3D"http://schemas.openxmlformats.org/package/2006/relationships" =
xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpages" xmlns:ex12t=3D"=
http://schemas.microsoft.com/exchange/services/2006/types" xmlns:ex12m=3D"h=
ttp://schemas.microsoft.com/exchange/services/2006/messages" xmlns:pptsl=3D=
"http://schemas.microsoft.com/sharepoint/soap/SlideLibrary/" xmlns:spsl=3D"=
http://microsoft.com/webservices/SharePointPortalServer/PublishedLinksServi=
ce" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><div lang=
=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"WordSection1"><div>=
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color:=
 rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o:p></o:p></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; colo=
r: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">The other reason i=
s users can view recipes and click &#8220;Build Packages&#8221;, no need go=
 back to the Image configuration screen.<o:p></o:p></span></p><p class=3D"M=
soNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, =
125); font-family: Calibri, sans-serif; ">The use case is:
<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"fon=
t-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; =
">1) View Recipes in the Image configuration -&gt; the Recipes screen -&gt;=
 Select recipes and Build packages -&gt; Log -&gt; the Packages screen &#82=
30;<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-seri=
f; ">2) View Recipes in the Image configuration -&gt; the Recipes screen -&=
gt; Select recipes and Build packages -&gt; Log -&gt; Failure -&gt; Go back=
 to the Recipes
 screen -&gt; Clean something -&gt; Log -&gt; the Recipes screen -&gt; Buil=
d packages again -&gt; Log -&gt; Success -&gt; the Packages screen &#8230;<=
o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font=
-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "=
>3) View Recipes in the Image configuration -&gt; the Recipes screen -&gt; =
Select recipes -&gt; Go back to the Image configuraion -&gt; &#8220;Build I=
mage&#8221;<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" s=
tyle=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, s=
ans-serif; ">4) Nothing want to view in the Image configuration after choos=
ing &#8220;base image&#8221; -&gt; &#8220;Build packages&#8221; -&gt; Log -=
&gt; the Packages screen &#8230;<o:p></o:p></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); fo=
nt-family: Calibri, sans-serif; ">5) Nothing want to view in the Image conf=
iguration after choosing &#8220;base image&#8221; -&gt; &#8220;Build packag=
es&#8221; -&gt; Log -&gt; Failure -&gt; Go back to the Image configuration
 -&gt; View Recipes -&gt; the Recipes screen -&gt; Clean something -&gt; Lo=
g -&gt; the Recipe screen -&gt; &#8230;<o:p></o:p></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 1=
25); font-family: Calibri, sans-serif; ">6) Nothing want to view in the Ima=
ge configuration after choosing &#8220;base image&#8221; -&gt; &#8220;Build=
 Image&#8221; -&gt; Log -&gt; the Image details &#8230;<o:p></o:p></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10.5pt; colo=
r: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">and so on&#8230;</=
span></p></div></div></div></div></span><div><br></div><div>This seems to m=
ake sense. Just a small comment about the use case number 3. I think the Re=
cipes screen should have 2 actions: &quot;build packages&quot; and &quot;bu=
ild image&quot;, so that users who want to build an image directly from the=
 Recipes screen don't need to go back to the Image configuration screen in =
order to build the image.&nbsp;</div><span id=3D"OLK_SRC_BODY_SECTION"><div=
 xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microsoft=
-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xmlns=
:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-micros=
oft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:acce=
ss" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid:=
BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-com=
:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:off=
ice:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" xm=
lns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:odc=
=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft=
-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmln=
s:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://micro=
soft.com/officenet/conferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://sche=
mas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoin=
t/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel/200=
3/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"ht=
tp://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schema=
s.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3.org/2=
000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" =
xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://www=
.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sharepoin=
t/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns=
:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://schema=
s.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSc=
hema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" xm=
lns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D=
"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http://schem=
as.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://schemas.mi=
crosoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.microsof=
t.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformats.org/=
package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlformats=
.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.com/off=
ice/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/package/=
2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpa=
ges" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/typ=
es" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/mess=
ages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideLibr=
ary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalServer=
/PublishedLinksService" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC=
-html40"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"W=
ordSection1"><div><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o=
:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-=
size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">=
<o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=
=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-=
serif; ">3. When build is failed, there is a &#8220;Back&#8221; button. But=
 go back to where is determined by where you come from.</span></p></div></d=
iv></div></div></span><div><br></div><div>I'll keep this in mind when desig=
ning the 'build failed' scenario.</div><span id=3D"OLK_SRC_BODY_SECTION"><d=
iv xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microso=
ft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xml=
ns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-micr=
osoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:ac=
cess" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uui=
d:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-c=
om:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:o=
ffice:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" =
xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:od=
c=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-microsof=
t-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xml=
ns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://micr=
osoft.com/officenet/conferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://sch=
emas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoi=
nt/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel/20=
03/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"h=
ttp://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schem=
as.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3.org/=
2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp"=
 xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://ww=
w.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sharepoi=
nt/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmln=
s:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://schem=
as.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLS=
chema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" x=
mlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=
=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http://sc=
hemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://schemas=
.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.micro=
soft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformats.o=
rg/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlform=
ats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.com/=
office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/packa=
ge/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpar=
tpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/=
types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/m=
essages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideL=
ibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalSer=
ver/PublishedLinksService" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/=
REC-html40"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=
=3D"WordSection1"><div><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"fo=
nt-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif;=
 "><o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-seri=
f; "><o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" s=
tyle=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, s=
ans-serif; ">4. After users open an image by &#8220;My images&#8221;, some =
time there should not be a &#8220;Save Template&#8221; because we don&#8217=
;t have build process.<o:p></o:p></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family:=
 Calibri, sans-serif; ">Let&#8217;s show &#8220;Save Template&#8221; when &=
#8220;Congratulations! Your image is ready!&#8221; is shown, OK?</span></p>=
</div></div></div></div></span><div><br></div><div>This sounds ok to me. Sh=
ould we have a 'save as template' option in the Image configuration screen?=
 Or will we just have it in the Image details screen when you get there aft=
er completing the build process?</div><span id=3D"OLK_SRC_BODY_SECTION"><di=
v xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microsof=
t-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xmln=
s:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-micro=
soft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:acc=
ess" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid=
:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-co=
m:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:of=
fice:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" x=
mlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:odc=
=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft=
-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmln=
s:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://micro=
soft.com/officenet/conferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://sche=
mas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoin=
t/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel/200=
3/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"ht=
tp://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schema=
s.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3.org/2=
000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" =
xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://www=
.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sharepoin=
t/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns=
:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://schema=
s.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSc=
hema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" xm=
lns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D=
"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http://schem=
as.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://schemas.mi=
crosoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.microsof=
t.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformats.org/=
package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlformats=
.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.com/off=
ice/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/package/=
2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpa=
ges" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/typ=
es" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/mess=
ages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideLibr=
ary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalServer=
/PublishedLinksService" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC=
-html40"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"W=
ordSection1"><div><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o=
:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-=
size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">=
<o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=
=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-=
serif; ">5. In the Image details screen, &#8220;Settings&#8221; is obviousl=
y not good to be shown there. Can we remove &#8220;Load Template&#8221;? Be=
cause it will initiate a new
 build. Let&#8217;s ask users to click &#8220;Build new image&#8221; to be =
on the Image configuration and click &#8220;Load Template&#8221;.<o:p></o:p=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10=
.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">We just =
keep &#8220;My Images&#8221; in the last screen (the Image details screen),=
 is it OK?<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" st=
yle=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sa=
ns-serif; ">And remove &#8220;Edit Packages&#8221; and &#8220;Edit Configur=
ation&#8221;, if the build process is not executed this time. (ditto for &#=
8220;Save Template&#8221; in 4.)</span></p></div></div></div></div></span><=
div><br></div><div>Happy with this.</div><span id=3D"OLK_SRC_BODY_SECTION">=
<div xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" x=
mlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-mi=
crosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:=
access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"u=
uid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft=
-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com=
:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet=
" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:=
odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micros=
oft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" x=
mlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://mi=
crosoft.com/officenet/conferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://s=
chemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/sharep=
oint/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel/=
2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D=
"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://sch=
emas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3.or=
g/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/ds=
p" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://=
www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sharep=
oint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xm=
lns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://sch=
emas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XM=
LSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap"=
 xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=
=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http://sc=
hemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://schemas=
.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.micro=
soft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformats.o=
rg/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlform=
ats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.com/=
office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/packa=
ge/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpar=
tpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/=
types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/m=
essages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideL=
ibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalSer=
ver/PublishedLinksService" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/=
REC-html40"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=
=3D"WordSection1"><div><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"fo=
nt-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif;=
 "><o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-seri=
f; "><o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" s=
tyle=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, s=
ans-serif; ">6. In Josh&#8217;s email, FRI 2 image can also be run, though =
it is an image for real machine. Can we keep two buttons &#8220;Run&#8221; =
and &#8220;Deploy&#8221; on the Image details
 screen and let uses decide what he/she wants? I admit an error possibly ha=
ppens if the image doesn&#8217;t match the action, but we just report the e=
rror.</span></p></div></div></div></div></span><div><br></div><div>Not so h=
appy with this one ;) If an option is going to generate an error when selec=
ted, it should not be there at all. GUI's must be defensive: they must prev=
ent user errors. This is a fundamental principle of interaction design. We =
should only present the &nbsp;'Run' (on qemu) option if the image is suitab=
le for qemu running. We should only display the 'Deploy' option for live im=
ages. If there is no way to reliably determine what type of image we are de=
aling with and which options are suitable for them, the 'Run' and 'Deploy' =
functionality should not be there at all. Better wait until we find a work =
around.</div><div><br></div><div>Having said that, it seems to me that usin=
g the file extension to determine what's the appropriate action for each im=
age should work the vast majority of times. If someone has changed the exte=
nsion of the image, well, that would be an edge case (how likely are people=
 to do that?), and we should not get into the trap of designing for the edg=
e case, which is what we would be doing if we were to display both 'run' an=
d 'deploy' for all images.</div><span id=3D"OLK_SRC_BODY_SECTION"><div xmln=
s:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:=
office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xmlns:x=3D=
"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-microsoft-c=
om:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office:access" x=
mlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"uuid:BDC6E=
3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsoft-com:rows=
et" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-com:office:p=
ublisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" xmlns:c=
=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:odc=3D"ur=
n:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-microsoft-com:o=
ffice:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" xmlns:q=3D=
"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://microsoft.c=
om/officenet/conferencing" xmlns:d=3D"DAV:" xmlns:repl=3D"http://schemas.mi=
crosoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap=
/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml"=
 xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=3D"http://s=
chemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://schemas.micr=
osoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3.org/2000/09=
/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" xmlns:=
udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http://www.w3.or=
g/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap=
/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" xmlns:sp=3D=
"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://schemas.micr=
osoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-i=
nstance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" xmlns:ud=
cxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udcp2p=3D"http:=
//schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http://schemas.mic=
rosoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://schemas.microsof=
t.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.microsoft.com/=
office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformats.org/packag=
e/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlformats.org/m=
arkup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.com/office/20=
04/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/package/2006/r=
elationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpages" x=
mlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/types" xm=
lns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/messages" =
xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideLibrary/" =
xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalServer/Publi=
shedLinksService" xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html4=
0"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"WordSec=
tion1"><div><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: 10=
.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o:p></o=
:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size: =
10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; "><o:p>&=
nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN" style=3D"fon=
t-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-serif; =
">Thoughts?<o:p></o:p></span></p></div><p class=3D"MsoNormal"><span lang=3D=
"EN-US" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: C=
alibri, sans-serif; ">Thanks.<o:p></o:p></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); fo=
nt-family: Calibri, sans-serif; ">--<o:p></o:p></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb(31, 73, 1=
25); font-family: Calibri, sans-serif; ">Shane<o:p></o:p></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb=
(31, 73, 125); font-family: Calibri, sans-serif; "><o:p>&nbsp;</o:p></span>=
</p><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm =
0cm 4.0pt"><div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;pa=
dding:3.0pt 0cm 0cm 0cm"><p class=3D"MsoNormal"><b><span lang=3D"EN-US" sty=
le=3D"font-size: 10pt; font-family: Tahoma, sans-serif; ">From:</span></b><=
span lang=3D"EN-US" style=3D"font-size: 10pt; font-family: Tahoma, sans-ser=
if; "> Xu, Dongxiao
<br><b>Sent:</b> Friday, February 03, 2012 8:57 AM<br><b>To:</b> Wang, Shan=
e; Barros Pena, Belen; Lu, Lianhao<br><b>Cc:</b> Eggleton, Paul; Purdie, Ri=
chard; Zhang, Jessica; Lock, Joshua; Liu, Song; Stewart, David C; <a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>Subject=
:</b> RE: RFC: Hob 1.2 design<o:p></o:p></span></p></div></div><p class=3D"=
MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US" style=3D"font-size: 10pt; color: blue; font-fa=
mily: 'Courier New'; ">One more from me that, Hob may work as a deploy tool=
, and in the new movie, the approach is to select &#8220;My images&#8221; a=
nd then click deploy button. I think normal
 user may not have such knowledge. I am still wondering if adding a &#8220;=
deploy&#8221; button in the tool bar?<o:p></o:p></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US" style=3D"font-size: 10pt; color: blue; font-fam=
ily: 'Courier New'; "><o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US" style=3D"font-size: 10pt; color: blue; font-family: 'Cou=
rier New'; ">Thanks,<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-size: 10pt; color: blue; font-family: 'Courier New=
'; ">Dongxiao<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US" style=3D"font-size: 10pt; color: blue; font-family: 'Courier New'; "><o=
:p>&nbsp;</o:p></span></p><div style=3D"border:none;border-left:solid blue =
1.5pt;padding:0cm 0cm 0cm 4.0pt"><div><div style=3D"border:none;border-top:=
solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><p class=3D"MsoNormal"><b><s=
pan lang=3D"EN-US" style=3D"font-size: 10pt; font-family: Tahoma, sans-seri=
f; ">From:</span></b><span lang=3D"EN-US" style=3D"font-size: 10pt; font-fa=
mily: Tahoma, sans-serif; "> Wang, Shane
<br><b>Sent:</b> Friday, February 03, 2012 8:26 AM<br><b>To:</b> Wang, Shan=
e; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao<br><b>Cc:</b> Eggleton, Pa=
ul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Song; Stewart, Davi=
d C; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r><b>Subject:</b> RE: RFC: Hob 1.2 design<o:p></o:p></span></p></div></div>=
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p><di=
v><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; c=
olor: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">I get one more:=
<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri, sans-seri=
f; "><o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family: Calibri=
, sans-serif; ">In the Image details screen, after opening an image file by=
 clicking &#8220;My images&#8221;, we don&#8217;t allow to &#8220;Edit Pack=
age&#8221;, I think.<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb(31, 73, 125); font-family=
: Calibri, sans-serif; ">Because with an image only, we can&#8217;t generat=
e the packages from it, you can&#8217;t assume there is a build directory (=
tmp/), is my understanding correct?<o:p></o:p></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb(31, 73, 12=
5); font-family: Calibri, sans-serif; "><o:p>&nbsp;</o:p></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; color: rgb=
(31, 73, 125); font-family: Calibri, sans-serif; ">--<o:p></o:p></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size: 10.5pt; col=
or: rgb(31, 73, 125); font-family: Calibri, sans-serif; ">Shane<o:p></o:p><=
/span></p></div></div></div></div></div></div></span></body></html>

--B_3411374031_5472995--

--_002_CB558AF2739Abelenbarrospenaintelcom_--
