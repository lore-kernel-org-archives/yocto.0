Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
 by mx.groups.io with SMTP id smtpd.web10.307.1623939460186080858
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 07:17:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: backiver.com, ip: 185.70.43.16, mailfrom: marco@backiver.com)
Date: Thu, 17 Jun 2021 14:17:29 +0000
Authentication-Results: mail-4316.protonmail.ch; dkim=none
To: yocto@lists.yoctoproject.org
From: "Marco" <marco@backiver.com>
Reply-To: Marco Fonseca <marco@backiver.com>
Subject: cross compiling perl modules with c/c++ code
Message-ID: <4108a674-cdf7-07f3-7925-32bf728031be@backiver.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=10.0 tests=ALL_TRUSTED shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello All,

I'm trying to get a Perl module (specifically
Google-ProtocolBuffers-Dynamic @
https://metacpan.org/pod/Google::ProtocolBuffers::Dynamic) cross
compiled for an imx8 target; and having a bit of difficulty doing so.

I was hoping someone could provide some clues/examples/direction on cross
compiling Perl modules under Yocto (specifically those that interface
with underlining c/c++ code like this one).

As a note, I manually futzed around with it and I was able to cross
compile the Perl module manually with things like `perl Build.PL
--config cc=3D.. --config ld=3D..` and got a library that I placed on the
target.  Attempting to use it though, gives a error of "loadable library
and Perl binaries are mismatched".

Thank you in advance for any help!

Marco

