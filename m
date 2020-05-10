Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.17206.1589126773580338914
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 May 2020 09:06:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=HGs5YPYO;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C27E01B31; Sun, 10 May 2020 09:06:12 -0700 (PDT)
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
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E0E7E01B2F
	for <yocto@yoctoproject.org>; Sun, 10 May 2020 09:06:11 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id 18so3552164pfv.8
        for <yocto@yoctoproject.org>; Sun, 10 May 2020 09:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
         :content-language;
        bh=syNbB0HhxGzSkRMP5rK32+FNhggHgqHR+cUoPZ7wskA=;
        b=HGs5YPYO5OPEfDRwLBUMBbvWiURb1GlRgt1JznomfFPwi+s2uC9DJWRoPFRANw8aMU
         UGz4eAjlJdz+j+Kov8GXoGc7mpJokldll+6ezuGFcQyULYk5lBnRkw6l7S+MllsuuJhU
         MahUk3GNwX1+t4SiBS59rkRpyglc4c502GxvcRmkhysYgfDemTCyjSm/t1vEKxum3KZb
         ooKAFDLBGrB08dFCoP5b4Clhccb9sfnHCQ2bz4vM3wG+xBymQ6dOcf9CQiMKwsExflHd
         UWixmW/+7z6dXgMg15KWBERq2PUsU8LovrJQNCiDuHlJ7Y3oWC4ySFhAmhm3uoj+g25l
         uwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version:content-language;
        bh=syNbB0HhxGzSkRMP5rK32+FNhggHgqHR+cUoPZ7wskA=;
        b=gBYwEuTqYP6HU/o87BWQJEywHiob0aZjraIYxfyYc+x30edNu4j83Ey5z67qi1HF2Y
         N/m9HO0jY9Ckyt/wVzxYNd19Tw7awvOmhHiycwFkTnm1LMv3XmPyGIwbHo1KtlxYqGSV
         5sfosqsWdeT84Y3zoS7FiQzbd6Mjz+XiaIC8+j2eAwrUkAMWyTU42acekKhJajLPjLpA
         b1bZvQiOhYMnmyF9QsPxP3vzike3e9Z2kP1UPUQiaytZFgaDt9yEQCS7JPpYDXEK7DiM
         5goOjYM3PBOGgFOM5MjgLIGId2Le2NdK8Zj06OAF0KPYNjWkqlHhUoBBEhpdmrd1JXzS
         0tkw==
X-Gm-Message-State: AOAM533Lky4wcjmmrVp28KHTfK2QM3GfzJfBdH/JyVmOJprRXUjvcOvT
	u5iXSy+JbFKeS79g4gkRcPE=
X-Google-Smtp-Source: ABdhPJxzpiwJZjK6QBPjClnv8ACR0rl2/q8c7mJIbpBib89Rv9JfBpyDCGceTmaO+KwqgvyrKVhbrA==
X-Received: by 2002:a63:33c6:: with SMTP id z189mr236397pgz.357.1589126771021;
        Sun, 10 May 2020 09:06:11 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:5144:7d75:d840:ce3d? ([2601:202:4180:a5c0:5144:7d75:d840:ce3d])
        by smtp.gmail.com with ESMTPSA id b29sm7057888pfp.68.2020.05.10.09.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 May 2020 09:06:10 -0700 (PDT)
To: "openembedded-core@openembedded.org"
 <openembedded-core@openembedded.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "bitbake-devel@lists.openembedded.org" <bitbake-devel@lists.openembedded.org>
From: "akuster" <akuster808@gmail.com>
Subject: 3.2 (Gatesgarth ) assistance
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <702d984e-3f98-6513-ea4d-e0811ce232d9@gmail.com>
Date: Sun, 10 May 2020 09:06:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------C49D921B093592FFB9BFF045"
Content-Language: en-US

--------------C49D921B093592FFB9BFF045
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

The Yocto Project and OE bug triage are seeking some assistance on tasks
we hope to addressed into 3.2.

The first milestone for 3.2 is targeted for 2020/6/16.=C2=A0=C2=A0 If any=
one is
interested in helping or seeking a new=C2=A0 challenge, please=C2=A0 take=
 a look
in the list below to see if anything interests you. Help can be in any
form from research to a patch to address the issue.

Best regards,
Armin
(On behalf of the Yocto Project triage team)



https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium.2B_3.2_Unassigned_En=
hancements.2FBugs


5389 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5389>
bitbake/lib/bb/fetch2: filename too long 	normal 	Medium+ 	3.2 M1
Unassigned 	IN PROGRESS IMPLEMENTATION =09
	4
7600 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7600> 	syslinux=
:
port extX support patches to syslinux community 	enhancement 	Medium+
3.2 M1 	Unassigned 	IN PROGRESS IMPLEMENTATION =09
	5
10731 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10731> 	bitbak=
e
--observe-only doesn't work with memres 	normal 	Medium+ 	3.2 M1
Unassigned 	IN PROGRESS REVIEW =09
	5
11351 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11351>
go-native: do_compile failed when len(tmp) =3D 410 	normal 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
	2
11781 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11781> 	bitbak=
e
--observe-only may get KeyError 	normal 	Medium+ 	3.2 M1 	Unassigned 	IN
PROGRESS REVIEW =09
	3
12347 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12347>
llvm-native: do_configure failed when len(TMPDIR) =3D=3D 410 	normal
Medium+ 	3.2 M1 	Unassigned 	NEW =09
	2
12362 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12362>
webkitgtk: do_compile failed when len(TMPDIR) =3D=3D 410 	normal 	Medium+=

3.2 M1 	Unassigned 	NEW =09
	3
12367 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12367> 	moving=

or removing tmp breaks persistent bitbake server 	normal 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
=09
12374 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12374>
do_rootfs failed when len(TMPDIR) =3D=3D 410 	normal 	Medium+ 	3.2 M1
Unassigned 	NEW =09
	2
13004 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13004>
Automate yocto-check-layer -m option 	enhancement 	Medium+ 	3.2 M1
Unassigned 	NEW =09
=09
13023 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13023> 	Switch=

to memory resident bitbake by default in 3.2 	enhancement 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
=09
13039 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13039> 	fetch2=
:
PREMIRROR and SRC_URI with type https and parameter downloadfilename
yields invalid url 	normal 	Medium+ 	3.2 M1 	Unassigned 	NEW =09
=09
13055 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13055>
oe-selftest runcmd.RunCmdTests.test_stdin failure 	normal 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
=09
13176 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13176>
yocto-check-layer can only check layers which aren't already in BBLAYERS
	normal 	Medium+ 	3.2 M1 	Unassigned 	NEW 	Backport 3.1 & 3.0 & 2.7 =09
13181 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13181>
persist_data sqlite database mixed with forking is irreparably broken
normal 	Medium+ 	3.2 M1 	Unassigned 	NEW =09
=09
13233 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13233> 	fetch2=
:
try_premirror(): improve on updating repo from mirror 	enhancement
Medium+ 	3.2 M1 	Unassigned 	NEW =09
	3
13236 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13236> 	sstate=

for host native packages 	normal 	Medium+ 	3.2 M1 	Unassigned 	NEW =09
=09
13279 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13279> 	Make
sure users/groups exist for package_write_* tasks 	normal 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
=09
13306 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13306> 	bitbak=
e
starts up to n^2 processes with n cpus 	normal 	Medium+ 	3.2 M1
Unassigned 	NEW =09
=09
13353 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13353> 	bitbak=
e
git fetcher does not honour BB_FETCH_PREMIRRORONLY 	normal 	Medium+ 	3.2
M1 	Unassigned 	NEW =09
=09
13419 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13419> 	recipe=
s
that add users to groups cannot rely on other recipes creating those
groups (when population from sstate happens) 	normal 	Medium+ 	3.2 M1
Unassigned 	NEW =09
=09
13421 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13421> 	File
race when calling devtool.setUpModule 	normal 	Medium+ 	3.2 M1
Unassigned 	NEW =09
=09
13463 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13463> 	test
linux-yocto-rt kernels too 	normal 	Medium+ 	3.2 M1 	Unassigned 	NEW =09
=09
13705 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13705> 	master=
]
bitbake and hashserve.sock left behind when ^C a build 	normal 	Medium+
3.2 M1 	Unassigned 	NEW =09
=09
13803 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13803> 	devtoo=
l
setupClass file copying race 	normal 	Medium+ 	3.2 M1 	Unassigned 	NEW
backport 3.1 =09
13811 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13811> 	Memory=

Resident bitbake has output redirection problem 	normal 	Medium+ 	3.2 M1
	Unassigned 	NEW =09
=09
13843 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13843> 	bitbak=
e
worker stuck using 100% cpu on aborted build 	normal 	Medium+ 	3.2 M1
Unassigned 	NEW =09
=09
13859 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13859>
adwaita-icon-theme cannot find GTK+3 gtk-update-icon-cache command
minor 	Medium+ 	3.2 M1 	Unassigned 	NEW =09
=09
13868 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13868> 	Python=

cache files get lost in packages 	normal 	Medium+ 	3.2 M1 	Unassigned 	NE=
W =09
=09
13822 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13822> 	Easy t=
o
have misleading warnings if env script is executed instead of sourced
normal 	Medium+ 	3.2 M2 	Unassigned


--------------C49D921B093592FFB9BFF045
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Hello,<br>
    <br>
    The Yocto Project and OE bug triage are seeking some assistance on
    tasks we hope to addressed into 3.2.<br>
    <br>
    The first milestone for 3.2 is targeted for <span
      style=3D"font-family:&quot;Arial&quot;,sans-serif">2020/6/16.=C2=A0=
=C2=A0 If
      anyone is interested in helping or seeking a new=C2=A0 challenge,
      please=C2=A0 take a look in the list below to see if anything inter=
ests
      you. Help can be in any form from research to a patch to address
      the issue.<br>
      <br>
      Best regards,<br>
      Armin<br>
      (On behalf of the Yocto Project triage team)<br>
      <br>
      <br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoctoproject.org/=
wiki/Bug_Triage#Medium.2B_3.2_Unassigned_Enhancements.2FBugs">https://wik=
i.yoctoproject.org/wiki/Bug_Triage#Medium.2B_3.2_Unassigned_Enhancements.=
2FBugs</a><br>
      <br>
    </span><br>
    <table class=3D"bugzilla sortable">
      <tbody>
        <tr class=3D"bz_bug Medium+ normal IN PROGRESS IMPLEMENTATION
          bz_row_odd">
          <td title=3D"5389"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
5389"
              class=3D"extiw" title=3D"bugzilla:5389"><span title=3D"5389=
">5389</span></a></td>
          <td>bitbake/lib/bb/fetch2: filename too long</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>IN PROGRESS IMPLEMENTATION</td>
          <td><br>
          </td>
          <td>4</td>
        </tr>
        <tr class=3D"bz_bug Medium+ enhancement IN PROGRESS IMPLEMENTATIO=
N
          bz_row_even">
          <td title=3D"7600"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
7600"
              class=3D"extiw" title=3D"bugzilla:7600"><span title=3D"7600=
">7600</span></a></td>
          <td>syslinux: port extX support patches to syslinux community</=
td>
          <td>enhancement</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>IN PROGRESS IMPLEMENTATION</td>
          <td><br>
          </td>
          <td>5</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal IN PROGRESS REVIEW bz_row_odd"=
>
          <td title=3D"10731"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
10731"
              class=3D"extiw" title=3D"bugzilla:10731"><span title=3D"107=
31">10731</span></a></td>
          <td>bitbake --observe-only doesn't work with memres</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>IN PROGRESS REVIEW</td>
          <td><br>
          </td>
          <td>5</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"11351"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11351"
              class=3D"extiw" title=3D"bugzilla:11351"><span title=3D"113=
51">11351</span></a></td>
          <td>go-native: do_compile failed when len(tmp) =3D 410</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td>2</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal IN PROGRESS REVIEW bz_row_odd"=
>
          <td title=3D"11781"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11781"
              class=3D"extiw" title=3D"bugzilla:11781"><span title=3D"117=
81">11781</span></a></td>
          <td>bitbake --observe-only may get KeyError</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>IN PROGRESS REVIEW</td>
          <td><br>
          </td>
          <td>3</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"12347"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
12347"
              class=3D"extiw" title=3D"bugzilla:12347"><span title=3D"123=
47">12347</span></a></td>
          <td>llvm-native: do_configure failed when len(TMPDIR) =3D=3D 41=
0</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td>2</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"12362"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
12362"
              class=3D"extiw" title=3D"bugzilla:12362"><span title=3D"123=
62">12362</span></a></td>
          <td>webkitgtk: do_compile failed when len(TMPDIR) =3D=3D 410</t=
d>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td>3</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"12367"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
12367"
              class=3D"extiw" title=3D"bugzilla:12367"><span title=3D"123=
67">12367</span></a></td>
          <td>moving or removing tmp breaks persistent bitbake server</td=
>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"12374"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
12374"
              class=3D"extiw" title=3D"bugzilla:12374"><span title=3D"123=
74">12374</span></a></td>
          <td>do_rootfs failed when len(TMPDIR) =3D=3D 410</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td>2</td>
        </tr>
        <tr class=3D"bz_bug Medium+ enhancement NEW bz_row_even">
          <td title=3D"13004"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13004"
              class=3D"extiw" title=3D"bugzilla:13004"><span title=3D"130=
04">13004</span></a></td>
          <td>Automate yocto-check-layer -m option</td>
          <td>enhancement</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ enhancement NEW bz_row_odd">
          <td title=3D"13023"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13023"
              class=3D"extiw" title=3D"bugzilla:13023"><span title=3D"130=
23">13023</span></a></td>
          <td>Switch to memory resident bitbake by default in 3.2</td>
          <td>enhancement</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13039"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13039"
              class=3D"extiw" title=3D"bugzilla:13039"><span title=3D"130=
39">13039</span></a></td>
          <td>fetch2: PREMIRROR and SRC_URI with type https and
            parameter downloadfilename yields invalid url</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13055"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13055"
              class=3D"extiw" title=3D"bugzilla:13055"><span title=3D"130=
55">13055</span></a></td>
          <td>oe-selftest runcmd.RunCmdTests.test_stdin failure</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13176"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13176"
              class=3D"extiw" title=3D"bugzilla:13176"><span title=3D"131=
76">13176</span></a></td>
          <td>yocto-check-layer can only check layers which aren't
            already in BBLAYERS</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td>Backport 3.1 &amp; 3.0 &amp; 2.7</td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13181"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13181"
              class=3D"extiw" title=3D"bugzilla:13181"><span title=3D"131=
81">13181</span></a></td>
          <td>persist_data sqlite database mixed with forking is
            irreparably broken</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ enhancement NEW bz_row_even">
          <td title=3D"13233"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13233"
              class=3D"extiw" title=3D"bugzilla:13233"><span title=3D"132=
33">13233</span></a></td>
          <td>fetch2: try_premirror(): improve on updating repo from
            mirror</td>
          <td>enhancement</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td>3</td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13236"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13236"
              class=3D"extiw" title=3D"bugzilla:13236"><span title=3D"132=
36">13236</span></a></td>
          <td>sstate for host native packages</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13279"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13279"
              class=3D"extiw" title=3D"bugzilla:13279"><span title=3D"132=
79">13279</span></a></td>
          <td>Make sure users/groups exist for package_write_* tasks</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13306"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13306"
              class=3D"extiw" title=3D"bugzilla:13306"><span title=3D"133=
06">13306</span></a></td>
          <td>bitbake starts up to n^2 processes with n cpus</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13353"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13353"
              class=3D"extiw" title=3D"bugzilla:13353"><span title=3D"133=
53">13353</span></a></td>
          <td>bitbake git fetcher does not honour BB_FETCH_PREMIRRORONLY<=
/td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13419"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13419"
              class=3D"extiw" title=3D"bugzilla:13419"><span title=3D"134=
19">13419</span></a></td>
          <td>recipes that add users to groups cannot rely on other
            recipes creating those groups (when population from sstate
            happens)</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13421"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13421"
              class=3D"extiw" title=3D"bugzilla:13421"><span title=3D"134=
21">13421</span></a></td>
          <td>File race when calling devtool.setUpModule</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13463"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13463"
              class=3D"extiw" title=3D"bugzilla:13463"><span title=3D"134=
63">13463</span></a></td>
          <td>test linux-yocto-rt kernels too</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13705"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13705"
              class=3D"extiw" title=3D"bugzilla:13705"><span title=3D"137=
05">13705</span></a></td>
          <td>master] bitbake and hashserve.sock left behind when ^C a
            build</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13803"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13803"
              class=3D"extiw" title=3D"bugzilla:13803"><span title=3D"138=
03">13803</span></a></td>
          <td>devtool setupClass file copying race</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td>backport 3.1</td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13811"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13811"
              class=3D"extiw" title=3D"bugzilla:13811"><span title=3D"138=
11">13811</span></a></td>
          <td>Memory Resident bitbake has output redirection problem</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13843"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13843"
              class=3D"extiw" title=3D"bugzilla:13843"><span title=3D"138=
43">13843</span></a></td>
          <td>bitbake worker stuck using 100% cpu on aborted build</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ minor NEW bz_row_even">
          <td title=3D"13859"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13859"
              class=3D"extiw" title=3D"bugzilla:13859"><span title=3D"138=
59">13859</span></a></td>
          <td>adwaita-icon-theme cannot find GTK+3 gtk-update-icon-cache
            command</td>
          <td>minor</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_odd">
          <td title=3D"13868"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13868"
              class=3D"extiw" title=3D"bugzilla:13868"><span title=3D"138=
68">13868</span></a></td>
          <td>Python cache files get lost in packages</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M1</td>
          <td>Unassigned</td>
          <td>NEW</td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr class=3D"bz_bug Medium+ normal NEW bz_row_even">
          <td title=3D"13822"><a
              href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13822"
              class=3D"extiw" title=3D"bugzilla:13822"><span title=3D"138=
22">13822</span></a></td>
          <td>Easy to have misleading warnings if env script is executed
            instead of sourced</td>
          <td>normal</td>
          <td>Medium+</td>
          <td>3.2 M2</td>
          <td>Unassigned</td>
        </tr>
      </tbody>
    </table>
    <span style=3D"font-family:&quot;Arial&quot;,sans-serif"></span>
  </body>
</html>

--------------C49D921B093592FFB9BFF045--
