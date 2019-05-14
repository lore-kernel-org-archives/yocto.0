Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0174CE00B43; Tue, 14 May 2019 09:20:57 -0700 (PDT)
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
	*      [209.85.128.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A9DDE0096F
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 09:20:56 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id 7so3442085wmo.2
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 09:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:user-agent:mime-version;
	bh=vU/uNfInKztxBUv4oPI7100QSwd7Dw216nNsB2mqrmY=;
	b=LaIeY88+eQQXIFoccb25ree3ShJsxOofQxUXAd6Y7w8/M/DY3Mb5DJgGpzOry5zpEM
	nsquIDt67W/yCJqPS01aHmwdtgHm3P7KpaCH2CD64/bZNi9Q2RAdxg51+/O/tzvhyBNp
	iX7UbCubKVSRPircmJW5qiWCKC7fjX8GgvipI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:user-agent
	:mime-version;
	bh=vU/uNfInKztxBUv4oPI7100QSwd7Dw216nNsB2mqrmY=;
	b=EEEgKqPoDXbBunkjBCnOk1Zr87wutY6JNCQ2CX5RfzLnsGZdvo3Mc+1VZLfZNn6jZo
	Tdaaa55+VtlfT79F29ZAAfH0jnus/gDRN+NngXIo74dF9ywPwDIO6O5p9DQ4nil9VOr6
	IMF9ZCw7ZbHx5w0f4OUA4149Dh8nvNZqIWrQwrXe6ODKVZq09nf0XJpDBdmce/LKfFuU
	fLWu37UurDaHfZ6ZVoMPlD3tsvJrp3qJ3cj9tIbqrGpJe0dnffK89BWn2sDeKlXaZytT
	Y+7jbJ/XxAlVgvloqGx8I3C+i4zRdNnE+/R/i9uGs7Z4QlgRRUw8Z9c8IhkFAKBW4SyS
	SERQ==
X-Gm-Message-State: APjAAAVTx6JFUO6LFWqvb6mQ2FsaWlWTjuemxwMb0jRi/67AeYebXE2W
	69DW7ixU2shp5WSACkenT7SXCQ1UZNI=
X-Google-Smtp-Source: APXvYqyFLt6g+IMxDWppTjPIHrIfnm9nAy34j8uItV7Ydb0XkbRlTlI45qFUFUgPMFGVA4GAlMqWJw==
X-Received: by 2002:a1c:8004:: with SMTP id b4mr19461449wmd.79.1557850855097; 
	Tue, 14 May 2019 09:20:55 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id u2sm2875514wmb.11.2019.05.14.09.20.53
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 14 May 2019 09:20:54 -0700 (PDT)
Message-ID: <0f28e2f0c0d89180f9ff85d83cbfc1d3deff75e8.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Date: Tue, 14 May 2019 17:20:52 +0100
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Yocto Project Status WW20'19
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
X-List-Received-Date: Tue, 14 May 2019 16:20:58 -0000
Content-Type: multipart/alternative; boundary="=-7RVZ+wrHoHa+YAlg4E/i"

--=-7RVZ+wrHoHa+YAlg4E/i
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Current Dev Position: YP 2.8 M1Next Deadline: YP 2.8 Milestone 1 Cutoff
June 9th, 2019
SWAT Team Rotation: * SWAT lead is currently: Amanda
 * SWAT team rotation: Amanda -> Ross on May. 17, 2019
 * SWAT team rotation: Ross -> Chen on May. 24, 2019
 * https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

Next Team Meetings: * Bug Triage meeting Thursday May 16th at 7:30am
PDT (https://zoom.us/j/454367603)
 * Monthly Project Meeting Tuesday June 4th at 8am PDT (
https://zoom.us/j/990892712) 

Key Status/Updates: * Stephen is going to be unavailable for several
weeks, please refer any queries to Richard
 * The final 2.8 planning meeting was held. The google doc summarising
the discussions so far: 
https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU/
If people are planning to work on specific things in 2.8 please let us
know so we can incorporate this into our plans. If you’re interested in
working on anything in the document, please also let us know or talk
with us in one of the planning meetings.Most items planned to be worked
upon should now be in the bugzilla with appropriately detailed entries
there.A summary of the 2.8 planning risk items was included in an email
to the yocto-ab list:
https://lists.yoctoproject.org/pipermail/yocto-ab/2019-May/002334.html
* The project is planning to adopt SPDX license headers in its source code where practical, OE-Core now has the markup on its scripts too.
 * Mailing lists are moving to groups.io instead of our current mailman
setup on 27th May. This shouldn’t impact users directly, more details
will be sent to the mailing lists in due course.
 * We have a new “newcomer” bug category which are bugs suited to
someone new to the project. These can be seen here: 
https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs
 * We’re about ready to switch over to gcc 9 by default with one more
issue needing to be resolved on mips.
 * We’re likely going to change the tuning of qemux86 to something more
modern
 * We’re likely to drop openssl 1.0 and irda from OE-Core imminently


Planned Releases for YP 2.8: * M1 Cutoff June 9th
 * M1 Release June 21st
 * M2 Cutoff 14th July
 * M2 Release 26th July
 * M3 Cutoff (Feature Freeze) 25th Aug
 * M3 Release 6th Sept
 * M4 Cutoff 30th Sept
 * 2.8 (M4) Final Release 25th Oct

Planned upcoming dot releases: * YP 2.6.3 (Thud) is in planning
 * YP 2.7.1 (Warrior) is in planning

Tracking Metrics: * WDD 2596 (last week 2602) (
https://wiki.yoctoproject.org/charts/combo.html)
 * Poky Patch Metrics  
    * Total patches found: 1560 (last week 1558)
    * Patches in the Pending State: 665 (43%) [last week 655 (42%)]

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.8_Statushttps://wiki.yoctoproject.org/wiki/Yocto_2.8_Schedulehttps://wiki.yoctoproject.org/wiki/Yocto_2.8_Features
The Status reports are now stored on the wiki at: 
https://wiki.yoctoproject.org/wiki/Weekly_Status
[If anyone has suggestions for other information you’d like to see on
this weekly status update, let us know!]



--=-7RVZ+wrHoHa+YAlg4E/i
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt;" id=3D"docs-internal-guid-8d7ddb68-7fff-0f18-0bef-a2d25f029454"><span s=
tyle=3D"font-family: Arial; font-size: 11pt; white-space: pre-wrap; backgro=
und-color: transparent;">Current Dev Position: YP 2.8 M1</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span=
 style=3D"font-size: 11pt; font-family: Arial; background-color: transparen=
t; font-variant-ligatures: normal; font-variant-east-asian: normal; font-va=
riant-position: normal; vertical-align: baseline; white-space: pre-wrap;">N=
ext Deadline: YP 2.8 Milestone 1 Cutoff June 9th, 2019</span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;">=
<span style=3D"font-size: 11pt; font-family: Arial; background-color: trans=
parent; font-variant-ligatures: normal; font-variant-east-asian: normal; fo=
nt-variant-position: normal; vertical-align: baseline; white-space: pre-wra=
p;">SWAT Team Rotation:</span></p><ul style=3D"margin-top:0pt;margin-bottom=
:0pt;"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; fon=
t-family: Arial; background-color: transparent; font-variant-ligatures: nor=
mal; font-variant-east-asian: normal; font-variant-position: normal; vertic=
al-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; bac=
kground-color: transparent; font-variant-ligatures: normal; font-variant-ea=
st-asian: normal; font-variant-position: normal; vertical-align: baseline; =
white-space: pre-wrap;">SWAT lead is currently: Amanda</span></p></li><li d=
ir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Ar=
ial; background-color: transparent; font-variant-ligatures: normal; font-va=
riant-east-asian: normal; font-variant-position: normal; vertical-align: ba=
seline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-colo=
r: transparent; font-variant-ligatures: normal; font-variant-east-asian: no=
rmal; font-variant-position: normal; vertical-align: baseline; white-space:=
 pre-wrap;">SWAT team rotation: Amanda -&gt; Ross on May. 17, 2019</span></=
p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; fon=
t-family: Arial; background-color: transparent; font-variant-ligatures: nor=
mal; font-variant-east-asian: normal; font-variant-position: normal; vertic=
al-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; bac=
kground-color: transparent; font-variant-ligatures: normal; font-variant-ea=
st-asian: normal; font-variant-position: normal; vertical-align: baseline; =
white-space: pre-wrap;">SWAT team rotation: Ross -&gt; Chen on May. 24, 201=
9</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size:=
 11pt; font-family: Consolas; background-color: transparent; font-variant-l=
igatures: normal; font-variant-east-asian: normal; font-variant-position: n=
ormal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><a href=3D"https://wik=
i.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team" style=3D"text-decora=
tion:none;"><span style=3D"font-size: 11pt; color: rgb(17, 85, 204); backgr=
ound-color: transparent; font-variant-ligatures: normal; font-variant-east-=
asian: normal; font-variant-position: normal; text-decoration: underline; t=
ext-decoration-skip: none; vertical-align: baseline; white-space: pre-wrap;=
">https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team</span></=
a></p></li></ul><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt;"><br></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-family: Aria=
l; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre-wrap;">Next Team Meetings:</span></p><ul style=3D"ma=
rgin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: =
disc; font-size: 11pt; font-family: Arial; background-color: transparent; f=
ont-variant-ligatures: normal; font-variant-east-asian: normal; font-varian=
t-position: normal; vertical-align: baseline; white-space: pre;"><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span sty=
le=3D"font-size: 11pt; background-color: transparent; font-variant-ligature=
s: normal; font-variant-east-asian: normal; font-variant-position: normal; =
vertical-align: baseline; white-space: pre-wrap;">Bug Triage meeting Thursd=
ay May 16th at 7:30am PDT (</span><a href=3D"https://zoom.us/j/454367603" s=
tyle=3D"text-decoration:none;"><span style=3D"font-size: 10pt; color: rgb(1=
7, 85, 204); background-color: transparent; font-variant-ligatures: normal;=
 font-variant-east-asian: normal; font-variant-position: normal; text-decor=
ation: underline; text-decoration-skip: none; vertical-align: baseline; whi=
te-space: pre-wrap;">https://zoom.us/j/454367603</span></a><span style=3D"f=
ont-size: 11pt; background-color: transparent; font-variant-ligatures: norm=
al; font-variant-east-asian: normal; font-variant-position: normal; vertica=
l-align: baseline; white-space: pre-wrap;">)</span></p></li><li dir=3D"ltr"=
 style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; backg=
round-color: transparent; font-variant-ligatures: normal; font-variant-east=
-asian: normal; font-variant-position: normal; vertical-align: baseline; wh=
ite-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: transpa=
rent; font-variant-ligatures: normal; font-variant-east-asian: normal; font=
-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;=
">Monthly Project Meeting Tuesday June 4th at 8am PDT (</span><a href=3D"ht=
tps://zoom.us/j/990892712" style=3D"text-decoration:none;"><span style=3D"f=
ont-size: 11pt; color: rgb(17, 85, 204); background-color: transparent; fon=
t-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-=
position: normal; text-decoration: underline; text-decoration-skip: none; v=
ertical-align: baseline; white-space: pre-wrap;">https://zoom.us/j/99089271=
2)</span></a><span style=3D"font-size: 11pt; background-color: transparent;=
 font-variant-ligatures: normal; font-variant-east-asian: normal; font-vari=
ant-position: normal; vertical-align: baseline; white-space: pre-wrap;"> </=
span></p></li></ul><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt;"><br></p><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font-family: A=
rial; background-color: transparent; font-variant-ligatures: normal; font-v=
ariant-east-asian: normal; font-variant-position: normal; vertical-align: b=
aseline; white-space: pre-wrap;">Key Status/Updates:</span></p><ul style=3D=
"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-typ=
e: disc; font-size: 11pt; font-family: Arial; background-color: transparent=
; font-variant-ligatures: normal; font-variant-east-asian: normal; font-var=
iant-position: normal; vertical-align: baseline; white-space: pre;"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span=
 style=3D"font-size: 11pt; background-color: transparent; font-variant-liga=
tures: normal; font-variant-east-asian: normal; font-variant-position: norm=
al; vertical-align: baseline; white-space: pre-wrap;">Stephen is going to b=
e unavailable for several weeks, please refer any queries to Richard</span>=
</p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; f=
ont-family: Arial; background-color: transparent; font-variant-ligatures: n=
ormal; font-variant-east-asian: normal; font-variant-position: normal; vert=
ical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; b=
ackground-color: transparent; font-variant-ligatures: normal; font-variant-=
east-asian: normal; font-variant-position: normal; vertical-align: baseline=
; white-space: pre-wrap;">The final 2.8 planning meeting was held. The goog=
le doc summarising the discussions so far: </span><a href=3D"https://docs.g=
oogle.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7xdZ5_t6smpZO2HbaJGXbU/" style=
=3D"text-decoration:none;"><span style=3D"font-size: 11pt; color: rgb(17, 8=
5, 204); background-color: transparent; font-variant-ligatures: normal; fon=
t-variant-east-asian: normal; font-variant-position: normal; text-decoratio=
n: underline; text-decoration-skip: none; vertical-align: baseline; white-s=
pace: pre-wrap;">https://docs.google.com/document/d/1CNEKA4d0eT6-e0hnS2pwi7=
xdZ5_t6smpZO2HbaJGXbU/</span></a></p></li></ul><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span sty=
le=3D"font-size: 11pt; font-family: Arial; background-color: transparent; f=
ont-variant-ligatures: normal; font-variant-east-asian: normal; font-varian=
t-position: normal; vertical-align: baseline; white-space: pre-wrap;">If pe=
ople are planning to work on specific things in 2.8 please let us know so w=
e can incorporate this into our plans. If you=E2=80=99re interested in work=
ing on anything in the document, please also let us know or talk with us in=
 one of the planning meetings.</span></p><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style=3D"=
font-size: 11pt; font-family: Arial; background-color: transparent; font-va=
riant-ligatures: normal; font-variant-east-asian: normal; font-variant-posi=
tion: normal; vertical-align: baseline; white-space: pre-wrap;">Most items =
planned to be worked upon should now be in the bugzilla with appropriately =
detailed entries there.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style=3D"font-si=
ze: 11pt; font-family: Arial; background-color: transparent; font-variant-l=
igatures: normal; font-variant-east-asian: normal; font-variant-position: n=
ormal; vertical-align: baseline; white-space: pre-wrap;">A summary of the 2=
.8 planning risk items was included in an email to the yocto-ab list:</span=
></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt;margin-left: 36pt;"><a href=3D"https://lists.yoctoproject.org/pipermail=
/yocto-ab/2019-May/002334.html" style=3D"text-decoration:none;"><span style=
=3D"font-size: 11pt; font-family: Arial; color: rgb(17, 85, 204); backgroun=
d-color: transparent; font-variant-ligatures: normal; font-variant-east-asi=
an: normal; font-variant-position: normal; text-decoration: underline; text=
-decoration-skip: none; vertical-align: baseline; white-space: pre-wrap;">h=
ttps://lists.yoctoproject.org/pipermail/yocto-ab/2019-May/002334.html</span=
></a></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" st=
yle=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; backgrou=
nd-color: transparent; font-variant-ligatures: normal; font-variant-east-as=
ian: normal; font-variant-position: normal; vertical-align: baseline; white=
-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: transparen=
t; font-variant-ligatures: normal; font-variant-east-asian: normal; font-va=
riant-position: normal; vertical-align: baseline; white-space: pre-wrap;">T=
he project is planning to adopt SPDX license headers in its source code whe=
re practical, OE-Core now has the markup on its scripts too.</span></p></li=
><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-fami=
ly: Arial; background-color: transparent; font-variant-ligatures: normal; f=
ont-variant-east-asian: normal; font-variant-position: normal; vertical-ali=
gn: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; backgroun=
d-color: transparent; font-variant-ligatures: normal; font-variant-east-asi=
an: normal; font-variant-position: normal; vertical-align: baseline; white-=
space: pre-wrap;">Mailing lists are moving to groups.io instead of our curr=
ent mailman setup on 27th May. This shouldn=E2=80=99t impact users directly=
, more details will be sent to the mailing lists in due course.</span></p><=
/li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-f=
amily: Arial; background-color: transparent; font-variant-ligatures: normal=
; font-variant-east-asian: normal; font-variant-position: normal; vertical-=
align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; backgr=
ound-color: transparent; font-variant-ligatures: normal; font-variant-east-=
asian: normal; font-variant-position: normal; vertical-align: baseline; whi=
te-space: pre-wrap;">We have a new =E2=80=9Cnewcomer=E2=80=9D bug category =
which are bugs suited to someone new to the project. These can be seen here=
: </span><a href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_=
Bugs" style=3D"text-decoration:none;"><span style=3D"font-size: 11pt; color=
: rgb(17, 85, 204); background-color: transparent; font-variant-ligatures: =
normal; font-variant-east-asian: normal; font-variant-position: normal; tex=
t-decoration: underline; text-decoration-skip: none; vertical-align: baseli=
ne; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Bug_Triage#N=
ewcomer_Bugs</span></a></p></li><li dir=3D"ltr" style=3D"list-style-type: d=
isc; font-size: 11pt; font-family: Arial; background-color: transparent; fo=
nt-variant-ligatures: normal; font-variant-east-asian: normal; font-variant=
-position: normal; vertical-align: baseline; white-space: pre;"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span styl=
e=3D"font-size: 11pt; background-color: transparent; font-variant-ligatures=
: normal; font-variant-east-asian: normal; font-variant-position: normal; v=
ertical-align: baseline; white-space: pre-wrap;">We=E2=80=99re about ready =
to switch over to gcc 9 by default with one more issue needing to be resolv=
ed on mips.</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; =
font-size: 11pt; font-family: Arial; background-color: transparent; font-va=
riant-ligatures: normal; font-variant-east-asian: normal; font-variant-posi=
tion: normal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"=
font-size: 11pt; background-color: transparent; font-variant-ligatures: nor=
mal; font-variant-east-asian: normal; font-variant-position: normal; vertic=
al-align: baseline; white-space: pre-wrap;">We=E2=80=99re likely going to c=
hange the tuning of qemux86 to something more modern</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Aria=
l; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color:=
 transparent; font-variant-ligatures: normal; font-variant-east-asian: norm=
al; font-variant-position: normal; vertical-align: baseline; white-space: p=
re-wrap;">We=E2=80=99re likely to drop openssl 1.0 and irda from OE-Core im=
minently</span></p></li></ul><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt;"><br><br></p><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; =
font-family: Arial; background-color: transparent; font-variant-ligatures: =
normal; font-variant-east-asian: normal; font-variant-position: normal; ver=
tical-align: baseline; white-space: pre-wrap;">Planned Releases for YP 2.8:=
</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" =
style=3D"list-style-type: disc; font-size: 11pt; font-family: Arial; backgr=
ound-color: transparent; font-variant-ligatures: normal; font-variant-east-=
asian: normal; font-variant-position: normal; vertical-align: baseline; whi=
te-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color: transpar=
ent; font-variant-ligatures: normal; font-variant-east-asian: normal; font-=
variant-position: normal; vertical-align: baseline; white-space: pre-wrap;"=
>M1 Cutoff June 9th</span></p></li><li dir=3D"ltr" style=3D"list-style-type=
: disc; font-size: 11pt; font-family: Arial; background-color: transparent;=
 font-variant-ligatures: normal; font-variant-east-asian: normal; font-vari=
ant-position: normal; vertical-align: baseline; white-space: pre;"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span=
 style=3D"font-size: 11pt; background-color: transparent; font-variant-liga=
tures: normal; font-variant-east-asian: normal; font-variant-position: norm=
al; vertical-align: baseline; white-space: pre-wrap;">M1 Release June 21st<=
/span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 1=
1pt; font-family: Arial; background-color: transparent; font-variant-ligatu=
res: normal; font-variant-east-asian: normal; font-variant-position: normal=
; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 1=
1pt; background-color: transparent; font-variant-ligatures: normal; font-va=
riant-east-asian: normal; font-variant-position: normal; vertical-align: ba=
seline; white-space: pre-wrap;">M2 Cutoff 14th July</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Aria=
l; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color:=
 transparent; font-variant-ligatures: normal; font-variant-east-asian: norm=
al; font-variant-position: normal; vertical-align: baseline; white-space: p=
re-wrap;">M2 Release 26th July</span></p></li><li dir=3D"ltr" style=3D"list=
-style-type: disc; font-size: 11pt; font-family: Arial; background-color: t=
ransparent; font-variant-ligatures: normal; font-variant-east-asian: normal=
; font-variant-position: normal; vertical-align: baseline; white-space: pre=
;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t;"><span style=3D"font-size: 11pt; background-color: transparent; font-var=
iant-ligatures: normal; font-variant-east-asian: normal; font-variant-posit=
ion: normal; vertical-align: baseline; white-space: pre-wrap;">M3 Cutoff (F=
eature Freeze) 25th Aug</span></p></li><li dir=3D"ltr" style=3D"list-style-=
type: disc; font-size: 11pt; font-family: Arial; background-color: transpar=
ent; font-variant-ligatures: normal; font-variant-east-asian: normal; font-=
variant-position: normal; vertical-align: baseline; white-space: pre;"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><sp=
an style=3D"font-size: 11pt; background-color: transparent; font-variant-li=
gatures: normal; font-variant-east-asian: normal; font-variant-position: no=
rmal; vertical-align: baseline; white-space: pre-wrap;">M3 Release 6th Sept=
</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: =
11pt; font-family: Arial; background-color: transparent; font-variant-ligat=
ures: normal; font-variant-east-asian: normal; font-variant-position: norma=
l; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: =
11pt; background-color: transparent; font-variant-ligatures: normal; font-v=
ariant-east-asian: normal; font-variant-position: normal; vertical-align: b=
aseline; white-space: pre-wrap;">M4 Cutoff 30th Sept</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-family: Aria=
l; background-color: transparent; font-variant-ligatures: normal; font-vari=
ant-east-asian: normal; font-variant-position: normal; vertical-align: base=
line; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; background-color:=
 transparent; font-variant-ligatures: normal; font-variant-east-asian: norm=
al; font-variant-position: normal; vertical-align: baseline; white-space: p=
re-wrap;">2.8 (M4) Final Release 25th Oct</span></p></li></ul><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><sp=
an style=3D"font-size: 11pt; font-family: Arial; background-color: transpar=
ent; font-variant-ligatures: normal; font-variant-east-asian: normal; font-=
variant-position: normal; vertical-align: baseline; white-space: pre-wrap;"=
>Planned upcoming dot releases:</span></p><ul style=3D"margin-top:0pt;margi=
n-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 1=
1pt; font-family: Arial; background-color: transparent; font-variant-ligatu=
res: normal; font-variant-east-asian: normal; font-variant-position: normal=
; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 1=
1pt; background-color: transparent; font-variant-ligatures: normal; font-va=
riant-east-asian: normal; font-variant-position: normal; vertical-align: ba=
seline; white-space: pre-wrap;">YP 2.6.3 (Thud) is in planning</span></p></=
li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11pt; font-fa=
mily: Arial; background-color: transparent; font-variant-ligatures: normal;=
 font-variant-east-asian: normal; font-variant-position: normal; vertical-a=
lign: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; backgro=
und-color: transparent; font-variant-ligatures: normal; font-variant-east-a=
sian: normal; font-variant-position: normal; vertical-align: baseline; whit=
e-space: pre-wrap;">YP 2.7.1 (Warrior) is in planning</span></p></li></ul><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;">=
<br></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt;"><span style=3D"font-size: 11pt; font-family: Arial; background-col=
or: transparent; font-variant-ligatures: normal; font-variant-east-asian: n=
ormal; font-variant-position: normal; vertical-align: baseline; white-space=
: pre-wrap;">Tracking Metrics:</span></p><ul style=3D"margin-top:0pt;margin=
-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 11=
pt; font-family: Arial; background-color: transparent; font-variant-ligatur=
es: normal; font-variant-east-asian: normal; font-variant-position: normal;=
 vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11=
pt; background-color: transparent; font-variant-ligatures: normal; font-var=
iant-east-asian: normal; font-variant-position: normal; vertical-align: bas=
eline; white-space: pre-wrap;">WDD 2596 (last week 2602)</span><span style=
=3D"font-size: 11pt; font-family: Consolas; background-color: transparent; =
font-variant-ligatures: normal; font-variant-east-asian: normal; font-varia=
nt-position: normal; vertical-align: baseline; white-space: pre-wrap;"> (</=
span><a href=3D"https://wiki.yoctoproject.org/charts/combo.html" style=3D"t=
ext-decoration:none;"><span style=3D"font-size: 11pt; color: rgb(17, 85, 20=
4); background-color: transparent; font-variant-ligatures: normal; font-var=
iant-east-asian: normal; font-variant-position: normal; text-decoration: un=
derline; text-decoration-skip: none; vertical-align: baseline; white-space:=
 pre-wrap;">https://wiki.yoctoproject.org/charts/combo.html</span></a><span=
 style=3D"font-size: 11pt; font-family: Consolas; background-color: transpa=
rent; font-variant-ligatures: normal; font-variant-east-asian: normal; font=
-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;=
">)</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-siz=
e: 11pt; font-family: Consolas; background-color: transparent; font-variant=
-ligatures: normal; font-variant-east-asian: normal; font-variant-position:=
 normal; vertical-align: baseline; white-space: pre;"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 11pt; font-family: Arial; background-color: transparent; font-varian=
t-ligatures: normal; font-variant-east-asian: normal; font-variant-position=
: normal; vertical-align: baseline; white-space: pre-wrap;">Poky Patch Metr=
ics &nbsp;</span></p></li><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><=
li dir=3D"ltr" style=3D"list-style-type: circle; font-size: 11pt; font-fami=
ly: Arial; background-color: transparent; font-variant-ligatures: normal; f=
ont-variant-east-asian: normal; font-variant-position: normal; vertical-ali=
gn: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; backgroun=
d-color: transparent; font-variant-ligatures: normal; font-variant-east-asi=
an: normal; font-variant-position: normal; vertical-align: baseline; white-=
space: pre-wrap;">Total patches found: 1560 (last week 1558)</span></p></li=
><li dir=3D"ltr" style=3D"list-style-type: circle; font-size: 11pt; font-fa=
mily: Consolas; background-color: transparent; font-variant-ligatures: norm=
al; font-variant-east-asian: normal; font-variant-position: normal; vertica=
l-align: baseline; white-space: pre;"><p dir=3D"ltr" style=3D"line-height:1=
.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 11pt; font=
-family: Arial; background-color: transparent; font-variant-ligatures: norm=
al; font-variant-east-asian: normal; font-variant-position: normal; vertica=
l-align: baseline; white-space: pre-wrap;">Patches in the Pending State: 66=
5 (43%) [last week 655 (42%)]</span></p></li></ul></ul><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span styl=
e=3D"font-size: 11pt; font-family: Arial; background-color: transparent; fo=
nt-variant-ligatures: normal; font-variant-east-asian: normal; font-variant=
-position: normal; vertical-align: baseline; white-space: pre-wrap;">Key St=
atus Links for YP:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki=
/Yocto_Project_v2.7_Status" style=3D"text-decoration:none;"><span style=3D"=
font-size: 11pt; font-family: Consolas; color: rgb(17, 85, 204); background=
-color: transparent; font-variant-ligatures: normal; font-variant-east-asia=
n: normal; font-variant-position: normal; text-decoration: underline; text-=
decoration-skip: none; vertical-align: baseline; white-space: pre-wrap;">ht=
tps://wiki.yoctoproject.org/wiki/Yocto_Project_v2.8_Status</span></a></p><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><=
a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule" style=3D"t=
ext-decoration:none;"><span style=3D"font-size: 11pt; font-family: Consolas=
; color: rgb(17, 85, 204); background-color: transparent; font-variant-liga=
tures: normal; font-variant-east-asian: normal; font-variant-position: norm=
al; text-decoration: underline; text-decoration-skip: none; vertical-align:=
 baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto=
_2.8_Schedule</span></a></p><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/=
Yocto_2.7_Features" style=3D"text-decoration:none;"><span style=3D"font-siz=
e: 11pt; font-family: Consolas; color: rgb(17, 85, 204); background-color: =
transparent; font-variant-ligatures: normal; font-variant-east-asian: norma=
l; font-variant-position: normal; text-decoration: underline; text-decorati=
on-skip: none; vertical-align: baseline; white-space: pre-wrap;">https://wi=
ki.yoctoproject.org/wiki/Yocto_2.8_Features</span></a></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span=
 style=3D"font-size: 11pt; font-family: Arial; background-color: transparen=
t; font-variant-ligatures: normal; font-variant-east-asian: normal; font-va=
riant-position: normal; vertical-align: baseline; white-space: pre-wrap;">T=
he Status reports are now stored on the wiki at: </span><a href=3D"https://=
wiki.yoctoproject.org/wiki/Weekly_Status" style=3D"text-decoration:none;"><=
span style=3D"font-size: 11pt; font-family: Arial; color: rgb(17, 85, 204);=
 background-color: transparent; font-variant-ligatures: normal; font-varian=
t-east-asian: normal; font-variant-position: normal; text-decoration: under=
line; text-decoration-skip: none; vertical-align: baseline; white-space: pr=
e-wrap;">https://wiki.yoctoproject.org/wiki/Weekly_Status</span></a></p><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b=
r></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt;"><span style=3D"font-size: 11pt; font-family: Arial; background-color=
: transparent; font-variant-ligatures: normal; font-variant-east-asian: nor=
mal; font-variant-position: normal; vertical-align: baseline; white-space: =
pre-wrap;">[If anyone has suggestions for other information you=E2=80=99d l=
ike to see on this weekly status update, let us know!]</span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p>
</body></html>

--=-7RVZ+wrHoHa+YAlg4E/i--
