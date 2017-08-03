Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FDFE00C35; Thu,  3 Aug 2017 09:03:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BCB4E00C32
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 09:03:18 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id v127so3455229itd.0
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 09:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yzQ2xeYqpw7Vqc+jYC8yrslfaQGG5xlnurCXGkW0SVI=;
	b=gvqd8Zj0nVvz7Z5zcPnEEkSE51g3q5GZUunbqyMsEnCo8iZW3tfsg5mznajF4bnpyN
	24ebA5dsDDg+1lipZrHIP/9sidk/aJI+H2n5hDUwEiLZIWFuGa8sDD4aG6X8MMhAx1Dr
	typTP8y0t0nGVAaOYK9jHhz3FDf5x6dB6kXqoTr5AMEg9Q7Amm5RaHeq055+XKJgCF11
	o6/c/argBcIzkC+xlZAkz/G4cGZji8cuA9iPC6kDrgs1tciyOty+PwfTO+MyuLvjXNFy
	6kL0zapIjW/HpkRxNVLxHB/+zwoCIV/05DAz7VOCDZIuwyw7VoFtPTOmPfLUDlRTT3oS
	8rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yzQ2xeYqpw7Vqc+jYC8yrslfaQGG5xlnurCXGkW0SVI=;
	b=KZjEJ7KxECI5v8Qfzvv3bJn1WTGo/EsTW9Zmjp7swjr4/nMgF+TFyDhcxnevCMCJRs
	HByag3bKzRzvOLqlTmTRlDJXqQsQHicZkkjuIxX09dsyO5MRhpb8UdShKX4lYMOhZqML
	OAJReEFhh4cysF4t6Hlm9uuLKm9dngPwIeIUgqhdCpV7cIKhJtmTuHzeaSx4yqA/Kzvh
	mQ3mILjeAler2JWLXEaUJX5kngVmtkxlaMNQDDeT6BM2GXy90KpeUWC52iaqu4heANrQ
	vewyktGl7q/OJLl0cHga7ttvn+X0uVG5yvgX+c34McDdr1ORDf1N45jzUcHZGAIGGvm9
	++rA==
X-Gm-Message-State: AIVw113v580GbqkQU0b5jX3rqXJIP6lPRNisFG4iOaw/joAdwMVwG4lH
	XBh7s8fCCVMpat5Uhz6VvmektRYVWzBA
X-Received: by 10.36.172.15 with SMTP id s15mr2243407ite.111.1501776197735;
	Thu, 03 Aug 2017 09:03:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Thu, 3 Aug 2017 09:02:57 -0700 (PDT)
In-Reply-To: <CAEsOVNeMzZnGSQANcZ3w=4eMK1Tg+iDyYH-uojUu1r_5mbXZYA@mail.gmail.com>
References: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
	<CAJTo0LaOSxrGXXXCyHJ_7XbqZCGnC-LyKWLhS5nsQTmFg4jnAg@mail.gmail.com>
	<CAEsOVNeMzZnGSQANcZ3w=4eMK1Tg+iDyYH-uojUu1r_5mbXZYA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Aug 2017 17:02:57 +0100
Message-ID: <CAJTo0LatFiD7qh_poY-oetOEd8j-0RaQG8Hx4tRJxZkwSN_0qw@mail.gmail.com>
To: Matthew McClintock <msm-oss@mcclintock.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"blackthirt33n ." <jjosburn@gmail.com>
Subject: Re: bitbake download only
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
X-List-Received-Date: Thu, 03 Aug 2017 16:03:20 -0000
Content-Type: multipart/alternative; boundary="94eb2c1fd75ccc72fc0555db8400"

--94eb2c1fd75ccc72fc0555db8400
Content-Type: text/plain; charset="UTF-8"

On 3 August 2017 at 17:00, Matthew McClintock <msm-oss@mcclintock.net>
wrote:

> On Thu, Aug 3, 2017 at 10:00 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > Yes,
> >
> > bitbake core-image-minimal -c fetchall
>
> Or for more recent version of bitbake
>
> bitbake core-image-minimal --runall fetch


I'd actually forgotten that existed.  Maybe fetchall should tell the user?

Ross

--94eb2c1fd75ccc72fc0555db8400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 August 2017 at 17:00, Matthew McClintock <span dir=3D=
"ltr">&lt;<a href=3D"mailto:msm-oss@mcclintock.net" target=3D"_blank">msm-o=
ss@mcclintock.net</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Th=
u, Aug 3, 2017 at 10:00 AM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@=
intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; Yes,<br>
&gt;<br>
&gt; bitbake core-image-minimal -c fetchall<br>
<br>
</span>Or for more recent version of bitbake<br>
<br>
bitbake core-image-minimal --runall fetch</blockquote><div><br></div><div>I=
&#39;d actually forgotten that existed.=C2=A0 Maybe fetchall should tell th=
e user?</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--94eb2c1fd75ccc72fc0555db8400--
