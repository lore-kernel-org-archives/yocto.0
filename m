Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F9D9E00CFF; Tue,  3 Oct 2017 07:54:16 -0700 (PDT)
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
	*      [209.85.215.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F062BE00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 07:54:15 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id j73so3537696lfg.0
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 07:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rgW0XCgn49hMqQHv/3vM6K81gGp7NXGoY5Y52mCX1pg=;
	b=nBS8HTq20vWvOc+P/z42BhWC/at5Dr8x8f+tajHdT+r4BFC+4UjKIrlWn3htCsw2Qs
	FbUmhlPg0jyYwtESs2T3v+gN7fNFc9H8FZ2/PMe7EZIqOCuALJz30+Xgm3qoZFOj38X0
	uABeduah2DMHki9WB4xOSl9C8DLT8rvy4aiA3wCWNmWV2tpOvdgJ5afs1kbmQzhX5f89
	wsteYE2iBSpxZDhgswuIgIsqopXieF+VQOaCTqevdMT8WFMr/k2QotoV07e4QEyIfaDF
	QYT+IAQ3+MV/rfe0h+91Odph2BH/TXFkRKuxhTBTIz8OWhFLutZ/7GuS9agnfgAZ6IL5
	GUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rgW0XCgn49hMqQHv/3vM6K81gGp7NXGoY5Y52mCX1pg=;
	b=o6XTKjD2iONYUc+iT/5k1oxIVbo81K/PrSCaW486GTS8jem9tCPNBA8TwgK7E0CQVy
	zQabU4BNHj1FqJdTmFF7PcZvuSeP7EBoz61vZHsMUVmseC6BDl0ROknwFsCk8lvSH3Ap
	uUX/uHhA7NOgQ7HqdsHHlGZ9EDbVo1rSAh7tDot67F0X0KspxsIrM4jPdiqJhGxCMEXI
	hB+uhDNmaqzYwHwbjfepIktDXXIQCI0QfSTdmcpBDAJ52yTcZIagSNY8dWP36TgHcOCw
	wj2CTPSPb7/YI/aKUNCpVrLIh5pFUkNtgP2btp3c66qZtRKXDnojfGw9RUkbvVDRFPVA
	PELw==
X-Gm-Message-State: AHPjjUg0yw7GWJysU6vk8NvKXQbPFPd3LNxOWmMyvwvoMt7rXbp8IsUa
	4YEuBvLo7PRhWvnYNwGsWFBS61ufmlpvmc3VSg8=
X-Google-Smtp-Source: AOwi7QCEdF1u+AFoWQaN1AMxOSuwUsAMsQ28JUo9xRQNJQ45Hl5C1acEH1C5Mt2MYZPo+hY28hVChCLJ9dBaAWu+5jQ=
X-Received: by 10.46.99.79 with SMTP id x76mr9979531ljb.55.1507042454670; Tue,
	03 Oct 2017 07:54:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Tue, 3 Oct 2017 07:54:13 -0700 (PDT)
In-Reply-To: <CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Tue, 3 Oct 2017 17:54:13 +0300
Message-ID: <CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Oct 2017 14:54:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c0742d02c1446055aa5aa1e"

--94eb2c0742d02c1446055aa5aa1e
Content-Type: text/plain; charset="UTF-8"

Hi Ross,
how to configure use of pkg-config-native ?

On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com>
> wrote:
>
>> Hi all,
>> I am new to the Yocto project.
>> Is this the Yocto forum ?
>> I would like configure pkg-config search directories but, the program
>> configured from the sysroots file system, so it does not see Host
>> environment variables.
>> i.e : there are two pkg-config apps : Host's pkg-config located at
>> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
>> x86_64-linux/usr/bin/
>>
>>
> If you want to access pkg-config files on the host, you'll need to use the
> pkg-config-native binary as pkg-config uses the *target* sysroots.
>
> Ross
>

--94eb2c0742d02c1446055aa5aa1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,=C2=A0<div>how to configure use of pkg-config-nati=
ve ?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><sp=
an class=3D"">On 3 October 2017 at 15:13, <a href=3D"mailto:eliya.mir@gmail=
.com" target=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>=
&gt;</span> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail=
_quote"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi=
 all,=C2=A0<br>I am new to the Yocto project.=C2=A0<div>Is this the Yocto f=
orum ?=C2=A0</div><div>I would like configure pkg-config search directories=
 but, the program configured from the sysroots file system, so it does not =
see Host environment variables.</div><div>i.e : there are two pkg-config ap=
ps : Host&#39;s pkg-config located at /usr/bin/ , and bitbake pkg-config lo=
cated at=C2=A0~/Yocto/build/tmp/sysroots/<wbr>x86_64-linux/usr/bin/</div><d=
iv><br></div></div></blockquote><div><br></div></span><div>If you want to a=
ccess pkg-config files on the host, you&#39;ll need to use the pkg-config-n=
ative binary as pkg-config uses the *target* sysroots.</div><span class=3D"=
HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0</div></font>=
</span></div></div></div>
</blockquote></div><br></div>

--94eb2c0742d02c1446055aa5aa1e--
