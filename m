Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 158B0E00E48; Fri, 15 Jul 2016 00:44:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF84BE00D8B
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:43:55 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id l65so66371867oib.1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=sTPrB3SOE6WNGeYZWGIwh3X+KheF5t4lR9/rUKjzkGY=;
	b=04u191+zlL3eJGyj0OJyDYegm8v36OkPVw96wwpMJBX80md8dTvw4hE0nGF7o3COvU
	1O1Pyy077XJ1qBC2QkgqhzLj2f5hRaSqbYaJfB/w1zfKUXzjoe4o9ixjpWLpYXII3aK3
	KSgWeErSZLiKZas7+ssacBZa1EuFiKtuy/wRxBbpDWMgG05n7SaNN6bXnsbwiViPvrIU
	nMhToZCVTjJ6bzlhn6iYbtSNct5b1a9V7K3QYhlrBM3NLD3L+m64M5bFGjfKF2xEU8hr
	9ZfWi/jp7V15NEOUPJUu5wxQ0VeJXrex4rU5JUk1nFU7nuk5pbAXiPBtnGtQ+/dDJLC7
	XBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sTPrB3SOE6WNGeYZWGIwh3X+KheF5t4lR9/rUKjzkGY=;
	b=eGo5hl7iPjJf4q1qmO/IXoQohs0U28QPGFieHoDxaLo5Yg+0QsWWK9WBZZyyzSalr4
	y3xCglrrncRIhDv12MWEFB2J9IuHBX5DRAsvHuKAeymGJoIbzfswE20hAkgNZdPwJlSH
	ll6drkOse5e1xVk/E7NDTR7I5fwvN38rap67iZoQq+VGUA4FSt+RA0DiGXc5iHy1DnZ+
	5CqHoCJFP68bS4afDdyklA1EvfGRp41Dc2SuE19kQc1FbLIdS48FqMCZ85AwCvQMUzLO
	of08JAjv/PPvHRrZrllioo3diWHDAOAMxxNdKgjGuQGSVSY73c4dUE72B+U5laDGl11/
	Ra0w==
X-Gm-Message-State: ALyK8tIven8yWYN6J77WPr+kNaRQcWKNBo/PjxPOlcs8xXHcfi/+SENyhZn7oTc7CL45dOIWhU2svWy3tHHioQ==
X-Received: by 10.202.95.3 with SMTP id t3mr6664354oib.113.1468568634781; Fri,
	15 Jul 2016 00:43:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.7.1 with HTTP; Fri, 15 Jul 2016 00:43:54 -0700 (PDT)
From: Rudolf Streif <rudolf.streif@gmail.com>
Date: Fri, 15 Jul 2016 00:43:54 -0700
Message-ID: <CAEKp-abX0bVE0zwCm_oMrG+KSjY9TQH_fAHWLFKLmpTqEwy0OQ@mail.gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: [Devtool] RPM Source Package
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
X-List-Received-Date: Fri, 15 Jul 2016 07:44:01 -0000
Content-Type: multipart/alternative; boundary=001a113cd250ce082a0537a7c734

--001a113cd250ce082a0537a7c734
Content-Type: text/plain; charset=UTF-8

Devtool works reasonably well with repos and packaged source tarballs. We
did a test with a source RPM which resulted in a simple stub recipe
although the source rpm contained an autotooled package. devtool did not
even make an attempt to unpack the source RPM into the workspace and
analyze the code.

Are there any plans or a roadmap for devtool to support source RPMs? When
Tizen moved from OBS to YP the developers created a Python script [1] to
convert an OBS spec file to a YP recipe. A possible starting point.

Cheers,
:rjs



[1]
https://review.tizen.org/git/?p=scm/bb/tizen.git;a=blob;f=tools/spec2yocto.py;h=90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=HEAD

--001a113cd250ce082a0537a7c734
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Devtool works reasonably well with repos and packaged sour=
ce tarballs. We did a test with a source RPM which resulted in a simple stu=
b recipe although the source rpm contained an autotooled package. devtool d=
id not even make an attempt to unpack the source RPM into the workspace and=
 analyze the code.<div><br></div><div>Are there any plans or a roadmap for =
devtool to support source RPMs? When Tizen moved from OBS to YP the develop=
ers created a Python script [1] to convert an OBS spec file to a YP recipe.=
 A possible starting point.</div><div><br></div><div>Cheers,</div><div>:rjs=
</div><div><br></div><div><br></div><div><br></div><div>[1]=C2=A0<a href=3D=
"https://review.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3Dtools/spec=
2yocto.py;h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD">https://r=
eview.tizen.org/git/?p=3Dscm/bb/tizen.git;a=3Dblob;f=3Dtools/spec2yocto.py;=
h=3D90ff2b064e8cabff25987c3c9a9fd59a04550495;hb=3DHEAD</a><br clear=3D"all"=
><div><br></div><br>
</div></div>

--001a113cd250ce082a0537a7c734--
