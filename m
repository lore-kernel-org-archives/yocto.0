Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A34E00D51; Tue,  3 Oct 2017 08:06:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eliya.mir[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6ABE00D04
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:05:43 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id m199so3637446lfe.5
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 08:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dnZIhx9i1ea4wicqrYs1hyp9YRz/xZ26P2zF36ALnHY=;
	b=XmfbrCEH9YBoZRhRbhLFCKeLSIbKcLd/Of05m7bbziKEXq3l6/qla131QAFCzFZV7N
	uDLp+xgS4xtt+IwCxERhRaZtQ8b/oxgDYgvxEY8Nz5UrlOZwoVMaVUuBPxKnpvwq8pnT
	rYQh2qakxhmFsIQiQbx2vB+9TXCJ98YfrkWLwAvEZdJepZNItEjUeBhlHTeUwqqsNDKL
	n4xNh1Msxok5htAdQBuyJl9Iql9/CMwJV9GxxL57O1S5BysRdFsBe6e1gwb3FmS62RRx
	xH2k/0tSnL9P4CJzkBPmm+mydpvNr79NraJs5+VIM5jKIz23OAWPIYQ/Eayqe8s3V4p9
	th3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dnZIhx9i1ea4wicqrYs1hyp9YRz/xZ26P2zF36ALnHY=;
	b=sejq9JL1IO0DkhkDVReCfYONLXApXGmHGvWLKNlLUfYBk1+pk6h5dbSRpCcPJvuxMf
	hWTxb1JjbNowQGPVpDUu1vimEZImobAPhkgOFqv4zltxlRIN2+4mqHgzGQyx0XN5aGj2
	3+PWaQsufXAQoDtjSXXhqBtNPZl+khFPYIqIo8XxwvZL46Um7Hm0bCWn/2aHbHVQQIKC
	LZt5YNRupmm/gxaiEsv3tt5mnklfWKeK2e4DfiNF2KMED3ZuOeevqf4AUzfyXnjBi77z
	59Y2Bg6cks3zG+LzQps0TSoiLcFhyDikHkfqeJgdiCqrE1PJemApXkDE2pKiXlzQ443D
	Qw8w==
X-Gm-Message-State: AHPjjUjz3KiT0qJtCdK5c4jbztWA31eAjlV99QoQ0200wBPacH/4/JO4
	ycyFOZCDL0rGrsOYLDZtDcYG1qXc6Ei5v9qLeOZevUFG
X-Google-Smtp-Source: AOwi7QDblLtLhh/SCTGqr3unevkbG9hlTnJJg3hWSusxnzlr/m5HPPUp0aNppvGnRNLdt7REaHKHsoHQtjJFYLO99Gc=
X-Received: by 10.46.64.4 with SMTP id n4mr9533292lja.33.1507043143078; Tue,
	03 Oct 2017 08:05:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Tue, 3 Oct 2017 08:05:42 -0700 (PDT)
In-Reply-To: <CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Tue, 3 Oct 2017 18:05:42 +0300
Message-ID: <CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Tue, 03 Oct 2017 15:06:11 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a64a234567c055aa5d3ac"

--94eb2c1a64a234567c055aa5d3ac
Content-Type: text/plain; charset="UTF-8"

when running the recipe I get  during do_configure:
Checking for header stdlib.h             : yes
...
Checking for program pkg-config          :
/home/wzbwjj/vpm/GR_Yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config

How do I change that ?

On Tue, Oct 3, 2017 at 6:02 PM, Burton, Ross <ross.burton@intel.com> wrote:

> You don't need to, it will search the host.
>
> Ross
>
> On 3 October 2017 at 15:54, eliya.mir@gmail.com <eliya.mir@gmail.com>
> wrote:
>
>> Hi Ross,
>> how to configure use of pkg-config-native ?
>>
>> On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com>
>>> wrote:
>>>
>>>> Hi all,
>>>> I am new to the Yocto project.
>>>> Is this the Yocto forum ?
>>>> I would like configure pkg-config search directories but, the program
>>>> configured from the sysroots file system, so it does not see Host
>>>> environment variables.
>>>> i.e : there are two pkg-config apps : Host's pkg-config located at
>>>> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
>>>> x86_64-linux/usr/bin/
>>>>
>>>>
>>> If you want to access pkg-config files on the host, you'll need to use
>>> the pkg-config-native binary as pkg-config uses the *target* sysroots.
>>>
>>> Ross
>>>
>>
>>
>

--94eb2c1a64a234567c055aa5d3ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">when running the recipe I get=C2=A0 during do_configure:=
=C2=A0<div>Checking for header stdlib.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0: yes<br></div><div>...<br>Checking for program pkg-config=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /home/wzbwjj/vpm/GR_Yocto/build/tmp/sysro=
ots/x86_64-linux/usr/bin/pkg-config<br></div><div><br></div><div>How do I c=
hange that ?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Tue, Oct 3, 2017 at 6:02 PM, Burton, Ross <span dir=3D"ltr">&lt;<=
a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">You don&#39;t need to, it will search the host.<span class=3D"HOEnZb"><f=
ont color=3D"#888888"><div><br></div><div>Ross</div></font></span></div><di=
v class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On 3 October 2017 at 15:54, <a href=3D"mailto:eliya.mir=
@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt=
;<a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Hi Ross,=C2=A0<div>how to configure use of pkg-config-native ?</div></div>=
<div class=3D"m_-7853540023792357090HOEnZb"><div class=3D"m_-78535400237923=
57090h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, =
Oct 3, 2017 at 5:51 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span>On 3 O=
ctober 2017 at 15:13, <a href=3D"mailto:eliya.mir@gmail.com" target=3D"_bla=
nk">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.m=
ir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<b=
r></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr">Hi all,=C2=A0<br>I am new to the =
Yocto project.=C2=A0<div>Is this the Yocto forum ?=C2=A0</div><div>I would =
like configure pkg-config search directories but, the program configured fr=
om the sysroots file system, so it does not see Host environment variables.=
</div><div>i.e : there are two pkg-config apps : Host&#39;s pkg-config loca=
ted at /usr/bin/ , and bitbake pkg-config located at=C2=A0~/Yocto/build/tmp=
/sysroots/<wbr>x86_64-linux/usr/bin/</div><div><br></div></div></blockquote=
><div><br></div></span><div>If you want to access pkg-config files on the h=
ost, you&#39;ll need to use the pkg-config-native binary as pkg-config uses=
 the *target* sysroots.</div><span class=3D"m_-7853540023792357090m_6408664=
309892672214HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0<=
/div></font></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c1a64a234567c055aa5d3ac--
