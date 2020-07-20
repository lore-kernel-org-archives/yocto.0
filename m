Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5997.1595280896625144850
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 14:34:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4dxwJ6g;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C61E01ED1; Mon, 20 Jul 2020 14:34:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2632CE01ECE
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2020 14:34:53 -0700 (PDT)
Received: by mail-pj1-f53.google.com with SMTP id ls15so530520pjb.1
        for <yocto@yoctoproject.org>; Mon, 20 Jul 2020 14:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=M7lpqR32MIRg2Didw9mvmiFtzowodRILgqRiNAq4p+0=;
        b=h4dxwJ6gUK+l8kJXifa0O5/8H4aBO5Zm/Q9Q2palcOQ/DFV/HJHSDKmGstN3Jbj+um
         DnQLlqu6dSOxZXWMcOMGxdFw3ziGOd3EnjqHLcMhupK4TeodMNWuIp20mXle7UXOE/PW
         gC+0UMqhpbHNX35eSe14OS6y+PuJrsFOcJkQHex32rOk41v1gHvSX9CILWETEhkcqJFC
         5BJIYwZaEeKY6TrBGGjG/trtkLz5ZuFpkoc0D6ZVxDQA6Ko1xKJJUJp+YgRhauLc8XS9
         ZqiwwJXQ85uFb2bsvgShto0iLsk7z8nrYYgQ62E9TKfjNg/x4Jv9GyMEy0pvKcWvXbIx
         NNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=M7lpqR32MIRg2Didw9mvmiFtzowodRILgqRiNAq4p+0=;
        b=lEYyYn3BAgBGhcBuzlLZ+ea+KP092UWNI9yfYKGL4PrN3RhM6CoKSj740ScZnVmP0d
         VLS2mxtHbu3BISCLb+2YG3cbbBFjAEs8rfEHW92e3rcAIVuchW6xYgukl0Lb6NNIB1ZD
         S07O/JXIIn1fv/ZfIpRbd65W12AXVnh1XWzFiRK5lJAMFwySXvd6OWJHmbtFopuYGsyO
         vjBE4aHTWaPjfcsxUHvihSu8Ct+zMQtXnunavTTZ7u3ZJkwV4HDrJ8TwcPT7/U0gr/PR
         fz0aeEN9DU+q9G56ImEyEoMHl1JaTUebJHl9ekvk3qQ+tdt733rjTFqI6a3UV4+VywOU
         6xkw==
X-Gm-Message-State: AOAM531+wDNldpM8b3lXrkcf7ums5mAloawqoNH6W3PZ7pUD3q6zm2MK
	L+rB8IqoVg3IUu9Sij6Ki1A=
X-Google-Smtp-Source: ABdhPJwboimYfOjrr2hmPmwK3zDOjBguO4CPmmtHAEzgoRWE8TFX6Fhz3KLVySAcB2fQ/TOX2WEa+A==
X-Received: by 2002:a17:902:20a:: with SMTP id 10mr20051151plc.127.1595280893206;
        Mon, 20 Jul 2020 14:34:53 -0700 (PDT)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id lb11sm569400pjb.28.2020.07.20.14.34.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:34:52 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
Date: Mon, 20 Jul 2020 14:34:53 -0700
Message-ID: <0d5701d65edd$9afe51b0$d0faf510$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJjM92UabXxQcUOvaW1BPDOkCLobA==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0D58_01D65EA2.EEA25FE0"
Content-Language: en-us

------=_NextPart_000_0D58_01D65EA2.EEA25FE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

The triage team is starting to try and collect up and classify bugs which a
newcomer to the project would be able to work on in a way which means people
can find them. They're being listed on the triage page under the appropriate
heading:

 

https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs

 

The idea is these bugs should be straight forward for a person to help work
on who doesn't have deep experience with the project.  If anyone can help,
please take ownership of the bug and send patches!  If anyone needs
help/advice there are people on irc who can likely do so, or some of the
more experienced contributors will likely be happy to help too.

 

Also, the triage team meets weekly and does its best to handle the bugs
reported into the Bugzilla. The number of people attending that meeting has
fallen, as have the number of people available to help fix bugs. One of the
things we hear users report is they don't know how to help. We (the triage
team) are therefore going to start reporting out the currently 338
unassigned or newcomer bugs.

 

We're hoping people may be able to spare some time now and again to help out
with these.  Bugs are split into two types, "true bugs" where things don't
work as they should and "enhancements" which are features we'd want to add
to the system.  There are also roughly four different "priority" classes
right now, "3.1", "3.2, "3.99" and "Future", the more pressing/urgent issues
being in "3.1" and then "3.2".

 

Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> ) an e-mail with the bug number you would
like and I will assign it to you (please make sure you have a Bugzilla
account).  The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer
_Bugs

 

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0D58_01D65EA2.EEA25FE0
Content-Type: text/html;
	boundary="----=_NextPart_000_03B4_01D65927.17138480";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
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
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal style=3D'text-autospace:none'>All,<o:p></o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'>The triage team is =
starting to try and collect up and classify bugs which a newcomer to the =
project would be able to work on in a way which means people can find =
them. They're being listed on the triage page under the appropriate =
heading:<o:p></o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs">http=
s://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs</a><o:p></o:p></p=
><p class=3DMsoNormal =
style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'>The idea is these bugs should be straight =
forward for a person to help work on who doesn't have deep experience =
with the project.&nbsp; If anyone can help, please take ownership of the =
bug and send patches!&nbsp; If anyone needs help/advice there are people =
on irc who can likely do so, or some of the more experienced =
contributors will likely be happy to help too.<o:p></o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'>Also, the triage team =
meets weekly and does its best to handle the bugs reported into the =
Bugzilla. The number of people attending that meeting has fallen, as =
have the number of people available to help fix bugs. One of the things =
we hear users report is they don't know how to help. We (the triage =
team) are therefore going to start reporting out the currently 338 =
unassigned or newcomer bugs.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'>We're hoping people may be able to spare =
some time now and again to help out with these.&nbsp; Bugs are split =
into two types, &quot;true bugs&quot; where things don't work as they =
should and &quot;enhancements&quot; which are features we'd want to add =
to the system.&nbsp; There are also roughly four different =
&quot;priority&quot; classes right now, &#8220;3.1&#8221;, &#8220;3.2, =
&quot;3.99&quot; and &quot;Future&quot;, the more pressing/urgent issues =
being in &quot;3.1&quot; and then &#8220;3.2&#8221;.<o:p></o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal style=3D'text-autospace:none'>Please review this link =
and if a bug is something you would be able to help with either take =
ownership of the bug, or send me (<a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>) an =
e-mail with the bug number you would like and I will assign it to you =
(please make sure you have a Bugzilla account).&nbsp; The list is at: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_=
or_Newcomer_Bugs">https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#U=
nassigned_or_Newcomer_Bugs</a><o:p></o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'text-autospace:none'>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0D58_01D65EA2.EEA25FE0--
