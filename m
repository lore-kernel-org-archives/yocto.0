Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8204DE00571; Tue, 13 Jan 2015 06:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDBCE00571
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:32:18 -0800 (PST)
Received: by mail-qa0-f52.google.com with SMTP id x12so2240692qac.11
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=uzzkAk206gtw+a/pGQomD8Yo9XtcOf8qBWMy7Hfbw08=;
	b=XuPy8Ty1y6EPh+/bymN8mbLjwvHx3jLKoP/QsqKQOz4lxzvSsvdRV1M6u0Usz6tXsb
	8AX0LTWl9Oyixg1oHkFbQpW8GgjE8KtzceeKGRzZ3Rw9SAnXb9Kt8V67PAoEhag/h82H
	bMkPVUaYcNtsVb/0wG6f6qu9eanI4f3ko4rRECIxPom6M2QJyXeeK7AkcS/mq7vhDQcB
	9Hd29MgSa0BgNpuNyf6l/N1YpWNTFj4MphwJ4cUIWc5dsNC5H/DD3k9OtQh44WMbdeRN
	hyXkIByN7IXouSHvuSUbZfZvTgOBG6sk3DEDLT5SInYSiI2sYlbOTDrVfkspPJUtpA7r
	SzVA==
X-Gm-Message-State: ALoCoQlcK5z/z93+YBonbo8xBWlPKp8Twl7VsoJFRHm6oIGfxFpXtxjyidLhzr1Jq4YQeZbxA+Sl
X-Received: by 10.224.92.205 with SMTP id s13mr59721666qam.52.1421159537912;
	Tue, 13 Jan 2015 06:32:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 13 Jan 2015 06:31:57 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Jan 2015 14:31:57 +0000
Message-ID: <CAJTo0LbKYaQ1OW4bzrT-cOVLty_GT+L8FhbWsoMd0odCkdSugQ@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 14:32:30 -0000
Content-Type: multipart/alternative; boundary=089e015375e46d4785050c897dee

--089e015375e46d4785050c897dee
Content-Type: text/plain; charset=UTF-8

On 13 January 2015 at 14:28, Rifenbark, Scott M <scott.m.rifenbark@intel.com
> wrote:

> I am seriously considering dumping the PDF manuals for the 1.8 release.
> The PDF output is less than good and there seems to have been no enthusiasm
> for this form during the past 4 years.  Comments?
>

Assuming that the source remains in DocBook then anyone who wants a
printable copy will be able to generate the PDFs themselves, so I don't see
a massive problem with this myself.

Ross

--089e015375e46d4785050c897dee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 January 2015 at 14:28, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenba=
rk@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div i=
d=3D":2gg" class=3D"a3s" style=3D"overflow:hidden">I am seriously consideri=
ng dumping the PDF manuals for the 1.8 release.=C2=A0 The PDF output is les=
s than good and there seems to have been no enthusiasm for this form during=
 the past 4 years.=C2=A0 Comments?<br></div></blockquote></div><br>Assuming=
 that the source remains in DocBook then anyone who wants a printable copy =
will be able to generate the PDFs themselves, so I don&#39;t see a massive =
problem with this myself.</div><div class=3D"gmail_extra"><br>Ross</div></d=
iv>

--089e015375e46d4785050c897dee--
