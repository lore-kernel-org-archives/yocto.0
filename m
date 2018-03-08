Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80EE1E00EBA; Thu,  8 Mar 2018 12:39:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7CA8E00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 12:39:46 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id g21so1133208ioj.5
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 12:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S5maGicdAxtApxHRhXmSUQO/7+649ZUBiFQXAPGxEkY=;
	b=hjqQqWNX/+PeTEOQCv0E0WMDrNnM4ktBUHhFeSUugo21s6eQ1WaQvUbM5KZjfJCeI6
	7qRkWdRJ6ZXH2SN8L4fPcUPZRmNA+aZFD02NW4Y6hKyrKNietOkirW3SCu6NIk8kICyt
	l1RIjaVhWP3cVEmBXv1oLXNFD60cGpAp3KyoUqBZazVCeB2MubxQo6DUzubqx+zvMcKl
	o6rKMnSMhP1+18nrBpu1YN/eMLV8f1ftHt2urHFhQ9PEDX4LII+BCD2wFQ0NvL0py3Nj
	5tCAetX1zyveo6AuycjxiqEZ12zJcvTwOw1HlXkzhJeo3oYTdlHbOkcxRtXiscCSmMwV
	o50g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S5maGicdAxtApxHRhXmSUQO/7+649ZUBiFQXAPGxEkY=;
	b=UMxM2eto77GuvUjdihuNEBrBBc0PmHe6lyRfc8GMNm2zmauYi3XycsM00c2YQE1rev
	HoLhmnL1CA0pEVQs/tKg7qnRVVJuGdeIKHQSZxvMfOXobHUAUabBPye06aZp+bn10S44
	dfcwdbB1xlDrHV0bufR+xvvaU+OLUfS1OKJyqx/0sDVljgUofaXv/5v/FM3sjx28FFRc
	QNWQOEVWb7TEinMNJa6PHske2XT9L5lh9qRPxyyG/d1fMbIgdsKVxQ1WYrRj1SyXyo5P
	cbGVZZVopzgbfJnT2L/tLGG/+Eq4RZ9I/Yyo3UH16jaOfs4y12bd0m0cRuxGrep4+YUJ
	RuwA==
X-Gm-Message-State: APf1xPD/CN+W6ERidp+2zTRdYaQJKjxHSUa+4Gny045XnSCZ0Gpo+QNy
	uywrUCHrQFdSk72wKTqEt9HD4V73UjD58vPq+ZR2zw==
X-Google-Smtp-Source: AG47ELvQn0wUXP57gYbEDC0y2LIhHPZX4vsto0MYxXCAh1dgLe4ntXKlc0Bgu3Q9rwvbx22YILocMYCaZIIZv4/QyLg=
X-Received: by 10.107.6.139 with SMTP id f11mr34205829ioi.23.1520541585956;
	Thu, 08 Mar 2018 12:39:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Thu, 8 Mar 2018 12:39:25 -0800 (PST)
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335DDC966@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335DDC966@PGSMSX109.gar.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Mar 2018 20:39:25 +0000
Message-ID: <CAJTo0Larr_jAE5HBEVTsbViS7wSNYic6pQwTWRme5QKb+Q0cfA@mail.gmail.com>
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: Resend QA cycle report for 2.4.2 RC2
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
X-List-Received-Date: Thu, 08 Mar 2018 20:39:47 -0000
Content-Type: multipart/alternative; boundary="001a113eeaea190df00566ecad55"

--001a113eeaea190df00566ecad55
Content-Type: text/plain; charset="UTF-8"

On 8 March 2018 at 09:41, Yeoh, Ee Peng <ee.peng.yeoh@intel.com> wrote:

> [1] 12587 - [2.4.2 rc2] test_sstate_sametune_samesigs
> (sstatetests.SStateTests)


Can't replicate this reliably with rm_work disabled.  Does the QA
autobuilder run with rm_work enabled?

$ oe-selftest -r sstatetests
...
2018-03-08 20:35:41,863 - oe-selftest - INFO - oe-selftest () - Ran 20
tests in 4308.314s
2018-03-08 20:35:41,863 - oe-selftest - INFO - oe-selftest - OK - All
required tests passed

Ross

--001a113eeaea190df00566ecad55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 March 2018 at 09:41, Yeoh, Ee Peng <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ee.peng.yeoh@intel.com" target=3D"_blank">ee.peng.yeo=
h@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">[1] 12587 - [2.4.2 rc2] test_sstate_samet=
une_samesigs (sstatetests.SStateTests)</blockquote><div><br></div><div>Can&=
#39;t replicate this reliably with rm_work disabled.=C2=A0 Does the QA auto=
builder run with rm_work enabled?</div><div><br></div><div>$ oe-selftest -r=
 sstatetests</div><div>...</div><div>2018-03-08 20:35:41,863 - oe-selftest =
- INFO - oe-selftest () - Ran 20 tests in 4308.314s=C2=A0</div></div>2018-0=
3-08 20:35:41,863 - oe-selftest - INFO - oe-selftest - OK - All required te=
sts passed<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a113eeaea190df00566ecad55--
