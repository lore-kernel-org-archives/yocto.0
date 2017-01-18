Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A798AE0098A; Wed, 18 Jan 2017 03:28:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723C5E00942
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 03:28:20 -0800 (PST)
Received: by mail-yw0-f175.google.com with SMTP id w75so5860215ywg.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 03:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v336codIwU0FE39qBTaC2IicOJg7n2soCQBByeADzG4=;
	b=UOKuHj+2jm9LOEVbbIyEyEpIWBV6+c6cD5ZuRxdaSn1zSxxs1lkoem1gb3GyASwzj8
	bQsz/GiCD9WI5S0ccAZMiFNUO5qadoProzJ2CRycubwBPX4piB2e0oa3ASkdEAPO0waG
	6YwSgJ+oQDpHrymKeF0IWkjBsa/UKRONFBHs1jgX9oLnSh2ERobdxSBIbK3bl26LSO4w
	9Iwim6mqO8WA/4/48cphRkt9GiinKtQRGFxjbzRo/WQocZeTAzhV+dWxDX2nbAUHK0KG
	wUrirXUqoajp1jMw3j66L9Zt2NXz3IPQjMwn/PXAZk+4hidyQMygTEclXDITC6rXq1pK
	ZGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v336codIwU0FE39qBTaC2IicOJg7n2soCQBByeADzG4=;
	b=ZZyCy8MiAlX1ZjP1HMcftzohNIyUvWHg/JimRW9peyfXuuXTQNrBUUkfuXAaMOlOM8
	DgtbMOruOF4AEiOlM4zGvzpX12WxVB60PaQBCj5v+4aYMttANL9lzerio5XCMiBBdWpJ
	vQMN6YPecyAhvTScxbq6I1SduHm+9jYza8iD94KBVBDfnHEfTmkRc+gRws6iI8C8vSCs
	0ZtPmQON81kbv4VMyJZ/1ZS4udIxqCPxyAzP5O08sJLiSzgCvzaIsMs2v7jJmeNVkFqG
	1nTFfpV2BATwn2RoNgZHHeHqCmq9MLM6D1cGYPwgexza3Qd92RDvWI8BqiTqGkGD0+b1
	oSHA==
X-Gm-Message-State: AIkVDXLir9z4CnPMK5ge6lN43NQkgfF4tVlmUMuAKcg4hTDwmdHKFQugEvPMq18LbHi9ZK4uMHV++gH74mwKBU+O
X-Received: by 10.129.116.136 with SMTP id p130mr2137629ywc.151.1484738900515; 
	Wed, 18 Jan 2017 03:28:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.13.234.11 with HTTP; Wed, 18 Jan 2017 03:27:50 -0800 (PST)
In-Reply-To: <6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
	<CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
	<6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 18 Jan 2017 13:27:50 +0200
Message-ID: <CAHiDW_G0mmSjqQKbSvuh1JnKkxe_vmFQ6KTpaGguRwhH-DbiuA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Wed, 18 Jan 2017 11:28:22 -0000
Content-Type: multipart/alternative; boundary=001a1147edaac014c405465cb65b

--001a1147edaac014c405465cb65b
Content-Type: text/plain; charset=UTF-8

On 18 January 2017 at 11:51, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-01-18 10:35, Burton, Ross wrote:
>
>>
>> On 18 January 2017 at 09:13, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     * glib-2.0-native depends on ${DISTRO_FEATURES}
>>       To me this seems silly as "native" should be "native" and
>>       not depend on any distribution settings.  Here's the code
>>       that's causing it (in do_install)
>>
>>             if [ -f ${D}${datadir}/installed-tests/glib/gdbus-serialization.test
>> ]; then
>>                     if ${@bb.utils.contains("DISTRO_FEATURES", "x11",
>> "false", "true", d)}; then
>>                             rm ${D}${datadir}/installed-tests
>> /glib/gdbus-serialization.test
>>                     fi
>>             fi
>>
>>       Obviously this isn't important for a native package.  Any
>>       suggestions on how I might keep this from creeping in?
>>
>>
>> The tests are only installed for target builds anyway, so that do_install
>> part could be target-specific.
>>
>
> How would one change the recipe to reflect that?  Is there an
> override that effectively says "not -native"?
>

do_install_append_class-target () should work.

 - Jussi

--001a1147edaac014c405465cb65b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 January 2017 at 11:51, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2017-01-18 =
10:35, Burton, Ross wrote:<span class=3D"gmail-"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
On 18 January 2017 at 09:13, Gary Thomas &lt;<a href=3D"mailto:gary@mlbasso=
c.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrote:<=
br>
<br>
=C2=A0 =C2=A0 * glib-2.0-native depends on ${DISTRO_FEATURES}<br>
=C2=A0 =C2=A0 =C2=A0 To me this seems silly as &quot;native&quot; should be=
 &quot;native&quot; and<br>
=C2=A0 =C2=A0 =C2=A0 not depend on any distribution settings.=C2=A0 Here&#3=
9;s the code<br>
=C2=A0 =C2=A0 =C2=A0 that&#39;s causing it (in do_install)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -f ${D}${datadir}/installed-=
tests<wbr>/glib/gdbus-serialization.test ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ${=
@bb.utils.contains(&quot;DISTRO_F<wbr>EATURES&quot;, &quot;x11&quot;, &quot=
;false&quot;, &quot;true&quot;, d)}; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${datadir}/installed-tests<wbr>/glib/gdbus-=
serialization.test<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 Obviously this isn&#39;t important for a native packag=
e.=C2=A0 Any<br>
=C2=A0 =C2=A0 =C2=A0 suggestions on how I might keep this from creeping in?=
<br>
<br>
<br>
The tests are only installed for target builds anyway, so that do_install p=
art could be target-specific.<br>
</blockquote>
<br></span>
How would one change the recipe to reflect that?=C2=A0 Is there an<br>
override that effectively says &quot;not -native&quot;?<br></blockquote><di=
v><br></div><div><div>do_install_append_class-target () should work.</div><=
/div><div><br></div><div>=C2=A0- Jussi</div></div></div></div>

--001a1147edaac014c405465cb65b--
