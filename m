Return-Path: <lukasz.zet@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BBF5E009AA; Fri,  5 May 2017 07:56:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lukasz.zet[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFECE00970
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 07:56:49 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id o3so4159926pgn.2
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 07:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=de1PSppgIcXY5r2bX2F0uYJBZW7RgeZNajhjSG+b0so=;
	b=UhPfzCtFJ5DYgYML7p7nm5tYo3q0XWgJ/yNpNcJy1D40ExonEu+GHZx5RTRc/Js+5n
	omrMVC2M2Iphmd/5Ru5Vx9yLTFh8cFu5Q8Q6vWmF+r2rgHZB5+efGA8v8oRHltR2oJ/R
	7qNPdcjduEhzoWti9As3yaSQ+FwFDDKcC1rNoxnAhF55gn0p8Vbgq0MRwESoED4x2WLY
	ZO2RdqYySfb+gri+g+kkfL0fPAUk32kQTguspNah/lQ92F4XBivBdCWfCMBp3H3wM/gk
	J8AeYmk143KidzWvjcf4Z4DGKsp20XX6fI76sUsk/mR2nOjopW3XjSm8vhH6clomwUHd
	0lQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=de1PSppgIcXY5r2bX2F0uYJBZW7RgeZNajhjSG+b0so=;
	b=P6B8milX1unjn7dx6eO5tlgKZCUxxCk3mZfRwmgf3XhHr8u/CsVCNeMTGLS+Q/rqUi
	ewRdzqF6+piC3DG4ShNoSg5gcPNWY671gjZko2lpXAfM87b7JOTzyiDR9QLWVxLCql3a
	OVKoUK5FjBqSMgWh/Vkbuis9y58bj9k4ZLDxWAZa4tHwHojfwxun8UoAXbQEca1b8wHP
	wmykYSiDp+QprTKiqWW/3YBnpnzoOUObj0K8HyiUpiFUiiufpaZIgmNqMshpvD5pSYUC
	743tC2iX7WGLaH0wieKoS3k3oN+BXrHyffoX8DrxvmNB8X3s+ITePdTpEkWRmysTRSDD
	rieg==
X-Gm-Message-State: AN3rC/6o72r+LlaIK2bEdLoFmy8WdVKY3Y7rLE5XfjKCFHlDtmlCDoj2
	7ZtO6ynToPcxS78xkMSxw37gFOB6WlBW
X-Received: by 10.84.213.2 with SMTP id f2mr46162527pli.22.1493996208495; Fri,
	05 May 2017 07:56:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.44 with HTTP; Fri, 5 May 2017 07:56:48 -0700 (PDT)
From: =?UTF-8?B?xYF1a2FzeiBaZW3FgmE=?= <lukasz.zet@gmail.com>
Date: Fri, 5 May 2017 16:56:48 +0200
Message-ID: <CAK1aAejWoiumWWROkpQMfYfpQzcwBej=Txx-JCp-psr4R2HCpw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sat, 06 May 2017 02:21:08 -0700
Subject: How to use '&' character in Yocto SRC_URI svn://
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
X-List-Received-Date: Fri, 05 May 2017 14:56:50 -0000
Content-Type: multipart/alternative; boundary=f403045d21064da228054ec819a9

--f403045d21064da228054ec819a9
Content-Type: text/plain; charset=UTF-8

Hello,

I have a problem to build recipe containing & character in SVN path.
SRC_URI =
"svn://servf7/Valve&Actuator/DVPII/trunk/SOCPACManEnv;module=trunk;rev=100108"

It does not work, because SVN fetcher cannot find sources:
Failed to fetch URL
svn://servf7/Valve&Actuator/DVPII/trunk/SOCPACManEnv;module=trunk;rev=100108,
attempting MIRRORS if available.

Adding escape character \& works better - sources are downloaded, however
for some reason Yocto adds another \ and cannot find downloaded file (what
exists:
/trunk_servf7_.Valve&Actuator.DVPII.trunk.SOCPACManEnv_100108_.tar.gz):
Exception: FileNotFoundError: [Errno 2] No such file or directory:
'/downloads/trunk_servf7_.Valve\\&Actuator.DVPII.trunk.SOCPACManEnv_100108_.tar.gz'

I have tried escaping by Valve\0x26Actuator, Valve%26Actuator, but in those
cases SVN could not locate URL.

Unfortunately I cannot rename SVN folder, because it contains dozens of old
subprojects.
Yocto Morty 2.2.1.

Thank you in advance.

Best regards,
 Lukasz

--f403045d21064da228054ec819a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br>I have a problem to build recipe c=
ontaining &amp; character in SVN path.<br>SRC_URI =3D &quot;svn://servf7/Va=
lve&amp;Actuator/DVPII/trunk/SOCPACManEnv;module=3Dtrunk;rev=3D100108&quot;=
<br><br>It does not work, because SVN fetcher cannot find sources:<br>Faile=
d to fetch URL svn://servf7/Valve&amp;Actuator/DVPII/trunk/SOCPACManEnv;mod=
ule=3Dtrunk;rev=3D100108, attempting MIRRORS if available.<br><br>Adding es=
cape character \&amp; works better - sources are downloaded, however for so=
me reason Yocto adds another \ and cannot find downloaded file (what exists=
: /trunk_servf7_.Valve&amp;Actuator.DVPII.trunk.SOCPACManEnv_100108_.tar.gz=
):<br>Exception: FileNotFoundError: [Errno 2] No such file or directory: &#=
39;/downloads/trunk_servf7_.Valve\\&amp;Actuator.DVPII.trunk.SOCPACManEnv_1=
00108_.tar.gz&#39;<br><br>I have tried escaping by Valve\0x26Actuator, Valv=
e%26Actuator, but in those cases SVN could not locate URL.<br><br>Unfortuna=
tely I cannot rename SVN folder, because it contains dozens of old subproje=
cts.<br>Yocto Morty 2.2.1.<br><br></div><div>Thank you in advance.<br></div=
><div><br></div>Best regards,<br></div>=C2=A0Lukasz<br></div>

--f403045d21064da228054ec819a9--
