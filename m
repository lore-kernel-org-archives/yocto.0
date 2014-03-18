Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63785E002A6
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 12:17:25 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hm4so4061887wib.2
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 12:17:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=Qg6rTCdYkYSkaqGOhHfYNVlVfrANp4gekBOQ01kFuKg=;
	b=Uh5CYP69IFWoGJ9Iu6Ed4aeKmwz1ICaXyNjgJVDe5og35Arq+jBgf5LC8o0TdQoy6A
	PqddVv1zq2Xztw9D4e49JkwnxleeUPleHSSN+JUj6ndwPzD4L8J5Lj/5u9gjGXoNVdsX
	GK7gc4/SDMOEmz9t8dOqUARgcaWDrmSg52G9GZuCaRtuVdPiqE9iKc5oB+kAEfbjgTJP
	rE/15h18NheMD3NLqV+RvdLU2fLFpdojEy3s8ADwKj7SohVYHmw4vDlkLzMEOCqTZnYY
	7QxpK2alt9io1YUN3aSzRhpg0h44JkqRsn8DA34UFyLqSnfX15cg454VwbskrgqTDcyR
	KFIw==
X-Gm-Message-State: ALoCoQk0vfzkIOGuqlRCCpn8C84xSRja1fQSBVgNTpuUO6mqfHVaKrkmFyd1pxEX1Tf/trFWOST7
X-Received: by 10.194.119.168 with SMTP id kv8mr12501211wjb.41.1395170244399; 
	Tue, 18 Mar 2014 12:17:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 18 Mar 2014 12:17:04 -0700 (PDT)
X-Originating-IP: [5.13.146.71]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 18 Mar 2014 21:17:04 +0200
Message-ID: <CAK18fxGFG8-fRu6QzsPXb1q5GQegVQ-R__6FPKk3cews__v-AQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Issues after pulling master - "Failed to fetch test data from the network"
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
X-List-Received-Date: Tue, 18 Mar 2014 19:17:26 -0000
Content-Type: multipart/alternative; boundary=089e01176b1dd1abbd04f4e662c0

--089e01176b1dd1abbd04f4e662c0
Content-Type: text/plain; charset=ISO-8859-1

I started a new build after pulling in the sources from poky/master. Things
ended quickly with:

ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:
    Failed to fetch test data from the network. Please ensure your network
is configured correctly.
ERROR: Execution of event handler 'check_sanity_eventhandler' faile

By default (poky distro conf):
CONNECTIVITY_CHECK_URIS=" https://eula-downloads.yoctoproject.org/index.php
http://bugzilla.yoctoproject.org/report.cgi"

It seams like the last guy above responds with 505:
# wget http://bugzilla.yoctoproject.org/report.cgi
--2014-03-18 21:13:11--  http://bugzilla.yoctoproject.org/report.cgi
Resolving bugzilla.yoctoproject.org (bugzilla.yoctoproject.org)...
140.211.169.56
Connecting to bugzilla.yoctoproject.org
(bugzilla.yoctoproject.org)|140.211.169.56|:80...
connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://bugzilla.yoctoproject.org/report.cgi [following]
--2014-03-18 21:13:11--  https://bugzilla.yoctoproject.org/report.cgi
Connecting to bugzilla.yoctoproject.org
(bugzilla.yoctoproject.org)|140.211.169.56|:443...
connected.
HTTP request sent, awaiting response... 502 Bad Gateway
2014-03-18 21:13:12 ERROR 502: Bad Gateway.


Is this a known issue?
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e01176b1dd1abbd04f4e662c0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I started a new build after pulling in the sources from po=
ky/master. Things ended quickly with:<div><br></div><div><div>ERROR: =A0OE-=
core&#39;s config sanity checker detected a potential misconfiguration.</di=
v>

<div>=A0 =A0 Either fix the cause of this error or at your own risk disable=
 the checker (see sanity.conf).</div><div>=A0 =A0 Following is the list of =
potential problems / advisories:</div><div>=A0 =A0 Failed to fetch test dat=
a from the network. Please ensure your network is configured correctly.</di=
v>

<div>ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; =
faile</div><div><br></div><div>By default (poky distro conf):</div><div>CON=
NECTIVITY_CHECK_URIS=3D&quot; <a href=3D"https://eula-downloads.yoctoprojec=
t.org/index.php">https://eula-downloads.yoctoproject.org/index.php</a> <a h=
ref=3D"http://bugzilla.yoctoproject.org/report.cgi">http://bugzilla.yoctopr=
oject.org/report.cgi</a>&quot;<br>

</div><div><br></div><div>It seams like the last guy above responds with 50=
5:</div><div><div># wget <a href=3D"http://bugzilla.yoctoproject.org/report=
.cgi">http://bugzilla.yoctoproject.org/report.cgi</a></div><div>--2014-03-1=
8 21:13:11-- =A0<a href=3D"http://bugzilla.yoctoproject.org/report.cgi">htt=
p://bugzilla.yoctoproject.org/report.cgi</a></div>

<div>Resolving <a href=3D"http://bugzilla.yoctoproject.org">bugzilla.yoctop=
roject.org</a> (<a href=3D"http://bugzilla.yoctoproject.org">bugzilla.yocto=
project.org</a>)... 140.211.169.56</div><div>Connecting to <a href=3D"http:=
//bugzilla.yoctoproject.org">bugzilla.yoctoproject.org</a> (<a href=3D"http=
://bugzilla.yoctoproject.org">bugzilla.yoctoproject.org</a>)|140.211.169.56=
|:80... connected.</div>

<div>HTTP request sent, awaiting response... 302 Moved Temporarily</div><di=
v>Location: <a href=3D"https://bugzilla.yoctoproject.org/report.cgi">https:=
//bugzilla.yoctoproject.org/report.cgi</a> [following]</div><div>--2014-03-=
18 21:13:11-- =A0<a href=3D"https://bugzilla.yoctoproject.org/report.cgi">h=
ttps://bugzilla.yoctoproject.org/report.cgi</a></div>

<div>Connecting to <a href=3D"http://bugzilla.yoctoproject.org">bugzilla.yo=
ctoproject.org</a> (<a href=3D"http://bugzilla.yoctoproject.org">bugzilla.y=
octoproject.org</a>)|140.211.169.56|:443... connected.</div><div>HTTP reque=
st sent, awaiting response... 502 Bad Gateway</div>

<div>2014-03-18 21:13:12 ERROR 502: Bad Gateway.</div></div><div><br></div>=
<div><br></div><div>Is this a known issue?</div>-- <br><div dir=3D"ltr"><di=
v style=3D"text-align:center"></div><div style=3D"text-align:center"><div a=
lign=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medi=
um">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--089e01176b1dd1abbd04f4e662c0--
