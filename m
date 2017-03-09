Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C91E00726; Thu,  9 Mar 2017 08:06:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FE7E0030B
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 08:06:28 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id y76so126151796qkb.0
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 08:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Fs0nVrjlj4yk8GWIbqk/sTbdzh1ZkF2QPtJbZWLorBk=;
	b=Y68RcW/7Y30ubsahwwBIGHVO6o/rdBuPuFqfBnC4UpDZw6jxFz3hZCxZEVATTIkH1e
	soSxnREvjxzGyHgLFD4bEY/FjgqruKPk6irw+HxIYJIsMAcvgOpYVcTk4MTq+5osM9FJ
	AvNzm9ePnUY/2w8PmdfjzOOy3e9IwasUDZ8KAvhIvqOp/n1EOHZPtpjGkYYFbSWAnfiy
	0b6OEk8ce/NqG9SMw8ee7ACd5JMbKqiWVIIXH9FNIyAACd+bdOANbtxptR0eVrccDfA4
	qHCxoxNEVHQQnIvi/rk4POz0Qxj10v7atscF8mI8YtN9/LLm/RXS7PHi2aL6/iV+o5ww
	iF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Fs0nVrjlj4yk8GWIbqk/sTbdzh1ZkF2QPtJbZWLorBk=;
	b=gRlhyWUxruyTL0SK59SHYlCCkOjBMd6nwMq5io21iQOuP4VAMyCNktT9RlOcSXXS7q
	ulIKxPpGiqhLbAQdgiGBcZB/AXX2Td/bJMGXxK0wbYmkUHsN0ZYhaqi8+vh2GAZOmf5R
	tvnlqAt77Xti+zAE39d4XdfwCEceRX02/0Dnsj8LhkUlxlK6piFuveSaL5z/lTDVP9Fg
	rxgaNLVmOgCHsIN+1hE1bIn1fSq3fRXgYKsZEkWrkgapwLKfQ2b4+2Lf0b0Bj7nS8+Vc
	8KwySsLkJ9D2QEOxSkgCQsfRlZ26PBLFGPTICb+drJxZYs6zDv6G5vhG/R1/vp1VihC4
	A93A==
X-Gm-Message-State: AFeK/H106roB9LMVKUSQld41xKg0mRBCPc9LllXbB1lVHT7GOq2uVSIxFR218z8wuwX7vpya5sP1mDkMJPg2mQnG
X-Received: by 10.55.175.195 with SMTP id y186mr14287390qke.26.1489075587959; 
	Thu, 09 Mar 2017 08:06:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 9 Mar 2017 08:06:07 -0800 (PST)
In-Reply-To: <1489074820-14554-1-git-send-email-pascal.bach@siemens.com>
References: <1489074820-14554-1-git-send-email-pascal.bach@siemens.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Mar 2017 16:06:07 +0000
Message-ID: <CAJTo0LY4rCoCsJ1qBDuAwWxQ-JCbKY7MmOmwTY+WZQw2u8qN3g@mail.gmail.com>
To: Pascal Bach <pascal.bach@siemens.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt4][PATCH] qt4: don't override dbg package content
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
X-List-Received-Date: Thu, 09 Mar 2017 16:06:30 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093c76f777054a4e6dd7

--94eb2c06093c76f777054a4e6dd7
Content-Type: text/plain; charset=UTF-8

On 9 March 2017 at 15:53, Pascal Bach <pascal.bach@siemens.com> wrote:

> The default from bitbake.conf is `FILES_${PN}-dbg = "/usr/lib/debug
> /usr/src/debug"`
> which is perfectly fine as a basis for Qt4.
>

Note that oe-core master (and morty, and maybe krogoth) doesn't need
FILES_PN-dbg to be set at all.

Ross

--94eb2c06093c76f777054a4e6dd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2017 at 15:53, Pascal Bach <span dir=3D"ltr">&lt;<a href=3D"mail=
to:pascal.bach@siemens.com" target=3D"_blank">pascal.bach@siemens.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2k1" class=
=3D"a3s aXjCH m15ab3cdd5a32844b">The default from bitbake.conf is `FILES_${=
PN}-dbg =3D &quot;/usr/lib/debug /usr/src/debug&quot;`<br>
which is perfectly fine as a basis for Qt4.<br></div></blockquote></div><br=
>Note that oe-core master (and morty, and maybe krogoth) doesn&#39;t need F=
ILES_PN-dbg to be set at all.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--94eb2c06093c76f777054a4e6dd7--
