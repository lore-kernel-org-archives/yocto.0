Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E53E9E00D4A; Thu,  3 Oct 2019 09:34:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Oct 2019 09:34:49 PDT
Received: from cdptpa-cmomta02.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ACD0E00B8A
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 09:34:49 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id G42ziY85a0aRcG432ieI7j; Thu, 03 Oct 2019 16:33:49 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: "'Stephen K Jolley'" <sjolley.yp.pm@gmail.com>,
	<yocto@yoctoproject.org>
Date: Thu, 3 Oct 2019 09:33:51 -0700
Message-ID: <00ce01d57a08$590d5270$0b27f750$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdV6CFb/xlO+iPBGRbqqtRLC4HseSw==
X-CMAE-Envelope: MS4wfFjXB0NHvOWpKqXIu8Zg0nqrltgKUwIxU432S2dRW/MmRQltfgXhlv7a0P9CbTiloD3cSRqNsbhpNGtOaQcx3oCfb/MWVYYcmiTbdVXKDBbns3FSwger
	8WDYMeVSO2YLDBcCSqdCRG267hss2IWB5dYfw+2QURyUCGyFg/G+ODboeq9dSdTcxNYOvknDsLYuWw==
Subject: Re: newcomers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Oct 2019 16:34:51 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00CF_01D579CD.ACAF16B0"
Content-Language: en-us

------=_NextPart_000_00CF_01D579CD.ACAF16B0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

How would a newcomer get started?

=20

Is there an FAQ or Wiki that gives a developer overview of the project, =
patch submission process, etc.?

=20

It=E2=80=99s hard to jump on to the moving train=E2=80=A6

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Stephen K Jolley
Sent: Monday, September 30, 2019 8:50 AM
To: openembedded-core@lists.openembedded.org; yocto@yoctoproject.org
Subject: [yocto] (no subject)

=20

All,

=20

The triage team is starting to try and collect up and classify bugs =
which a newcomer to the project would be able to work on in a way which =
means people can find them. They're being listed on the triage page =
under the appropriate heading:

=20

 <https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs> =
https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs

=20

The idea is these bugs should be straight forward for a person to help =
work on who doesn't have deep experience with the project.  If anyone =
can help, please take ownership of the bug and send patches!  If anyone =
needs help/advice there are people on irc who can likely do so, or some =
of the more experienced contributors will likely be happy to help too.

=20

Also, the triage team meets weekly and does its best to handle the bugs =
reported into the Bugzilla. The number of people attending that meeting =
has fallen, as have the number of people available to help fix bugs. One =
of the things we hear users report is they don't know how to help. We =
(the triage team) are therefore going to start reporting out the =
currently 309 unassigned or newcomer bugs.

=20

We're hoping people may be able to spare some time now and again to help =
out with these.  Bugs are split into two types, "true bugs" where things =
don't work as they should and "enhancements" which are features we'd =
want to add to the system.  There are also roughly four different =
"priority" classes right now, =E2=80=9C2.8=E2=80=9D, =
=E2=80=9C2.9=E2=80=99, "2.99" and "Future", the more pressing/urgent =
issues being in "2.8" and then =E2=80=9C2.9=E2=80=9D.

=20

Please review this link and if a bug is something you would be able to =
help with either take ownership of the bug, or send me ( =
<mailto:sjolley.yp.pm@gmail.com> sjolley.yp.pm@gmail.com) an e-mail with =
the bug number you would like and I will assign it to you (please make =
sure you have a Bugzilla account).  The list is at:  =
<https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bug=
s> =
https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs=


=20

--=20

Thanks,

=20

Stephen K. Jolley

Yocto Project Program Manager

7867 SW Bayberry Dr., Beaverton, OR 97007

*    Cell:                (208) 244-4460

* Email:                 s <mailto:stephen.k.jolley@intel.com> =
jolley.yp.pm@gmail.com <mailto:jolley.yp.pm@gmail.com>=20


------=_NextPart_000_00CF_01D579CD.ACAF16B0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>How would a newcomer get started?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Is there an FAQ or Wiki that gives a developer overview of the project, =
patch submission process, etc.?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>It=E2=80=99s hard to jump on to the moving =
train=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid =
blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Stephen K Jolley<br><b>Sent:</b> Monday, September =
30, 2019 8:50 AM<br><b>To:</b> openembedded-core@lists.openembedded.org; =
yocto@yoctoproject.org<br><b>Subject:</b> [yocto] (no =
subject)<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>All,<o:p></o:=
p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>The triage =
team is starting to try and collect up and classify bugs which a =
newcomer to the project would be able to work on in a way which means =
people can find them. They're being listed on the triage page under the =
appropriate heading:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs"><spa=
n =
style=3D'color:#0563C1'>https://wiki.yoctoproject.org/wiki/Bug_Triage#New=
comer_Bugs</span></a><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>The idea is =
these bugs should be straight forward for a person to help work on who =
doesn't have deep experience with the project.&nbsp; If anyone can help, =
please take ownership of the bug and send patches!&nbsp; If anyone needs =
help/advice there are people on irc who can likely do so, or some of the =
more experienced contributors will likely be happy to help =
too.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Also, the =
triage team meets weekly and does its best to handle the bugs reported =
into the Bugzilla. The number of people attending that meeting has =
fallen, as have the number of people available to help fix bugs. One of =
the things we hear users report is they don't know how to help. We (the =
triage team) are therefore going to start reporting out the currently =
309 unassigned or newcomer bugs.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>We're hoping =
people may be able to spare some time now and again to help out with =
these.&nbsp; Bugs are split into two types, &quot;true bugs&quot; where =
things don't work as they should and &quot;enhancements&quot; which are =
features we'd want to add to the system.&nbsp; There are also roughly =
four different &quot;priority&quot; classes right now, =
=E2=80=9C2.8=E2=80=9D, =E2=80=9C2.9=E2=80=99, &quot;2.99&quot; and =
&quot;Future&quot;, the more pressing/urgent issues being in =
&quot;2.8&quot; and then =E2=80=9C2.9=E2=80=9D.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>&nbsp;<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Please =
review this link and if a bug is something you would be able to help =
with either take ownership of the bug, or send me (<a =
href=3D"mailto:sjolley.yp.pm@gmail.com"><span =
style=3D'color:#0563C1'>sjolley.yp.pm@gmail.com</span></a>) an e-mail =
with the bug number you would like and I will assign it to you (please =
make sure you have a Bugzilla account).&nbsp; The list is at: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newco=
mer_Bugs"><span =
style=3D'color:#0563C1'>https://wiki.yoctoproject.org/wiki/Bug_Triage#Una=
ssigned_or_Newcomer_Bugs</span></a><o:p></o:p></span></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal>-- =
<o:p></o:p></p><div><div><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Arial",sans-serif'>Thanks,</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><span =
style=3D'font-family:"Arial",sans-serif'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><b><i>=
<span style=3D'font-size:16.0pt;color:purple'>Stephen K. =
Jolley</span></i></b><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><b><sp=
an style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager</span></b><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><b><sp=
an style=3D'font-family:"Courier New";color:fuchsia'>7867 SW Bayberry =
Dr., Beaverton, OR 97007</span></b><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 =
style=3D'font-size:9.0pt;color:teal'>&nbsp;&nbsp;&nbsp;&nbsp;</span><b><s=
pan style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt'>(208) 244-4460</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>*&nbsp;</span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><span =
style=3D'color:#1155CC'><a href=3D"mailto:stephen.k.jolley@intel.com" =
target=3D"_blank">s</a><a href=3D"mailto:jolley.yp.pm@gmail.com" =
target=3D"_blank">jolley.yp.pm@gmail.com</a></span></u></span><o:p></o:p>=
</p></div></div></div></div></div></div></div></body></html>

------=_NextPart_000_00CF_01D579CD.ACAF16B0--
