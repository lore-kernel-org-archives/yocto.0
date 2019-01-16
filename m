Return-Path: <samuelzeter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14BE0E00C1E; Tue, 15 Jan 2019 21:47:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuelzeter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5738DE00BF9
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 21:47:38 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id v13so5472016wrw.5
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 21:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NqAg9Wiz3VVTh4VmJVfEYw++UzinD00l1e9m6g5fJNw=;
	b=tY7VQPeK6zEdZU5QMuocsnVhHpljvauTdbi3yMQDc6U4tz5I8+FQIzZPfnhNSXaXxG
	UKJdO6opelDyRJZ8W1OSsBytNJ5/rxXsWxeY0I1igjbjb1qFQgCS7LZPaCKGgEFRQE78
	jBFQgyRNpsbTBCmu5gIvmgx0tKiISNi5MmgO/dGaRErO7NLm5Abi88K1+LfrxOJ4U9S5
	Q8fb7teyqItbDKRkwg3hlyXTG9opMSy3paXRyDcsM4dTJL8Cr68kOyI+5fIflEYvd38M
	46u0FDRq620iC8jFJwFyPEGtjY/B0Mea6cdRf4fXi5OxAZYoG+74NT4UYH1d7Im+w+q0
	lylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NqAg9Wiz3VVTh4VmJVfEYw++UzinD00l1e9m6g5fJNw=;
	b=XPiZ77046ymAKqd2VO5RFRM5syAen0qZzISY4QQLIZW/gHg5ibdNyZrJ+T+zP8/jku
	Xw2rdrr70S2kpgFAAKbp+1RAKolmra+u/6gPeIEwq3kSvdrD+VIAi1B22LLCVpz95NY2
	9G+fqG5BkPj5/sxYIUgNAr/NGxyN2FO3GyxsqcntXW9yzEHuyawnJyd0zevg0QHpEp5f
	lG3mFOPSif33wUDVdQFVscsqEmB51Bo2ao3uhw0AeApDtfI3u/JFyX0fuLWhncmbt+mo
	oc67Hc/NM/qJcpDNjp9mTB938bY3BVcbc8YbJI81FoyLdUmyNPYTZhBrwLvUDH60NxBE
	ju6A==
X-Gm-Message-State: AJcUukfam3behNVFBclu40fQZzKa9fB4taHNVL7S5lSbwY4Lipez7Wrp
	hPO1hyqdc6kUBqr9dqQRhRvRTCoj2BQAHgFGPTSrfo85
X-Google-Smtp-Source: ALg8bN44lR3WWbVU5TTUi1NtUWp6RL/pYDtkVtHEmklxvTGz/xEZPNsRWxHqnpetV/2EIJm6gqHswz8aVmAU0cCE59U=
X-Received: by 2002:adf:8c09:: with SMTP id z9mr5846634wra.301.1547617657115; 
	Tue, 15 Jan 2019 21:47:37 -0800 (PST)
MIME-Version: 1.0
From: Sam Zeter <samuelzeter@gmail.com>
Date: Wed, 16 Jan 2019 15:47:26 +1000
Message-ID: <CAAShK94whbMmErVf6j7xjbjfzW7tRD4QP=tanf2c7U7Sh++Ytg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Firewalld failing to build
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
X-List-Received-Date: Wed, 16 Jan 2019 05:47:39 -0000
Content-Type: multipart/alternative; boundary="000000000000b35a5e057f8cd08a"

--000000000000b35a5e057f8cd08a
Content-Type: text/plain; charset="UTF-8"

Hello all,

I've been attempting to build firewalld by adding it through 'devtool add '
and then 'devtool build firewalld'. However, I am stuck with the following
errors. I have no idea what could be causing this. Could someone please
help?

xsltproc -o ../html/firewall-cmd.html --nonet --xinclude
transform-html.xsl firewall-cmd.xml
| xsltproc -o ../html/firewalld.dbus.html --nonet --xinclude
transform-html.xsl
../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.dbus.xml
| xsltproc -o ../html/firewalld.conf.html --nonet --xinclude
transform-html.xsl
../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.conf.xml
| xsltproc -o ../html/firewalld.html --nonet --xinclude  transform-html.xsl
firewalld.xml
| 134 translated messages, 281 untranslated messages.
| bn_IN: 293 translated messages, 122 untranslated messages.
| ca: 415 translated messages.
| cs: 415 translated messages.
| da: warning: failed to load external entity "authors.xml"
| firewall-cmd.xml:36: parser error : Failure to process entity authors
|     &authors;
|              ^
| firewall-cmd.xml:36: parser error : Entity 'authors' not defined
|     &authors;
|              ^
| warning: failed to load external entity "seealso.xml"
| firewall-cmd.xml:2297: parser error : Failure to process entity seealso
|   &seealso;
|            ^
| firewall-cmd.xml:2297: parser error : Entity 'seealso' not defined
|   &seealso;

Thanks
Sam.

--000000000000b35a5e057f8cd08a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello all,<div><br></div><div>I&#39;ve be=
en attempting to build firewalld by adding it through &#39;devtool add &#39=
; and then &#39;devtool build firewalld&#39;. However, I am stuck with the =
following errors. I have no idea what could be causing this. Could someone =
please help?</div><div><br></div><div><div>xsltproc -o ../html/firewall-cmd=
.html --nonet --xinclude=C2=A0 transform-html.xsl firewall-cmd.xml</div><di=
v>| xsltproc -o ../html/firewalld.dbus.html --nonet --xinclude=C2=A0 transf=
orm-html.xsl ../../../../../../../../workspace/sources/firewalld/doc/xml/fi=
rewalld.dbus.xml</div><div>| xsltproc -o ../html/firewalld.conf.html --none=
t --xinclude=C2=A0 transform-html.xsl ../../../../../../../../workspace/sou=
rces/firewalld/doc/xml/firewalld.conf.xml</div><div>| xsltproc -o ../html/f=
irewalld.html --nonet --xinclude=C2=A0 transform-html.xsl firewalld.xml</di=
v><div>| 134 translated messages, 281 untranslated messages.</div><div>| bn=
_IN: 293 translated messages, 122 untranslated messages.</div><div>| ca: 41=
5 translated messages.</div><div>| cs: 415 translated messages.</div><div>|=
 da: warning: failed to load external entity &quot;authors.xml&quot;</div><=
div>| firewall-cmd.xml:36: parser error : Failure to process entity authors=
</div><div>|=C2=A0 =C2=A0 =C2=A0&amp;authors;</div><div>|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>| firewall-cmd.xml:36: parser e=
rror : Entity &#39;authors&#39; not defined</div><div>|=C2=A0 =C2=A0 =C2=A0=
&amp;authors;</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
</div><div>| warning: failed to load external entity &quot;seealso.xml&quot=
;</div><div>| firewall-cmd.xml:2297: parser error : Failure to process enti=
ty seealso</div><div>|=C2=A0 =C2=A0&amp;seealso;</div><div>|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>| firewall-cmd.xml:2297: parser err=
or : Entity &#39;seealso&#39; not defined</div><div>|=C2=A0 =C2=A0&amp;seea=
lso;</div></div><div><br></div><div>Thanks</div><div>Sam.</div></div></div>

--000000000000b35a5e057f8cd08a--
