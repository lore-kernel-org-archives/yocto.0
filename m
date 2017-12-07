Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF567E00C7C; Thu,  7 Dec 2017 07:47:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C91E008CE
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 07:47:14 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id d137so15333889itc.2
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 07:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i/LctYYPyzYX00R2aZ//tNZ5OhcBU/DrW1V2wOQgDrk=;
	b=aBOBOGiolqaFPqI8LrTuNW10PubH2diGgVcE7pSkth3lGyLA+IbvPSWKfd71AMmJue
	mB6l0Bnr5KyGD96DCz89+XaIU7ypMMF1THms3IGCXCx5SQo2/GIg03zmv75oYYqQRcq4
	tblLUlLaAxSAZOdPI6h4mSoNt/qP+D3tlBAN57jCXeewpk5apD9RLi6aFNRcXoBm0/J6
	LLOPrXWfOT6UpRDmS0VE+nxog9dvtE8ezuW9Apcz2IMxjYXPCeqn3bmhAOO8k1EgVyU/
	l7+fbG9/AZo4jHgFEC+wLlxW5AXBG/wUwv+2xHzdlWS8hXCEaNwtFXPtdQ6BEQu1DEWo
	BFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i/LctYYPyzYX00R2aZ//tNZ5OhcBU/DrW1V2wOQgDrk=;
	b=K0ktUUDr3QKVCv7IQpHcXace/TmpeVNGBrhLdqdp5ZNgB0fgERSbm5rECBtwiGVT9w
	Wk0qaCiPO8ed041EKNSPEM7exVx/RoqTzMScECbSuBI9naHHBvZos0AWBIXaMIFQatax
	0lcG+Y6vPPyHRxOgHwQzoa9Tls4kIACXRNm2f09l76vPuCHEj+uYyYe5q3JwkmJ9OmPP
	LbY9hQoQ4e2sJ66u9IVjhEZiia1ei2ci9CoTOW0llLwTPbEb4r8+QKEcx/2OeiEQLGzp
	mmUgwOxg5y76YKX8++0e7zzPH/MmyZ8HEXh0PyuH5PTzsPEMZY6ZEvZ7FtQ4yHG03q9l
	LVnA==
X-Gm-Message-State: AKGB3mKCylgxCmNeiKn/ifBCC2/nzud+B2NhsH+kZbYKxBFbMRenh+B4
	OWaDztD4qvKH3klbMMCMYCdWKAHrwRQexLOBBN0=
X-Google-Smtp-Source: AGs4zMZGJn74hAOZfBahqN1sj74EV3XhEykxyottM2vXNZX0oRgqQf9itr8R3+dmJgSRc9t+X+ZlKccgCwMso5ZDs6E=
X-Received: by 10.36.93.6 with SMTP id w6mr1940214ita.47.1512661633639; Thu,
	07 Dec 2017 07:47:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Thu, 7 Dec 2017 07:47:13 -0800 (PST)
In-Reply-To: <aa403c18-20db-1887-f44a-21e552f4a693@linux.intel.com>
References: <CAKmWj-1VsGcpHSeLc9k57e8WxM8OF9R=0Avh9-sRURE0ptR+dg@mail.gmail.com>
	<aa403c18-20db-1887-f44a-21e552f4a693@linux.intel.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 7 Dec 2017 10:47:13 -0500
Message-ID: <CAKmWj-1ihKuvPf5DKVuhLThzyK++PXQ1yw56dXk5CfbJyt_hzg@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Allowing a local command to be executed in a recipe.
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
X-List-Received-Date: Thu, 07 Dec 2017 15:47:14 -0000
Content-Type: multipart/alternative; boundary="001a11462fc656a7dc055fc1fb3a"

--001a11462fc656a7dc055fc1fb3a
Content-Type: text/plain; charset="UTF-8"

This command is very complicated to setup. It is easier for us to use it
via the "whitelist" method.

This isn't being done in a layer that will be released, otherwise I would.
This is internal use only.

What is the method to whitelist a host command?

On Wed, Dec 6, 2017 at 1:27 PM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 12/06/2017 07:55 PM, Paul Knopf wrote:
>
>> I have a local utility that is manually installed on our dev/build
>> machines.
>>
>> How do I configure Yocto to let me use this local command? It is located
>> in /usr/local/bin.
>>
>> Lets say the command is "my-command".
>>
>
>
> Write a recipe for the command, and include a "my-command-native"
> dependency into recipes that need it. Then no one has to manually install
> it.
>
> (yes, yocto has a whitelist for host commands somewhere, but changing it
> is wrong)
>
> Alex
>

--001a11462fc656a7dc055fc1fb3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This command is very complicated to setup. It is easier fo=
r us to use it via the &quot;whitelist&quot; method.<div><br></div><div>Thi=
s isn&#39;t being done in a layer that will be released, otherwise I would.=
 This is internal use only.</div><div><br></div><div>What is the method to =
whitelist a host command?</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Wed, Dec 6, 2017 at 1:27 PM, Alexander Kanavin <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" targe=
t=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 12/0=
6/2017 07:55 PM, Paul Knopf wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I have a local utility that is manually installed on our dev/build machines=
.<br>
<br>
How do I configure Yocto to let me use this local command? It is located in=
 /usr/local/bin.<br>
<br>
Lets say the command is &quot;my-command&quot;.<br>
</blockquote>
<br>
<br></div></div>
Write a recipe for the command, and include a &quot;my-command-native&quot;=
 dependency into recipes that need it. Then no one has to manually install =
it.<br>
<br>
(yes, yocto has a whitelist for host commands somewhere, but changing it is=
 wrong)<br>
<br>
Alex<br>
</blockquote></div><br></div>

--001a11462fc656a7dc055fc1fb3a--
