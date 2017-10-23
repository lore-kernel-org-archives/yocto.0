Return-Path: <vishalashapur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B0BE00CAF; Mon, 23 Oct 2017 16:57:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vishalashapur[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16511E007EF
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 16:57:49 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id p75so12440707wmg.3
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 16:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uWS2meFHdmUVvnA6rQTbCJjsI8Sce1BRYQvSlzAl3us=;
	b=hzvHfdhAQId1hnp6hBaEgQaRbut63s2AEBHs18/59bxJksrIoeevlJTmb8Au9QVjkl
	JCte8oqBbgG9qAai104O4lBcAy8YmQrz4Od3bqnzeUbtxvFNBZWgHfIlDkog4jdDz8nX
	DbTaqDlSDmpkrdvuEdMpLVXCZf1Als+fEGyYt6AZMzbaNEQAu0c75PfHsHnGicQOwwnN
	0Yzc1W7Aa+R04/x9BfGpqHk73N+JM8nJo8XysnyzY+9uDS4gxyQrdWks1lydoCHI11sm
	LrPY9hlBj5m9dFg9fHGQyIB8X7wcCjfmqY3DR50ANGAACPQ/IXFbnvaz/9vc2vOCPI/M
	fhmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uWS2meFHdmUVvnA6rQTbCJjsI8Sce1BRYQvSlzAl3us=;
	b=SgNBcU1nBFw2T3jSZ4zn9jUs+WwJcojPB8uiloccv2cEHWVXGfIQtJrLLIq+gLlnuj
	JXWpwoV1zXErytcuEjjz/t7HoFAoGCyVE0uj4QgmYXA85jX3SDtiz4gb498IulF6oicC
	wwSIeyn2iiE2tU+ko3vKc3txPRY+0/uS8ex5FKoA8fKGG5xJnl44cXY3qGRsZS1ADGob
	rlqICV0QjS4a8kdxfZYJrRwpV1SQR/aU23mu9E1SwYO3jFCjkgPo0AwuVbIr8nP1ifzH
	c0WuJkxzbJKuG4QRckG74FdF0WjgELseKQCrEhGVzEZpfuLlnPWCLzCVF/jSV4jibrZp
	a8xg==
X-Gm-Message-State: AMCzsaUzAEH10PkqHi7xZraOmwtbCxyDiliyOp/5aUr6uUIEIhtDkvbo
	KFb3Eg8n5SLoaWCs0LnLQhYnLIsQNKpkF5BlMfs=
X-Google-Smtp-Source: ABhQp+QdrmPBTcNxdIjeSRCDaW+WoCINtpyDhPLhqVMOSc6zsajtNUP6BTgRuizDDifeHdElUVhv/jxFRRsKsuIh22Y=
X-Received: by 10.80.196.79 with SMTP id w15mr18067226edf.261.1508803068829;
	Mon, 23 Oct 2017 16:57:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 16:57:48 -0700 (PDT)
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 16:57:48 -0700 (PDT)
In-Reply-To: <CAAWyHBL0Z4Pnm2HX861Cnuin7gwvvKwnE=LBek=uhSfO9TMduQ@mail.gmail.com>
References: <CAAWyHBL094mGuwrWkcO4GhCEp+honQ+9zV8Y04bEugGjV3uhSQ@mail.gmail.com>
	<CAAWyHBKp8tNACEFR6xfDp6qKAzUKYyVrH9PuG0xajLz=FHyUMA@mail.gmail.com>
	<CAAWyHBLAwfw-JDA8HFqAeUWJyCysv2Bn3RcswfTqftHxZ+USXA@mail.gmail.com>
	<CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
	<CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
	<CAMKF1sqLnq1pGKjjnNNgN=j+kqX-QBFVFpsGC4zSa8Rvqn7hQQ@mail.gmail.com>
	<40186177-fde5-1edc-63ac-4e88b83c3004@windriver.com>
	<CAAWyHBL0Z4Pnm2HX861Cnuin7gwvvKwnE=LBek=uhSfO9TMduQ@mail.gmail.com>
From: vishal ashapur <vishalashapur@gmail.com>
Date: Tue, 24 Oct 2017 05:27:48 +0530
Message-ID: <CAAWyHB+XapnVy-a4im+==iJHN7GUKtEVXwrkNhGHatX7fmJt2A@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling_gcc
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
X-List-Received-Date: Mon, 23 Oct 2017 23:57:51 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cbc7af42678055c3f96be"

--94eb2c1cbc7af42678055c3f96be
Content-Type: text/plain; charset="UTF-8"

Ya, I want gcc compiler to be on target image. I'm using raspberry pi3
board.

On 24-Oct-2017 1:14 AM, "Randy MacLeod" <randy.macleod@windriver.com> wrote:

On 2017-10-23 01:17 PM, Khem Raj wrote:

> On Mon, Oct 23, 2017 at 4:52 AM, vishal ashapur <vishalashapur@gmail.com>
> wrote:
>
>> Hi
>> I'm building a Linux kernel from yocto, on which I have to enable gcc.
>> Can u
>> please tell me how to enable gcc. And also usb_modeswitch package
>>
>
> it uses gcc, I think you need to clarify your question a bit so
> someone can provide you help.
>
>
Do you mean that you want the compiler in the target image?

If so, add:
  IMAGE_INSTALL += "packagegroup-core-buildessential"
to your conf/local.conf file.


../Randy


FYI, I looked-up that up in WR's distro feature:

https://github.com/WindRiver-OpenSourceLabs/wr-base/blob/LB2
1_7.0_RCPL0002/templates/feature/target-toolchain/image.inc
since I know it well. :)

I didn't quickly find it in the YP manual:
  http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html
but it should be there.

-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

--94eb2c1cbc7af42678055c3f96be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ya, I want gcc compiler to be on target image. I&#39;m us=
ing raspberry pi3 board.</div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On 24-Oct-2017 1:14 AM, &quot;Randy MacLeod&quot; &lt;<a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"elid=
ed-text">On 2017-10-23 01:17 PM, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Mon, Oct 23, 2017 at 4:52 AM, vishal ashapur &lt;<a href=3D"mailto:visha=
lashapur@gmail.com" target=3D"_blank">vishalashapur@gmail.com</a>&gt; wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi<br>
I&#39;m building a Linux kernel from yocto, on which I have to enable gcc. =
Can u<br>
please tell me how to enable gcc. And also usb_modeswitch package<br>
</blockquote>
<br>
it uses gcc, I think you need to clarify your question a bit so<br>
someone can provide you help.<br>
<br>
</blockquote>
<br></div>
Do you mean that you want the compiler in the target image?<br>
<br>
If so, add:<br>
=C2=A0 IMAGE_INSTALL +=3D &quot;packagegroup-core-buildessent<wbr>ial&quot;=
<br>
to your conf/local.conf file.<br>
<br>
<br>
../Randy<br>
<br>
<br>
FYI, I looked-up that up in WR&#39;s distro feature:<br>
<br>
<a href=3D"https://github.com/WindRiver-OpenSourceLabs/wr-base/blob/LB21_7.=
0_RCPL0002/templates/feature/target-toolchain/image.inc" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/WindRiver-O<wbr>penSourceLabs/wr-base=
/blob/LB2<wbr>1_7.0_RCPL0002/templates/featu<wbr>re/target-toolchain/image.=
inc</a><br>
since I know it well. :)<br>
<br>
I didn&#39;t quickly find it in the YP manual:<br>
=C2=A0 <a href=3D"http://www.yoctoproject.org/docs/2.2/mega-manual/mega-man=
ual.html" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproject.org/=
do<wbr>cs/2.2/mega-manual/mega-manual<wbr>.html</a><br>
but it should be there.<font color=3D"#888888"><br>
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></blockquote></div><br></div>

--94eb2c1cbc7af42678055c3f96be--
