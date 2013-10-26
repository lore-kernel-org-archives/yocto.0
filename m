Return-Path: <bart.houkes@sogeti.nl>
Received: from barracuda1.sogeti.nl (barracuda1.sogeti.nl [194.151.67.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B933E0177D
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 10:28:37 -0700 (PDT)
X-ASG-Debug-ID: 1382808515-03c2540c631230e50001-yzSStA
Received: from Heafitz.SGTI.NL ([10.234.192.94]) by barracuda1.sogeti.nl with
	ESMTP id b59ExGDntt3XMboy for <yocto@yoctoproject.org>;
	Sat, 26 Oct 2013 19:28:35 +0200 (CEST)
X-Barracuda-Envelope-From: bart.houkes@sogeti.nl
X-ASG-Whitelist: Client
Received: from Sogmb1.SGTI.NL ([fe80::4c8:63ab:e438:d2e5]) by Heafitz.SGTI.NL
	([fe80::4cd:e589:1805:7a82%11]) with mapi;
	Sat, 26 Oct 2013 19:28:37 +0200
From: "Houkes, Bart" <bart.houkes@sogeti.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 26 Oct 2013 19:28:14 +0200
Thread-Topic: yocto-kernel issue.
X-ASG-Orig-Subj: yocto-kernel issue.
Thread-Index: AQHO0nDCu9UhN6ZR20y/cxktxjZ1Pw==
Message-ID: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE68@SOGMB1.SGTI.NL>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, nl-NL
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.234.192.94]
X-Barracuda-Start-Time: 1382808515
X-Barracuda-URL: http://10.234.200.14:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at sogeti.nl
X-Barracuda-BRTS-Status: 1
Subject: yocto-kernel issue.
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
X-List-Received-Date: Sat, 26 Oct 2013 17:28:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi friends,

Currently I enabled the TVP5150 device driver in the kernel by using:
 bitbake -c menuconfig virtual/kernel
switch on  <*> Texas Instruments TVP5150 video decoder=20
and rebuild a kernel with > bitbake core-image-minimal=20

I want to see if this device is correct in the new kernel and want to see w=
here it is inserted. i suspect virtual/kernel may be the wrong name.=20
For checking modules I want to use   yocto-kernel feature list  build-atmel

But this crashes... actually most commands with yocto-kernel are crashing. =
I tried also to add the path to the BSP.=20

I get following errors:
> yocto-kernel feature list  build-atmel
Unable to find the BSP layer for machine build-atmel.
Please make sure it is listed in bblayers.conf

or i get:
>  yocto-kernel feature list /home/mensfort/workspace_poky/poky/build-atmel
Traceback (most recent call last):
  File "/home/mensfort/workspace_poky/poky/scripts/yocto-kernel", line 394,=
 in <module>
    ret =3D main()
  File "/home/mensfort/workspace_poky/poky/scripts/yocto-kernel", line 389,=
 in main
    invoke_subcommand(args, parser, yocto_kernel_help_usage, subcommands)
  File "/home/mensfort/workspace_poky/poky/scripts/lib/bsp/help.py", line 7=
3, in invoke_subcommand
    subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
  File "/home/mensfort/workspace_poky/poky/scripts/yocto-kernel", line 182,=
 in yocto_kernel_feature_list_subcommand
    yocto_kernel_feature_list(scripts_path, args[0])
  File "/home/mensfort/workspace_poky/poky/scripts/lib/bsp/kernel.py", line=
 594, in yocto_kernel_feature_list
    features =3D read_features(scripts_path, machine)
AttributeError: 'NoneType' object has no attribute 'readlines'

Who has a clue?  thanks ahead.

Disclaimer:=0D
This message contains information that may be privileged or confidential an=
d is the property of Sogeti Nederland B.V. or its Group members. It is inte=
nded only for the person to whom it is addressed. If you are not the intend=
ed recipient, you are not authorized to read, print, retain, copy, dissemin=
ate, distribute, or use this message or any part thereof. If you receive th=
is message in error, please notify the sender immediately and delete all co=
pies of this message.

