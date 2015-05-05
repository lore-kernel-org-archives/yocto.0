Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29FBE00997; Tue,  5 May 2015 03:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74ADBE00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:49:57 -0700 (PDT)
Received: by widdi4 with SMTP id di4so141063723wid.0
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oU+/bLAI2KeQNtlHfXw43t79+SDMwdd2DIZxWBkql7U=;
	b=DjgKNmsrsqaDZd3qO1mymsOcD0wTcbV93etNg0uz9Shm1ji+6ykVW7pxuDgjNnBQc1
	fttKOzgJf2VzX+K+f7aKNRHp6TJpW3F2kj8xa5RA7PY8zZMMgODkuaXuggmS+ZZ+TZVr
	Lz5eKF07IGUuxMnZAM2W4DMfXiG8Ds/8+wrVR2186VfzNfXytLuveAU7FQrHxvELQ9eD
	dgN3A7790nPjV0WA+Mrc+XZ21PjZA4SrBrUEsubIKzIrFQhPp98TLHnyk7YtZrA9PTJQ
	EsNh+EP+P4bgHmP6Fv7jPM09QUy039GLRzf+D3tWR+cemAvWHA++Zqf7tIGbpesxB0Lp
	Ul2A==
MIME-Version: 1.0
X-Received: by 10.194.234.38 with SMTP id ub6mr51117996wjc.9.1430822997064;
	Tue, 05 May 2015 03:49:57 -0700 (PDT)
Received: by 10.194.121.105 with HTTP; Tue, 5 May 2015 03:49:56 -0700 (PDT)
In-Reply-To: <CAJTo0LafbAPvc_+AVQk-OnTeF7kjRkPxLcRPBM=PpXf+UzWfdg@mail.gmail.com>
References: <CABc_YGDJ=yvOkU7Bpbwq-oxbJ7Ec4ZHgL-fy2BR2+pTKwSZWdQ@mail.gmail.com>
	<CAJTo0LafbAPvc_+AVQk-OnTeF7kjRkPxLcRPBM=PpXf+UzWfdg@mail.gmail.com>
Date: Tue, 5 May 2015 12:49:56 +0200
Message-ID: <CABc_YGAg0uJzFZDKX3rOQQCu9igBujG=XL2iRw2ugBp_s8V4jA@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package group in one ipk package
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
X-List-Received-Date: Tue, 05 May 2015 10:50:01 -0000
Content-Type: multipart/alternative; boundary=089e01493daa79fdfb051553703d

--089e01493daa79fdfb051553703d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Not exactly. I have strange development where I've got 12 kernel modules
(with 12 recipes) built out site kernel tree. And then I have finally 12
ipk's. I want to have only one ipk witch can update all kernel modules. In
this case safe sw update is not a goal.

2015-05-05 12:32 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> On 5 May 2015 at 09:30, Marcin Krzemi=C5=84ski <mar.krzeminski@gmail.com>
> wrote:
>
>> I have a question. I created my own package group containing 12 packages
>> and I want if possible to make yocto to create one ipk package to system
>> update instead of twelve. Is it possible? I can not fin any solution to =
it.
>>
>
> Not really.
>
> If your goal is something along the lines of safe entire-system atomic
> updates then you'll be needing something more advanced that rpm/dpkg/opkg=
,
> often involving two rootfs partitions and upgrading the one that wasn't
> booted and then rebooting.
>
> Ross
>

--089e01493daa79fdfb051553703d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Not exactly. I have strange development where I&#39;ve got=
 12 kernel modules (with 12 recipes) built out site kernel tree. And then I=
 have finally 12 ipk&#39;s. I want to have only one ipk witch can update al=
l kernel modules. In this case safe sw update is not a goal.</div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-05-05 12:32 GMT+02:00=
 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com=
" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"=
gmail_quote"><span class=3D"">On 5 May 2015 at 09:30, Marcin Krzemi=C5=84sk=
i <span dir=3D"ltr">&lt;<a href=3D"mailto:mar.krzeminski@gmail.com" target=
=3D"_blank">mar.krzeminski@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div>I have a question. I created my own=
 package group containing 12 packages and I want if possible to make yocto =
to create one ipk package to system update instead of twelve. Is it possibl=
e? I can not fin any solution to it.</div></div></blockquote><div><br></div=
></span><div>Not really.</div><div><br></div><div>If your goal is something=
 along the lines of safe entire-system atomic updates then you&#39;ll be ne=
eding something more advanced that rpm/dpkg/opkg, often involving two rootf=
s partitions and upgrading the one that wasn&#39;t booted and then rebootin=
g.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>=
Ross</div></font></span></div></div></div>
</blockquote></div><br></div>

--089e01493daa79fdfb051553703d--
