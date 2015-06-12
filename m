Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80B23E00A21; Fri, 12 Jun 2015 04:22:03 -0700 (PDT)
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
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01B13E009EF
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 04:21:59 -0700 (PDT)
Received: by qkx62 with SMTP id 62so15715857qkx.3
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 04:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mRv0tBpgsIIltmeTEPkJ4OGVwdRq4FNXr0dmKIA8tLM=;
	b=XU3NcoPlWQGuyzUHSdICzjZmMmSygxEAS77fspjv8l+sO8nclRvzwjeALr2dgHiGZK
	h7l98FoIW+r4RFfevia0jimzSmkXxUptDegNjfskdiEEn7xYZrB1ybIOqg9mGYemTfJZ
	EP9e97NbuBO0YTg9iVtmQw4qmRLNz0h3lRioDmUMxe9I8C9jgEWupVDvKFeP+qnW73ZJ
	A1lDCZo9zH8NLN/Wh/CJOOAcrO6aS17H+7ot0Em/pnUmnVBYNhfFHpNNrv3LXaCPtzCK
	otzM398tXolpvoqd+NEhkzJQbuQbRg5aeqQ9e7bwVxnJHiBrbJUh+EjzZnBS5YqCinnw
	hMJQ==
X-Gm-Message-State: ALoCoQkZfzF4gA7Beux3RLmMeFFW229dnSNJS29lbcUNx0BGOsrHewO6QgY8snqzI2rNF++xj3RZ
X-Received: by 10.55.43.130 with SMTP id r2mr29329441qkr.14.1434108118852;
	Fri, 12 Jun 2015 04:21:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 12 Jun 2015 04:21:38 -0700 (PDT)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A42D7B3@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A42D7B3@AZ-FFEXMB01.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Jun 2015 12:21:38 +0100
Message-ID: <CAJTo0LZa4=5J=RhMKJ3uL1Akpq6-OCJqmm20VLm_dnQEAvbUWA@mail.gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Post install section for multiple packages using a function
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
X-List-Received-Date: Fri, 12 Jun 2015 11:22:03 -0000
Content-Type: multipart/alternative; boundary=001a1147afb0fe7b6b05185050c2

--001a1147afb0fe7b6b05185050c2
Content-Type: text/plain; charset=UTF-8

On 12 June 2015 at 12:15, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

> So I need to write an pkg_postinstall_PACKAGE section for 24 such
> packages. So is there a way I can do it through some function or way out.
>
>
Just set the variable pkg_postinstall_[PACKAGE] in your function to the
string you want to use as the postinst.  Many classes already do this, such
as systemd.bbclass.

Ross

--001a1147afb0fe7b6b05185050c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 June 2015 at 12:15, Bipnesh, Abhinav (Abhinav) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">abhinavbipnes=
h@avaya.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p clas=
s=3D"MsoNormal">So I need to write an pkg_postinstall_PACKAGE section for 2=
4 such packages. So is there a way I can do it through some function or way=
 out.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Just set the variable pkg=
_postinstall_[PACKAGE] in your function to the string you want to use as th=
e postinst.=C2=A0 Many classes already do this, such as systemd.bbclass.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a1147afb0fe7b6b05185050c2--
