Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23D44E00D54; Thu,  9 Jun 2016 09:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5DEBE00D23
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 09:59:30 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id m62so43551186iof.0
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 09:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=YHj9VAtN7YANM1CqUDLq+EU9u5Vs8YKYesZzhBXZWBM=;
	b=l8+5t1E+M1+56wzvrhgWtl1x+wz3VUhAkizzj+xHami0e9Y2/9985tgaD6JbzYgTpD
	DNEZf4LScr62ojHhaNYZrw9D/X1i+fifKD4A0FUkneZwCFBj6yq3RR9dQf0F8NvGiRi5
	A9vo5GyDNSes5iG18UlZY7g+fzv5rcRmM2twS6c7+4pfq+YsENJs1EvZitHW/M3GwnR4
	fMTEKxM+Tm4N8zqnlJ/2L/jnMrmRJxmA4wz7s5i1u9s4yqMUxb/3x7eH5Bpxl6P7nBX0
	kc5Sq6Evin3Cv7yTmrL+pP3U2WCYCNkxSIUiDrRr9IHzIyuCTAkYRyv8YIZr/rRpf/C2
	n/PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=YHj9VAtN7YANM1CqUDLq+EU9u5Vs8YKYesZzhBXZWBM=;
	b=vJM0YJjXr3ND3o4SCWg4MgJGzlGTPaUmXaoemsdqX6MyLWTe0B56DExA+TD56w4D9w
	F/CyQAFJC9GbROD/8PSDVIqvZ6De15PpUGYyl+SibSskk2Cvgq+D2OqShdQd5145kFK1
	tkK5OPLKU2cIkK+QZyNWsJE8UwkV4qbSxCb5YBSCRvVPe7iqfkPN169WBGyrsx7jFksa
	bLkKmXFQMTnRWnIqNcOHCy6vBC2idJfhV0mlGwMFVpE7Ri3x65ZrP+0/HkBrvvbqRjTX
	irbjfCsHBdaNKhGSPwf2jq7ecQW9uMNddiIdB9Exb4eRcnx0B1yV9TDz8cuEXUWwbIK/
	/xMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=YHj9VAtN7YANM1CqUDLq+EU9u5Vs8YKYesZzhBXZWBM=;
	b=juA4jTLqS9kjLNAsrym1KAVz5ndB2UQeR/y8SpHkn/PsjPshZ19AlGdfgiRvDWsP87
	glhgoUdES1C0Gyk7B3/IN9X2HFJ2uLANHu6e/C0e1/bjZ454zRyo/iDyXob2eckCgrUU
	kOXIoXUK+2tgznO4BoCf3hPTuAk9dw0vd64koLzjcxVNmO25lumNpEXLBZH4exO/xQiV
	/ZOFA9RJ2BbBEjT9tZcDNDWJK4E9xwe5hvEwZFxUKhVE9tu+CG/Lp+rhsZfYWCtMnUA2
	hkQd6DvHLbIxcX1PPZb66654G+hsfQD4AKrwjmRLZQQwwMYPpFFt3uwbXaIayzK2xIo5
	RoPw==
X-Gm-Message-State: ALyK8tLpi5AFt5d9TJoCrnHAkBNJYmaF7JwXUGxxDKS7zoyoKU8yp16FqfYcoTf+7DTIje8XZjPUpzwEwoZFLw==
X-Received: by 10.107.131.212 with SMTP id n81mr3833936ioi.126.1465491570386; 
	Thu, 09 Jun 2016 09:59:30 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Thu, 9 Jun 2016 09:59:11 -0700 (PDT)
In-Reply-To: <CAJTo0LazbRgW=xxF5cHMv0LtvUUxh7fjh8WQPoTOc7STtWpzfg@mail.gmail.com>
References: <CAGMdoFnEYZ_qPL4=zem10xHfogbcVRB+Zo9yZdWium0OwvXYsw@mail.gmail.com>
	<CAJTo0LazbRgW=xxF5cHMv0LtvUUxh7fjh8WQPoTOc7STtWpzfg@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 9 Jun 2016 09:59:11 -0700
X-Google-Sender-Auth: c8C_rvewbTDdRuSCB3x-pWhNh-c
Message-ID: <CABcZANnBsAnTVyRiF6rWTJMRZQBaLEXUS4TKc6dZfJGTO3-1jA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module from git repo recipe
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
X-List-Received-Date: Thu, 09 Jun 2016 16:59:36 -0000
Content-Type: multipart/alternative; boundary=001a113ec32e797ea20534db58b1

--001a113ec32e797ea20534db58b1
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 9, 2016 at 9:03 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 9 June 2016 at 16:58, Edward Wingate <edwingate8@gmail.com> wrote:
>
>> Does anyone have an example of a recipe that installs a python module
>> from a git repo?  There is a python module that is not regularly
>> updated on PyPI, but its git repo is up to date.  All the examples of
>> python module recipes I can find uses PyPI:
>>
>
> Just change the SRC_URI to a git URI, that's all you need to do.


And S to ${WORKDIR}/git, set SRCREV, and depending on whether you're
tracking a branch or a tag, add SRCPV to PV :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ec32e797ea20534db58b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 9, 2016 at 9:03 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><di=
v class=3D"gmail_quote">On 9 June 2016 at 16:58, Edward Wingate <span dir=
=3D"ltr">&lt;<a href=3D"mailto:edwingate8@gmail.com" target=3D"_blank">edwi=
ngate8@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv>Does anyone have an example of a recipe that installs a python module<br=
>
from a git repo?=C2=A0 There is a python module that is not regularly<br>
updated on PyPI, but its git repo is up to date.=C2=A0 All the examples of<=
br>
python module recipes I can find uses PyPI:</div></blockquote></div><br></s=
pan>Just change the SRC_URI to a git URI, that&#39;s all you need to do.</b=
lockquote></div><br>And S to ${WORKDIR}/git, set SRCREV, and depending on w=
hether you&#39;re tracking a branch or a tag, add SRCPV to PV :)<br>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christoph=
er Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded,=
 OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graph=
ics</div>
</div></div>

--001a113ec32e797ea20534db58b1--
