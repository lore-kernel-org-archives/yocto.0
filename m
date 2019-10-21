Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F5BBE00973; Mon, 21 Oct 2019 09:23:50 -0700 (PDT)
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
	*      [209.85.166.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83500E00874
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:23:48 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id z19so16710501ior.0
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yG9PoMGnwUNf1Qg4fZAm6lEG0qjraP/b2H/RHCfgTOY=;
	b=r1K997AaKTUoFOhA96XKBtuZ9lb9Q8ROC9sdinNX/wcXpkTsoZYALWiz40Ppl4bOw1
	8hONmDqd7jYBHCt9nSNkgd4kjQO7+zZsxsBKwmZm5x4r51GVgGJ7rkg9+x4eyWR8Y74l
	jr6Rr7p1dsXFkPF+N0kOFh6ENChbiW8TDinwdm6NS/ZaJZ8h7bwd2Y/2rGi7NMpZTQ3c
	dWAUxmyW1GFcimV/TxuIjbtaeU5TWEu6hufprl2e3iyeJTSPigUolG0Bmqrq/6Mz+YxS
	GyoK+jom8n7g1Lng8w5UCs/7Ck9nPekMCorWGFmhGzaODo+GwIby9e/hVwh+fgjnDAln
	7xjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yG9PoMGnwUNf1Qg4fZAm6lEG0qjraP/b2H/RHCfgTOY=;
	b=jbzlkfLRdh+Pa/S47ixFLxxCMl3kQjKfvJbnEDvaZKGHqXR7/SaVnemQYGd31q52mu
	Fuh4vWkRgD6GOCEm1EuPK3rTid+hh32nPVnSpoFtDGmhXP1UPq/trlhj+vi6KZn8UdAn
	HOKb4HBquM1CCcCJxHqBvXI8VXPc6jAuXOvpkmIL7dd1b7ZsOB17vSv37XGB9uyp65B2
	0rHt1ahsEPTbMN457HEM7zBq70dxcp+kKprnDpQG6fN2177CCDvw+aXWN7y72f+2PSMG
	l243AIDjyE+LGWQDj7WjHiElz0PBvHPQzGyEtJqH2PYJjO9NZ8d+B5ZJ0mYzVjrdGOfI
	CtSw==
X-Gm-Message-State: APjAAAXhuuSni5zno+6qaRXU3ktFqz6gbWvGX49ekCwyz8Tg65GLJbqR
	Ry5dGSs4pM9H9JgnS95cLJfbmx1mMc92EZPOYwlMKqlm
X-Google-Smtp-Source: APXvYqwEImVcApZ3fdrdTzIhOKosNdBazDvHO1AThKRTia0V59ui/G2pupeB/gZN/SChuu+NsCSCJUEu6ybBB2iFy6E=
X-Received: by 2002:a02:ac81:: with SMTP id x1mr23133360jan.133.1571675027114; 
	Mon, 21 Oct 2019 09:23:47 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Oct 2019 09:23:34 -0700
Message-ID: <CAK5yBb-+5feZZZcYuMxQNSUWZ--eu9cb7+G8E7CQ47Z8fdvPFg@mail.gmail.com>
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
X-List-Received-Date: Mon, 21 Oct 2019 16:23:51 -0000
Content-Type: multipart/alternative; boundary="000000000000b193fc05956e1b7c"

--000000000000b193fc05956e1b7c
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

--=20

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

*7867 SW Bayberry Dr., Beaverton, OR 97007*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--000000000000b193fc05956e1b7c
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
iki/Bug_Triage#Unassigned_or_Newcomer_Bugs</a></p><div><br></div>-- <br><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"back=
ground-image:initial;background-position:initial;background-repeat:initial"=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span><=
/span></span></p>

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

--000000000000b193fc05956e1b7c--
