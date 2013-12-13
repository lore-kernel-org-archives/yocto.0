Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9354E007DF
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 20:23:59 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id c9so1128730qcz.30
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 20:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZP7XjRDw0M4/cEcn/SPLNYXJfG1jXJsqGV5NYDFwlm0=;
	b=cACfOKsx56LwsQNq/HC0+NFzEKH9UyDcruCE+IkhcRdGUxOJ1AZh7TWSzHM2/oQRvi
	9CYPe/hPwI0R1/SDTmVUsrWbaVDgwxA9PjF03PFRSKcHRyrjdqUal7PGYvmt9zAMFHoY
	uY/k+ZBDmZRBprBsa33OQcenp9P7G80CfKc2M/UvLJamhno1i5ikN8GQOdNaWYAjbych
	zhOwd1h9OIMlTfaO1J4nqIbcHEZDyWFdLsFLRrCpR+bu1AH6Z4fvFxJjVux9PClQodzD
	ZLCh22MBQiAoH6tZf6UvgpcV5I3PAA861WNa8eMEYrpcPOdSFz3bZEdazHj2oaksN56x
	E7qw==
MIME-Version: 1.0
X-Received: by 10.229.13.133 with SMTP id c5mr959241qca.22.1386908638569; Thu,
	12 Dec 2013 20:23:58 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Thu, 12 Dec 2013 20:23:58 -0800 (PST)
Date: Thu, 12 Dec 2013 21:23:58 -0700
Message-ID: <CANwz6nyayXbB3400p5nxWifsH1C7u5QUSJtLa0ZhmOqPWa2+RA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fedora19
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
X-List-Received-Date: Fri, 13 Dec 2013 04:24:02 -0000
Content-Type: multipart/alternative; boundary=001a11330e60bcebb904ed62d450

--001a11330e60bcebb904ed62d450
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I added            Fedora-19 \n \  to poky/meta-yocto/conf/distro/poky.conf.
MACHINE=zedboard bitbake custom-image
Pseudo is not present but is required, building this first before the main
build
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Please install the following missing utilities: C++ Compiler (g++)

ERROR: Execution of event handler 'check_sanity_eventhandler' failed

What else is needed?
Any and all help will  be appreciated.

Thanks

--001a11330e60bcebb904ed62d450
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>I added=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 Fedora-19 \n \=A0 to poky/meta-yocto/conf/distro/poky.conf.=
<br></div>MACHINE=3Dzedboard bitbake custom-image<br>Pseudo is not present =
but is required, building this first before the main build<br>
ERROR:=A0 OE-core&#39;s config sanity checker detected a potential misconfi=
guration.<br>=A0=A0=A0 Either fix the cause of this error or at your own ri=
sk disable the checker (see sanity.conf).<br>=A0=A0=A0 Following is the lis=
t of potential problems / advisories:<br>
<br>=A0=A0=A0 Please install the following missing utilities: C++ Compiler =
(g++)<br><br>ERROR: Execution of event handler &#39;check_sanity_eventhandl=
er&#39; failed<br><br>What else is needed? <br></div>Any and all help will=
=A0 be appreciated.<br>
<br>Thanks <br></div>

--001a11330e60bcebb904ed62d450--
