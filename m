Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBDA5E00D40; Tue,  7 May 2019 07:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B866E00BAA
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 07:43:04 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id v10so10458492wrt.6
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 07:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:user-agent:mime-version;
	bh=J/QsZOtbOYS13mD6dEhE7vf9PyHuczouDBJQj71Uw3Y=;
	b=ZGCAmEhocc51zkItE0vDtZ02Hi31Hi9J5zF4D5pJNe9XdiKydatUaLzvVuR8I9vm/G
	FqJfdQ6KTmKGocHB6rF7AWPoZoImEzlD5Nizi+q0AlMh8s3Zzoht5efKlrLt8qIVXTn3
	p5o83098zPi144BJi2xNAxwices9Caji/vfQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:user-agent
	:mime-version;
	bh=J/QsZOtbOYS13mD6dEhE7vf9PyHuczouDBJQj71Uw3Y=;
	b=a1sappweVZPbbGPolzLnveGSPd0BePMt4Flm05Rw7JrwByJ6GQgjpwe2s4obMtQ1OR
	h4fkVCbv9eIA4BTiwi6n9VyQwtS53bUiwxk3aRHJopoXjLz0FbabNoyFjnHCt0TcLlHk
	BbkCP9ovEtADq6eBi4mCWoKhBtMicKNWLt4x+Or2GEtqN0mB+rpUK2divRK0DZrf9gKA
	zmWrpbKhCELmIeTXo50x/z6GICX5k8LyZrpoydG7gAJsLiFrBnSkRomAofelL7Hkcfu/
	ExeEZ+ZhoJP5H9MMUjInCBTfxF9NbLqss3XJn+GlNV4AT0fwAyYK3bPf9oAQGXd+SIZ6
	jYDw==
X-Gm-Message-State: APjAAAWSOsmScSC8zP9LNh7/lwJTyzxoGSJ6Ee/KKEGRuk3PT4WllSNF
	tzzUKKENqyerKViPwpNsz2AQg7Mi1kg=
X-Google-Smtp-Source: APXvYqxHO/4bAZkPs+xdEwYIa9bGeUOHg9OWZB4GW1hiZ/NV476NjLg4qyOo7o7IwfLFPTEgu6kVUQ==
X-Received: by 2002:a5d:4445:: with SMTP id x5mr10285187wrr.120.1557240182952; 
	Tue, 07 May 2019 07:43:02 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	b184sm19821663wmh.17.2019.05.07.07.43.01
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 07 May 2019 07:43:02 -0700 (PDT)
Message-ID: <bc464027bd8df4d402b4cc476f856a5276e09c74.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Date: Tue, 07 May 2019 15:43:00 +0100
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: [OE-core] Yocto Project Status WW19'19
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
X-List-Received-Date: Tue, 07 May 2019 14:43:05 -0000
Content-Type: multipart/alternative; boundary="=-OmSsQp0P6FMHP0iD37VK"

--=-OmSsQp0P6FMHP0iD37VK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Current Dev Position: YP 2.8 M1
Next Deadline: YP 2.8 Milestone 1 Target May ??, 2019

SWAT Team Rotation:
 * SWAT lead is currently: Anuj
 * SWAT team rotation: Anuj -> Ross on May. 10, 2019
 * SWAT team rotation: Ross -> Amanda on May. 17, 2019
 * https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

Next Team Meetings:
 * YP 2.8 Planning meeting Tuesday May 7th at 8am PDT (
https://zoom.us/j/990892712) 
 * Bug Triage meeting Thursday May 9th at 7:30am PDT (
https://zoom.us/j/454367603)

Key Status/Updates:
 * Stephen is going to be unavailable for several weeks, please refer
any queries to Richard
 * YP 2.7 was released
 * The 2.8 planning discussions are starting and there is a google doc
summarising the discussions so far: 
https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU/
If people are planning to work on specific things in 2.8 please let us
know so we can incorporate this into our plans. If you’re interested in
working on anything in the document, please also let us know or talk
with us in one of the planning meetings.
 * At this point we believe we’ve made our final release for the sumo
(2.5) series
 * The project is planning to adopt SPDX license headers in its source
code where practical, bitbake has had these merged as a first step.
 * We have a new “newcomer” bug category which are bugs suited to
someone new to the project. These can be seen here: 
https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs

Planned Releases for YP 2.8:
 * TBA

Planned upcoming dot releases:
 * YP 2.6.3 (Thud) is in planning
 * YP 2.7.1 (Warrior) is in planning

Tracking Metrics:
 * WDD 2602 (last week 2593) (
https://wiki.yoctoproject.org/charts/combo.html)
 * Poky Patch Metrics  
    * Total patches found: 1558 (last week 1565)
    * Patches in the Pending State: 655 (42%) [last week 655 (42%)]

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.7_Features

The Status reports are now stored on the wiki at: 
https://wiki.yoctoproject.org/wiki/Weekly_Status

[If anyone has suggestions for other information you’d like to see on
this weekly status update, let us know!]

--=-OmSsQp0P6FMHP0iD37VK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt;" id=3D"docs-internal-guid-2db1137b-7fff-38f1-ed75-840a6d9ce2bd"><span s=
tyle=3D"font-size: 11pt; font-family: Arial; background-color: transparent;=
 font-variant-ligatures: normal; font-variant-east-asian: normal; font-vari=
ant-position: normal; vertical-align: baseline; white-space: pre-wrap;">Cur=
rent Dev Position: YP 2.8 M1</span></p><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; fon=
t-family: Arial; background-color: transparent; font-variant-ligatures: nor=
mal; font-variant-east-asian: normal; font-variant-position: normal; vertic=
al-align: baseline; white-space: pre-wrap;">Next Deadline: YP 2.8 Milestone=
 1 Target May ??, 2019</span></p><br><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-=
family: Arial; background-color: transparent; font-variant-ligatures: norma=
l; font-variant-east-asian: normal; font-variant-position: normal; vertical=
-align: baseline; white-space: pre-wrap;">SWAT Team Rotation:</span></p><ul=
 style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-=
style-type: disc; font-size: 11pt; font-family: Arial; background-color: tr=
ansparent; font-variant-ligatures: normal; font-variant-east-asian: normal;=
 font-variant-position: normal; vertical-align: baseline; white-space: pre;=
"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
;"><span style=3D"font-size: 11pt; background-color: transparent; font-vari=
ant-ligatures: normal; font-variant-east-asian: normal; font-variant-positi=
on: normal; vertical-align: baseline; white-space: pre-wrap;">SWAT lead is =
currently: Anuj</span></p></li><li dir=3D"ltr" style=3D"list-style-type: di=
sc; font-size: 11pt; font-family: Arial; background-color: transparent; fon=
t-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-=
position: normal; vertical-align: baseline; white-space: pre;"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=
=3D"font-size: 11pt; background-color: transparent; font-variant-ligatures:=
 normal; font-variant-east-asian: normal; font-variant-position: normal; ve=
rtical-align: baseline; white-space: pre-wrap;">SWAT team rotation: Anuj -&=
gt; Ross on May. 10, 2019</span></p></li><li dir=3D"ltr" style=3D"list-styl=
e-type: disc; font-size: 11pt; font-family: Arial; background-color: transp=
arent; font-variant-ligatures: normal; font-variant-east-asian: normal; fon=
t-variant-position: normal; vertical-align: baseline; white-space: pre;"><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><=
span style=3D"font-size: 11pt; background-color: transparent; font-variant-=
ligatures: normal; font-variant-east-asian: normal; font-variant-position: =
normal; vertical-align: baseline; white-space: pre-wrap;">SWAT team rotatio=
n: Ross -&gt; Amanda on May. 17, 2019</span></p></li><li dir=3D"ltr" style=
=3D"list-style-type: disc; font-size: 11pt; font-family: Consolas; backgrou=
nd-color: transparent; font-variant-ligatures: normal; font-variant-east-as=
ian: normal; font-variant-position: normal; vertical-align: baseline; white=
-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Build_Fa=
ilure_Swat_Team" style=3D"text-decoration:none;"><span style=3D"font-size: =
11pt; color: rgb(17, 85, 204); background-color: transparent; font-variant-=
ligatures: normal; font-variant-east-asian: normal; font-variant-position: =
normal; text-decoration: underline; text-decoration-skip: none; vertical-al=
ign: baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Y=
octo_Build_Failure_Swat_Team</span></a></p></li></ul><br><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"fo=
nt-size: 11pt; font-family: Arial; background-color: transparent; font-vari=
ant-ligatures: normal; font-variant-east-asian: normal; font-variant-positi=
on: normal; vertical-align: baseline; white-space: pre-wrap;">Next Team Mee=
tings:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D=
"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; =
background-color: transparent; font-variant-ligatures: normal; font-variant=
-east-asian: normal; font-variant-position: normal; vertical-align: baselin=
e; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: tr=
ansparent; font-variant-ligatures: normal; font-variant-east-asian: normal;=
 font-variant-position: normal; vertical-align: baseline; white-space: pre-=
wrap;">YP 2.8 Planning meeting Tuesday May 7th at 8am PDT (</span><a href=
=3D"https://zoom.us/j/990892712" style=3D"text-decoration:none;"><span styl=
e=3D"font-size: 11pt; color: rgb(17, 85, 204); background-color: transparen=
t; font-variant-ligatures: normal; font-variant-east-asian: normal; font-va=
riant-position: normal; text-decoration: underline; text-decoration-skip: n=
one; vertical-align: baseline; white-space: pre-wrap;">https://zoom.us/j/99=
0892712)</span></a><span style=3D"font-size: 11pt; background-color: transp=
arent; font-variant-ligatures: normal; font-variant-east-asian: normal; fon=
t-variant-position: normal; vertical-align: baseline; white-space: pre-wrap=
;"> </span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-si=
ze: 11pt; font-family: Arial; background-color: transparent; font-variant-l=
igatures: normal; font-variant-east-asian: normal; font-variant-position: n=
ormal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-si=
ze: 11pt; background-color: transparent; font-variant-ligatures: normal; fo=
nt-variant-east-asian: normal; font-variant-position: normal; vertical-alig=
n: baseline; white-space: pre-wrap;">Bug Triage meeting Thursday May 9th at=
 7:30am PDT (</span><a href=3D"https://zoom.us/j/454367603" style=3D"text-d=
ecoration:none;"><span style=3D"font-size: 10pt; color: rgb(17, 85, 204); b=
ackground-color: transparent; font-variant-ligatures: normal; font-variant-=
east-asian: normal; font-variant-position: normal; text-decoration: underli=
ne; text-decoration-skip: none; vertical-align: baseline; white-space: pre-=
wrap;">https://zoom.us/j/454367603</span></a><span style=3D"font-size: 11pt=
; background-color: transparent; font-variant-ligatures: normal; font-varia=
nt-east-asian: normal; font-variant-position: normal; vertical-align: basel=
ine; white-space: pre-wrap;">)</span></p></li></ul><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 11pt; font-family: Arial; background-color: transparent; font-varian=
t-ligatures: normal; font-variant-east-asian: normal; font-variant-position=
: normal; vertical-align: baseline; white-space: pre-wrap;">Key Status/Upda=
tes:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"l=
tr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; ba=
ckground-color: transparent; font-variant-ligatures: normal; font-variant-e=
ast-asian: normal; font-variant-position: normal; vertical-align: baseline;=
 white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: tran=
sparent; font-variant-ligatures: normal; font-variant-east-asian: normal; f=
ont-variant-position: normal; vertical-align: baseline; white-space: pre-wr=
ap;">Stephen is going to be unavailable for several weeks, please refer any=
 queries to Richard</span></p></li><li dir=3D"ltr" style=3D"list-style-type=
: disc; font-size: 11pt; font-family: Arial; background-color: transparent;=
 font-variant-ligatures: normal; font-variant-east-asian: normal; font-vari=
ant-position: normal; vertical-align: baseline; white-space: pre;"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span=
 style=3D"font-size: 11pt; background-color: transparent; font-variant-liga=
tures: normal; font-variant-east-asian: normal; font-variant-position: norm=
al; vertical-align: baseline; white-space: pre-wrap;">YP 2.7 was released</=
span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11=
pt; font-family: Arial; background-color: transparent; font-variant-ligatur=
es: normal; font-variant-east-asian: normal; font-variant-position: normal;=
 vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11=
pt; background-color: transparent; font-variant-ligatures: normal; font-var=
iant-east-asian: normal; font-variant-position: normal; vertical-align: bas=
eline; white-space: pre-wrap;">The 2.8 planning discussions are starting an=
d there is a google doc summarising the discussions so far: </span><a href=
=3D"https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2=
HbaJGXbU/" style=3D"text-decoration:none;"><span style=3D"font-size: 11pt; =
color: rgb(17, 85, 204); background-color: transparent; font-variant-ligatu=
res: normal; font-variant-east-asian: normal; font-variant-position: normal=
; text-decoration: underline; text-decoration-skip: none; vertical-align: b=
aseline; white-space: pre-wrap;">https://docs.google.com/document/d/1CNEKA4=
d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU/</span></a></p></li></ul><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: =
36pt;"><span style=3D"font-size: 11pt; font-family: Arial; background-color=
: transparent; font-variant-ligatures: normal; font-variant-east-asian: nor=
mal; font-variant-position: normal; vertical-align: baseline; white-space: =
pre-wrap;">If people are planning to work on specific things in 2.8 please =
let us know so we can incorporate this into our plans. If you=E2=80=99re in=
terested in working on anything in the document, please also let us know or=
 talk with us in one of the planning meetings.</span></p><ul style=3D"margi=
n-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: dis=
c; font-size: 11pt; font-family: Arial; background-color: transparent; font=
-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-p=
osition: normal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=
=3D"font-size: 11pt; background-color: transparent; font-variant-ligatures:=
 normal; font-variant-east-asian: normal; font-variant-position: normal; ve=
rtical-align: baseline; white-space: pre-wrap;">At this point we believe we=
=E2=80=99ve made our final release for the sumo (2.5) series</span></p></li=
><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-fami=
ly: Arial; background-color: transparent; font-variant-ligatures: normal; f=
ont-variant-east-asian: normal; font-variant-position: normal; vertical-ali=
gn: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; backgroun=
d-color: transparent; font-variant-ligatures: normal; font-variant-east-asi=
an: normal; font-variant-position: normal; vertical-align: baseline; white-=
space: pre-wrap;">The project is planning to adopt SPDX license headers in =
its source code where practical, bitbake has had these merged as a first st=
ep.</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-siz=
e: 11pt; font-family: Arial; background-color: transparent; font-variant-li=
gatures: normal; font-variant-east-asian: normal; font-variant-position: no=
rmal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-siz=
e: 11pt; background-color: transparent; font-variant-ligatures: normal; fon=
t-variant-east-asian: normal; font-variant-position: normal; vertical-align=
: baseline; white-space: pre-wrap;">We have a new =E2=80=9Cnewcomer=E2=80=
=9D bug category which are bugs suited to someone new to the project. These=
 can be seen here: </span><a href=3D"https://wiki.yoctoproject.org/wiki/Bug=
_Triage#Newcomer_Bugs" style=3D"text-decoration:none;"><span style=3D"font-=
size: 11pt; color: rgb(17, 85, 204); background-color: transparent; font-va=
riant-ligatures: normal; font-variant-east-asian: normal; font-variant-posi=
tion: normal; text-decoration: underline; text-decoration-skip: none; verti=
cal-align: baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/=
wiki/Bug_Triage#Newcomer_Bugs</span></a></p></li></ul><br><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"f=
ont-size: 11pt; font-family: Arial; background-color: transparent; font-var=
iant-ligatures: normal; font-variant-east-asian: normal; font-variant-posit=
ion: normal; vertical-align: baseline; white-space: pre-wrap;">Planned Rele=
ases for YP 2.8:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;">=
<li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-famil=
y: Arial; background-color: transparent; font-variant-ligatures: normal; fo=
nt-variant-east-asian: normal; font-variant-position: normal; vertical-alig=
n: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background=
-color: transparent; font-variant-ligatures: normal; font-variant-east-asia=
n: normal; font-variant-position: normal; vertical-align: baseline; white-s=
pace: pre-wrap;">TBA</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11p=
t; font-family: Arial; background-color: transparent; font-variant-ligature=
s: normal; font-variant-east-asian: normal; font-variant-position: normal; =
vertical-align: baseline; white-space: pre-wrap;">Planned upcoming dot rele=
ases:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"=
ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; b=
ackground-color: transparent; font-variant-ligatures: normal; font-variant-=
east-asian: normal; font-variant-position: normal; vertical-align: baseline=
; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: tra=
nsparent; font-variant-ligatures: normal; font-variant-east-asian: normal; =
font-variant-position: normal; vertical-align: baseline; white-space: pre-w=
rap;">YP 2.6.3 (Thud) is in planning</span></p></li><li dir=3D"ltr" style=
=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; background-=
color: transparent; font-variant-ligatures: normal; font-variant-east-asian=
: normal; font-variant-position: normal; vertical-align: baseline; white-sp=
ace: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt;"><span style=3D"font-size: 11pt; background-color: transparent; =
font-variant-ligatures: normal; font-variant-east-asian: normal; font-varia=
nt-position: normal; vertical-align: baseline; white-space: pre-wrap;">YP 2=
.7.1 (Warrior) is in planning</span></p></li></ul><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 11pt; font-family: Arial; background-color: transparent; font-varian=
t-ligatures: normal; font-variant-east-asian: normal; font-variant-position=
: normal; vertical-align: baseline; white-space: pre-wrap;">Tracking Metric=
s:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr=
" style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; back=
ground-color: transparent; font-variant-ligatures: normal; font-variant-eas=
t-asian: normal; font-variant-position: normal; vertical-align: baseline; w=
hite-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: transp=
arent; font-variant-ligatures: normal; font-variant-east-asian: normal; fon=
t-variant-position: normal; vertical-align: baseline; white-space: pre-wrap=
;">WDD 2602 (last week 2593)</span><span style=3D"font-size: 11pt; font-fam=
ily: Consolas; background-color: transparent; font-variant-ligatures: norma=
l; font-variant-east-asian: normal; font-variant-position: normal; vertical=
-align: baseline; white-space: pre-wrap;"> (</span><a href=3D"https://wiki.=
yoctoproject.org/charts/combo.html" style=3D"text-decoration:none;"><span s=
tyle=3D"font-size: 11pt; color: rgb(17, 85, 204); background-color: transpa=
rent; font-variant-ligatures: normal; font-variant-east-asian: normal; font=
-variant-position: normal; text-decoration: underline; text-decoration-skip=
: none; vertical-align: baseline; white-space: pre-wrap;">https://wiki.yoct=
oproject.org/charts/combo.html</span></a><span style=3D"font-size: 11pt; fo=
nt-family: Consolas; background-color: transparent; font-variant-ligatures:=
 normal; font-variant-east-asian: normal; font-variant-position: normal; ve=
rtical-align: baseline; white-space: pre-wrap;">)</span></p></li><li dir=3D=
"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Consola=
s; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-family: Aria=
l; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre-wrap;">Poky Patch Metrics &nbsp;</span></p></li><ul =
style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-s=
tyle-type: circle; font-size: 11pt; font-family: Arial; background-color: t=
ransparent; font-variant-ligatures: normal; font-variant-east-asian: normal=
; font-variant-position: normal; vertical-align: baseline; white-space: pre=
;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t;"><span style=3D"font-size: 11pt; background-color: transparent; font-var=
iant-ligatures: normal; font-variant-east-asian: normal; font-variant-posit=
ion: normal; vertical-align: baseline; white-space: pre-wrap;">Total patche=
s found: 1558 (last week 1565)</span></p></li><li dir=3D"ltr" style=3D"list=
-style-type: circle; font-size: 11pt; font-family: Consolas; background-col=
or: transparent; font-variant-ligatures: normal; font-variant-east-asian: n=
ormal; font-variant-position: normal; vertical-align: baseline; white-space=
: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt;"><span style=3D"font-size: 11pt; font-family: Arial; background-col=
or: transparent; font-variant-ligatures: normal; font-variant-east-asian: n=
ormal; font-variant-position: normal; vertical-align: baseline; white-space=
: pre-wrap;">Patches in the Pending State: 655 (42%) [last week 655 (42%)]<=
/span></p></li></ul></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-family: =
Arial; background-color: transparent; font-variant-ligatures: normal; font-=
variant-east-asian: normal; font-variant-position: normal; vertical-align: =
baseline; white-space: pre-wrap;">Key Status Links for YP:</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status" style=
=3D"text-decoration:none;"><span style=3D"font-size: 11pt; font-family: Con=
solas; color: rgb(17, 85, 204); background-color: transparent; font-variant=
-ligatures: normal; font-variant-east-asian: normal; font-variant-position:=
 normal; text-decoration: underline; text-decoration-skip: none; vertical-a=
lign: baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/=
Yocto_Project_v2.7_Status</span></a></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/Yocto_2.7_Schedule" style=3D"text-decoration:none;"><span style=
=3D"font-size: 11pt; font-family: Consolas; color: rgb(17, 85, 204); backgr=
ound-color: transparent; font-variant-ligatures: normal; font-variant-east-=
asian: normal; font-variant-position: normal; text-decoration: underline; t=
ext-decoration-skip: none; vertical-align: baseline; white-space: pre-wrap;=
">https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule</span></a></p><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><a h=
ref=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.7_Features" style=3D"text=
-decoration:none;"><span style=3D"font-size: 11pt; font-family: Consolas; c=
olor: rgb(17, 85, 204); background-color: transparent; font-variant-ligatur=
es: normal; font-variant-east-asian: normal; font-variant-position: normal;=
 text-decoration: underline; text-decoration-skip: none; vertical-align: ba=
seline; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_2.=
7_Features</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-family: =
Arial; background-color: transparent; font-variant-ligatures: normal; font-=
variant-east-asian: normal; font-variant-position: normal; vertical-align: =
baseline; white-space: pre-wrap;">The Status reports are now stored on the =
wiki at: </span><a href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status=
" style=3D"text-decoration:none;"><span style=3D"font-size: 11pt; font-fami=
ly: Arial; color: rgb(17, 85, 204); background-color: transparent; font-var=
iant-ligatures: normal; font-variant-east-asian: normal; font-variant-posit=
ion: normal; text-decoration: underline; text-decoration-skip: none; vertic=
al-align: baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/w=
iki/Weekly_Status</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-f=
amily: Arial; background-color: transparent; font-variant-ligatures: normal=
; font-variant-east-asian: normal; font-variant-position: normal; vertical-=
align: baseline; white-space: pre-wrap;">[If anyone has suggestions for oth=
er information you=E2=80=99d like to see on this weekly status update, let =
us know!]</span></p></body></html>

--=-OmSsQp0P6FMHP0iD37VK--
