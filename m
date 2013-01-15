Return-Path: <tigrux@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60693E002AB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 14:46:50 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id ta14so731831obb.33
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 14:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CT8Iz0FKvPaoKPcRWvOxsCaZByhZu0mnTXrTkuK4V5g=;
	b=E8AKp/8rkva/v0T4AcmwodZggwZlovvqq1OA1dyLLUoPVfnp8ii569TdtpFSHntLXd
	XqSqP/4m2TMdbV/qL+1AW34ZSXAyzJOoqzzo/EwyCqz8neiR3sJyj5wDlFHym3sJZl7u
	ImJHnMckIQcajzAqVjNE/Cg6Z3OqrdKCAmvYHlsmPlnUOF9fCNbEbgFmhfg8Eay9hUIr
	EUyGsLIB7N+9M//iQQXXZ5l/32JQN9wpZ58sP0Kn+I6X0d1UnPUkXTj0ibDZzbzNf2r8
	0PutShVsIW+uzZMLQgiucKnUlG5SuaaiAfG0t+7+/kIyN8LaC/aTlJSdPJuPBoIUAiiJ
	Mwfg==
MIME-Version: 1.0
Received: by 10.182.52.105 with SMTP id s9mr66257106obo.25.1358290009850; Tue,
	15 Jan 2013 14:46:49 -0800 (PST)
Received: by 10.60.14.73 with HTTP; Tue, 15 Jan 2013 14:46:49 -0800 (PST)
Date: Tue, 15 Jan 2013 16:46:49 -0600
Message-ID: <CAJX_UagqsBF7u-J8EEUAV+93R_=SbXTYFqJd5enau1NYM3_7GQ@mail.gmail.com>
From: Sandino Flores Moreno <tigrux@gmail.com>
To: yocto@yoctoproject.org
Subject: Details on automated Yocto validation?
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
X-List-Received-Date: Tue, 15 Jan 2013 22:46:50 -0000
Content-Type: multipart/alternative; boundary=14dae93994298a017604d35b898d

--14dae93994298a017604d35b898d
Content-Type: text/plain; charset=ISO-8859-1

Hello.
I'm familiar to bitbake and poky, but I'm new to Yocto.

Where may I find details about Yocto Validation?
Especially in what regards to automated tests.

I came up with this topic because we are using it to build a custom linux
distribution, rpm based, and now it is required to implement a proper
validation to ensure there are no regressions, that packages are sane, etc.

As it normally happens, there may be an effort that someone else started
already.

So far I have only found:
https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule

But it's, as the name states, it is very general.
Something more specific would be useful.

Thanks in advance for any info.

--14dae93994298a017604d35b898d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<div style>I&#39;m familiar to bitbake and poky, but=
 I&#39;m new to Yocto.</div><div style><br></div><div style>Where may I fin=
d details about Yocto Validation?</div><div style>Especially in what regard=
s to automated tests.</div>
<div style><br></div><div style>I came up with this topic because we are us=
ing it to build a custom linux distribution, rpm based, and now it is requi=
red to implement a proper validation to ensure there are no regressions, th=
at packages are sane, etc.</div>
<div style><br></div><div style>As it normally happens, there may be an eff=
ort that someone else started already.</div><div style><br></div><div style=
>So far I have only found:</div><div style><a href=3D"https://wiki.yoctopro=
ject.org/wiki/Yocto_1.4_Schedule">https://wiki.yoctoproject.org/wiki/Yocto_=
1.4_Schedule</a><br>
</div><div style><br></div><div style>But it&#39;s, as the name states, it =
is very general.</div><div style>Something more specific would be useful.</=
div><div style><br></div><div style>Thanks in advance for any info.</div>
<div style><br></div><div style><br></div><div style><br></div></div>

--14dae93994298a017604d35b898d--
