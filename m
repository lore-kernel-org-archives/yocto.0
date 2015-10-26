Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68118E0059B; Mon, 26 Oct 2015 07:50:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,URIBL_BLACK,URIBL_JP_SURBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: configure.ac]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E465BE00343
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 07:50:04 -0700 (PDT)
Received: by qkcy65 with SMTP id y65so109695624qkc.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 07:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BCReR2dptg1vyr6RLlqoeINkQZaYwLtamXXJqavKHts=;
	b=l/rMXoQQt2ERFbk8gmtQmeaOfnpCxATeA8wfGkDirMA86FI+WKvOLAv9lZzwSD+Kcx
	7AFfMLeK1zLOkx9tslyrCfnmSRyDRm8XWmbEpdHuKc/2XwIKRR1UAYjvXd5NBDaHVxzk
	oM5+HKlvgS5xsdYVEgVygUSZrrlQ1ngLFka6c5Emxzo2JS/ONZb3EswJaR8b3qtgOCtd
	pZCv+L/Yl/H+c55buZOfQ8SLN0VZZe69PyVEefswIi3ygH4ymDX4MK6LEJSmm7fgNnBu
	wFlt7XjxFvIynoGbPqgtp6f+C5IXEQuVmK49ahvulaepgUjLyBGX622ucnGD/u4oCeJg
	kGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BCReR2dptg1vyr6RLlqoeINkQZaYwLtamXXJqavKHts=;
	b=YMitFIfTxRAHpIAddK8DQ388pMjLrLQXZgt7ScsQJgsSmlHE/aQk/mw2MS0Nzc9qn+
	O6TUz9Rv9j7KRNF1Yk764XPSLncXDFQR0zXt1QJ5NZzK2hNHqoL1KGVk1qR22ifUQ3+8
	0F/Wkj+YKz/hd3DDH74n7pj1qFOZQBjtsfxM9g+rRaZYoHTa+rRNor9L7TupWcWG0qW3
	VAMZglnw+0HpQWYuaCmGos2SLL5xt3JcOk7r2h7V7i/A3E5/gPQRZSROtJDVxYr4MpT2
	lHvu7t7NpkZb/w2U20kUnzpn6zf5lrb+TAnSIWxwjkbwVxbhyXhCfQDbgmvRYW82RVTY
	kARw==
X-Gm-Message-State: ALoCoQlYkw4KZOI3qPig8KlSQfctgREhrwilyrKyhkYO7L0G7m2W+Pb3dG5c/y3iGOW/w61NosGx
X-Received: by 10.55.221.9 with SMTP id n9mr42448124qki.64.1445871003442; Mon,
	26 Oct 2015 07:50:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Mon, 26 Oct 2015 07:49:44 -0700 (PDT)
In-Reply-To: <43816726.rZz34WOpqq@peggleto-mobl.ger.corp.intel.com>
References: <78B5DEF9-516A-4367-B960-6BAB1EA1DF43@gmail.com>
	<43816726.rZz34WOpqq@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Oct 2015 14:49:44 +0000
Message-ID: <CAJTo0LaEVC8uvPy-KxbCC4kzb8uHeU7m0bJw9hwGT+TChgysUQ@mail.gmail.com>
To: jim Schimpf <jim.schimpf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Problem with library recipe
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
X-List-Received-Date: Mon, 26 Oct 2015 14:50:07 -0000
Content-Type: multipart/alternative; boundary=001a1149d6048d352f05230313e5

--001a1149d6048d352f05230313e5
Content-Type: text/plain; charset=UTF-8

On 26 October 2015 at 14:29, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> It looks like this library is using DOLT. Anyone remember how to deal with
> that? Ross?
>
> One thing to try would be to simply drop the DOLT line from configure.ac
> and
> see if that helps.
>

Yeah, DOLT is broken and it's trying to invoke "libtool" directly when our
cross-aware binaries get prefixed with the toolchain triplet.  Removing the
DOLT line from configure.ac should let it just use libtool properly, and I
recommend telling upstream that DOLT isn't really needed these days now
that libtool is a lot faster.

Ross

--001a1149d6048d352f05230313e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 October 2015 at 14:29, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":1df" class=3D"a3s" style=3D"overflow:hidden">It looks like this librar=
y is using DOLT. Anyone remember how to deal with<br>
that? Ross?<br>
<br>
One thing to try would be to simply drop the DOLT line from <a href=3D"http=
://configure.ac" rel=3D"noreferrer" target=3D"_blank">configure.ac</a> and<=
br>
see if that helps.</div></blockquote></div><br>Yeah, DOLT is broken and it&=
#39;s trying to invoke &quot;libtool&quot; directly when our cross-aware bi=
naries get prefixed with the toolchain triplet.=C2=A0 Removing the DOLT lin=
e from <a href=3D"http://configure.ac">configure.ac</a> should let it just =
use libtool properly, and I recommend telling upstream that DOLT isn&#39;t =
really needed these days now that libtool is a lot faster.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1149d6048d352f05230313e5--
