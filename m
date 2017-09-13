Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A57CE00CD0; Wed, 13 Sep 2017 12:40:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90E5EE00CAF
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 12:40:32 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id g142so219762ita.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 12:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7iXpf5BdaGXXnc38ZgZEjvxTA+Uk1CECG12bOuboKek=;
	b=1pN/avCp9IqGDGcNO7vqEIAqYs25ghB7zJjgraC5y/P/WpYc7zEFMKH1ZYFPxE2sLS
	QKivUdvjOI376O8FcphxbKm/CH155rrmpKpd14x02Ln6ApiQU3fWCwKQNnylW3V+NzuP
	IqVESxXe8J+jxcNgLtkv7GSUSDV3C43AowV2OUXUIm7cat83HbXu87wFlVruS+RBTTJ2
	UxSXieh0ydPZgmn7h1YvtTZ/YqdPUsiAEp+LJ55Z2+wS2Gm53xVbL61Pn90leiUQTarn
	DlERRatut4PgNV056qENgb7PVfTeAuZXW0uqxhFRxx7rGXAWY7EJmmh5SKLZAhUVcvk9
	Bvcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7iXpf5BdaGXXnc38ZgZEjvxTA+Uk1CECG12bOuboKek=;
	b=hRMPueQxmWoREVIQJc6J5jEZ8knWp5mwQVe2hB4R+zVGQNauXYJnjb0CqgagGT4EkT
	0rqQorWdOVUT6r++jQzHxLxZY8c8Xn4h4V5KMCmxE7IL0Ghy52+NARgNnrfzIYS4cts8
	h5+tsU09edvr3NrWTBxA6u+PkBDE73ErdTfS1/Rh7J0aL6tMod+wmPINJXd9XiAPiv6b
	cceOM6eC1o/QrOoeYcQe/hYM8tEntOVPmRTAd+SkqMYUv5pb4BNK+6dPk/axPVuF2HfX
	uvAWujp+/03l/zO9RqbIxYhIVYq45Tid0o8wce5rJ8J7tH+zFoHPLIx6W02n6e4Z8IKu
	x8yA==
X-Gm-Message-State: AHPjjUg9QhiQF0T6ED4HF3URMWt/7UyHqK3tWiCl/GX5bvJ+LKXIbjtn
	55hIfGpW58jCv4pKgrt66DHzOCS9rNXY4nt0wpq90w==
X-Google-Smtp-Source: AOwi7QAVo0tnm21Yx4wjPDJcCEt/R4427RydcJiHxgd2EEgIv5kFBBIWFMiQBC5Sw0Ln+wwr3qhpwhmZUta7RmM+WX4=
X-Received: by 10.36.237.204 with SMTP id r195mr6441522ith.48.1505331631786;
	Wed, 13 Sep 2017 12:40:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Wed, 13 Sep 2017 12:40:10 -0700 (PDT)
In-Reply-To: <8ABCD0C2CB8944EBB4282C42CA3DD60C@PAULD>
References: <8ABCD0C2CB8944EBB4282C42CA3DD60C@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Sep 2017 20:40:10 +0100
Message-ID: <CAJTo0LaxrtC-1NC6quY+CymKQCHLo3UhfOgfN8TFHwxnjay09Q@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Keeping same IP address under DHCP
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
X-List-Received-Date: Wed, 13 Sep 2017 19:40:33 -0000
Content-Type: multipart/alternative; boundary="94eb2c042c162eb46e055917556b"

--94eb2c042c162eb46e055917556b
Content-Type: text/plain; charset="UTF-8"

On 13 September 2017 at 20:32, Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> Whenever I build a new version of my target system, the DHCP server in my
> router thinks it's a new machine, and assigns it a new IP address. This
> means that I have to edit the connection settings in Eclipse remote
> debugging. What is changing in my system that makes that happen, and is
> there any way, short of assigning a static IP address, to make the router
> continue to recognize it as the same machine?
>

A DHCP server will issue a new IP unless it's asked to renew by the client,
or has been configured to give out a static IP.  You could tell your DHCP
server to give out a static IP for the board's mac address, or install
something like avahi-daemon in the system (or your preferred mDNS
responder) and just use the hostname.

All of my systems have avahi-daemon installed, and I configure the hostname
in local.conf, so I don't need to care what IP a board has as I can just
ssh into bob.local.

Ross

--94eb2c042c162eb46e055917556b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 13 September 2017 at 20:32, Paul D. DeRocco <span dir=
=3D"ltr">&lt;<a href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pd=
erocco@ix.netcom.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left=
-color:rgb(204,204,204);padding-left:1ex">Whenever I build a new version of=
 my target system, the DHCP server in my<br>
router thinks it&#39;s a new machine, and assigns it a new IP address. This=
<br>
means that I have to edit the connection settings in Eclipse remote<br>
debugging. What is changing in my system that makes that happen, and is<br>
there any way, short of assigning a static IP address, to make the router<b=
r>
continue to recognize it as the same machine?<br></blockquote><div><br></di=
v><div>A DHCP server will issue a new IP unless it&#39;s asked to renew by =
the client, or has been configured to give out a static IP.=C2=A0 You could=
 tell your DHCP server to give out a static IP for the board&#39;s mac addr=
ess, or install something like avahi-daemon in the system (or your preferre=
d mDNS responder) and just use the hostname.</div><div><br></div><div>All o=
f my systems have avahi-daemon installed, and I configure the hostname in l=
ocal.conf, so I don&#39;t need to care what IP a board has as I can just ss=
h into bob.local.</div><div><br></div><div>Ross</div></div></div></div>

--94eb2c042c162eb46e055917556b--
