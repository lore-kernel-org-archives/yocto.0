Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8225DE00AFD; Mon,  2 Nov 2015 07:25:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02A0E00A70
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 07:25:24 -0800 (PST)
Received: by qgad10 with SMTP id d10so118436838qga.3
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 07:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linaro_org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YuEBMvvFF53YjJnByQvUfAio8voYikkDHsLdzJgj450=;
	b=T/008xnrbez46wR0tcH0grzARsb5Ng5+xIxLJ1kdHYocSO+6aGrEjynFDoJ6t0dMGa
	kgmyci+OHA5dL53dke4GCm6vV4VYxLy6vK3EEAswGqPnv9IfIAk/TYAf+tiMqn178h+a
	e/Nv+ILJVnHmgaEvXkGZn25VFceZOBxSWnf/QC1awsOGxar4An0IZ3z+vsGhGx7fZyF6
	9qCm3a02SJowwM0/2tydttfcVE/J6skpxpVW882rQnUbv6TSmXoZ297DhJmBx/5JlRak
	Zbys8IrjSH2jFQybSEW5LrevxBWBiNIp2cgMk6EWel0cC3tZ31gLzndamEA54ONqGTD9
	MaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YuEBMvvFF53YjJnByQvUfAio8voYikkDHsLdzJgj450=;
	b=Kqrs+BnrtoQmXrIkYepH6aUNW5eSHqhlZv5w+NJCoJDScFxmcHJN1REcEPhjBaAqUX
	mkZYU++4pVvfhG0CLAjTFPZLeM2xqT3Nbw8GzalpCTJbTduQeHHkoHoxIsv3Lo7kcp6y
	/LIG0fx/Q0msBgFULTMMsWcypE0N0a3PixjIq5kA3EQXtxzHmkMqxTQK8dXDUjYBE/Dx
	tW9WcT5m3cqnw1aZdXqCN66o3QNOxCBYq2eQZZV6CfoXBAZ/TjdbCaFQ4a3apXoIFZl2
	A3IMcOI7aC/PBSHnP9qWHyHhZHiqKnVZz8Odj5mEwIMDQC3Pe4uKcWERE5q6xiijoEa8
	bFyA==
X-Gm-Message-State: ALoCoQkKYZqkniEt+hAuKpYND+tdGZY8jjkXE9pm0yWBT0/eQMUhuM4cHe8O4ac3mYpTRV2lSark
X-Received: by 10.141.23.20 with SMTP id z20mr31525404qhd.52.1446477923443;
	Mon, 02 Nov 2015 07:25:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.55 with HTTP; Mon, 2 Nov 2015 07:25:03 -0800 (PST)
In-Reply-To: <CABcZANknQrWzB_bQd22buyzyt-bHZJ-KpfJz1RvvCKNMjZNmvA@mail.gmail.com>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
	<562BC58D.4090600@ni.com>
	<CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
	<20151024191940.GB15983@bang.betafive.co.uk>
	<CABcZANknQrWzB_bQd22buyzyt-bHZJ-KpfJz1RvvCKNMjZNmvA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 2 Nov 2015 16:25:03 +0100
Message-ID: <CAP71Wjx33cy24gCXyn1AKi_Uj+AQ=syAcO5J5dBJRWfKitHjcQ@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Mon, 02 Nov 2015 15:25:27 -0000
Content-Type: multipart/alternative; boundary=001a11423c80cd8a7d05239062c0

--001a11423c80cd8a7d05239062c0
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 12:46 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
>> I've just posted patches to the opkg-devel list which should fix this. I
>> had
>> intended to give them a bit more testing before I sent them but a quick
>> fix is
>> needed.
>
>
> Thanks for your quick work on this, Paul, it's much appreciated. From some
> initial testing, builds are completing now. We'll keep testing it out.



I just hit the same issue. I was pointed out to this thread on IRC today. I
found the patches on the 0.3.x branch in the opkg git tree. Apart from
applying these patches, do i need to do anything in any OE variables to use
the newly added options? I am not entirely sure after reading this thread
and looking at the patches..

thanks

--001a11423c80cd8a7d05239062c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Oct 26, 2015 at 12:46 AM, Christopher Larson <span dir=3D"ltr">&lt;=
<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span><br>
</span>I&#39;ve just posted patches to the opkg-devel list which should fix=
 this. I had<br>
intended to give them a bit more testing before I sent them but a quick fix=
 is<br>
needed.</blockquote></div><br></span>Thanks for your quick work on this, Pa=
ul, it&#39;s much appreciated. From some initial testing, builds are comple=
ting now. We&#39;ll keep testing it out.<span class=3D""></span></blockquot=
e></div><br><br></div><div class=3D"gmail_extra">I just hit the same issue.=
 I was pointed out to this thread on IRC today. I found the patches on the =
0.3.x branch in the opkg git tree. Apart from applying these patches, do i =
need to do anything in any OE variables to use the newly added options? I a=
m not entirely sure after reading this thread and looking at the patches..<=
br><br></div><div class=3D"gmail_extra">thanks<br><br></div></div>

--001a11423c80cd8a7d05239062c0--
