Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDB56E006C7; Mon,  6 Jun 2016 08:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B10CE0043B
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 08:42:00 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id z189so46092755itg.0
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 08:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=L51KjQiOf2FoWZj2A7JrQremSekMBFI96ffkTLgE9dg=;
	b=LHnwiEpmcmyCPQnX2WdYhbylkbPOU8s4qCYwSzcDwglVD8gZaJaYfSQARhgW7O7qdM
	L+LZIinB0s0jrj6se0RlhdzEtt3srw6BXxpzgO4Vdy3wmRwCyoC25dN1Q+caV1W13gqh
	CfTJzEce1TvnMKhSDDeyR1FkTx42ufuG7xVI2UvsAqZk6wy6MGGzhHvPStqymOMXm8/f
	nDaKZCe2LHZH7J5aEgdg3LQHHloCVZhuUwCZc3kqcLXPJcDVXFbZ2E9ZJvr9c8LhRhP3
	A2nn1EmIcIBc3AzAhUuyTxDJo7D1BVoKR3bLM7vk78mtpQnsyGEGULn9TntisYKwiVrv
	0emA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=L51KjQiOf2FoWZj2A7JrQremSekMBFI96ffkTLgE9dg=;
	b=Cjw7/9JRHZwlL4CdJFZ99wW+wfC+D8XaXyVoJaTod83YZoTFNg9SdR1ffItn6tlop3
	1b0lb+E1xyFfxy8TTKiBV9NVXDzbtfZVqv/+HcJsJdsmKK19FYye0YWOZiuOBFyWsDV6
	f1PZ8D+uCPh8E8xsE35WUi9CdXfAFsIeMSW2X2MvvjARtScvjYjj3ZBlxf8deDbNz7b4
	m6cE5DjXkKP6uJZP9Jdc14I+M2V+k+ovXMM8UuhKgudFYiYEz/15ZFFSzLRFPuA54Bzj
	zrZX4bmT0o1We4gkrJIUkl4wa5/Gk1SjqMl++gImlgn8famf8Lu9xEqaxZFYLMTHI0ru
	Zhgw==
X-Gm-Message-State: ALyK8tLDRvLVVHZ9kikaAqklXFiw1dcnLEnI1t8GJ0fhj34t7pNeBPk1thMeAoT7ixd082qHdlhJrIPAXm2M9A==
X-Received: by 10.36.233.68 with SMTP id f65mr17683974ith.19.1465227720240;
	Mon, 06 Jun 2016 08:42:00 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Mon, 6 Jun 2016 08:41:40 -0700 (PDT)
In-Reply-To: <CAJTo0LbWRBBLht1m2t+S5Xma8Kaf81Xjoi9ioJrt8QDQD=3ATQ@mail.gmail.com>
References: <OFFAB40F65.5F400D73-ONC1257FCA.0034806A-C1257FCA.00350F2B@esa-grimma.de>
	<CAJTo0LbWRBBLht1m2t+S5Xma8Kaf81Xjoi9ioJrt8QDQD=3ATQ@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 6 Jun 2016 08:41:40 -0700
X-Google-Sender-Auth: TZcoTSaMhS78P_ZNY0rI6xwmm7s
Message-ID: <CABcZANn3Utt6Q0xMD0j=9EJiK9PSn-eRWq3pL=+fn3dRWWD6yA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to execute a git submodule init/update?
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
X-List-Received-Date: Mon, 06 Jun 2016 15:42:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c1170bac7b65f05349de912

--94eb2c1170bac7b65f05349de912
Content-Type: text/plain; charset=UTF-8

Use gitsm:// in your SRC_URI rather than git://.

On Mon, Jun 6, 2016 at 3:06 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 6 June 2016 at 10:39, <S.Jaritz@esa-grimma.de> wrote:
>
>> I have a git source which need some submodules. For that I need to
>> execute "git submodule init" and "git submodule update". Any idea how to do
>> it in a comon way?
>>
>
> Use the gitsm: fetcher, which will do that for you.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--94eb2c1170bac7b65f05349de912
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Use gitsm:// in your SRC_URI rather than git://.</div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 6, 2016 a=
t 3:06 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra=
"><span class=3D""><br><div class=3D"gmail_quote">On 6 June 2016 at 10:39, =
 <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@esa-grimma.de" target=3D"=
_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><font size=3D"2" face=3D"sans-serif">I have a git source whic=
h need some
submodules. For that I need to execute &quot;git submodule init&quot; and
&quot;git submodule update&quot;. Any idea how to do it in a comon way?</fo=
nt>
<br></blockquote></div><br></span>Use the gitsm: fetcher, which will do tha=
t for you.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></sp=
an></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christopher Larso=
n<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZau=
rus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div=
>
</div>

--94eb2c1170bac7b65f05349de912--
