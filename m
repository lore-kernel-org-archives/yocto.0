Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94635E00BD0; Tue, 30 Oct 2018 01:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE07E00BBF
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 01:42:49 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id y20-v6so9713534eds.10
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 01:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gFF/t6qRJ9lMZdlLU7p9Ab+JQz+MF0KelzAykiOZ9Zw=;
	b=G3Daki9qLucfNGnGmQiBZYXg97ql2AdjtvcQJ8ZDqLFKsVZG3vFoNpIiRBZMksZm4l
	c6JHZin/i6RSxAqo7ijbVTk+Z8HlXZlwYlGmMdDCs1vBWizpqueG9Oiygr8ETQWIC13Y
	jJ5lxdaTVr7ZiRLcS+U26Zt2PrsLDNprIpgrlG+OEj6j3pc99LbY8Bd58XGt45wt1lff
	0ZGZbCfBPRSGJnB21EcKy5sQoIIOp48M0vI1rddr7G+dXsaQbAjPrOL0e0epZinbnJIX
	1mR879SFs4LedXET8D1+vuLyoBEUKX6bA7JETG4xWFGHxjfMTWwoVfnrRQtwwQEeq1kt
	F4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gFF/t6qRJ9lMZdlLU7p9Ab+JQz+MF0KelzAykiOZ9Zw=;
	b=EBs59s7u8dQ5/R7Vz1yMYtMfyUGBwBBSq5j0qGxE20BM1rNM7kjftznnC94uYmPTLm
	Cy/gIlLsmAQNBSaU1cdAcmWF4klC8kc+xiYTiVUd5s5ZQ9GxcRQDoXi7B/Yed5cDJTfb
	ytho5Fz2IM7pOZyYaRte9GyoWY47BzcEa3eOBkxUwJUytVxuIqJchI4a6+iXJ3Uw3iKn
	FEzwIk5aBpKvaB3/0tukA8wt9w7N9XhbXFuJjViv+2d2sb2cubnSQhdx5Z/AcW5RvzW7
	6AW+Ph6FNyINvsJ7Nbizuv+1LvwMuxfFLD8MlqK6SIBY2kGrkauIz+mxy87l5okt/63Y
	cEew==
X-Gm-Message-State: AGRZ1gIrcTZn7Vzmnk1l6tku7mw9QZaKH82oYvfqSJwNQloKd5JMmI+T
	1V4gQMK8b2fJylz4QRxLiAbR/6nrJljw2FE2r55Sh1dg4w==
X-Google-Smtp-Source: AJdET5f4fYoxSlTJW0ILywc2OngRvPOWA7nh3GvfwpzMOj1rh2zpec9tt4xTZbvdXnP7NnRfDIkZTYtqh8ONPMJwT7E=
X-Received: by 2002:a50:d2d4:: with SMTP id
	q20-v6mr16295487edg.212.1540888968781; 
	Tue, 30 Oct 2018 01:42:48 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Tue, 30 Oct 2018 09:42:37 +0100
Message-ID: <CAK4Yt2n8Zy98t4zdyo9RtamVuZgnuabnNNCwsP7kx=ueXi+FMw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: include own script
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
X-List-Received-Date: Tue, 30 Oct 2018 08:42:50 -0000
Content-Type: multipart/alternative; boundary="0000000000009f66ea05796e2bd8"

--0000000000009f66ea05796e2bd8
Content-Type: text/plain; charset="UTF-8"

Hi All,


Could you help me out with this? I've been experimenting with this without
success, some of you have given me suggestions but neither of them worked
yet.

###############

/recipes-z/testing$ cat testscript.bb
DESCRIPTION = "test script"
LICENSE = "Zoli"

SRC_URI = "file://testscript"

SRC_URI[md5sum] = "e51375ed8c617ea7a6ac39b81c757e39"

FILESEXTRAPATHS_prepend := "${THISDIR}/file:"

S= "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -m 0770 testscript ${D}${bindir}
}

#################

recipes-z/testing$ cat files/testscript
#!/bin/sh

echo "hello world"

################

ERROR: testscript-1.0-r0 do_populate_lic: Fatal QA errors found, failing
task.
ERROR: testscript-1.0-r0 do_populate_lic: Function failed:
populate_lic_qa_checksum
ERROR: Logfile of failure stored in:
/home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/testscript/1.0-r0/temp/log.do_populate_lic.4044
ERROR: Task (/home/..../recipes-z/testing/testscript.bb:do_populate_lic)
failed with exit code '1'

--0000000000009f66ea05796e2bd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi All,</div><div><br></div><div><br=
></div><div>Could you help me out with this? I&#39;ve been experimenting wi=
th this without success, some of you have given me suggestions but neither =
of them worked yet.<br></div><div><br></div><div>###############<br><br>/re=
cipes-z/testing$ cat <a href=3D"http://testscript.bb">testscript.bb</a> <br=
>DESCRIPTION =3D &quot;test script&quot;<br>LICENSE =3D &quot;Zoli&quot;<br=
><br>SRC_URI =3D &quot;file://testscript&quot;<br><br>SRC_URI[md5sum] =3D &=
quot;e51375ed8c617ea7a6ac39b81c757e39&quot;<br><br>FILESEXTRAPATHS_prepend =
:=3D &quot;${THISDIR}/file:&quot;<br><br>S=3D &quot;${WORKDIR}&quot;<br><br=
>do_install() {<br>=C2=A0=C2=A0=C2=A0 install -d ${D}${bindir}<br>=C2=A0=C2=
=A0=C2=A0 install -m 0770 testscript ${D}${bindir}<br>}<br><br>############=
#####<br><br>recipes-z/testing$ cat files/testscript <br>#!/bin/sh<br><br>e=
cho &quot;hello world&quot;<br><br>################<br><br>ERROR: testscrip=
t-1.0-r0 do_populate_lic: Fatal QA errors found, failing task.<br>ERROR: te=
stscript-1.0-r0 do_populate_lic: Function failed: populate_lic_qa_checksum<=
br>ERROR: Logfile of failure stored in: /home/kerenyiz/oe-core/build/tmp-gl=
ibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/testscript/1.0-r0/temp/log.=
do_populate_lic.4044<br>ERROR: Task (/home/..../recipes-z/testing/testscrip=
t.bb:do_populate_lic) failed with exit code &#39;1&#39;<br><br></div></div>=
</div>

--0000000000009f66ea05796e2bd8--
