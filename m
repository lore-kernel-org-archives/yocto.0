Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1291CE0086F; Tue,  9 Dec 2014 07:42:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9AEE0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 07:42:02 -0800 (PST)
Received: by mail-qc0-f169.google.com with SMTP id w7so603843qcr.0
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 07:42:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Pg4BjVftlaKMRN8DH/1AXatdWgbkdmkx9fmoxZ2cC68=;
	b=S0XjaJ0OLoh68LHRLJu6QeDr9qgZRioOTF2xRXotjQj3lF+i/eqPlAg+YE/DPVlEz7
	01dDIv4ckiL2/TA4WMuKRAXEGvvXNKkcJc/wF4WPFiHCH6TIgiKwZ61AmU22mU2Kwbkw
	E8zQmSmsl1zU8tycNNxKXGPR+4IhpEHtmVPbck/lVdfCLuHcyn0mNYdjZbPA6U3QVNAl
	TMqv65UdCBeEaNJPCLy7dsZ0tLcbzpNXaDiodS7AcIvB5qO5hk58gIB+n/BYrjAvoDP3
	LdkWjf/DWMzxmx/lxrOGI6/c4/JS3TrHB77LPjSFnMCbO5Iw5TIKchiGNU9M0hOnOGZJ
	CQdw==
X-Gm-Message-State: ALoCoQlFaio4eZITHZpPF4nyfDGf8F6bWZ+CPSeSgTYbHy20l89RvNMRWdvkn52dnaLw66U0l4J8
X-Received: by 10.229.190.71 with SMTP id dh7mr6707801qcb.5.1418139721722;
	Tue, 09 Dec 2014 07:42:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Tue, 9 Dec 2014 07:41:41 -0800 (PST)
In-Reply-To: <CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
References: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
	<20141209152907.GB18757@axis.com>
	<CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Dec 2014 15:41:41 +0000
Message-ID: <CAJTo0LY4G-cPJf_7Fof89_onpjn+WY9h8FCzYFi+3NRNBzrjXQ@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 15:42:05 -0000
Content-Type: multipart/alternative; boundary=001a11336ab65b034a0509ca629d

--001a11336ab65b034a0509ca629d
Content-Type: text/plain; charset=UTF-8

On 9 December 2014 at 15:32, Otavio Salvador <otavio@ossystems.com.br>
wrote:

> Richard, can you pick the v1 or want me to send a v3?
>

I had v1 in my MUT, then dropped it and added v2.  I can drop that and go
back to v1. ;)

Ross

--001a11336ab65b034a0509ca629d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 December 2014 at 15:32, Otavio Salvador <span dir=3D"ltr">&lt;<a href=
=3D"mailto:otavio@ossystems.com.br" target=3D"_blank">otavio@ossystems.com.=
br</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":10s"=
 class=3D"a3s" style=3D"overflow:hidden">Richard, can you pick the v1 or wa=
nt me to send a v3?</div></blockquote><div><br></div><div>I had v1 in my MU=
T, then dropped it and added v2.=C2=A0 I can drop that and go back to v1. ;=
)</div><div><br></div><div>Ross</div></div><br></div></div>

--001a11336ab65b034a0509ca629d--
