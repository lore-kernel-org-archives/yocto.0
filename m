Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63668E00655
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 10:06:45 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so633672lah.35
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 10:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ly0mWy7uMVrbHM9Bw9/DnS027gMF+RmqzGo9PGprkQM=;
	b=mByU1YCsH12X96sTrGmjEU3CDBmRqH71sem2e47VQDL46Nqtc8hOeLd8TaArNqMTWJ
	QUwbqLZHT2suoo3QCxLj/RLuqHanuyA1fpetMNL5JSzoAEhVrI6zF6JlPsWhkjchB3iH
	hUBKdH1ds8mdfydo5wKFBFrVgUgAvzoAK9JRCSuiG6AMqiCDGjQMErqIWWSoRKN3Nc8W
	1bcDThTJSgpytKuBXZQQ34epwGQj2/IEObiRkOPmFEslKKVb19nmKNI94+RiODaao19Y
	arXjOlCoNeFrZAHrGWqTHl0vReaI4IHGVzFvpC4VYoISYI+aDyJLpJiHKo9Af45dgODH
	AQKw==
MIME-Version: 1.0
Received: by 10.152.104.240 with SMTP id gh16mr2066325lab.56.1354298804120;
	Fri, 30 Nov 2012 10:06:44 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Fri, 30 Nov 2012 10:06:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1211301230090.17477@oneiric>
References: <alpine.DEB.2.02.1211301230090.17477@oneiric>
Date: Fri, 30 Nov 2012 13:06:43 -0500
Message-ID: <CAHUNapQL6YKa1vNprmUFdsSVdHn_FZO8z27K6oiFVYmKS_zNVg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should "hob" update the MACHINE value in my local.conf?
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
X-List-Received-Date: Fri, 30 Nov 2012 18:06:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2934

