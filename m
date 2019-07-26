Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D755EE00C09; Fri, 26 Jul 2019 10:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B066E00B33
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 10:32:36 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id b7so5961817otl.11
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 10:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ScZVlC16JWVuIZ+9wkSvr6+DbxlOUeIBMqwsi6TO+bU=;
	b=khfwCQd/JRX3Mv1L1DE4EJxXRTeDKy9XHRSf2MzpFBh4Y5qDNCS3I+XnZQmLxr5JTL
	+QjAdUIhoido0GmI7WSfXqCPzqFnWnHnphj7Y+DZlMt9zZqg/oz/n+IBFLPUKFXVnrUP
	uaJIq8Bm2cmfFGPdfM7dI3Bcmm+zkNJF8jWNywsBRyOa8umYxaOKX7HnXkE4bFD4U4oc
	85TgjCLhUBj7Ui62V2EArFKXrR1XkH2/MjI9HcUrKiyw+KezcCzDLbT4NrbbHHQKjvsi
	KP1sc6D/2pYedZy6tJfxj+x4ewy6/UniohyCUjoZobBSJYfYtu0vq6mNf5qeW5eRxGhQ
	5XcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ScZVlC16JWVuIZ+9wkSvr6+DbxlOUeIBMqwsi6TO+bU=;
	b=cNdqfjEtB2M4UGn0JAn0M48OrA32G+FossOBcz/jHX+6l66zw1XzfUzS0juIRRt62Y
	4Q+zPozfV8d5Z8bRLrZtrSYVLa+m6LndAhnf+wL5oH8Cg20xp8ENQPbE0hm6XMsbGZSJ
	hdaObcJxwCUlJLHDMTG5NQeYZGDc5bRG66k+rjdFETGHRaX7KetbYWesLNG0s5U5hjeS
	zW6Y1/a8rBELhvLAZtLycAK+5Vh1pYwKX5rsfCA2r8PfDKvOYsWww9OhlF7r254ZqMom
	cGgcabm3m6q/UZaAgd2T3jqTIhEP+zVxwgjyzb5XCo30H6UvvJUAlfxhaUU0Y9OvyCik
	Vwmw==
X-Gm-Message-State: APjAAAWdfaefcRspGLJvN7XGC9LBdLb2O42SBhnlM6JZES7KGw5lTJqL
	u4Lt94YFBc09SxXpeiiM2GbYl9soMtlERtRJcG+qdA==
X-Google-Smtp-Source: APXvYqymiefsSMMTbG0Ww7ZpU8SKpYQsJGZPEB9+XDWYv53dRgMmb/jSTSvrvLUbbJIODustjkIuBlPXwYL3EcAnT3I=
X-Received: by 2002:a9d:17e6:: with SMTP id j93mr45099767otj.275.1564162355673;
	Fri, 26 Jul 2019 10:32:35 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Fri, 26 Jul 2019 13:32:25 -0400
Message-ID: <CAFSZm+ifrDXbzfNCqv+uremHoejuxL5C-9xhmDjduHFxO9Nivw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: RDEPENDS in a containerized world
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
X-List-Received-Date: Fri, 26 Jul 2019 17:32:37 -0000
Content-Type: multipart/alternative; boundary="00000000000094d45f058e98ed71"

--00000000000094d45f058e98ed71
Content-Type: text/plain; charset="UTF-8"

I'm not sure if this is the proper venue, but I'll send it here hoping for
any insight.

I'm developing a containerized system. Ideally the host will be somewhat
minimal, and most of the functionality of the system will run inside docker
containers.

I have most of this working to some extent now, but am beginning to run
into an issue.

How do I handle runtime dependencies that I "know" are provided by the host?

For example, I have one particular application that requires gpsd at
runtime.

I know that gpsd is installed on the host, so would prefer that it not be
installed again in the docker container for this application.

Do I have to edit the recipe for the application and remove the
RDEPENDS="gpsd" line, or is there some more clever way that I can specify
that the RDEPENDS has been fulfilled for the container that is being built?

Thanks,
Aaron

--00000000000094d45f058e98ed71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not sure if this is the proper venue, but I&#39;ll=
 send it here hoping for any insight.<div><br></div><div>I&#39;m developing=
 a containerized system. Ideally the host will be somewhat minimal, and mos=
t of the functionality of the system will run inside docker containers.</di=
v><div><br></div><div>I have most of this working to some extent now, but a=
m beginning to run into an issue.</div><div><br></div><div>How do I handle =
runtime dependencies that I &quot;know&quot; are provided by the host?</div=
><div><br></div><div>For example, I have one particular application that re=
quires gpsd at runtime.</div><div><br></div><div>I know that gpsd is instal=
led on the host, so would prefer that it not be installed again in the dock=
er container for this application.</div><div><br></div><div>Do I have to ed=
it the recipe for the application and remove the RDEPENDS=3D&quot;gpsd&quot=
; line, or is there some more clever way that I can specify that the RDEPEN=
DS has been fulfilled for the container that is being built?</div><div><br>=
</div><div>Thanks,</div><div>Aaron</div></div>

--00000000000094d45f058e98ed71--
