Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F80DE00A8E
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 13:55:15 -0800 (PST)
Received: by mail-ee0-f52.google.com with SMTP id e49so745268eek.39
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 13:55:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=oRjjG4Q1s9VzJFlKFqOVdk/vehXo4e6SMjEzIj21fHo=;
	b=WBTKW3dlDZTnUf7qvbwugJj6VTbrwXr6xb5sib808tMkNAObwcbBmYZbl3EvIh+SNt
	GIDS3Sb5cZeQPyvXl95DGjZ1jud+Blja5PEnmrzRC8CeqBHqdtwcL44v0KFOMRgAqEuY
	p271l50/XPSE84klhauzjo4+5TuwH3JxVVNGlsYco24SaoCdRgn3HpnoQ8+AcOEU3JJ0
	fA5at2QWbqj5o+G+8BAfoI/Nv7WdZPqgn3XC51WofSB9ZxAtYn6fUrtImGNs/CH89bXo
	wFYJCIlOKWQGvu59EEKB8ItAAMRgTcOqvmR7zFQMk3bMLq5Vx0QQbHTj5BYgUvA1tH3l
	u1hA==
X-Gm-Message-State: ALoCoQmVT0OANEPz6C5RzYvRPVAgxxWEpO1RpBMDDhdBGqom32kJ5Tfz1xqGHPHQ+lZpOA+dbU9Y
MIME-Version: 1.0
X-Received: by 10.15.41.14 with SMTP id r14mr8437441eev.78.1394056513702; Wed,
	05 Mar 2014 13:55:13 -0800 (PST)
Received: by 10.14.224.198 with HTTP; Wed, 5 Mar 2014 13:55:13 -0800 (PST)
Date: Wed, 5 Mar 2014 13:55:13 -0800
Message-ID: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: Integrating Golang
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
X-List-Received-Date: Wed, 05 Mar 2014 21:55:19 -0000
Content-Type: text/plain; charset=UTF-8

We have gotten it into our minds to write some of the apps on our
device in Go, a shiny new compiled language from Google (
http://golang.org/ ).  However, Go has very -- shall we say --
independent ideas about how to organize, fetch, build, and deploy code
which would, at first glance, appear to conflict with Yocto's
mechanisms for same.  Go's support for cross-compilation is also
fairly new and undergoing refinement.  We've kluged together a couple
of recipes which are target-specific, but a general solution for
Go-built targets in Yocto has not revealed itself.

Has anyone else done any work here?  Is there anything that I can
steal^H^H^H^H^Htake inspiration from?  Or am I in completely
unexplored territory?

Thanks in advance,
Schwab

