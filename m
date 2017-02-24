Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63334E0052B; Fri, 24 Feb 2017 12:44:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43492E004D8
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 12:44:02 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id x35so26352054qtc.2
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 12:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v1ur7pwMsYHkQLj4d47gJrHjeqlKocNmTo5kVYvSVT4=;
	b=w+tP4/ZUKu9T8MY6AEl/2uufbbF7i0iAoQ6I061UoUsM1+5G6Onj8hQfublNW6lpTt
	Ncx7EBIlBqGPwv9aNw2+Ly60kuahrp+vrQpLgzMc8K08m47B02tunI6pVCpJS+lKIZZ4
	y89yhlyVVtH+9gsBjCh0jD+uPDLJxnhBCZzt8zye8c/U0LgH5uUiYzrbMXpmF5/yIxE8
	ekjyWdFIZNVu63fQ7/rdIXpX0JGFsUqAhMT+hKcl3olZjCc3XpwRZywSPBapmg+Glu8K
	AJfANAhESSBHE9/wKtcQ82KtPiu1DliNFnqgBCOKaeiuRqoc1aa+Ejn9870PiD10fyy1
	+OWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v1ur7pwMsYHkQLj4d47gJrHjeqlKocNmTo5kVYvSVT4=;
	b=IQgw0KMd2lY24CdE4dsQIzT7REw6otcHkOHvDrgEaXv7U9bTxXJ//XltihBwAFtiJd
	+f5w7ZkwNfKkh71Iy/u+ju9uGU/Rijt634Ps/1WobdhNGh9NXPbUht7CaqLXMNiEZVid
	MiqsI6t670a0BR6o/3INa/pdX3DG0pGyHJJYcKsrRppjJ7BqbpNp7QyZHpmdQ/wonJWz
	QfW5ldBcA9cqZNsZMhEQeYfs8/LDouELcmCoQl72iVccsAcexL1oicbXAP649Q5uLoWW
	JpaK+mPyXOilXodrv5RdqJM0nzid4KtELmfONvrgSJr3hyfWooDYwFwXiFfX8j7MQzn/
	1qXQ==
X-Gm-Message-State: AMke39n54bkmecXPzAfWnBdhm/rlsQ4bTjA+RcTnPpNUOT4bDkOowOBLScXv5wdlTd4JW0RyecKOj9ZTOyR74OQV
X-Received: by 10.237.53.9 with SMTP id a9mr4450514qte.188.1487969042012; Fri,
	24 Feb 2017 12:44:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 24 Feb 2017 12:43:41 -0800 (PST)
In-Reply-To: <CADkTA4Pv1OQ7QmQXnvt_CMKtSHzpqbmU_AB_Q4dTUWXWHxqc6A@mail.gmail.com>
References: <cover.1485963487.git.bruce.ashfield@windriver.com>
	<CADkTA4Pv1OQ7QmQXnvt_CMKtSHzpqbmU_AB_Q4dTUWXWHxqc6A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Feb 2017 20:43:41 +0000
Message-ID: <CAJTo0LZqxeXBmge_ZFP4BU=r9K5DJc98=d69J90ZWzorbqiQ9Q@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] poky/yocto-bsps: introduce 4.9 as the default kernel
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
X-List-Received-Date: Fri, 24 Feb 2017 20:44:06 -0000
Content-Type: multipart/alternative; boundary=001a11c0285e2fc62f05494ccaeb

--001a11c0285e2fc62f05494ccaeb
Content-Type: text/plain; charset=UTF-8

On 24 February 2017 at 19:42, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> Is there a bug or other issue lurking that I should look into ?
>

The autobuilder sanity tests were failing for every MIPS machine.  I can
run a rebuild now to verify it still happens.

Ross

--001a11c0285e2fc62f05494ccaeb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 February 2017 at 19:42, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Is there =
a bug or other issue lurking that I should look into ?</div><div></div></bl=
ockquote></div><br>The autobuilder sanity tests were failing for every MIPS=
 machine.=C2=A0 I can run a rebuild now to verify it still happens.</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a11c0285e2fc62f05494ccaeb--
