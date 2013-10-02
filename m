Return-Path: <dryawgmoth@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5763EE01687
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 14:26:30 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id u14so1277674lbd.2
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 14:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wVc3kFvLeP1kYFVPIcDnKmS7Uz65zcSvCsATHO44RQU=;
	b=m77DH9NGmOrx4YYKEJmVBy20G5K4GeT3xzWEleDvYxgpWEL/PArIWbZus7FsFbpdvg
	Z7F0JaNRAgBMqJ1ccWn4zxioiGYpJxqBNSrDnAdwLuk/5jkeUDYpqD3Y1pzSsL5NUpKY
	TH3PiW0gIqXZDRZ926X753qs9gD9Fhq0YtwWB40AggC/r1ShVH9ZCcmn+C9b7l4CcHMp
	bWkOv958DxbLspKAyu6VgLpd9XrlvGPsRWv3tVkEI+6g06IXpqcQOxmtheY5hGawQwLN
	UZMEpyVhHNbJqBuvvldvbqD8aqZzwCG4R2g/kG5814rJCD9qWXofJiSh9f5B8wNbbTy8
	17Eg==
MIME-Version: 1.0
X-Received: by 10.112.77.134 with SMTP id s6mr3180552lbw.38.1380749188980;
	Wed, 02 Oct 2013 14:26:28 -0700 (PDT)
Received: by 10.152.3.99 with HTTP; Wed, 2 Oct 2013 14:26:28 -0700 (PDT)
Date: Wed, 2 Oct 2013 14:26:28 -0700
Message-ID: <CAOEdsErrXc4J-27Qq7v5wSVg63vx3=d1RJZ2C=bMW2SWdFa+TQ@mail.gmail.com>
From: Dan B <dryawgmoth@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: nativesdk-dbus not shipped for meta-toolchain-qt
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
X-List-Received-Date: Wed, 02 Oct 2013 21:26:31 -0000
Content-Type: multipart/alternative; boundary=001a11c3dfbaeee5bf04e7c8b872

--001a11c3dfbaeee5bf04e7c8b872
Content-Type: text/plain; charset=ISO-8859-1

I was having a similar error, and sgw_ in the #yocto irc channel helped me
out. It looks like there is some bug in nativesdk-dbus
A quick-fix until someone can figure out what's going on is to add the
following line to your local.conf:

INSANE_SKIP_nativesdk-dbus = "installed-vs-shipped"


All this does is skip the QA test that is failing. I haven't yet checked
the result to see if it's working, but it at least was able to skip that QA
test and build successfully.

Good luck

--001a11c3dfbaeee5bf04e7c8b872
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was having a similar error, and=A0sgw_ in the #yocto irc=
 channel helped me out. It looks like there is some bug in nativesdk-dbus=
=A0<div>A quick-fix until someone can figure out what&#39;s going on is to =
add the following line to your local.conf:</div>
<div><br></div><div>INSANE_SKIP_nativesdk-dbus =3D &quot;installed-vs-shipp=
ed&quot;<br></div><div><br></div><div><br></div><div>All this does is skip =
the QA test that is failing. I haven&#39;t yet checked the result to see if=
 it&#39;s working, but it at least was able to skip that QA test and build =
successfully.</div>
<div><br></div><div>Good luck</div></div>

--001a11c3dfbaeee5bf04e7c8b872--
