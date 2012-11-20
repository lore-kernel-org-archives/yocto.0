Return-Path: <peachj@lexmark.com>
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5541E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 11:27:31 -0800 (PST)
Received: from mail-vc0-f200.google.com ([209.85.220.200]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUKvZo40OlhR6tpQxNN6SAGDzSeli+7EA@postini.com;
	Tue, 20 Nov 2012 11:27:31 PST
Received: by mail-vc0-f200.google.com with SMTP id fl15so10793892vcb.11
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 11:27:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=wyrFZz1l0xBOFsUQz8gRWcgTM8F84YyoREKH5FmKLtA=;
	b=j+QmIMU6oeLQkBrVHF1W3AqGvkmiMSZMGKSyj2uqa4kfKfpqY9XHjY5KB8y70/riLC
	YUF681H4pX0NJWm27t3qviRuwTIrhLXDLWjJe+0B/DVAyLOX7TAj27azT1rgGvLSxUy1
	J1cuRqRbPXWZWxQBUQSsqZ/oZ/z8UV9IffHkds7QkYVudDzqwEpRl+lDtImLPiEa6dFt
	IZvRlq4EsIg7mxgojlDrttImqrY8GlL9nu4k9kiTIgpOt1sXI3oiTOzH6ey0E6eg8g5L
	lWPpZUSHHhgpxr0+t4VCxOPy825Z7Uw1y85pKECmtnS5nSUT0KPn86mTabcSjICvGFd9
	jelA==
Received: by 10.224.52.200 with SMTP id j8mr15866552qag.95.1353439650489;
	Tue, 20 Nov 2012 11:27:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.52.200 with SMTP id j8mr15866541qag.95.1353439650319; Tue,
	20 Nov 2012 11:27:30 -0800 (PST)
Received: by 10.49.107.136 with HTTP; Tue, 20 Nov 2012 11:27:30 -0800 (PST)
Date: Tue, 20 Nov 2012 14:27:30 -0500
Message-ID: <CA+QkY1CG_t-MCeKx9VniZ-jS0eAEWwM=CzjxHQP+EwO-Ra2rZw@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQnDjDUSDzkQ+QEh8s9TfxEFLVdgr67skbuzqxOtXHZ2pBfzvpyMq6r1WT6JLBM2bh1a32lzfDk8hB+XMG/r3e+F/QDTsOHEOtpCLP61AnPfwWxQR5NbuwZOcJ2uV3LHtXwm3xjv/aTEUtKa52nksFIVFjjdEg==
Subject: Forcing native binaries to build as 32-bit on a 64-bit host OS?
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
X-List-Received-Date: Tue, 20 Nov 2012 19:27:32 -0000
Content-Type: multipart/alternative; boundary=20cf3020764c950cb704cef2390d

--20cf3020764c950cb704cef2390d
Content-Type: text/plain; charset=ISO-8859-1

All,

My company has traditionally built all their code on 32-bit systems for
32-bit target architectures.  We're now trying to move our build hosts to
64-bit OSes, but that's presenting us with a bit of a problem: some
non-trivial number of native packages don't want to properly build 64-bit
binaries.    Rather than fix all those issues right now, we'd like to build
everything as a 32-bit binary on a 64-bit OS.  The problem is, I'm not sure
how I'd go about forcing that to happen.  Is there some simple mechanism I
can use to force all native packages to build as 32-bit on a 64-bit system?

Kind regards,

Jerrod

--20cf3020764c950cb704cef2390d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>My company has traditionally built all their code o=
n 32-bit systems for 32-bit target=A0architectures. =A0We&#39;re now trying=
 to move our build hosts to 64-bit OSes, but that&#39;s presenting us with =
a bit of a problem: some non-trivial number of native packages don&#39;t wa=
nt to properly build 64-bit binaries. =A0 =A0Rather than fix all those issu=
es right now, we&#39;d like to build everything as a 32-bit binary on a 64-=
bit OS. =A0The problem is, I&#39;m not sure how I&#39;d go about forcing th=
at to happen. =A0Is there some simple mechanism I can use to force all nati=
ve packages to build as 32-bit on a 64-bit system?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div>

--20cf3020764c950cb704cef2390d--
