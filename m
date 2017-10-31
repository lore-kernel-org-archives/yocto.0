Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78124E00CF5; Tue, 31 Oct 2017 07:25:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 638BDE00C78
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:25:13 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id b186so35474150iof.8
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PwI5e4krQz8lHgdFtBg9Vhfk0RxneZesYOkSNwGhVP8=;
	b=KXvqF26L+/6SGVbym05tZ7ILq1t4uAAF2pPx7zui1bZZyEoTltV2WkA7ZlnW77bxKx
	tk8mWdZ3XXs/0zYyN1TObn1P5KQ0jLilA+cnvwV2UsQwFNyq9uvzGdmWrOgC7JCjmyN+
	ep1ZPfaQMf4zGLCKVO5AUf6Rc70i5C2aBlD+ORxtD/ymh5ljE49XXyNY4BFgHZb8DCe1
	jzIqHe10+hT55kk+7QAqyzJprvx1aa9ufdsExgkARC6lR70cX9HvuYPRuXtKQBLz7HgZ
	oyxnEAlsZ+fYF8rImTBwGjAFI+DITt0gfEA6AiZMqk0QOJbC3dluhlTZHZ5UjcPg0QT0
	x7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PwI5e4krQz8lHgdFtBg9Vhfk0RxneZesYOkSNwGhVP8=;
	b=oCDCwrnEWyDXlx4Aiopq4V/GEzohAidjjpxXCMKe6pu0DqcwlPnHcDBdoIFej9Eox3
	VxzoaqJcS8IevddCUGhHTgCwKM4jCPsaio3EOg8ZkS/4IxAF283wCtmNwDJN7gNO6mEU
	1uEnU++Ap9e3Wzim5A2Mls6F7ZEF9n09K/b/NjVU/1TudJgVJC6uD+HyyinqYj4zksLV
	jqYXSCjCcSQC7jUzvnbsZYWB8pH5upsE4qzE++ZCPFDbrj5WbcIUmtHPBgB1XG3U3Jvg
	myLKmjiRrVgfa6srqpcOy1eZX2eU2ELqoIiDP8YbPDq1e+Pa/myRR98l3NXBYpkw8ott
	sC9A==
X-Gm-Message-State: AMCzsaVlrxVdz68CKSplLWlLMQJOIehYphAvbErlonfwF754T2LR7GSS
	NrbSvlh7JlQw8v9N1IwxZel/T/564ebaqMLbuyCyCg==
X-Google-Smtp-Source: ABhQp+SXdOLQNlrYcHhKCdBmtyo3OAMSSccuxyQkIR9hV+n2Xvt8uKAXF1gF/L6zjOb3WghRiv40msnXvWd1qHCtofg=
X-Received: by 10.36.4.67 with SMTP id 64mr3301867itb.94.1509459912525; Tue,
	31 Oct 2017 07:25:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 31 Oct 2017 07:24:52 -0700 (PDT)
In-Reply-To: <CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
	<CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
	<CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Oct 2017 14:24:52 +0000
Message-ID: <CAJTo0LYPxRO1sB8T=bE2m6aG6jgODWr+fSyujzwcQsEst0eb9w@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Tue, 31 Oct 2017 14:25:14 -0000
Content-Type: multipart/alternative; boundary="001a1140ad4ee3a4e2055cd8856b"

--001a1140ad4ee3a4e2055cd8856b
Content-Type: text/plain; charset="UTF-8"

On 31 October 2017 at 14:15, Michael Habibi <mikehabibi@gmail.com> wrote:

> Is there an example of this somewhere? I haven't had any luck in
> documentation or example code to see how to make the site.conf be used.
>
>
site.conf is loaded if it is present in a conf/ directory anywhere.  I have
a meta-ross which contains conf/site.conf, I add that layer to every build
tree and bitbake will read the site.conf.  There's not a lot more to it
really.

Ross

--001a1140ad4ee3a4e2055cd8856b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 31 October 2017 at 14:15, Michael Habibi <span dir=3D"l=
tr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehabib=
i@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Is there a=
n example of this somewhere? I haven&#39;t had any luck in documentation or=
 example code to see how to make the site.conf be used.</div><div class=3D"=
gmail_extra"><br></div></blockquote><div><br></div><div>site.conf is loaded=
 if it is present in a conf/ directory anywhere.=C2=A0 I have a meta-ross w=
hich contains conf/site.conf, I add that layer to every build tree and bitb=
ake will read the site.conf.=C2=A0 There&#39;s not a lot more to it really.=
</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a1140ad4ee3a4e2055cd8856b--
