Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE39FE00C29; Mon, 17 Jul 2017 03:46:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC8CE00C25
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 03:46:57 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id h64so40827333iod.0
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 03:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vC0Qc1oefopqbVnkyHMPozSh5/Gz9302S2j+BerWIow=;
	b=U7j41OEyyHI5q+3J9LE6e0mnsN+ZAS26WM4n+Rq6gItiGw0qd5Yk+UpeeYwHCOUGg+
	rvZa2kGOn+EH0RGX/2pvWbWvTgcGSb6yBg3TjSzoOj7UxWFVfYY91JqlzwK5wjywlmKX
	CecjL7HqGToKyDdgxfhV4G94YseIPdKVquIu971v6UB4iYc8jueeTjoSTHcC4iEs9AH4
	OMr2E2HlHEbyRFMHNh0VUzVG51JBsUTSnbbb/mqlg5cZuYZZkiRBja4adJX0QCDLIDJq
	o0mlfUuDrcOzPdfdyrGBZS3eoODr9uaPgECa5yYx1WH7PXDOzOi8JD5mRm6AqtUdB7e4
	7NfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vC0Qc1oefopqbVnkyHMPozSh5/Gz9302S2j+BerWIow=;
	b=mgHi5F1kldGHUGHimLBeSU2yAJV+M22XlWdSk5q0eJcf6VkKNMbCJdEeHaz6rwQzHX
	GWICxMMPfQnLugxmcE2VS3Y4uybOaNYtHKYW0S8us+nM2+Bjk9YSn99lJAlXyB7j5qX0
	K2XydzWQNrbWV3LEUgnP9RHqjsDfknxK10g2m39LnVjhPbY98fypf7vuyiWMy/XXTmWM
	APmEE/gIaUtcH3FHIz7LgEHPuvVwni1pY4WHVB4HwQcYx/ChzDl8UDe6/Z1AJhL8JLE8
	8zxqidq08OakmYC1Y81O51GWOo39W5uFe+ne9bzAZ+XJjSRhlLnsLqTFQ4Fjj6pNje2E
	UlPQ==
X-Gm-Message-State: AIVw111Im4wr3frVjIdbYKRLkFkIo0Z+xNO0eveF8cWijBDhHfy3tEH9
	KfYcjjhJsvDV21MyCfGGFcwXvlpEWmEF
X-Received: by 10.107.169.80 with SMTP id s77mr18587419ioe.219.1500288417407; 
	Mon, 17 Jul 2017 03:46:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.161 with HTTP; Mon, 17 Jul 2017 03:46:36 -0700 (PDT)
In-Reply-To: <3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Jul 2017 11:46:36 +0100
Message-ID: <CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmail.com>
To: Thomas.Thorne@net2edge.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 10:46:58 -0000
Content-Type: multipart/alternative; boundary="001a1141006c2e4bba0554811e2a"

--001a1141006c2e4bba0554811e2a
Content-Type: text/plain; charset="UTF-8"

On 17 July 2017 at 11:25, Thomas A. F. Thorne MEng AUS MIET <
Thomas.Thorne@net2edge.com> wrote:

> helloworld.c is a C file, not a C++ file.  ${CC} should give you a C
> Compiler.  CPPFLAGS should not be used or necessary for a C compilation.
>

CPPFLAGS is C Preprocesor, you're thinking of CXXFLAGS.

Ross

--001a1141006c2e4bba0554811e2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 July 2017 at 11:25, Thomas A. F. Thorne MEng AUS MIET <span dir=3D"lt=
r">&lt;<a href=3D"mailto:Thomas.Thorne@net2edge.com" target=3D"_blank">Thom=
as.Thorne@net2edge.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div id=3D":1g4" class=3D"a3s aXjCH m15d5023c14377c8d">helloworld.c is =
a C file, not a C++ file.=C2=A0 ${CC} should give you a C<br>
Compiler.=C2=A0 CPPFLAGS should not be used or necessary for a C compilatio=
n.<br></div></blockquote></div><br>CPPFLAGS is C Preprocesor, you&#39;re th=
inking of CXXFLAGS.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a1141006c2e4bba0554811e2a--
