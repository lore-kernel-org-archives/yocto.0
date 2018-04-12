Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8924E00C22; Thu, 12 Apr 2018 02:44:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.43 listed in list.dnswl.org]
Received: from mail-pl0-f43.google.com (mail-pl0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87BE1E00C22
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 02:44:57 -0700 (PDT)
Received: by mail-pl0-f43.google.com with SMTP id w12-v6so2613113plp.0
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 02:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=sG5oqKf5UBlvZorhNQK8vvkhh9xJ1JI+6b8FbwAHp8U=;
	b=rWl5X5rWDPj2PnkmtipBZF9f48SMJ2iFWo9gghVaBMpOZElChMFHF3GxIjc0r6y0yu
	OXdf4mqe1Cc68ALwrWwUKKq6FV9f3i0GHH7U3jqkjem6SshBGNHj0u3oXevGvqqEZudI
	C/LAqyVG+c/TUHiwBtDYiYo4qxMq6bJD0VC33hgjEO88GuUzb9dhYxXLOXmOvf3KLXci
	p80OYhV/U6satwQZpHpHyhUboyG962rbB+Wcmy3iZMpOK/3v3mNnILPMcjQ8gofV1FyV
	WoIXLrCcIMYLk9oAoH3IJmDbpKBc83OAQWlDJHEsQ/GPmdDsVSavwAu8rKMUqbtpJX3n
	spiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sG5oqKf5UBlvZorhNQK8vvkhh9xJ1JI+6b8FbwAHp8U=;
	b=SDX8d1TrV04H365AUniflJMYKhA7+zYnaTKjJBlMF9qR229PxVKSTjE7eJEi2eZXTX
	TIR8mtXIm+rLzhXAXVtv6MVub9oD4merYKUNP+ZFL5WZg2rbN6ZeMV9q2dXk6gd9vOyG
	pbweMsHbLmb8JFh6x/tB1tiNP5xxwFMA1PZG+YB/Dcg9WwfH69J1Ube7l1tCiCElNDEW
	WBnabU/qOPJfyhQrVzvcMMDRUjYkXpANF42LqSi0JWA7ZGEiUSCOWwYyQ840wdzlgmpH
	kg/96ujj/RYHrnwZOxLLW/sb2Of18FrPjDF6dR3SNY58SmPzaZgShZRHfbm/ZFITc+9R
	Swug==
X-Gm-Message-State: ALQs6tAIdsFjWkaxA4Ee+okK//9sZBvx462v7Cbz4j9fmW1NR2qIs6Iv
	JJlkcyod+A+YWrTYDMYkE8QhMkpf0tAO+LUqoGBgqWf2
X-Google-Smtp-Source: AIpwx4/VP1UN0unEGWaQNvkX7k1U1N8QkdKhfQd5CVo8TniebGHDBdKar6uzXNSkUVwz0ZqEAoSAdGbHjwF8lgw9FmM=
X-Received: by 2002:a17:902:d681:: with SMTP id
	v1-v6mr263161ply.120.1523526297473; 
	Thu, 12 Apr 2018 02:44:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.164.199 with HTTP; Thu, 12 Apr 2018 02:44:57 -0700 (PDT)
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Thu, 12 Apr 2018 10:44:57 +0100
Message-ID: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 09:44:59 -0000
Content-Type: multipart/alternative; boundary="000000000000c465570569a39b74"

--000000000000c465570569a39b74
Content-Type: text/plain; charset="UTF-8"

I've inherited a Yocto project that I know to be an old version. So one of
my tasks is to update to the latest version. Before I do this I would like
to know what version I have. The only information I can find is the bitbake
version, BB_VERSION        = "1.32.0".

Many thanks,
Richard.

--000000000000c465570569a39b74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve inherited a Yocto project that I know to be an ol=
d version. So one of my tasks is to update to the latest version. Before I =
do this I would like to know what version I have. The only information I ca=
n find is the bitbake version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;1.32.0&quot;.=C2=A0<div><br></div><div>Many thanks,</div><div>Richard.<=
br><div><br></div></div></div>

--000000000000c465570569a39b74--
