Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FB90E00B23; Mon,  2 Nov 2015 07:32:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54152E00AFD
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 07:32:12 -0800 (PST)
Received: by igpw7 with SMTP id w7so59102989igp.0
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 07:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=aVEqXEweM+6v3AoHDdIogfNqTGBAULZh/4xJdsoOx2c=;
	b=M4GJs1T8T7E9aB0rEv1ozDWhUkk5Uzu9AykNnhUIugTMwXw3fAdnprW2vGhe4Nc/Mm
	xcK5GKtVC76SezfHY3HgMFjYOYp3Ug7RLHsz+cMjB1N/Nkl7+TaavdCLKfMkyWFekeQN
	dO3wqwrokZcV43zDsmbM5AHpDGIL+ZsM4w6qpfUbLVmiUFxSt7mUnhB7L8TSDfpCCdie
	Rx7W/yB0uaj49xbQUrDaDymoi//wVLLF2VuS0lXGci+3/2LyMWtW3pcDG7uPgvB0q+KL
	ZogZZkjxbdX/QPe0w2ebzvCoephRAgTBYva4IxKy3aNjc0mwsAZCIYOGmsOnW9J0Qylk
	y/sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=aVEqXEweM+6v3AoHDdIogfNqTGBAULZh/4xJdsoOx2c=;
	b=E1I9mE851WFBlnVrKwPKCsOpbwjCSjzy8kxyhSJPS9a70k4ofdbl251NansvHkTI8n
	xa7HPyBuK2Q7Ek5qcvxGXVRy8jRsqpGee05fpiP7YGfxKqDFkXRRc8i0KnNmNsVi2P+P
	I6RQJNCHBmXsjgchOvTber1lAan/AoeOnqsebKwC/JX1Qw/PsQZJE/sezvfo8i5SGblf
	UbA/+3577VrrdozCZSKD+nT2eIDzOxMRSbojOxf8JnvevTiiSNLslnP6Jt+7SDTxyZSd
	+XFHCf7KyG2CKDI31oGJP+vquRdiMCiVEymokWPK2GCGphl4KYo/GmW0HtZqwZbAmx7p
	SxSw==
X-Received: by 10.50.143.10 with SMTP id sa10mr11392313igb.68.1446478332218;
	Mon, 02 Nov 2015 07:32:12 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.93.7 with HTTP; Mon, 2 Nov 2015 07:31:52 -0800 (PST)
In-Reply-To: <CAP71Wjx33cy24gCXyn1AKi_Uj+AQ=syAcO5J5dBJRWfKitHjcQ@mail.gmail.com>
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
	<CAP71Wjx33cy24gCXyn1AKi_Uj+AQ=syAcO5J5dBJRWfKitHjcQ@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 2 Nov 2015 08:31:52 -0700
X-Google-Sender-Auth: z096OMJhc3WTKcAl_ILvuFzqiRE
Message-ID: <CABcZAN=qGSV+Oj258boXfP0mUQ32pcx4JNyna1mG02Hr6tWKHA@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
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
X-List-Received-Date: Mon, 02 Nov 2015 15:32:17 -0000
Content-Type: multipart/alternative; boundary=001a1135fe9a2ad3d90523907b0a

--001a1135fe9a2ad3d90523907b0a
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 2, 2015 at 8:25 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Mon, Oct 26, 2015 at 12:46 AM, Christopher Larson <clarson@kergoth.com>
> wrote:
>
>>
>>> I've just posted patches to the opkg-devel list which should fix this. I
>>> had
>>> intended to give them a bit more testing before I sent them but a quick
>>> fix is
>>> needed.
>>
>>
>> Thanks for your quick work on this, Paul, it's much appreciated. From
>> some initial testing, builds are completing now. We'll keep testing it out.
>
>
>
> I just hit the same issue. I was pointed out to this thread on IRC today.
> I found the patches on the 0.3.x branch in the opkg git tree. Apart from
> applying these patches, do i need to do anything in any OE variables to use
> the newly added options? I am not entirely sure after reading this thread
> and looking at the patches..
>

No, there's nothing else you need to do. The patches fromPaul change the
opkg download cache to use checksums rather than the entire url as the
filename, which avoids the file name length problem.

I would not apply the first patch in the series, however, since that's not
related to this. The first patch (memory leak fix) caused double-free
failures in glibc in our testing.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1135fe9a2ad3d90523907b0a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Nov 2, 2015 at 8:25 AM, Nicolas Dechesne <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.deches=
ne@linaro.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D""><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Mon, O=
ct 26, 2015 at 12:46 AM, Christopher Larson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span><br>
</span>I&#39;ve just posted patches to the opkg-devel list which should fix=
 this. I had<br>
intended to give them a bit more testing before I sent them but a quick fix=
 is<br>
needed.</blockquote></div><br></span>Thanks for your quick work on this, Pa=
ul, it&#39;s much appreciated. From some initial testing, builds are comple=
ting now. We&#39;ll keep testing it out.<span></span></blockquote></div><br=
><br></div></span><div class=3D"gmail_extra">I just hit the same issue. I w=
as pointed out to this thread on IRC today. I found the patches on the 0.3.=
x branch in the opkg git tree. Apart from applying these patches, do i need=
 to do anything in any OE variables to use the newly added options? I am no=
t entirely sure after reading this thread and looking at the patches..</div=
></blockquote></div><br>No, there&#39;s nothing else you need to do. The pa=
tches fromPaul change the opkg download cache to use checksums rather than =
the entire url as the filename, which avoids the file name length problem.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I woul=
d not apply the first patch in the series, however, since that&#39;s not re=
lated to this. The first patch (memory leak fix) caused double-free failure=
s in glibc in our testing.<br>-- <br><div class=3D"gmail_signature">Christo=
pher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedde=
d, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Gra=
phics</div>
</div></div>

--001a1135fe9a2ad3d90523907b0a--
