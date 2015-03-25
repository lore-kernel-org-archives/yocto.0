Return-Path: <gerhard@declercqsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF720E00954; Wed, 25 Mar 2015 03:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE,MISSING_MID,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.5 MISSING_MID Missing Message-Id: header
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 1460 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Mar 2015 03:59:04 PDT
Received: from host18.axxesslocal.co.za (axxess20.dedicated.co.za
	[197.242.148.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74AE8E0091A
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 03:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=declercqsystems.com; s=default; 
	h=Content-Type:Date:Subject:From:To:MIME-Version;
	bh=S+oqdLeUAzY/EntMIh/vNEZJaJXH29RY2JNVMS1JgO8=; 
	b=M4wts/6sGBP+MDXg6c9xA1xS2Sz9d478OuSVXdUTo4dLFXjwXl4Gm/9RkjlBn5OlJ/i4c1uF69Rg7YQCONuD6aFEsN56dlXd4lpt09oNjQPBHQs8XEMAYxUnF0HIVpxImRD2FlPLx0M5540TSkku2G3dSnqrvEWxD99B9quzVfo=;
Received: from [105.210.149.34] (port=49240 helo=[192.168.0.4])
	by host18.axxesslocal.co.za with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.85)
	(envelope-from <gerhard@declercqsystems.com>) id 1Yaidw-0001ri-Rn
	for yocto@yoctoproject.org; Wed, 25 Mar 2015 12:34:37 +0200
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
From: Gerhard de Clercq <gerhard@declercqsystems.com>
Date: Wed, 25 Mar 2015 12:34:28 +0200
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - host18.axxesslocal.co.za
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - declercqsystems.com
X-Get-Message-Sender-Via: host18.axxesslocal.co.za: authenticated_id:
	gerhard@declercqsystems.com
Message-Id: <20150325105909.BF720E00954@yocto-www.yoctoproject.org>
X-Mailman-Approved-At: Mon, 30 Mar 2015 08:20:57 -0700
Subject: Yocto menuconfig not working
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
X-List-Received-Date: Wed, 25 Mar 2015 10:59:09 -0000
Content-Type: multipart/alternative;
	boundary="_810E049E-E47C-4239-A995-6C635F19E494_"

--_810E049E-E47C-4239-A995-6C635F19E494_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="Windows-1252"

For some reason the menuconfig menu does not come up when I try launching i=
t from my Yocto installation. I am using the Toradex Yocto 1.6 system as is=
 described here http://developer.toradex.com/software-resources/arm-family/=
linux/board-support-package/openembedded-%28core%29, with my board set to "=
apalis-t30". When I run either bitbake virtual/kernal -c menuconfig or bitb=
ake linux-toradex -c menuconfig, it executes fine but finishes (without err=
os) before actually showing anything. Running devshell also gives the same =
results.

If I just use the kernel sources on their own as is described here http://d=
eveloper.toradex.com/software-resources/arm-family/linux/board-support-pack=
age/build-u-boot-and-linux-kernel-from-source-code, I can get menuconfig op=
en using make nconfig. From the Yocto scripts it appears as if though the e=
xact same kernel sources are being used. If I try adding adding make nconfi=
g to the do_configure_prepend script in the linux-toradex_git.bb file then =
the commands get stuck stating that the process (I assume menuconfig) is ru=
nning and then provides a PID for it, but no window or menu is displayed an=
ywhere and the task does not seem to finish.

PS. I am on Fedora 21 64-bit.

--_810E049E-E47C-4239-A995-6C635F19E494_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="Windows-1252"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dwindows-1252"></head><body><div><div style=3D"font-family: Calibri,sans-=
serif; font-size: 11pt;">For some reason the menuconfig menu does not come =
up when I try launching it from my Yocto installation. I am using the Torad=
ex Yocto 1.6 system as is described here http://developer.toradex.com/softw=
are-resources/arm-family/linux/board-support-package/openembedded-%28core%2=
9, with my board set to "apalis-t30". When I run either bitbake virtual/ker=
nal -c menuconfig or bitbake linux-toradex -c menuconfig, it executes fine =
but finishes (without erros) before actually showing anything. Running devs=
hell also gives the same results.<br><br>If I just use the kernel sources o=
n their own as is described here http://developer.toradex.com/software-reso=
urces/arm-family/linux/board-support-package/build-u-boot-and-linux-kernel-=
from-source-code, I can get menuconfig open using make nconfig. From the Yo=
cto scripts it appears as if though the exact same kernel sources are being=
 used. If I try adding adding make nconfig to the do_configure_prepend scri=
pt in the linux-toradex_git.bb file then the commands get stuck stating tha=
t the process (I assume menuconfig) is running and then provides a PID for =
it, but no window or menu is displayed anywhere and the task does not seem =
to finish.<br><br>PS. I am on Fedora 21 64-bit.<br></div></div></body></htm=
l>=

--_810E049E-E47C-4239-A995-6C635F19E494_--
