Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DEA6E00BF7; Mon, 16 Sep 2019 10:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94529E006B6
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 10:14:22 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id b19so858205iob.4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 10:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=Bs5jE5MH6JwZP29GgzYbo8XHUi6EbmRBbiNoedqvK1o=;
	b=qON1EayKdBPNZQtumoICIiaEUleNTpO8J2Kn/aoSJyOewQ50GLQ/q2uXK62KZ3TmdX
	aMkWi/xcyVVxj6rc4mzBuNzISee/4jn58D4hcFq9TI5UE5BTER/7mbwNL2b+BGy7Rkcf
	7FO1d8+/vJxGyUJWI3ayUIlqLM8z/uoiIOzCgHP8iWnzyaN7ke6C5a1IscX4BV5oOWOR
	i9OA6EJYmOfzqLeXL7PYyh0x5JqKR5M6I6GXlrTCmd5NiEGZXLfAQJYAmlhZ+DC7djFK
	eMlxQTZlk8KSh8BrNp1WyLw9BibbeEjCNSFJDteRqZ0MDjL9F8ujTWNRDpzc9XpxxFdE
	CsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=Bs5jE5MH6JwZP29GgzYbo8XHUi6EbmRBbiNoedqvK1o=;
	b=jJia+D08Unwm3KST2Nj7gJRxluP6KbQyqSzmx7UmwU1kVkoaZcsIlh/G3WNeHWmwaS
	b0GF6NPo5QEu+9dBCxgrEw/RuTMgSBDRHZR0/hRIRNJ+tEc9MHFBu3Qs2WFJe7df4ync
	RHBupF3JNDyPwVZJU1Uem/NNigB5KzQQQiYE5QJwHbBlbBdZU7Z5Y7RgZhV/8qYkMHOj
	iHYEz//vHxJc+Cp/J+u7VGGEeV/BHPf2waeZe+7nk2sO+niqCqkDhO+XP8hZaI2zJPbe
	Z3Zcrjc1grKkANH159PwhqNJU6XNZyRBnIRJSKJDOClImVO1/DtXiV45NEkfhU+0XlGk
	zBEA==
X-Gm-Message-State: APjAAAWoQMETJlgsec8Yw5AAJjtpc1HxJQ0SIsnNh+KbYJSOhb0Uto8O
	3NYcvDuFHorkLPsE8s8+Hayko3CVZpQBGSpNUSzMeETj
X-Google-Smtp-Source: APXvYqxz4JmRZRLhKqgorsi3AqVaAJyDeEYVZZPZjghxpbYwcY6YAuJEQiJ4NpdagSWeeUcjC7V5w654hF4UUkYkZh8=
X-Received: by 2002:a02:b156:: with SMTP id s22mr1057582jah.102.1568654061767; 
	Mon, 16 Sep 2019 10:14:21 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Sep 2019 10:14:11 -0700
Message-ID: <CAK5yBb9sBKDwe=braZgTbM=PY1pVJVephoQX5HBG9ifJs22Apw@mail.gmail.com>
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
X-List-Received-Date: Mon, 16 Sep 2019 17:14:23 -0000
Content-Type: multipart/alternative; boundary="0000000000002091010592aebce0"

--0000000000002091010592aebce0
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
team) are therefore going to start reporting out the currently 300
unassigned or newcomer bugs.



We're hoping people may be able to spare some time now and again to help
out with these.  Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system.  There are also roughly four different "priority"
classes right now, =E2=80=9C2.8=E2=80=9D, =E2=80=9C2.9=E2=80=99, "2.99" and=
 "Future", the more
pressing/urgent issues being in "2.8" and then =E2=80=9C2.9=E2=80=9D.



Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account).  The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs



Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:              sjolley.yp.pm@gmail.com

--0000000000002091010592aebce0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0i=
n 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">All,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The triage team is starting to try and collect =
up and classify bugs
which a newcomer to the project would be able to work on in a way which mea=
ns
people can find them. They&#39;re being listed on the triage page under the
appropriate heading:</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><a href=3D"https://wiki.yoctoproject.org/wiki/B=
ug_Triage#Newcomer_Bugs" style=3D"color:rgb(5,99,193)">https://wiki.yoctopr=
oject.org/wiki/Bug_Triage#Newcomer_Bugs</a></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The idea is these bugs should be straight forwa=
rd for a person to help
work on who doesn&#39;t have deep experience with the project.=C2=A0 If any=
one can
help, please take ownership of the bug and send patches!=C2=A0 If anyone ne=
eds
help/advice there are people on irc who can likely do so, or some of the mo=
re
experienced contributors will likely be happy to help too.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Also, the triage team meets weekly and does its=
 best to handle the
bugs reported into the Bugzilla. The number of people attending that meetin=
g
has fallen, as have the number of people available to help fix bugs. One of=
 the
things we hear users report is they don&#39;t know how to help. We (the tri=
age
team) are therefore going to start reporting out the currently 300 unassign=
ed
or newcomer bugs.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">We&#39;re hoping people may be able to spare so=
me time now and again to
help out with these.=C2=A0 Bugs are split into two types, &quot;true bugs&q=
uot;
where things don&#39;t work as they should and &quot;enhancements&quot; whi=
ch are
features we&#39;d want to add to the system.=C2=A0 There are also roughly f=
our
different &quot;priority&quot; classes right now, =E2=80=9C2.8=E2=80=9D, =
=E2=80=9C2.9=E2=80=99,
&quot;2.99&quot; and &quot;Future&quot;, the more pressing/urgent issues be=
ing
in &quot;2.8&quot; and then =E2=80=9C2.9=E2=80=9D.</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Please review this link and if a bug is somethi=
ng you would be able to
help with either take ownership of the bug, or send me (<a href=3D"mailto:s=
jolley.yp.pm@gmail.com" style=3D"color:rgb(5,99,193)">sjolley.yp.pm@gmail.c=
om</a>)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account).=C2=A0 The list is at: <a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_=
Bugs" style=3D"color:rgb(5,99,193)">https://wiki.yoctoproject.org/wiki/Bug_=
Triage#Unassigned_or_Newcomer_Bugs</a></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Thanks,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"break-after:avoid;margin:0in 0in 0.0001pt;f=
ont-size:11pt;font-family:Calibri,sans-serif"><b><i><span style=3D"font-siz=
e:16pt;font-family:&quot;Times New Roman&quot;,serif;color:purple">Stephen =
K. Jolley</span></i></b><b><i><span style=3D"font-size:16pt;font-family:Tah=
oma,sans-serif;color:purple"></span></i></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"font-size:8pt;font-family:&qu=
ot;Courier New&quot;;color:blue">Yocto Project
Program Manager</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:9pt;font-family:Wingdi=
ngs;color:black">(</span><span style=3D"font-size:9pt;font-family:&quot;MS =
Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0 </span><b><span style=
=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color:teal">Cell</s=
pan></b><span style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,=
serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif">(208) 244-4460<span style=3D"color:black"></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:9pt;font-family:Wingdi=
ngs">* </span><b><span lang=3D"FR" style=3D"font-size:8pt;font-family:&quot=
;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=3D"FR" style=3D=
"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:teal">:</s=
pan><span lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Seri=
f&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"mailto:sjolley.yp.pm@gmail.com" style=3D=
"color:rgb(5,99,193)">sjolley.yp.pm@gmail.com</a></span></p></div></div>

--0000000000002091010592aebce0--
