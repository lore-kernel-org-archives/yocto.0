Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED3A6E0094C; Thu, 27 Apr 2017 04:34:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.172 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87FDCE00812
	for <yocto@yoctoproject.org>; Thu, 27 Apr 2017 04:34:30 -0700 (PDT)
Received: by mail-yb0-f172.google.com with SMTP id p143so7142011yba.2
	for <yocto@yoctoproject.org>; Thu, 27 Apr 2017 04:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P/GSYSn9YBe3ThTWv07IUNMcbL6qgCRrC3QhX/na/9w=;
	b=o3jgzGUsHZ+J2zsvuoRAyo81UP3xDAl8PtjGq0dmXX1dwJI0HMtw8GQSduP3FMotet
	hncFKCKlLbtnLtGksce9t3UV0ELM3u69mbcC4sx+DgmXFwGnAp2dkDrKfMg+vDI8GolD
	EGN7PeunVwbzcbakZ8uwZGb86TEmdQHrZkDZSQn5SXkT6aEiV7oU5IWrwM5ZZNPSYSMe
	afJZgMBA6Uuumo/PzA1UcgfWa0xqdhMIbdQESqJT4htP3fKTQ20NXqTS9t0lHDHg0uNC
	DbyT1W0atvf0cIu73qvuxLaYPJM9sZ5Ex7zL7KhqSNj2/96UxueyPP1BS4xk9R/Ktqfh
	3MLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P/GSYSn9YBe3ThTWv07IUNMcbL6qgCRrC3QhX/na/9w=;
	b=HlY92J8gQcC6x2Hm+sV/zOUqsc6qjadBGrbT//pTLCKm916mizLpOi9wDK3ISVZfwt
	AA/nCh3iVFvW1XQWcYnpUkmx0GUSuEdfqBYZZ5a1RwCAG4DSMzrct4OVF1S6sGRaDQ0L
	yXE0DBZwOSlqjnLK1EHcaRGaLEbIy/OwmkbJHAKUMyAN86F7f6w5nTqDbGgPWtO2QFtE
	wcOJdAUiCO8MVeLyeywo/8rq1vOp9N8IjSMlRtRbCstcUguTSM/iMZEU3Z9ZJSUPRYPL
	c33/zMb0e8sEUQS0aI6x9Lcd94Oa+CMWfDB4DbGsa6SbvqzzTtL5q8Mxjn/5Bh2r9qc+
	6wbA==
X-Gm-Message-State: AN3rC/5TKZXRC7pp9g623dOXLzw3cQgprcLI8QdsoXtqtL9vYXRXBgTz
	z0NC4zdHis3k5zkYxp6WO3gb9ffVFy4+
X-Received: by 10.37.37.147 with SMTP id l141mr3887554ybl.159.1493292869269;
	Thu, 27 Apr 2017 04:34:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Thu, 27 Apr 2017 04:33:58 -0700 (PDT)
In-Reply-To: <AM4PR1001MB13470C7F5A5BFC47B59B3783D7110@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
References: <AM4PR1001MB13470C7F5A5BFC47B59B3783D7110@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 27 Apr 2017 14:33:58 +0300
Message-ID: <CAHiDW_G5sng6O=bavgE-jxprBGPon-pHD4fGqPNtE_G8DHEphA@mail.gmail.com>
To: bahjat khan <khanbahjat@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fbida issue
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
X-List-Received-Date: Thu, 27 Apr 2017 11:34:33 -0000
Content-Type: multipart/alternative; boundary=001a113d45cc04d054054e2457c5

--001a113d45cc04d054054e2457c5
Content-Type: text/plain; charset=UTF-8

On 26 April 2017 at 21:47, bahjat khan <khanbahjat@hotmail.com> wrote:
>
> I'm trying to build a Yocto image for a kabylake processor. I keep on
running into this issue
>
> ERROR: Nothing RPROVIDES 'fbida' (but
/home/builder/project/prop/build/../meta-cusotom/recipes-custome/images/
custom-image-full.bb RDEPENDS on or otherwise requires it)
> ERROR: fbida was skipped: Recipe is blacklisted: Fails to build with RSS
http://errors.yoctoproject.org/Errors/Details/130677/ - the recipe will be
removed on 2017-09-01 unless the issue is fixed

The recipe has been blacklisted because it does not work as is (it broke
when recipe specific sysroots were added so it is probably missing some
native dependencies or inherits). You should remove the PNBLACKLIST line
from the recipe and try to build it. Then you should fix whatever issues
the build has.

I had a quick look on the output on that errors.yoctoproject.org case: at
least the recipe is missing a "inherit pkgconfig"

Jussi

--001a113d45cc04d054054e2457c5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 26 April 2017 at 21:47, bahjat khan &lt;<a href=3D"mail=
to:khanbahjat@hotmail.com">khanbahjat@hotmail.com</a>&gt; wrote:<br>&gt;<br=
>&gt; I&#39;m trying to build a Yocto image for a kabylake processor. I kee=
p on running into this issue <br>&gt;<br>&gt; ERROR: Nothing RPROVIDES &#39=
;fbida&#39; (but /home/builder/project/prop/build/../meta-cusotom/recipes-c=
ustome/images/<a href=3D"http://custom-image-full.bb">custom-image-full.bb<=
/a> RDEPENDS on or otherwise requires it)<br>&gt; ERROR: fbida was skipped:=
 Recipe is blacklisted: Fails to build with RSS <a href=3D"http://errors.yo=
ctoproject.org/Errors/Details/130677/">http://errors.yoctoproject.org/Error=
s/Details/130677/</a> - the recipe will be removed on 2017-09-01 unless the=
 issue is fixed<br><br>The recipe has been blacklisted because it does not =
work as is (it broke when recipe specific sysroots were added so it is prob=
ably missing some native dependencies or inherits). You should remove the P=
NBLACKLIST line from the recipe and try to build it. Then you should fix wh=
atever issues the build has.<br><br>I had a quick look on the output on tha=
t <a href=3D"http://errors.yoctoproject.org">errors.yoctoproject.org</a> ca=
se: at least the recipe is missing a &quot;inherit pkgconfig&quot;<br>=C2=
=A0<br>Jussi</div>

--001a113d45cc04d054054e2457c5--
