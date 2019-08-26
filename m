Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40064E00D63; Mon, 26 Aug 2019 03:53:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nishantpoorswani[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06BC8E00D60
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 03:53:09 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id v12so11728727oic.12
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 03:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BSS7oQLQNm2WvNhZ3dMA/EqPOcphWEwORiFoSLmG9Qo=;
	b=PqPH49buLIwau9Xp0NWQoeaC3kUsJWr1yaWgvc1cWyVIyjMCMo86sLV4he18e+Hyv4
	zzFRyCIO3A8GF0h8sRidBcGCHZXs19gOzqxeAY+RF7wEsTTt4Tj07Br+IiB4fSvKadBo
	eZGPEe5br7d5Pf1PU07XLDE3Tk5Qlyr0o/zYxNa5eXk5FvM9tsiRCvtVSltnCXyOr9zM
	vSmt4kjP32utVShUa4kKa5hOwCgVhrsyodZt5T+iprXswEnA0cMeVGv5JrjcVHTdGBaa
	Qb6iv6T2j1v9nx14rqA+DKOJ2IXTeZrzo5OtNJEIkEHUaKoKCnHBHXfwKzLOOcWYz+yI
	F1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BSS7oQLQNm2WvNhZ3dMA/EqPOcphWEwORiFoSLmG9Qo=;
	b=fk51vWXFwvtqdswuQsJirxV2dHM81F5q1PdpwkDZiQ/oA1lgdDfdY7MAbkCde9Jcj6
	egy2VR6xemCioILrjWKCKJ1c8Vn0JlOEDWXz7p5/KIboltkvYnZ2jgibGEDe0GkGQq31
	P0nGEXkdZp0iQNNIRRZMiGezlYAUg2ag8oO9NBd/0Ek6saQqTHOQBoOYNzPuK8je/XrO
	W0wIwHvflphoPKYkwQ9csMQJvPauGn0zFMPXr4YVv/Iw20NE9H7EkW6am0QHD4L7Mkdy
	RN/u6C7ur4v64kOxtr4i5p0q6ZHVPcHmKufJGjCqa8G5pHcywDl8xWz6wgfJORitComi
	g5ow==
X-Gm-Message-State: APjAAAWGQZKv9tosw5PzCOmEYgqLHvW7jtBIEJtIPb/Q3YVDsZATVo+u
	XzC5gzUtY7o7uzEWJcHllFcIOhhEzWnPEslmxu8=
X-Google-Smtp-Source: APXvYqxV5y6xhPLiaCXk+7lDA+ETuwpL+YTPoVtYOrMSoruIsVd3NdOAzYmeUqIWCT5gBRjQ+D86DvuzjlVYmtwbpLA=
X-Received: by 2002:aca:305:: with SMTP id 5mr1120325oid.1.1566816789147; Mon,
	26 Aug 2019 03:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com>
	<e72cd70d-73a5-16c0-db8e-fb8a96896dcc@mvista.com>
In-Reply-To: <e72cd70d-73a5-16c0-db8e-fb8a96896dcc@mvista.com>
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Mon, 26 Aug 2019 16:22:58 +0530
Message-ID: <CAN70yQU60hc3gA35RRWjkYxrFg0S9mNKSw7+Na2pqU6wHejH_A@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: U-boot recipe fails for the master branch(new sbc)
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
X-List-Received-Date: Mon, 26 Aug 2019 10:53:13 -0000
Content-Type: multipart/alternative; boundary="00000000000025363d059102f654"

--00000000000025363d059102f654
Content-Type: text/plain; charset="UTF-8"

I managed to use dtc-1.14.5. Getting other errors while compiling now.

Here is the log: https://pastebin.com/2i5vRrTx

Maybe it's because of the gcc version. I had used rocko which has gcc-7.3
as the default compiler.

Regards,
Nishant Poorswani

On Sun, Aug 25, 2019 at 11:17 PM akuster <akuster@mvista.com> wrote:

>
>
> On 8/25/19 2:15 AM, nishant poorswani wrote:
>
> Hi,
>
> I'm trying to add a new board called rock-pi-s to the yocto project. I've
> succesfully done it for the rocko branch. Now I'm moving it to the master
> branch. I'm facing issues with u-boot. Here is the log for it:
>
> https://pastebin.com/NAxqsvcB
>
> It seems the libfdt from dtc-1.5.0 is incompatible with the older versions
> of u-boot. Can anyone recommend a method to fix it? Any help is
> appreciated.
>
>
> You can try having your own recipe for the version you need and then use
> PREFERRED_VERSION to set the version you want.
>
> - armin
>
>
> Regards,
> Nishant Poorswani
>
>
>

--00000000000025363d059102f654
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I managed to use dtc-1.14.5. Getting other errors whi=
le compiling now.</div><div><br></div><div>Here is the log: <a href=3D"http=
s://pastebin.com/2i5vRrTx">https://pastebin.com/2i5vRrTx</a></div><div><br>=
</div><div>Maybe it&#39;s because of the gcc version. I had used rocko whic=
h has gcc-7.3 as the default compiler.</div><div><br></div><div>Regards,</d=
iv><div>Nishant Poorswani<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 25, 2019 at 11:17 PM akuster=
 &lt;<a href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"gmail-m_6434117910970623668moz-cite-prefix">On 8/25/19 2:=
15 AM, nishant poorswani
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>I&#39;m trying to add a new board called rock-pi-s to the yoct=
o
          project. I&#39;ve succesfully done it for the rocko branch. Now
          I&#39;m moving it to the master branch. I&#39;m facing issues wit=
h
          u-boot. Here is the log for it:</div>
        <div><br>
        </div>
        <div><a href=3D"https://pastebin.com/NAxqsvcB" target=3D"_blank">ht=
tps://pastebin.com/NAxqsvcB</a></div>
        <div><br>
        </div>
        <div>It seems the libfdt from dtc-1.5.0 is incompatible with the
          older versions of u-boot. Can anyone recommend a method to fix
          it? Any help is appreciated. <br>
        </div>
      </div>
    </blockquote>
    <br>
    You can try having your own recipe for the version you need and then
    use PREFERRED_VERSION to set the version you want.<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Regards, <br>
        </div>
        <div>Nishant Poorswani<br>
        </div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_6434117910970623668mimeAttachmentHeader"><=
/fieldset>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000025363d059102f654--
