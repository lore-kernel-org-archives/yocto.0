Return-Path: <rafayocto@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC72AE00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 06:30:04 -0800 (PST)
Received: by lagw12 with SMTP id w12so1797043lag.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 06:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dPLHChpJQaIMWDf6I6jsNP6ZXQpGbh5b3Bi5lLJNKV8=;
	b=pA8LVgyRCIRbPkL102LNxw08b0bV7KLC+2Pi7e4ngQJwSWYEkP1jsC/b7S7t3nOP8f
	b/qcsTFC3KxCpT0JowdU1MemcDoOM5ve8A4i1NUsJxMtvFnJCZpj2tTsmgwZr4cklyPN
	6LuOGp7zEEts59CwBpuu0ppOLAJC571FRIEhg=
MIME-Version: 1.0
Received: by 10.152.145.101 with SMTP id st5mr1628016lab.1.1328193001788; Thu,
	02 Feb 2012 06:30:01 -0800 (PST)
Received: by 10.112.8.70 with HTTP; Thu, 2 Feb 2012 06:30:01 -0800 (PST)
Date: Thu, 2 Feb 2012 16:30:01 +0200
Message-ID: <CABpbgJyM+ZRhiWNyxV5EgEipMxbkUVdUEp6ok30SQmsax_X6_A@mail.gmail.com>
From: rafayocto rafayocto <rafayocto@gmail.com>
To: yocto@yoctoproject.org
Subject: problem fetching data
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
X-List-Received-Date: Thu, 02 Feb 2012 14:30:05 -0000
Content-Type: multipart/alternative; boundary=e89a8f2343991092f104b7fc089c

--e89a8f2343991092f104b7fc089c
Content-Type: text/plain; charset=ISO-8859-1

Hi,
i just downloaded the edison 6.0 and trying to run hob.
i extracted the tarball and sourced it.
no i run hob and i am getting the following:
*"*
*ERROR:  Poky's config sanity checker detected a potential misconfiguration.
*
*    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).*
*    Following is the list of potential problems / advisories:*
*
*
*    Failed to fetch test data from the network. Please ensure your network
is configured correctly.*
*
*
*ERROR: Execution of event handler 'check_sanity_eventhandler' failed*

"
when i remove the lines from poky.conf:
"https://eula-downloads.yoctoproject.org/index.php \
                          http://bugzilla.yoctoproject.org/report.cgi"

my build is running...
any idea?

--e89a8f2343991092f104b7fc089c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i just downloaded the edison 6.0 and trying to run=
 hob.</div><div>i extracted the tarball and sourced it.</div><div>no i run =
hob and i am getting the following:</div><div><i>&quot;</i></div><div><div>
<i>ERROR: =A0Poky&#39;s config sanity checker detected a potential misconfi=
guration.</i></div><div><i>=A0 =A0 Either fix the cause of this error or at=
 your own risk disable the checker (see sanity.conf).</i></div><div><i>=A0 =
=A0 Following is the list of potential problems / advisories:</i></div>
<div><i><br></i></div><div><i>=A0 =A0 Failed to fetch test data from the ne=
twork. Please ensure your network is configured correctly.</i></div><div><i=
><br></i></div><div><i>ERROR: Execution of event handler &#39;check_sanity_=
eventhandler&#39; failed</i></div>
</div><div><br></div><div>&quot;</div><div>when i remove the lines from pok=
y.conf:</div><div>&quot;<a href=3D"https://eula-downloads.yoctoproject.org/=
index.php">https://eula-downloads.yoctoproject.org/index.php</a> \</div><di=
v>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://bugzi=
lla.yoctoproject.org/report.cgi">http://bugzilla.yoctoproject.org/report.cg=
i</a>&quot;</div><div><br></div><div>my build is running...</div><div>any i=
dea?</div></div>

--e89a8f2343991092f104b7fc089c--
