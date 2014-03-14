Return-Path: <djwelch666@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DCF3E009CE
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:34:45 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id lf10so2839652pab.41
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LuCRB//3FrzgCwn8fmmyRJH8cS4N6l/ch+8XxYTxMcM=;
	b=K9CFdBfTtFnQXiFG686EWsk7uqdp63Vh9H1ukjeS0UFzTrZcduYU8qwkegt1zClY9n
	7pqlz1zpFhcy9tGs8BP0ttbjeT1oXuzCRzYol6W8MZpCCxJJFrdEE/N31sulUxY8t5wg
	oA0MJHh5ZlsP9afYZo48Z6nu8/RzQRWc8pq6hp4ClXChc11nQozPWUhzuYhczzOww+tM
	YTFY0w38xkv1yXIUYX+KzQEtWMab/nWo/ptb+umWIw0xb3tb+0RYO5Z3bpbO1JSp39ay
	jjvvVaRx48mVV7AZPYhNt2Fp1I3g068+LL22EO7zFIgqhckbLWrDoOb529a0e2jJNn6Y
	VTew==
MIME-Version: 1.0
X-Received: by 10.68.162.1 with SMTP id xw1mr10163289pbb.128.1394814885079;
	Fri, 14 Mar 2014 09:34:45 -0700 (PDT)
Received: by 10.68.230.199 with HTTP; Fri, 14 Mar 2014 09:34:45 -0700 (PDT)
Date: Fri, 14 Mar 2014 16:34:45 +0000
Message-ID: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building a metapackage
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
X-List-Received-Date: Fri, 14 Mar 2014 16:34:48 -0000
Content-Type: multipart/alternative; boundary=047d7bacbb46c0b08004f493a5fd

--047d7bacbb46c0b08004f493a5fd
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Is it possible to build a meta packages whose sole purpose is to bring in
dependencies?

Suppose I have package-1.deb, package-2.deb and package-3.deb.  I would
like add a .bb file to build a metapackage for those three packages.  I
have tried the following but it didn't work:

SUMMARY = "Package"
DESCRIPTION = ""
LICENSE = "CLOSED"
DEPENDS = " \
package-1 package-2 package-3 \
"
inherit meta

My use case is a series of voices by different manufactures which need to
be installed on a per-manufacturer basis.  So all the voices from
manufacture1 would need to be installed on one machine and all the voices
from manufacturer2 need to go on another machine.  There are about 50-100
voice packages per manufacturer.

Thanks,
David

--047d7bacbb46c0b08004f493a5fd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Is it possible to build a meta pack=
ages whose sole purpose is to bring in dependencies?</div><div><br></div><d=
iv>Suppose I have package-1.deb, package-2.deb and package-3.deb. =A0I woul=
d like add a .bb file to build a metapackage for those three packages. =A0I=
 have tried the following but it didn&#39;t work:</div>
<div><br></div><div><div>SUMMARY =3D &quot;Package&quot;</div><div>DESCRIPT=
ION =3D &quot;&quot;</div><div>LICENSE =3D &quot;CLOSED&quot;</div><div>DEP=
ENDS =3D &quot; \</div><div>package-1 package-2 package-3 \</div><div>&quot=
;</div>
<div>inherit meta</div></div><div><br></div><div>My use case is a series of=
 voices by different manufactures which need to be installed on a per-manuf=
acturer basis. =A0So all the voices from manufacture1 would need to be inst=
alled on one machine and all the voices from manufacturer2 need to go on an=
other machine. =A0There are about 50-100 voice packages per manufacturer.</=
div>
<div><br></div><div>Thanks,</div><div>David</div></div>

--047d7bacbb46c0b08004f493a5fd--
