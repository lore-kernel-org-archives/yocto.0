Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D7EE00AFD; Mon, 20 Mar 2017 08:53:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F55E00AA7
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 08:52:58 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id g2so79035545pge.3
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 08:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=XzA/hB9XUOulM9GzqYRfr0+PFWCWVjJycq9lRFMOWMI=;
	b=z3vNgPflLup19suiBZgp3XhSMAhHtz1RDA9Aj64zAUGRm+jFqJhKQOxhegPjfykyyv
	mFG7anLVwVVoIlb4qM8/mJD9BLdoAmc9WfUa8vfiB8Jx2RP9XiSjvgeect+h2HkzS7V3
	38GuWWsBp9ddAZ8g0fd91PHes1BjtxxwKQvAXo9VLg4KJQWzLuZuUYXsnArK0pI3Hj/0
	mx8fbk1XQcinp/aD8INu9Eg4f9yKq1WYr7qGEvBuNNuz4dNd3jxGRK5AZ1IEcwPmhCvr
	DNi6KWIIS+reZj/6FJb1kDefHUiH79Zvu049p06mpn0VjlZrQeaLoZmtAgDb+ObG2rW9
	pa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XzA/hB9XUOulM9GzqYRfr0+PFWCWVjJycq9lRFMOWMI=;
	b=lSOJ2y/4wm6Ga8MvLMHXVEp6bIAsbU9pg7QXwIcNekcwwYCei/dkh4zXZ0kC6CvSHR
	FjgcK1Hxv9Bx5m8ck5yZ93gX6VCG9y8AbjEUwDrjp85NlWAB47kEg8epVtLhZt6wzV4D
	PNMT4sKb6lA/NbRXpbVdRUqCFwEvF/fvpicTqQBhC/jvvAg/94AiFNbzK8EgrPJtOOVE
	mowYudVLGUa0NwBG2f2FIfR313KYpmKLTLxzYt0o9ST0jXP6VUVWmRQzyKBwZDVyDp8l
	X1v/fAGDaJLqQT5thJZxRv0k7QgtM24t5+VUCWj5SsEmVi6jt6mUJ2G+gSz5Ji3VtDYx
	cL+A==
X-Gm-Message-State: AFeK/H085q3NmW8IGszlUFSCTPQgRlwRUGzY+S2g0BsPW/J4kIEohM3EHvgXfA8xTnPKtUNVQNHJY/hjyMHZEhCF
X-Received: by 10.99.123.72 with SMTP id k8mr6326779pgn.139.1490025178056;
	Mon, 20 Mar 2017 08:52:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.153.146 with HTTP; Mon, 20 Mar 2017 08:52:57 -0700 (PDT)
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Mon, 20 Mar 2017 09:52:57 -0600
Message-ID: <CANr77M3+k7=+wux_zbMZ6juG-ppTpCgfqJ13fQ1L+XYB=9ubjg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Bumping all packages versions
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
X-List-Received-Date: Mon, 20 Mar 2017 15:53:02 -0000
Content-Type: multipart/alternative; boundary=f403045c5622720db3054b2b8566

--f403045c5622720db3054b2b8566
Content-Type: text/plain; charset=UTF-8

Hi,

I'm running Yocto 1.7.1 and was wondering if there was a simple way to
roll/bump all package versions. For example in every .bb I want to bump PV
= $version higher. I'm trying to do this as we've designed our headless
system to update using opkg but now we are struggling to find a simple way
to update package versions, we're trying to stay away from manually doing
it as there is a lot of room for error when touching so many packages.
First, is there a way to brute force bump all package versions and 2nd is
there a way to only bump packages that have changed code (like auto git
hash diff or something) without manually bumping the PV version in the .bb?
What is the proper way to handle you distro's versioning at the package
level?

Thanks,
Matt

--f403045c5622720db3054b2b8566
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m running Yocto 1.7.1 and was=
 wondering if there was a simple way to roll/bump all package versions. For=
 example in every .bb I want to bump PV =3D $version higher. I&#39;m trying=
 to do this as we&#39;ve designed our headless system to update using opkg =
but now we are struggling to find a simple way to update package versions, =
we&#39;re trying to stay away from manually doing it as there is a lot of r=
oom for error when touching so many packages. First, is there a way to brut=
e force bump all package versions and 2nd is there a way to only bump packa=
ges that have changed code (like auto git hash diff or something) without m=
anually bumping the PV version in the .bb? What is the proper way to handle=
 you distro&#39;s versioning at the package level?</div><div><br></div><div=
>Thanks,</div><div>Matt</div></div>

--f403045c5622720db3054b2b8566--
