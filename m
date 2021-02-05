Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch [185.70.40.130])
 by mx.groups.io with SMTP id smtpd.web08.7554.1612529780195372251
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 04:56:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail header.b=aRMDhDqH;
 spf=pass (domain: protonmail.com, ip: 185.70.40.130, mailfrom: codusnocturnus@protonmail.com)
Date: Fri, 05 Feb 2021 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1612529777;
	bh=oxqLk+f7qovzhM/LFTz8KLKIJEre6PdLEW6xHzJlGaw=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:From;
	b=aRMDhDqHga2an8k3ezQtpCdwxTL6oUBRuWqYXfx1XFbavjMek2DMSlrWbX80dUglb
	 Kct9dGdXfJjphi+342gFz181QDvVZjBVSuEJczRbgQHL80jskaLxLGUblO9ZPLiloJ
	 nCtbsnYf26ER70iGTm2AwN81b/SHQCGWzy3CsiCg=
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "codusnocturnus" <codusnocturnus@protonmail.com>
Reply-To: codusnocturnus <codusnocturnus@protonmail.com>
Subject: Re: [yocto] RT patch for 5.4.74?
Message-ID: <PUKINA_CZbrElkz49FgJ17IBOBrh8bi0SXts8ZacMfAQ82F6aoMErqg4VlPZVXVOl21r_sCZP7DsuaK-EKzgprC5ypzdxbrOE8PAjwiPZP8=@protonmail.com>
In-Reply-To: <3406ee62ab892c12242173abb7477c231b1acfde.camel@delisys.ch>
References: <1660AB7B19F04B29.20430@lists.yoctoproject.org> <73695736cd2d0a7d20ba76d3e22f5366@vivaldi.net> <3406ee62ab892c12242173abb7477c231b1acfde.camel@delisys.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=1.8 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,URIBL_RED
	shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try this one: http://cdn.kernel.org/pub/linux/kernel/projects/rt/5.4/older/=
patches-5.4.74-rt42.tar.gz


Sent with ProtonMail Secure Email.

On 2021-02-04 17:20, jchludzinski via lists.yoctoproject.org wrote:
> Is there an RT patch for 5.4.74?
> (I've used patch-5.4.44-rt27.patch.)

