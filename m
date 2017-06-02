Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2334AE009A0; Fri,  2 Jun 2017 15:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.36 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [69.252.207.36 listed in dnsbl.sorbs.net]
Received: from resqmta-ch2-04v.sys.comcast.net
	(resqmta-ch2-04v.sys.comcast.net [69.252.207.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DF2E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 15:26:34 -0700 (PDT)
Received: from resomta-ch2-20v.sys.comcast.net ([69.252.207.116])
	by resqmta-ch2-04v.sys.comcast.net with SMTP
	id Gv1edp4TkscBPGv1edjOf3; Fri, 02 Jun 2017 22:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1496442394;
	bh=+waO7W7lL+5r4JIUF1U/CKfKPMtj9FzyAT+K73I7Lrw=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=hrs2KE2S4hjUZQ/r9mRFnfjmyyT0LPIjx5bxJLVC1MsLuBbaQ89sT633Qw9sbuf33
	PGGoJ+cUc5GvfdZ5oNyjNU/uAcM9XFeEBq2dIgkD6p0k3rM0LTa0vFmdqk6RMYOYyY
	36N6TXcTHPo+KsBsmj5yYyU65tpCtNoKh6wunOP09qUWdOUMDCB2tYNTkSX76rNVoa
	M3OW3A+3vJUPuYPXt+7n8bHpC16AYoEcIPqw1vAI42hOb3TmmVh3gKkeq75vYsCfxo
	P9JUQ/hJbeGpoVGN+XEV8q4/jha7oIfj9e0Xnbbrc/ISRJqAJrDg28YQzKpowpHMj7
	dqhIxfDXaRlTQ==
Received: from [IPv6:2601:18f:800:acc1::cc14] ([IPv6:2601:18f:800:acc1::cc14])
	by resomta-ch2-20v.sys.comcast.net with SMTP
	id Gv1ddJZqDNOhWGv1dd4CYW; Fri, 02 Jun 2017 22:26:34 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net>
Date: Fri, 2 Jun 2017 18:26:33 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfDqryxKawkWqyA4B977AA7vJj3/NCJ6lSav8MQzwc8C4NVXv0wZ1gHYwDKgeQGg1UOsCue67cTqScUlE49CEcOMaC+2KiX+SgDvIN8vqlj8+ZSStpvFK
	5GTMRLdIF9IFkFnyKIrAi0ErYYA4kJKCGhB+/lPuMfhYawtg3pX1AOT/rT0WrZr+Kn+ScQuUnPQJ/A==
Subject: SRCPV and SRC_URI
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
X-List-Received-Date: Fri, 02 Jun 2017 22:26:39 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_112C1495-30C9-4A3E-973D-0E96021BB26D"

--Apple-Mail=_112C1495-30C9-4A3E-973D-0E96021BB26D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I=E2=80=99m writing a new recipe and doing something I think should be =
simple but instead causes an exception when expanding SRCPV.

SRCREV =3D =E2=80=9Cxxxxxxxxxxxx=E2=80=9D
SRC_URI =3D =E2=80=9Cgit://abc.com/xyz.git <git://abc.com/xyz.git>=E2=80=9D=

PV =3D =E2=80=9C1.2+git${SRCPV}

The above works fine.  Problem is, when I add a patch I get an exception =
when expanding SRCPV!?

SRC_URI_append =3D =E2=80=9Cfile://myfile.patch =
<file:///myfile.patch>=E2=80=9D

Adding that simple append line breaks my recipe.

Any clues?  Seems simple but no.  I see countless other recipes that do =
this.

Regards,

Russell


--Apple-Mail=_112C1495-30C9-4A3E-973D-0E96021BB26D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m writing a new recipe and doing something I think =
should be simple but instead causes an exception when expanding =
SRCPV.</div><div class=3D""><br class=3D""></div><div class=3D"">SRCREV =
=3D =E2=80=9Cxxxxxxxxxxxx=E2=80=9D</div><div class=3D"">SRC_URI =3D =
=E2=80=9C<a href=3D"git://abc.com/xyz.git" =
class=3D"">git://abc.com/xyz.git</a>=E2=80=9D</div><div class=3D"">PV =3D =
=E2=80=9C1.2+git${SRCPV}</div><div class=3D""><br class=3D""></div><div =
class=3D"">The above works fine. &nbsp;Problem is, when I add a patch I =
get an exception when expanding SRCPV!?</div><div class=3D""><br =
class=3D""></div><div class=3D"">SRC_URI_append =3D =E2=80=9C<a =
href=3D"file:///myfile.patch" =
class=3D"">file://myfile.patch</a>=E2=80=9D</div><div class=3D""><br =
class=3D""></div><div class=3D"">Adding that simple append line breaks =
my recipe.</div><div class=3D""><br class=3D""></div><div class=3D"">Any =
clues? &nbsp;Seems simple but no. &nbsp;I see countless other recipes =
that do this.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,</div><div class=3D""><br class=3D""></div><div =
class=3D"">Russell</div><div class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_112C1495-30C9-4A3E-973D-0E96021BB26D--
