Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7705E00E27; Fri,  9 Mar 2018 06:15:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AAF4E00DA9
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 06:15:51 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id u84so3671511iod.9
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2018 06:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O1aR7DIKzFQ4De+VlbUm0sQKADmSzK7kGJVsg6plzJs=;
	b=QI/7oOz+zCczzV403woywcp7fEUq2RDuacjp8fV8ldr2DO5jDHSgLfpP2QQfuzX2Y6
	TxltMyTrVMQs5yt0TI5q4GZl9Vx60BLR+ldjipg6S6aFo99aFY8jelhdD+26CLgBfdXm
	s0dHmZAseaa+LTkCdCLVCHTYQw9YhvRUAj78NzwZjOp6sc5WWUotQMgLICjA/jVFZpOG
	WfCmcoW3uqkMMio2DqFr8i4OEFs4Q8v/uCexqAv7MCmq7GUXK81X2B1N42wKLXIFkLl1
	/8pzwo8YjCeTzwM5cNqFYRtHNMPDfzg7fSF1nuprZIJWrm4nCXYU16DmWmVsN2GZGTkm
	IzCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O1aR7DIKzFQ4De+VlbUm0sQKADmSzK7kGJVsg6plzJs=;
	b=ms6L7QjSMifdIw6R0f/9NTmL8zpqyQWyQNplz5UT+uVn0ghU/V1z37w3Em72oofhMZ
	AgkhMs3Pn8ah1wE0ctcXBQXITwYuZrPjyNA4XaGFAtHMz7HYcRHGV49oBOrcsojWoYfJ
	2kXhhhQUxDqm3DZ4pwuu5PoS3M1jpxDUvouelhikVorT52fLkpiBm30anpzeHSlT7q6z
	ee0m/p3AluAALts+OWmOxLp3Q82uWKe8nWTGHabOD4HOpF0KVOsyaC8EQut7aM++Y6fw
	XHZSTQ0PM0v/7Cq1jaKwjZDO7jUz7eaYyelUksQpszquzdDSpv0eqg44SwfcbuvLiSDh
	EX0g==
X-Gm-Message-State: AElRT7EgKOgPeCMQOzm1npkPxrw00e2JFcyh7AXGmyOrNNg6SnpK5gky
	Sq+9e0ljnyOQ6HQg0zX8so7sbPhhkTDPDqDoslEYLQ==
X-Google-Smtp-Source: AG47ELtaBeNfkLshSJcRC8GjNSP4coPpsZaJvpHnRBC3FLJPhXPOhCNumkkFNt9O6ewX75fMxoO/uuuBZzXOLVBVFVU=
X-Received: by 10.107.37.212 with SMTP id l203mr35250932iol.20.1520604951500; 
	Fri, 09 Mar 2018 06:15:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 9 Mar 2018 06:15:31 -0800 (PST)
In-Reply-To: <CAJTo0Larr_jAE5HBEVTsbViS7wSNYic6pQwTWRme5QKb+Q0cfA@mail.gmail.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335DDC966@PGSMSX109.gar.corp.intel.com>
	<CAJTo0Larr_jAE5HBEVTsbViS7wSNYic6pQwTWRme5QKb+Q0cfA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Mar 2018 14:15:31 +0000
Message-ID: <CAJTo0LaNW2z3YOL82wffJp04KX5ipeST9i-Sww4MaGiEHOoyUQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Mar 2018 14:15:52 -0000
Content-Type: multipart/alternative; boundary="001a11405f16fa74960566fb6da8"

--001a11405f16fa74960566fb6da8
Content-Type: text/plain; charset="UTF-8"

On 8 March 2018 at 20:39, Burton, Ross <ross.burton@intel.com> wrote:

> On 8 March 2018 at 09:41, Yeoh, Ee Peng <ee.peng.yeoh@intel.com> wrote:
>
>> [1] 12587 - [2.4.2 rc2] test_sstate_sametune_samesigs
>> (sstatetests.SStateTests)
>
>
> Can't replicate this reliably with rm_work disabled.  Does the QA
> autobuilder run with rm_work enabled?
>
> $ oe-selftest -r sstatetests
> ...
> 2018-03-08 20:35:41,863 - oe-selftest - INFO - oe-selftest () - Ran 20
> tests in 4308.314s
> 2018-03-08 20:35:41,863 - oe-selftest - INFO - oe-selftest - OK - All
> required tests passed
>

We now understand what is happening.  We've had this fixed in master for a
while[1], Richard is backporting it to the stable branches now.

I don't consider this a release blocker.

Ross

[1]
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=58e05020e09971f05effb79f8f1eb2012df4f0db

--001a11405f16fa74960566fb6da8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 March 2018 at 20:39, Burton, Ross <span dir=3D"ltr">&=
lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@i=
ntel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><span>On 8 March 2018 at 09:=
41, Yeoh, Ee Peng <span dir=3D"ltr">&lt;<a href=3D"mailto:ee.peng.yeoh@inte=
l.com" target=3D"_blank">ee.peng.yeoh@intel.com</a>&gt;</span> wrote:<br></=
span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-lef=
t:1ex">[1] 12587 - [2.4.2 rc2] test_sstate_sametune_samesigs (sstatetests.S=
StateTests)</blockquote><div><br></div></span><div>Can&#39;t replicate this=
 reliably with rm_work disabled.=C2=A0 Does the QA autobuilder run with rm_=
work enabled?</div><div><br></div><div>$ oe-selftest -r sstatetests</div><d=
iv>...</div><div>2018-03-08 20:35:41,863 - oe-selftest - INFO - oe-selftest=
 () - Ran 20 tests in 4308.314s=C2=A0</div></div>2018-03-08 20:35:41,863 - =
oe-selftest - INFO - oe-selftest - OK - All required tests passed</div></di=
v></blockquote><div><br></div><div>We now understand what is happening.=C2=
=A0 We&#39;ve had this fixed in master for a while[1], Richard is backporti=
ng it to the stable branches now.</div><div><br></div><div>I don&#39;t cons=
ider this a release blocker.</div><div><br></div><div>Ross</div><div><br></=
div><div>[1]=C2=A0<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/comm=
it/?id=3D58e05020e09971f05effb79f8f1eb2012df4f0db">http://git.yoctoproject.=
org/cgit.cgi/poky/commit/?id=3D58e05020e09971f05effb79f8f1eb2012df4f0db</a>=
</div></div></div></div>

--001a11405f16fa74960566fb6da8--
