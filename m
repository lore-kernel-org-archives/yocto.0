Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9AFCE0051D
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 10:02:10 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id fq13so2298621lab.35
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2013 10:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=/w8mcj11a2IA17N5bSjLcFbujpAz8FG4zl0wSSMbfFw=;
	b=UvTZtQK8JJn4oonAFq6fOp3V94s0GucZygtI54+MzCcT3C5XHTMJsRa2y3f1YQS0ed
	FNPTCy8aNnIabBHxa9pgPlr7FYgVN/LL/UUXJayTc2JCrR7CbSI/oiAcHIbrgEgb0x+D
	jjEVZESP3Ppx05bI65ju2YxpJoFxtGlw9lrbsjTffol6VBl7qOBm6OWzhBv5nb93nCua
	OzeVfgXjn5b/q0J0VHrWkQfdYwjt5+9K84yxEt1rV7DihWQxWd1FnZndBVtYgVO+o5Zi
	qXaQW2J9D5fB82+Bp9EygkozUHZ56NNZrtYPnQbXtXetg7+3EBaBMf1AixZLORGPzAGd
	5D0w==
X-Received: by 10.112.156.42 with SMTP id wb10mr2515406lbb.32.1364835729252;
	Mon, 01 Apr 2013 10:02:09 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.25.195 with HTTP; Mon, 1 Apr 2013 10:01:49 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCEEE0E@ORSMSX104.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCEEE0E@ORSMSX104.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 1 Apr 2013 10:01:49 -0700
X-Google-Sender-Auth: qfJZ-OHweEkVrWGrEdTDJM3u9mI
Message-ID: <CABcZANkCRDA2mDfdq5Xi4a-fcUvdP=TP+WUP-KCH5nSoLxg1tg@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: $HOME use in DL_DiR
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
X-List-Received-Date: Mon, 01 Apr 2013 17:02:11 -0000
Content-Type: multipart/alternative; boundary=089e012296f2d1aa9104d94f94f4

--089e012296f2d1aa9104d94f94f4
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 1, 2013 at 9:31 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I recently used $HOME as part of a path in the DL_DIR variable in my
> local.conf.  This caused bad things to happen during the build.  It
> essentially created a "never-ending" directory structure inside my build
> directory and the build failed.  I would like place a note in the glossary
> entry for the DL_DIR variable.  Can anyone provide some general reasons why
> a user should not use $HOME as part of the DL_DIR path that goes beyond "it
> will break the build"?


$HOME is shell variable syntax, not bitbake. I use ${HOME} safely in my
DL_DIR on a regular basis.
-- 
Christopher Larson

--089e012296f2d1aa9104d94f94f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Apr 1, 2013 at 9:31 AM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenbar=
k@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I recently used $HOME as part of a path in t=
he DL_DIR variable in my local.conf. =C2=A0This caused bad things to happen=
 during the build. =C2=A0It essentially created a &quot;never-ending&quot; =
directory structure inside my build directory and the build failed. =C2=A0I=
 would like place a note in the glossary entry for the DL_DIR variable. =C2=
=A0Can anyone provide some general reasons why a user should not use $HOME =
as part of the DL_DIR path that goes beyond &quot;it will break the build&q=
uot;?</blockquote>

</div><br>$HOME is shell variable syntax, not bitbake. I use ${HOME} safely=
 in my DL_DIR on a regular basis.<br>-- <br>Christopher Larson</div></div>

--089e012296f2d1aa9104d94f94f4--
