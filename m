Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw2.ericsson.se (mailgw2.ericsson.se [193.180.251.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF36E013FE
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 02:06:09 -0700 (PDT)
X-AuditID: c1b4fb25-b7f046d00000644c-85-505c2e004c58
Received: from esessmw0184.eemea.ericsson.se (Unknown_Domain [153.88.253.125])
	by mailgw2.ericsson.se (Symantec Mail Security) with SMTP id
	99.B2.25676.00E2C505; Fri, 21 Sep 2012 11:06:08 +0200 (CEST)
Received: from ESESSCMS0355.eemea.ericsson.se ([169.254.1.103]) by
	esessmw0184.eemea.ericsson.se ([10.2.3.53]) with mapi; Fri, 21 Sep 2012
	11:06:08 +0200
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Date: Fri, 21 Sep 2012 11:06:05 +0200
Thread-Topic: Using other recipes output in Makefile-project
Thread-Index: Ac2X2FTazYmC7EuYTAq7nHGX4oJCFg==
Message-ID: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: sv-SE, en-US
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrALMWRmVeSWpSXmKPExsUyM+JvrS6DXkyAwccV+haTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsfeVQcEJoYo9V96yNDA+4+9i5OSQEDCR2L5+LTOELSZx4d56
	ti5GLg4hgVOMEitm3GSHcOYyStzf0sEIUsUG1DFh5U0gm4NDRMBT4soDXZAwi4CqxJ5jy1lB
	bGEBc4nbq2ezgNgiAjYSe0/eYIYo15OY1+QGEuYVCJf4/f8JE4jNKCArcf/7PbByZgFxiVtP
	5jNB3CMgsWTPeajbRCVePv7HClEvI3Fq0X9WiPp8iX8nlzBCzBSUODnzCcsERqFZSEbNQlI2
	C0kZRFxHYsHuT2wQtrbEsoWvmWHsMwceMyGLL2BkX8UonJuYmZNebqSXWpSZXFycn6dXnLqJ
	ERgLB7f8Vt3BeOecyCFGaQ4WJXFe6617/IUE0hNLUrNTUwtSi+KLSnNSiw8xMnFwSjUwVvEp
	S2yVjN996naVb2vCzCeXEl9bKXBK7p3PemjnFfMlXwrmzAs6wJbMfFnoZXuIdMmnqq2eFep+
	x9z2hyzc7/N5U/zdJb8k/zM8US75/O1m6wrLXzsbJ+/cpTfxpLB1+N+k+Zvdi3farEg/OfPv
	ydu+eaH8px7OW/a0Yufjw/drjqTUl2R5GCuxFGckGmoxFxUnAgAlewlEUwIAAA==
Subject: Using other recipes output in Makefile-project
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
X-List-Received-Date: Fri, 21 Sep 2012 09:06:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DAESESSCMS0355e_"

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DAESESSCMS0355e_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, I'm having trouble with understanding how to use built libraries (and t=
heir include-files).

I'm writing a bitbake-recipe for some piece of software that is Makefile-ba=
sed.  The SW has a compilation and runtime dependency on readline, Sqlite3 =
and libxml2.

In my bb-file, I've added 'DEPEND =3D "readline sqlite3 libxml2"' and the t=
hree packages are built and installed for my chosen architecture.

Now how do I use the build artifacts for my compilation??  I would like to =
add 'XML2_CFLAGS=3DFOO', 'XML2_LIBS=3DBAR' etc to my EXTRA_OEMAKE so that m=
y Makefile can pick up the location of the necessary include-files and libr=
aries?

Best regards,
Jonas Jonsson



--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DAESESSCMS0355e_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Arial, sans-serif" size=3D"2">
<div>Hi, I'm having trouble with understanding how to use built libraries (=
and their include-files).</div>
<div>&nbsp;</div>
<div>I'm writing a bitbake-recipe for some piece of software that is <i>Mak=
efile</i>-based.&nbsp; The SW has a compilation and runtime dependency on r=
eadline, Sqlite3 and libxml2.</div>
<div>&nbsp;</div>
<div>In my bb-file, I've added 'DEPEND =3D &quot;readline sqlite3 libxml2&q=
uot;' and the three packages are built and installed for my chosen architec=
ture.</div>
<div>&nbsp;</div>
<div>Now how do I use the build artifacts for my compilation??&nbsp; I woul=
d like to add 'XML2_CFLAGS=3DFOO', 'XML2_LIBS=3DBAR' etc to my EXTRA_OEMAKE=
 so that my Makefile can pick up the location of the necessary include-file=
s and libraries?</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Jonas Jonsson</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</font>
</body>
</html>

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DAESESSCMS0355e_--
