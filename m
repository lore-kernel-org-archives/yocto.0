Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDF2E01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 07:57:48 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so6913278vcb.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 07:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9PE14Vy6gYbPGm1nygmE2huoctseTfcEclyTUn35pmM=;
	b=ZHQpy4w0dyz55tRjBvap6YSz53kvHv/C9+AVMPzrABK45PkG30Uic9FK+eTCUx37ml
	w6au4sjNbv4bBM8cXZZBfTi8iVhrqrr8s1UHx2z5FYVbL0E/7uJwi5q6VFg+fOhEqYSb
	OFkVkOktYN3zT3xPtV0UJmD57OyGDjQU/NyDg=
MIME-Version: 1.0
Received: by 10.220.141.142 with SMTP id m14mr6257170vcu.41.1328630267607;
	Tue, 07 Feb 2012 07:57:47 -0800 (PST)
Received: by 10.52.24.203 with HTTP; Tue, 7 Feb 2012 07:57:47 -0800 (PST)
Date: Tue, 7 Feb 2012 10:57:47 -0500
Message-ID: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Building your own UI
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
X-List-Received-Date: Tue, 07 Feb 2012 15:57:49 -0000
Content-Type: multipart/alternative; boundary=f46d0432b45423789504b861d70f

--f46d0432b45423789504b861d70f
Content-Type: text/plain; charset=ISO-8859-1

This may be a dumb question, but I'll ask anyway.

Suppose you have a project where you need a very custom user interface. Not
just a series of applications that appear on a desktop like you see in
sato, or Gnome, or KDE.  Basically your application becomes the UI.

I can see 2 approaches to this:

   1. Start with core-image-minimal and add the packages you need to
   support GFX, X11, and your application plus dependencies.
   2. Take core-image-sato and change the applications to be your subtasks
   , and the look-and-feel of the desktop.

What are the considerations of both approaches?
Is one better, or easier than the other?
How would you do this in Yocto?
Where do you look for information you need to accomplish this?

JIm A

--f46d0432b45423789504b861d70f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>This may be a dumb question, but I&#39;ll ask anyway.</div>
<div>=A0</div>
<div>Suppose you have a project where you need a very custom user interface=
. Not just a series of applications that appear on a desktop like you see i=
n sato, or Gnome, or KDE.=A0 Basically your application becomes the UI.</di=
v>

<div>=A0</div>
<div>I can see 2 approaches=A0to this:</div>
<ol>
<li>Start with core-image-minimal and add the packages you need to support =
GFX, X11, and your application plus dependencies.</li>
<li>Take core-image-sato and change the applications to be your subtasks , =
and the look-and-feel of the desktop.</li></ol>
<div>What are the considerations of both approaches? </div>
<div>Is one better, or easier=A0than the other?</div>
<div>How would you do this in Yocto?</div>
<div>Where do you look for information you need to accomplish this?</div>
<div>=A0</div>
<div>JIm A</div>
<div>=A0</div>

--f46d0432b45423789504b861d70f--
