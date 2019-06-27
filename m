Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFAB7E00D63; Wed, 26 Jun 2019 23:32:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61689E00C74
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 23:32:00 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id l15so1120089otn.9
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 23:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SgxTP52z2Wve5JQ/zH0cLbCpKUAKPnzB5/5/JQvs670=;
	b=ozjxgjLaYM6qheNqj4SZdtgcGlGXO9sEDAbvgk2gGhxAYuH78lyaZVdEiWpR7XwSDW
	LDRULXYHwppHdx0q/5O+B/Fok5L+PQxWbrmT4q9FfmajfSpq+5JZ8zfPAUIKbKrACkMQ
	wShr1Okx4KKq8IlpY3oLVmbh8ZbGOenlpLpg2/ZGzf4F8WUlOj9mTXzoiVIbtjK2tdLn
	C3vaZd0SWc6+Cpe7xRnRibCpns0YN4LfxXvnuOSk/PVHeMYpiwajAYLLsVwEPqCIkuKX
	XbwJAVUxB6SH/rDhwEd6pitlOL3k6YWUvaZOdHBdvIN2uGIu8Zz2zl0LGpX1BV1z5DpN
	v2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SgxTP52z2Wve5JQ/zH0cLbCpKUAKPnzB5/5/JQvs670=;
	b=INMwEKY/IFReH5+C8yxAuWwTAienfRW+UVro/DNuHFLf/Ve6L1z2ixpdUyjqIl+E1J
	ye8BoDH/PZ0hDiEZbY5cxnilyWM6155i4pIxkIYMwJz84oAEPZT3HQgO8tQbod7j+qzn
	01Cl/psuaZgy84/R2wxlEfy/6DSaOz08VsW/kHAjne8UIFH6jh3M/1H5zhiUndv0wbLG
	h1meHIUo6l3xD/8x3WjPY6irEhmxStejqlzn+R+OwiFaQu73eKSyZFzI+t1fz39ipjzV
	6IGiQKBqdB/AJYceGMvwPbr+znNBeG8dDHzDPuc88LS9uPtPFgCnIV7YAQt+y9EWTstr
	Dr5w==
X-Gm-Message-State: APjAAAVkPi4p+uwsIJGe5q6OOQeY3hZunY+O+ppRFpgaHeUApILSDEPO
	y96WbNOHQWMkxctGCAPZw5rWRNGpw/FSqWfeYbME98UR
X-Google-Smtp-Source: APXvYqzawKWP/V2NaLIdbgb4O6uXduTupVczdwZJbso6EvoJsuh8DW9LJv3mJM8/MkHmNxxZ84brb5eJeBlDzmmajLo=
X-Received: by 2002:a9d:7203:: with SMTP id u3mr1932839otj.313.1561617119351; 
	Wed, 26 Jun 2019 23:31:59 -0700 (PDT)
MIME-Version: 1.0
From: danwe <daniel.wenninger92@gmail.com>
Date: Thu, 27 Jun 2019 08:31:49 +0200
Message-ID: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 06:32:00 -0000
Content-Type: multipart/alternative; boundary="000000000000ac985e058c4851e4"

--000000000000ac985e058c4851e4
Content-Type: text/plain; charset="UTF-8"

while using the command:
daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake core-immage-full
cmdline I get the following ouput:
````

Loading cache: 100% |############################################| Time:
0:00:03

Loaded 1358 entries from dependency cache.

Parsing recipes: 100% |##########################################| Time:
0:00:12

Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65
skipped, 0 masked, 0 errors.

ERROR: No recipes available for:

  /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend

  /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend

  /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend



Summary: There was 1 ERROR message shown, returning a non-zero exit code.
````

How can I solve this?

Thanks.

Daniel

--000000000000ac985e058c4851e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>while using the command:=C2=A0</div><div>daniel@danie=
l-VirtualBox:~/bbb$ MACHINE=3Dbeaglebone bitbake core-immage-full cmdline I=
 get the following ouput:</div><div>````</div><div><p class=3D"MsoNormal" s=
tyle=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation=
 Serif&quot;,serif"><span lang=3D"EN-US">Loading cache: 100% |#############=
###############################| Time: 0:00:03</span></p><p class=3D"MsoNor=
mal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Libe=
ration Serif&quot;,serif"><span lang=3D"EN-US">Loaded 1358 entries from dep=
endency cache.</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0=
001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span =
lang=3D"EN-US">Parsing recipes: 100% |#####################################=
#####| Time: 0:00:12</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0=
cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,serif">=
<span lang=3D"EN-US">Parsing of 832 .bb files complete (829 cached, 3 parse=
d). 1361 targets, 65 skipped, 0 masked, 0 errors.</span></p><p class=3D"Mso=
Normal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;L=
iberation Serif&quot;,serif"><span lang=3D"EN-US">ERROR: No recipes availab=
le for:</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;f=
ont-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D=
"EN-US">=C2=A0 /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7=
.%.bbappend</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001=
pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lan=
g=3D"EN-US">=C2=A0 /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend=
</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-siz=
e:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"=
>=C2=A0 /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend</span>=
</p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;=
font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0=
</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-siz=
e:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"=
>Summary: There was 1 ERROR message shown, returning a non-zero exit code.<=
/span></p></div><div>````</div><div><br></div><div>How can I solve this?</d=
iv><div><br></div><div>Thanks.</div><div><br></div><div>Daniel</div></div>

--000000000000ac985e058c4851e4--
