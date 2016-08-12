Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B32C1E0049A; Fri, 12 Aug 2016 07:01:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CF4E0043B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 07:01:19 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id q83so25338919iod.1
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 07:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1PRrrcEl8lfL0GBqiu8oEMtKGznSvhTcEQ0x0rQD7fA=;
	b=LyCGJ/jobqKiFWYHjVoCDw12GVMbrFiYeTT8kqskwgeRL2gTSfkQ/Yd7TWdeG0v6Pn
	MLPNNPOmt+kfz2FZXLMwwsbBHor/wdL0OD/02t2d5Y8kiVMwfy8VTJr1r4Bj50IDBrHE
	9tcK2qLXo7ec4/Ys+tNrwu6pEHJABJL950hBDCYB942mMPt1br55Y6AmWqEzYzbdLAOV
	cYrpAIrx6l7HEV7hQWYZkDOS87VHFHuS0adhY87uaHheT8D2iRFbOF7OjNAdMeiNsSAj
	bzHku2LZVTz/ohyFNfgTgsJQgZ7nTnocx9YZVI2QHOBvF2H1ilLmy1C6Scm61ueKrDqg
	umQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1PRrrcEl8lfL0GBqiu8oEMtKGznSvhTcEQ0x0rQD7fA=;
	b=Aj1Smk3B/wDff1apStPeJ5s+UttMvowT9iRaE0p+N12Fk2pkidDG6448gqeaAcT/E6
	DDT2UuELZrcpA7cOFWbapHlp8ak1GtXtHrSWhmffkZf1rScnu7egchEfEVF6tKQzqeIH
	etS8HuaadHRpQTaJZFqpDkRyzNsc2eI8bA8fgSN4fyKIO/io4X8Nq1V+eLIaRfPR+rC6
	ZDw+qaU0bXIdp9+gQgyyiRQjTD0miC0Bu4dGGRGYmJg0YQeMUR6VRUqcBypAD0qDeJ7I
	nCfBRIhN7WIA+NrboFtCKJFotFiTboXyCidgWUJDWVpFlBs9QUyXI8TE8qqKjAUUIjF0
	eaOQ==
X-Gm-Message-State: AEkooutWbY/U6WRLjMWg60EoXqFLmoLXFI9nyu0AjTIjIo/YijLISUbTV2/9ZtebVI+o9a7ElPTtapvR3yS7VNvc
X-Received: by 10.107.138.212 with SMTP id c81mr17699690ioj.148.1471010479104; 
	Fri, 12 Aug 2016 07:01:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 12 Aug 2016 07:00:58 -0700 (PDT)
In-Reply-To: <CAFrQVPNSvxoiyZ9Y7UZZhArG3VLT5CPfOUcdd0fgqrJPL-_nDQ@mail.gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
	<CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
	<CAMKF1sqbt7sqTjys_B5+vfXhNoXzzQLSL_tO3j_Xb7Dq-FZh3g@mail.gmail.com>
	<CAFrQVPNSvxoiyZ9Y7UZZhArG3VLT5CPfOUcdd0fgqrJPL-_nDQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Aug 2016 15:00:58 +0100
Message-ID: <CAJTo0LYJAw_it7YLJKc5ugULeFh_UFmWfXyaHReH36WEVY4v8g@mail.gmail.com>
To: Kyle Russell <bkylerussell@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Fri, 12 Aug 2016 14:01:27 -0000
Content-Type: multipart/alternative; boundary=001a113ed93211a8640539e05147

--001a113ed93211a8640539e05147
Content-Type: text/plain; charset=UTF-8

On 11 August 2016 at 22:14, Kyle Russell <bkylerussell@gmail.com> wrote:

> In case anyone is interested, I posted an update for both the script and
> .inc to openembedded-core (which now has master at python 3.5), but it
> doesn't seem to have gone anywhere yet.
>

Sorry that got stalled because the patch was mangled by your mailer so I
had to fix the patch by hand.  I've applied it to my staging branch, thanks.

Ross

--001a113ed93211a8640539e05147
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 August 2016 at 22:14, Kyle Russell <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:bkylerussell@gmail.com" target=3D"_blank">bkylerussell@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">In cas=
e anyone is interested, I posted an update for both the script and .inc to =
openembedded-core (which now has master at python 3.5), but it doesn&#39;t =
seem to have gone anywhere yet.<div></div></div></blockquote></div><br>Sorr=
y that got stalled because the patch was mangled by your mailer so I had to=
 fix the patch by hand.=C2=A0 I&#39;ve applied it to my staging branch, tha=
nks.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a113ed93211a8640539e05147--
