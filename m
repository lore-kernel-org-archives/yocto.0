Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B18C7E0091A; Mon, 18 Nov 2019 09:59:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B690E00848
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 09:59:51 -0800 (PST)
Received: by mail-pl1-f178.google.com with SMTP id q18so6502889pls.5
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 09:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=eIr4e39DbmJsDA7rRrgS1B8GvHe69YFby4qc5PQgp6s=;
	b=ofnXNo2FNBBgKbdXboEPu/fELyGC1ojI2G+Mbzf7Phs74zZcvQeo8z/2Obi3zRYC99
	AYvwTo+9lvVRxQVuYUit7jug/Zsz9Fwr2OyzY4/vV56DEtw/fF6sIL6iJuy4F6W5ZWzg
	ua5IaADKahRooK/9Sjr+dlkTOQ+xi4sWdcFf/r2Gc+rGdAI/fCE122ljwkLTGyhzvULD
	4RqnSKFSyZrC5h/Xuy0s8TwlesJcikXZuLVj+0MS7z8EIu4Z3qYCItxEq5LYChMx8jK5
	6iJt3c9v+Wm7+bFv1VpPNIH28RnpJD6djNyOs4Rok4zgr7vVDj4h0mOXnc8QzMWOXttf
	O8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=eIr4e39DbmJsDA7rRrgS1B8GvHe69YFby4qc5PQgp6s=;
	b=PCqqps+sCzw7ug4vjAScLKsoCwQdbZNL9QxmXYhc8r3TmI7xxJ8gLIqYUlaDPQKw4u
	cX3qN4mEMH4r72D9hAZFkrusZZVE0Z3RymaSKlHHTg99eAvaFGbmftg9mon5bKISGURb
	mWQ/GRWUng5lgdSvzmtjvN8/pM7Gxa4kbUHmbuTAq3Egq14emeInO1TZtHHZF4DdqKZC
	pBlM+/TamqjGHqQW49+S4LHNSzXQrY9SVhgVWblTTh/CjrLm27nYpSTeIdVB5TEPTOPW
	pyU1HmT8auzmqFla21Z9k1t/nc9oIXf5npktI4DtJc7nvEzHKpL3ZHQiOU1TkYeK9wyd
	7bjA==
X-Gm-Message-State: APjAAAVpR3NcUMh21AYDDROt3MLYybZaDS6lvbKIQS2imlOiuXELMsXf
	DjgAwbtCOx9DIo2KSUUG4RKGCMHk
X-Google-Smtp-Source: APXvYqwLmMlEZTMtW7LZGJfnHwpUO5IUFhTHtp/kyZ3dXt5YnQ76i40wxpZLwKHPs4J0W245z1K7SQ==
X-Received: by 2002:a17:90a:a40f:: with SMTP id
	y15mr314621pjp.106.1574099990827; 
	Mon, 18 Nov 2019 09:59:50 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	k103sm90677pje.16.2019.11.18.09.59.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Nov 2019 09:59:50 -0800 (PST)
From: "Stephen K Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Date: Mon, 18 Nov 2019 09:59:49 -0800
Message-ID: <01de01d59e39$f91ba280$eb52e780$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQD+CBHCTkgwD1QMKMcdBeZWiogSMA==
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
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
X-List-Received-Date: Mon, 18 Nov 2019 17:59:52 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01DF_01D59DF6.EAF8FEC0"
Content-Language: en-us

------=_NextPart_000_01DF_01D59DF6.EAF8FEC0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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
currently 298 unassigned or newcomer bugs.

=20

We're hoping people may be able to spare some time now and again to help =
out with these.  Bugs are split into two types, "true bugs" where things =
don't work as they should and "enhancements" which are features we'd =
want to add to the system.  There are also roughly four different =
"priority" classes right now, =E2=80=9C3.1=E2=80=9D, =E2=80=9C3.2, =
"3.99" and "Future", the more pressing/urgent issues being in "3.1" and =
then =E2=80=9C3.2=E2=80=9D.

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

Thanks,

Stephen K. Jolley

Yocto Project Program Manager

7867 SW Bayberry Dr., Beaverton, OR 97007

*    Cell:                (208) 244-4460

* Email:                 s <mailto:stephen.k.jolley@intel.com> =
jolley.yp.pm@gmail.com <mailto:jolley.yp.pm@gmail.com>=20


------=_NextPart_000_01DF_01D59DF6.EAF8FEC0
Content-Type: text/html;
	boundary="----=_NextPart_000_00E2_01D5992A.5C027A00";
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
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
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>All,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>The triage =
team is starting to try and collect up and classify bugs which a =
newcomer to the project would be able to work on in a way which means =
people can find them. They're being listed on the triage page under the =
appropriate heading:<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal><a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs"><spa=
n style=3D'font-family:"Times New =
Roman",serif;color:#0563C1'>https://wiki.yoctoproject.org/wiki/Bug_Triage=
#Newcomer_Bugs</span></a><o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>The idea is =
these bugs should be straight forward for a person to help work on who =
doesn't have deep experience with the project.&nbsp; If anyone can help, =
please take ownership of the bug and send patches!&nbsp; If anyone needs =
help/advice there are people on irc who can likely do so, or some of the =
more experienced contributors will likely be happy to help =
too.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Also, the triage team meets weekly and does its best =
to handle the bugs reported into the Bugzilla. The number of people =
attending that meeting has fallen, as have the number of people =
available to help fix bugs. One of the things we hear users report is =
they don't know how to help. We (the triage team) are therefore going to =
start reporting out the currently 298 unassigned or newcomer =
bugs.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>We're hoping people may be able to spare some time now =
and again to help out with these.&nbsp; Bugs are split into two types, =
&quot;true bugs&quot; where things don't work as they should and =
&quot;enhancements&quot; which are features we'd want to add to the =
system.&nbsp; There are also roughly four different &quot;priority&quot; =
classes right now, =E2=80=9C3.1=E2=80=9D, =E2=80=9C3.2, &quot;3.99&quot; =
and &quot;Future&quot;, the more pressing/urgent issues being in =
&quot;3.1&quot; and then =E2=80=9C3.2=E2=80=9D.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>Please =
review this link and if a bug is something you would be able to help =
with either take ownership of the bug, or send me (<a =
href=3D"mailto:sjolley.yp.pm@gmail.com"><span =
style=3D'font-family:"Times New =
Roman",serif;color:#0563C1'>sjolley.yp.pm@gmail.com</span></a>) an =
e-mail with the bug number you would like and I will assign it to you =
(please make sure you have a Bugzilla account).&nbsp; The list is at: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newco=
mer_Bugs"><span =
style=3D'color:windowtext;text-decoration:none'>https://wiki.yoctoproject=
.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs</span></a><o:p></o:p></p=
><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div><div><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><span =
style=3D'font-size:16.0pt;color:purple'>Stephen K. =
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
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>&nbsp;&nbsp;&nbsp;&nbsp;</span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif",serif'>(208) =
244-4460</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-im=
age:initial;background-position:initial;background-repeat:initial'><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>*</span><span =
style=3D'font-size:9.0pt'>&nbsp;</span><b><span lang=3DFR =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><span =
style=3D'color:#1155CC'><a href=3D"mailto:stephen.k.jolley@intel.com" =
target=3D"_blank">s</a><a href=3D"mailto:jolley.yp.pm@gmail.com" =
target=3D"_blank">jolley.yp.pm@gmail.com</a></span></u></span><o:p></o:p>=
</p></div></div></div></div></div></body></html>

------=_NextPart_000_01DF_01D59DF6.EAF8FEC0--
