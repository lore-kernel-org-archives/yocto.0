Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 937F9E00D9F; Mon,  4 Nov 2019 20:46:22 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F43AE00D00
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 20:46:21 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id x21so5487015iol.2
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2019 20:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5vdE9fZhceM4HmVu9JUKb3aNRgeDK9BAyAjFWnnW1Tg=;
	b=mCnPMZYZj7nq4pFgIDFtm//xdRjfjA4BlAsW5YK5H4e3h/f6hMLtoEfCSoy8KWjlMM
	wPfrZBqkGNdAxAHvGCgB8+WiA2Bn6U2h0YxPIW7WudWK8Gq/IT8OMNqyeBJZYrgQw9+W
	Cdr4BKaOryXvbqBdlaEvITQORKGVCZuNliX50ixT23AcCiL4Dzg1pXNQ31WoYBNRQK4l
	MnhB0PWdIbvXTnInZr/yf65TF0qQMFWtYTueitHgFEzS1cbWyVPUZTKTejpJoFzB/l4Y
	jzNtTi0hp0AzNcqtLrD3WQI35baWmAwWjDjB9qUZh+zGNURA8UGDTFNOACPVLgNxdC07
	SJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5vdE9fZhceM4HmVu9JUKb3aNRgeDK9BAyAjFWnnW1Tg=;
	b=WgyFqHdhEqMRXgv25VIJ2Ux6Pz1PiT8YZKqalcyNmQtEmWwplEOc0VOmd8UQrpRizH
	lArHbmPbfFtYJOJvs/CTItCVQaE9XA6rOeIsh4aRhicJjcVr/RAwYbMVaMzf7pf3IOIt
	0BN4McsvCw1j8AO6Dg5k00UPrwdVFUT6iAqKdHEOvSI9jMyL1rcW1chx219UuD4jmQmm
	sFfwbU1dyC7gWZpvUOhlt78qcfaP2B7yFBNkWEroe4Piqg9WKXOblfESWDttU5+B6jB9
	1sdlBncnQR2Cw1Ua/SpWFtm9TlBfU+KcE/pqOmwmDeyx3+9ReiCoc853qSP5qOKojfH7
	/3PA==
X-Gm-Message-State: APjAAAUXc91huz1FO4Gwy4yIDDrmKUbmunnok+FZRc2IVvT+mmsa+5bt
	htEJbcQZMRlW/dLJwfQz+Cl2tlw78zNhz/SoDQzWiQMM
X-Google-Smtp-Source: APXvYqyhNgFeNoQzTPvchl3H1Cj7wRVMV4hps6xms6oYA5XdmPLL2XUwXRQ8QrEQFxP80sSF7YH3nPxD1KhA82vDFAw=
X-Received: by 2002:a02:c98e:: with SMTP id b14mr17295572jap.133.1572929180704;
	Mon, 04 Nov 2019 20:46:20 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Nov 2019 20:46:10 -0800
Message-ID: <CAK5yBb_8tMwFP1bgYk46XXm2oCrO4Oac-hmVAFJgSFRzMdXjhA@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
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
X-List-Received-Date: Tue, 05 Nov 2019 04:46:22 -0000
Content-Type: multipart/alternative; boundary="00000000000012a3e80596921d74"

--00000000000012a3e80596921d74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,



The triage team is starting to try and collect up and classify bugs which a
newcomer to the project would be able to work on in a way which means
people can find them. They're being listed on the triage page under the
appropriate heading:



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
team) are therefore going to start reporting out the currently 298
unassigned or newcomer bugs.



We're hoping people may be able to spare some time now and again to help
out with these.  Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system.  There are also roughly four different "priority"
classes right now, =E2=80=9C3.1=E2=80=9D, =E2=80=9C3.2, "3.99" and "Future"=
, the more
pressing/urgent issues being in "3.1" and then =E2=80=9C3.2=E2=80=9D.



Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account).  The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

*7867 SW Bayberry Dr., Beaverton, OR 97007*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--00000000000012a3e80596921d74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif">All,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The triage team is starting to try and
collect up and classify bugs which a newcomer to the project would be able =
to
work on in a way which means people can find them. They&#39;re being listed=
 on the
triage page under the appropriate heading:</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><a href=3D"https://wiki.yoctoproject.org/wiki/B=
ug_Triage#Newcomer_Bugs" style=3D"font-family:&quot;Times New Roman&quot;,s=
erif;color:rgb(5,99,193)">https://wiki.yoctoproject.org/wiki/Bug_Triage#New=
comer_Bugs</a></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The idea is these bugs should be straight
forward for a person to help work on who doesn&#39;t have deep experience w=
ith the
project.=C2=A0 If anyone can help, please take ownership of the bug and sen=
d
patches!=C2=A0 If anyone needs help/advice there are people on irc who can
likely do so, or some of the more experienced contributors will likely be h=
appy
to help too.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Also, the triage team meets weekly and
does its best to handle the bugs reported into the Bugzilla. The number of
people attending that meeting has fallen, as have the number of people
available to help fix bugs. One of the things we hear users report is they
don&#39;t know how to help. We (the triage team) are therefore going to sta=
rt
reporting out the currently 298 unassigned or newcomer bugs.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">We&#39;re hoping people may be able to spare
some time now and again to help out with these.=C2=A0 Bugs are split into t=
wo
types, &quot;true bugs&quot; where things don&#39;t work as they should and
&quot;enhancements&quot; which are features we&#39;d want to add to the
system.=C2=A0 There are also roughly four different &quot;priority&quot;
classes right now, =E2=80=9C3.1=E2=80=9D, =E2=80=9C3.2, &quot;3.99&quot; an=
d &quot;Future&quot;, the
more pressing/urgent issues being in &quot;3.1&quot; and then =E2=80=9C3.2=
=E2=80=9D.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Please review this link and if a bug is
something you would be able to help with either take ownership of the bug, =
or
send me (<a href=3D"mailto:sjolley.yp.pm@gmail.com" style=3D"font-family:&q=
uot;Times New Roman&quot;,serif;color:rgb(5,99,193)">sjolley.yp.pm@gmail.co=
m</a>) an e-mail with the bug number you
would like and I will assign it to you (please make sure you have a Bugzill=
a
account).=C2=A0 The list is at: <a href=3D"https://wiki.yoctoproject.org/wi=
ki/Bug_Triage#Unassigned_or_Newcomer_Bugs" style=3D"font-family:&quot;Times=
 New Roman&quot;,serif;color:rgb(5,99,193)">https://wiki.yoctoproject.org/w=
iki/Bug_Triage#Unassigned_or_Newcomer_Bugs</a></p><div><br></div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"backgroun=
d-image:initial;background-position:initial;background-repeat:initial"><spa=
n style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span=
></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<spa=
n></span></span></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-family:&quot;Co=
urier New&quot;;color:fuchsia;background-image:initial;background-position:=
initial;background-repeat:initial">7867 SW Bayberry Dr., Beaverton, OR 9700=
7</span></b><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><sp=
an></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div></div>

--00000000000012a3e80596921d74--
