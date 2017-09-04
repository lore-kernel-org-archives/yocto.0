Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5B99E00CC9; Mon,  4 Sep 2017 04:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4615E00BBF
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 04:50:52 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id p6so1114905itb.1
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 04:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=or3DrU1R2nkow9HxYIVnBzd4XhQcbk9Lk1UKXIIwrpk=;
	b=L+/T7T12msLY+URvXq7XYF3DeK/g3BHCiEfcpr6I1LkFI23qbw/UnZZ1RTGy1z95SE
	177tUfgId45KY/3K2g0YW0RYgovSiYI5bts6+6y7zeojpYN2xcNWY5w4y1vP9Ti6ko0a
	JuYFZZIQUygWbj2HQJMKqE1nG03OygjsA+NzoTJxEVFYimd7Bhe2Fc3AebO09e3iE3D7
	XXOW+AIoZ3qOESAmzqQxOUHxEVdx5jKC26jNUa+e8+m/ppuqv0B+5LAtxXx1nxPkDA7Q
	I3ZaKR3zhpCDVa15r86ST718EEFlEJOCZZ+5pOkEJgy0iWgxmjShOXjjO8MgttQhqlf2
	uLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=or3DrU1R2nkow9HxYIVnBzd4XhQcbk9Lk1UKXIIwrpk=;
	b=q85t/md5ry+kpMK4x2hlRji+KKO6JdmDDnxpkW1O7qVEpBaDFv8ZqPwmDuzp+Izvh3
	4nKDHV7WONBFDE5/stjK7VIlOnqSDnDjKaKGy4wD5lFKf8d85UP7C+oIi4kBF98VZqKE
	D8r/D95UFtiuQ329WvlFkJNq3Y+MpfIf0VQdkg4vw6ddXfcgSoPIikazgy0haiXncpV8
	IsCZnPJAk/3eNk+Hmr2hNF56vH9qxmPIRBf+D6ZefY2OaTrFLlau/GCo2MSH3vurdyyL
	4PYSbq5sQWWY1FffbAu3d1TI+BreBaNP8E/V11G+DQzGzqitVG9kmsYbO9wH3znfYAMz
	9uxg==
X-Gm-Message-State: AHPjjUhvBzTLMYbqjdnQ3x3mjN/1L28drdQW9HlfJKJfwfrusv2o257B
	v2oZykZXTsOjgtPDeG2WyCUm5OTxcEeu
X-Google-Smtp-Source: ADKCNb7DzMSxJzItG4RqaYP6QRKzDqr4oK0WDlMcp7GW/QvnV9t63JkErBkGw45Y3Jl/dYjVuMQNl7IZxgeYXiN4+Zk=
X-Received: by 10.36.90.205 with SMTP id v196mr465020ita.70.1504525851996;
	Mon, 04 Sep 2017 04:50:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Mon, 4 Sep 2017 04:50:31 -0700 (PDT)
In-Reply-To: <f9474d22fd196d783bb4da22ba3d9f0a17e10e86.1503048463.git.hongxu.jia@windriver.com>
References: <cover.1503048463.git.hongxu.jia@windriver.com>
	<f9474d22fd196d783bb4da22ba3d9f0a17e10e86.1503048463.git.hongxu.jia@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Sep 2017 12:50:31 +0100
Message-ID: <CAJTo0LZNNEnwKfm+4D8yhkNfKdN36Mp0PH=6JfCZUfHa+Ucqfw@mail.gmail.com>
To: Hongxu Jia <hongxu.jia@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] mc: disable Ctrl-g key and Ctrl-\ key
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
X-List-Received-Date: Mon, 04 Sep 2017 11:50:54 -0000
Content-Type: multipart/alternative; boundary="001a1145c7eef715d805585bb881"

--001a1145c7eef715d805585bb881
Content-Type: text/plain; charset="UTF-8"

On 18 August 2017 at 10:29, Hongxu Jia <hongxu.jia@windriver.com> wrote:

> We could not backport fix from the latest master which introduce
> gplv3 contamination, but we could revert to disable Ctrl-g key
> and Ctrl-\ key
>

Considering how small the upstream fix is, reimplementing it using just the
knowledge of what the ncurses API change was should be fairly trivial.

Ross

--001a1145c7eef715d805585bb881
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 18 August 2017 at 10:29, Hongxu Jia <span dir=3D"ltr">&=
lt;<a href=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia=
@windriver.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">We could not backport fix=
 from the latest master which introduce<br>
gplv3 contamination, but we could revert to disable Ctrl-g key<br>
and Ctrl-\ key<br></blockquote><div><br></div><div>Considering how small th=
e upstream fix is, reimplementing it using just the knowledge of what the n=
curses API change was should be fairly trivial.</div><div><br></div><div>Ro=
ss</div></div></div></div>

--001a1145c7eef715d805585bb881--
