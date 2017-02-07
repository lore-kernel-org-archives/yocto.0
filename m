Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38608E006C6; Tue,  7 Feb 2017 09:43:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B367EE006C6
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 09:43:54 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id v23so141836779qtb.0
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 09:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FlErxks0Drg0Lqp6tkfuCzgr6JhQgNDLQsurAlDldaA=;
	b=UzxgDZD1lWEN/qHzmH59WjI39lie6cAO9E95mF7dn0WMs07auBLldOvate+J/RZdNi
	icnkXVko5uYBgxvLx71Yo/7ky95ykquDh6jITFXVhCJVEeG1RkDwajbFuOuMLMPkkEIP
	HD9TmtgEQsK5e9j2nAqnfhX/z54IXtsUpaN8ekQj8excwYCfMXlbf15p3RhW03kGO72A
	9Wi/C62Ng5VQwfr7ZE5LUO1EK0nTxdts0keimvxX/SzMdzmcXoR7/gsESmqkLYfnwqs+
	cyJW6kuDf/gFltReMhwFIe8ySosI/fURZzCrTJ3wy1TjgJ54dWlHN6umLD1ZRn7D3mHh
	MlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FlErxks0Drg0Lqp6tkfuCzgr6JhQgNDLQsurAlDldaA=;
	b=O09EaM3ZVIj8pTnboKS47Ak0mgknsnyKmzNfpZJdK5mX+5s7Gz9/rSYgljmmaF9cD3
	o4dtp9yHyDUc8pO+5ABdISIx3d7MGCvcKSn90ZRtcmC/fVVT06u+Bq/dRgTR/4E82zd3
	1IPYurIkoAlKSgkuaLrqr8zH3eHs3xx91oLY7IfiEpbEwVmtKeRx4Bg0TC1wBRFGYRHz
	AXDZTGqXeM8ctWskLUkG8s2SwxAgSElH7pwrzRD7pW5IItSVLE57sEr0Fmz/67cv8TBR
	HIwMjC7xrY3AHVvXNLiNxeUGepQDT2ybAX/aG4GhLoiUGH258F1y32HrQ79y2i2IlShZ
	qu4g==
X-Gm-Message-State: AMke39ms+MeK/DVqkdGVys8M2+yInaiSGhnaYhMcGNINpit1OSfJkAcWe1BAvAB/wn7UvNG0AqXJ4p82KvMIbatx
X-Received: by 10.200.53.247 with SMTP id l52mr15389316qtb.144.1486489433840; 
	Tue, 07 Feb 2017 09:43:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Tue, 7 Feb 2017 09:43:33 -0800 (PST)
In-Reply-To: <6CE91E52E49AA047A2349BA2FF8E4BCA1546B2CC@FMSMSX106.amr.corp.intel.com>
References: <6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LZ6PsPyW1ahJqikBucqFyhvRz_tXZa=2+R5NjiTu9CMvg@mail.gmail.com>
	<6CE91E52E49AA047A2349BA2FF8E4BCA1546B2CC@FMSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Feb 2017 17:43:33 +0000
Message-ID: <CAJTo0La=7jGV0inVF6P+XtqJy-qdjS-yHvh-Cb-KnJwRO-Y8zA@mail.gmail.com>
To: "Wilde, DonaldX" <donaldx.wilde@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing iperf3 causes strange image corruption
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
X-List-Received-Date: Tue, 07 Feb 2017 17:43:56 -0000
Content-Type: multipart/alternative; boundary=001a1142ba20aabc3f0547f44aa3

--001a1142ba20aabc3f0547f44aa3
Content-Type: text/plain; charset=UTF-8

On 7 February 2017 at 17:42, Wilde, DonaldX <donaldx.wilde@intel.com> wrote:

> My bad, Ross. I meant IMAGE_INSTALL. Must have been lexdysic the other
> day. J
>
>
In that case my guess was right: don't += it from your local.conf as you'll
wipe the default value away.  Use _append (and remember the leading
whitespace as append doesn't add it for you).

Ross

--001a1142ba20aabc3f0547f44aa3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 February 2017 at 17:42, Wilde, DonaldX <span dir=3D"ltr">&lt;<a href=
=3D"mailto:donaldx.wilde@intel.com" target=3D"_blank">donaldx.wilde@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoN=
ormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:#1f497d">My bad, Ross. I meant IMAGE_INSTALL. Must have been l=
exdysic the other day.
</span><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
>J</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>In that case my guess was=
 right: don&#39;t +=3D it from your local.conf as you&#39;ll wipe the defau=
lt value away.=C2=A0 Use _append (and remember the leading whitespace as ap=
pend doesn&#39;t add it for you).</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a1142ba20aabc3f0547f44aa3--
