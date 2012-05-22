Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB4ABE01206
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 07:45:11 -0700 (PDT)
Received: by dadz8 with SMTP id z8so10884232dad.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 07:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=0e61b7CKOMenXJDfjvYfHH/JlkpE2OGMnGCvOfaOq2E=;
	b=RXbgZMl2oDBqgxwrJM407aV3e7FYe18AZwRVXIW2GzeHpYW2H4I/jlb1Jp1O9mxFvQ
	oVrROq7J30qdDpSmN3OGNmQ+5f7b3p+R5xC+U8Th2MJR7ED/mDg/X9G5pYhvUNx9l60E
	QasPGrwn5vXayt2OadwFwN3SUFxQn0PIu2aZX2216VY2QqM6zZWs7pnNRIJb4LReTax5
	jbMWUC4zMGFNQrvk6oGipqONweD0JPN9oMqE3Z0MNJmkFd+c9E+HKIcYoWlcs8Qaa+AP
	WArLpO82d+rYVl5xlDxrPmZdH1Cs5lF5Uu74dd2rPpjZ10N2eVOiMzJc7BgbBM/wneRx
	CPfg==
MIME-Version: 1.0
Received: by 10.68.200.68 with SMTP id jq4mr5246262pbc.42.1337697910696; Tue,
	22 May 2012 07:45:10 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Tue, 22 May 2012 07:45:09 -0700 (PDT)
In-Reply-To: <4FBB7BDE.4090008@gmail.com>
References: <4FBB7BDE.4090008@gmail.com>
Date: Tue, 22 May 2012 10:45:09 -0400
Message-ID: <CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 14:45:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.com> wrote:
> when testing an image using runqemu qemux86, can you get networking to
> work?? mine comes up disabled. =A0I want to test an application that requ=
ires
> Internet access.

Yes, I am able to get networking to work out of the box (bitbake
core-image-sato, etc.) Internetworking does not work out of the box.

This is accomplished over tun/tap devices - I do not know much about
these virtual networking devices - they have never failed for me :-)

The IP address of the emulated machine is 192.168.7.2 - The IP address
of host machine is 192.168.7.1

You can not (out of the box) communicate with machines other than the
host machine - so that would included internet etc.

So, if you have an ssh server or a web-server running on the host
machine - you can ssh to the host machine or browse a webpage using
the browser. Alternatively, you can run a proxy server on the build
machine and use it to get to the internet.

You can run ifconfig to see if the network is configured properly on
the emulated machine in the terminal. It should show 192.168.7.2 - if
you do not see this - you do not have networking working.

