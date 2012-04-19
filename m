Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4974E0030B
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 17:21:53 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Apr 2012 17:21:53 -0700
Received: by lbbgi4 with SMTP id gi4so359877lbb.25
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 17:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=E0zVn2vaNVYKLT99vLRQLFQv+LkboUBTc7H3Qb8ngfk=;
	b=jj6kfkl4kizYLV+3rWh9MXDTIKmSyQVs9+lqGrcxJcnbuIWBzr89s+oFT8Spfefuhu
	OskpWJc8U+LtQtrGbMZZkCxkYnoE3kN2Z5vR6gOk8xKQ8vMilshypFMNaMUU1AZHcOug
	Slh2vK0wP0O5hBck2TfhLCQTYIrblyInpW4lx52tbq9oxLkqULFNdkqwmtquQJUFeExJ
	qZtOPf9MATENiAjwWde1djQyw878PZesMXUmL/8J0ZaCo2F6eYWLa1HKTnALDn5uzzUV
	X1u4caOgNdzdN3b0YpxygUhzh9zSSb/Er6NkAMi2fnJ5CR6mA9k15gzLwBDwx6f1qY6P
	9uCg==
MIME-Version: 1.0
Received: by 10.152.103.239 with SMTP id fz15mr3924177lab.42.1334794911101;
	Wed, 18 Apr 2012 17:21:51 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Wed, 18 Apr 2012 17:21:51 -0700 (PDT)
Date: Wed, 18 Apr 2012 17:21:51 -0700
Message-ID: <CAPhnLPCs-57NxB5-O=YSiqbPzQk0xhigEEfDEhwrGB2_qtgJ3Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkDxAaOfUzAxT+8DcbVySCMEdw7ViyoWS7sIIUq1nbGMXm+qpgeMJ5DtvuV6TCmQ6V8ND9J
Subject: 1.2 release candidate 4 now available.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Apr 2012 00:21:54 -0000
Content-Type: multipart/alternative; boundary=f46d04088e9f86334c04bdfd289c

--f46d04088e9f86334c04bdfd289c
Content-Type: text/plain; charset=ISO-8859-1

All,

Release candidate 4 for 1.2 is now available for testing:

http://autobuilder.yoctoproject.org/pub/nightly/20120418-2/

This is based off of:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=denzil

We had two additional documentation patches past the tag
1.2_M4.rc4.0<http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?h=denzil&id=1.2_M4.rc4.0>.
These were included in the release candidate.

The adt repository is currently being populated with the results of this
buildout.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d04088e9f86334c04bdfd289c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>Release candidate 4 for 1.2 is now available for testing:<br><b=
r><a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20120418-2/">h=
ttp://autobuilder.yoctoproject.org/pub/nightly/20120418-2/</a><br><br>This =
is based off of:<br>
<br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Ddenz=
il">http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Ddenzil</a><br><=
br>We had two additional documentation patches past the tag <a class=3D"tag=
-deco" href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?h=3Ddenz=
il&amp;id=3D1.2_M4.rc4.0">1.2_M4.rc4.0</a>. These were included in the rele=
ase candidate.<br>
<br>The adt repository is currently being populated with the results of thi=
s buildout.<br><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<br>Yocto=
 Project<br>Build and Release<br>

--f46d04088e9f86334c04bdfd289c--
