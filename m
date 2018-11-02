Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC669E00C15; Fri,  2 Nov 2018 02:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B7D8E00C10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 02:09:34 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id x2-v6so1289665eds.3
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 02:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8Tp7g/5hWsNGUDsXO6vSDZLIYokdDU7heJmaXONWxFo=;
	b=fujlFdc976dtAJEACkuItElb5opjrwwsu3w0CA5uxM8oDKYh6OLHsjV7IgUdF3HH+/
	9q8yLrNt8O/Qk9sl9dzhEKnd88INP5zKryQmP9HToy3qmVBegfH8P5xTUMBaDxT9zyUy
	fZ5PcnRSneo5FRZB5JF7yteQ41bUw4b8yIsZ4JHYA+IArA2BluYgOB3X80tllzyxIU5J
	6Zg0zTgfLF4NwgCanVKGAJEWUtlPpKKDylO8gOaz1ghrRg2Y1TVyCxSdp/iwT7jhiswx
	jANhtEjCL9QSQqtCXea7p7fVQNGeuaSnoaaDy6VMjmzckenFNpTaiHZ/ZU8EunPrebi2
	0Ydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8Tp7g/5hWsNGUDsXO6vSDZLIYokdDU7heJmaXONWxFo=;
	b=ATlVMWMRflXh+c64c6rFmxhLHvRQDvQOpfUWcaKaKWQJhCuNbpc+MDLiN3OaLhBsE0
	7N1Yf9N376lNgfk6Z0U98B7y1NsTCUXjIi5Mx4b/2QCGlqzMOCCWz8RukMA+dzuRqN9K
	F0NF0pcIlKmJ293Hp1EicNnjnKCIKnbmD1Ijfliyby0KO4ch/QPotPDlUKgst3nZaWth
	oOkM0wPL/Gngb7cHg5hLx9oHYii73UTL/2uM3Hzcbz+zYqphwIbSEb5V18A9NsUWIKnO
	5QkS+g75WfcqOJd1J4qT8Xqqh0pZvcHAk46BgWIgpc0A9Utl4qI1Mle1JTeGRizNRYqL
	uOiA==
X-Gm-Message-State: AGRZ1gLOMcoCiZchx3Qep/9bUwuTtNJ/CjnxP7cENXCDoS48LOJldZU6
	kN3xXwg8I8c+ASDCqCNgGt0GHOoOJg41TOWBUTxk
X-Google-Smtp-Source: AJdET5etW58EtXOzI+qvPZUBDueEBUvSoNGGBzZ3+bFPo0mvDPNNjRRn17Tb1iLECyDXytGJEImlUHIizFRpCGapXYw=
X-Received: by 2002:a50:9f65:: with SMTP id
	b92-v6mr3836772edf.235.1541149773452; 
	Fri, 02 Nov 2018 02:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2m6UT_HaA72q43ppbPzvpSJF6QvmRkUeFXFSqJK+uBtcQ@mail.gmail.com>
	<CADxo8W+-OLoDq=y8QNxskHvQnM_6dKYyhzhF6zvp28mL=HJD2w@mail.gmail.com>
In-Reply-To: <CADxo8W+-OLoDq=y8QNxskHvQnM_6dKYyhzhF6zvp28mL=HJD2w@mail.gmail.com>
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Fri, 2 Nov 2018 10:09:22 +0100
Message-ID: <CAK4Yt2kgfat-wyvNbQk2izw3TO1Ot5kj1aeOJXHn3izfEJDRog@mail.gmail.com>
To: Kosta Zertsekel <zertsekel@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: force a factory-preset sdk to quemu
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
X-List-Received-Date: Fri, 02 Nov 2018 09:09:35 -0000
Content-Type: multipart/alternative; boundary="000000000000caddc70579aae457"

--000000000000caddc70579aae457
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip! I'll do it!

On 2018. Nov 2., Fri at 10:08, Kosta Zertsekel <zertsekel@gmail.com> wrote:

> On Fri, Nov 2, 2018, 10:28 Zolee K wrote:
>
>> I got my board with Yocto based SDK but there is no quemu in the
>> configfile by default. Is it possible to add quemu capability manually to
>> factory-preset sdk?
>>
> If Yocto SDK you have is actually Yocto eSDK (extended SDK), you can try
> the below:
> $ MACHINE=qemux86 bitbake build-image
>
> --- Kosta Z
>
>>

--000000000000caddc70579aae457
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Thanks for the tip! I&#39;ll do it!</div></div><div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On 2018. Nov 2., Fri at 10:=
08, Kosta Zertsekel &lt;<a href=3D"mailto:zertsekel@gmail.com">zertsekel@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr">On Fri, Nov =
2, 2018, 10:28 Zolee K wrote:</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"auto">I got my board with Yocto based SDK but there is no quemu in the =
configfile by default. Is it possible to add quemu capability manually to f=
actory-preset sdk?</div></blockquote></div><div dir=3D"auto">If Yocto SDK y=
ou have is actually Yocto eSDK (extended SDK), you can try the below:</div>=
<div dir=3D"auto">$ MACHINE=3Dqemux86 bitbake build-image</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">--- Kosta Z</div><div class=3D"gmail_quot=
e" dir=3D"auto"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div>
</blockquote></div></div>

--000000000000caddc70579aae457--
