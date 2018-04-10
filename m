Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B038E00A1C; Tue, 10 Apr 2018 01:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E714E009BC
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 01:29:50 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id x9-v6so10349186oig.7
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 01:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qS/9B/qJXsP4/GP71osGBJCsEuZzB0xCJDaoWW/xkWo=;
	b=Lvep+Od8yX8DhZii6PTr4s2TJdE4tpXpHmQLc4kgnMiULw2rd/nLn8HhZTD+wnQYjY
	z2W/xB51TJTiDXcMXPmLSucXd2mKVXefqazVm1WRwQ9WfWg9DxUaH+vKmLK5m0Rdt81D
	oovAZ7sL8ZVgJvcmkxh7p5Ia+fl9gLAaP3qQuVYsFMjCf67FRRAT/l9N7pp+6D0FJEPC
	E6g2rDlJfoZoircZDq2Xao793oFzQXGJhzkVqp2FLQ9gtbcV+CiV0DcPfrLsbKhoZmn5
	F/NTR+zAeUpOaEFtxrYZJdn/iRLH+lKsGLrAweJP1BL4SCAeKwGqIez5uRqKqmRhTDzg
	IBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qS/9B/qJXsP4/GP71osGBJCsEuZzB0xCJDaoWW/xkWo=;
	b=HVF2wRj2NCaN40Rj2z8joVBWNphKQXVVVHJCpHciU8RogqRXBHBvU3KJdcXjZNuBTn
	9xIoChJpSODzW9YzX4dI8nBu19+Dr9BwxcVS+Cff3yHeFQy5cgCkfy3ShcWZoNxuH2NQ
	9fkuiwkZO0UTUa6xqR3BP+rhdenLIsuN2ry1cDd3JwelMAjbnXq4vLzZzbYSG1oZ7C7I
	UC1vUqj/+a6X65ZgkUh/OIXdWJjboO/Q+9lzETV6Z84gMRr/fFoPWz8Heq0wuGvICxlu
	lX+L8nADE9RKhvEEj7n/C8N5UoGcbWoXoXgD+WDE6Emma9Mktn5Duj9pjInP0qzgWsGL
	etGw==
X-Gm-Message-State: ALQs6tCob1HFJYM5s4PLryaDapbqfzIY2rwEXE6EwMfdroagr4GEYf1H
	ynbN+75AelBd1XKVvhTAd4b1Q/qarDgGXaVMUOCFJQ==
X-Google-Smtp-Source: AIpwx4+OjNyY2mAdgHsTI6MRzilpzpJZw6t59Y44LgElyDlKRocxtdqumV8DeVEOw88JfZIqRqwgvBfjYRKEePLsZac=
X-Received: by 2002:aca:f492:: with SMTP id
	s140-v6mr1402392oih.327.1523348990084; 
	Tue, 10 Apr 2018 01:29:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Tue, 10 Apr 2018 01:29:49 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 10 Apr 2018 10:29:49 +0200
Message-ID: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Tue, 10 Apr 2018 08:29:51 -0000
Content-Type: multipart/alternative; boundary="0000000000006c4bf705697a536b"

--0000000000006c4bf705697a536b
Content-Type: text/plain; charset="UTF-8"

Hi,

I am having some problems with one of my recipes when using the SRCPV the
get_srcrev is returning "AUTOINC+" + rev. This will cause problem in my
compile because I am using dbus codegen and it looks like the
auto-generated code cannot handle the + sign in the paths. Is there a
reason for this + sign. The generated code that causes my build to fail
looks like this

#ifndef
___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBERRYPI_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BLUEZ_LE_ADVERTISEMENT_INTERFACE_H__

Currently the only way for me to get the build to work is not use the
SRCPV. Could it actually be a better way then using the + sign or is there
a logical requirement for it?

BR
Mans Zigher

--0000000000006c4bf705697a536b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am having some problem=
s with one of my recipes when using the SRCPV the get_srcrev is returning &=
quot;AUTOINC+&quot; + rev. This will cause problem in my compile because I =
am using dbus codegen and it looks like the auto-generated code cannot hand=
le the + sign in the paths. Is there a reason for this + sign. The generate=
d code that causes my build to fail looks like this</div><div><span style=
=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12.7px;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline"><br></span></div><div><span style=3D"text-align:start;text-indent:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline"><font color=3D"#000000" fac=
e=3D"sans-serif"><span style=3D"font-size:12.7px">#ifndef ___HOME_EXTZIG_WO=
RKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBERRYPI_BUILD_TMP_WORK_CO=
RTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1_0_GITAUTOINC+8FD4C=
803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BLUEZ_LE_ADVERTISEMENT_I=
NTERFACE_H__</span></font><br></span></div><div><span style=3D"text-align:s=
tart;text-indent:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><font co=
lor=3D"#000000" face=3D"sans-serif"><span style=3D"font-size:12.7px"><br></=
span></font></span></div><div><span style=3D"text-align:start;text-indent:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><font color=3D"#000000" fa=
ce=3D"sans-serif"><span style=3D"font-size:12.7px">Currently the only way f=
or me to get the build to work is not use the SRCPV. Could it actually be a=
 better way then using the + sign or is there a logical requirement=C2=A0fo=
r it?</span></font></span></div><div><span style=3D"text-align:start;text-i=
ndent:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline"><font color=3D"#000=
000" face=3D"sans-serif"><span style=3D"font-size:12.7px"><br></span></font=
></span></div><div><span style=3D"text-align:start;text-indent:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline"><font color=3D"#000000" face=3D"sans-=
serif"><span style=3D"font-size:12.7px">BR</span></font></span></div><div><=
span style=3D"text-align:start;text-indent:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><font color=3D"#000000" face=3D"sans-serif"><span style=
=3D"font-size:12.7px">Mans Zigher</span></font></span></div></div>

--0000000000006c4bf705697a536b--
