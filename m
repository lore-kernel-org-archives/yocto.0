Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6751EE00961; Mon,  2 Sep 2019 06:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DF4E008D3
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 06:41:29 -0700 (PDT)
Received: by mail-vk1-f193.google.com with SMTP id 82so2895583vkf.11
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 06:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XcM6S9uWhCA+BFRbHSx62qXMDRABaKTjplOojyEOecM=;
	b=CbDMkmt/vENyC80XOuSa4n3FBG6rp9U0RAjPcdTgJ3mCEu0UKdOh3EuzIzf0QlVwJZ
	oUyiuQZ0fWuFoUpl6iPYhG8WxQ5WloL9RAeZBbZev1uNwd3pvBWETGQe8APVwwojZsvc
	fREGY5g8p8unaEyt4zLj7488dfMI3KsLtmTfiqGQARAklxuTYFQZ2e+1M1LrE5Atx5Pe
	U17In8dYxJsdf/9lNGrnAltZJe77QEMBc/E7sgR+CnQ32d5hAXun2deASY6taklsHBXQ
	GZt5BuxeqYx+1ZdPTKQUEGrDvzGEBCWecrFa8h4gPIdt2NpPtTIKNndNQ7xvwYNFfo1I
	86zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XcM6S9uWhCA+BFRbHSx62qXMDRABaKTjplOojyEOecM=;
	b=H6U9OjG1B9uvJm0KGAhIR6IOFQPWRaXi3TX9iimJCrDHDUGeZYf+RLaeqLcHuFnkQh
	NeqxOQZ4fxtKkQRMCtIeolAQB0XA4OlHJ7OvgxSlegzuHcMDkEMVEG3ONwJGqz0MILxi
	5bbLKu+FKaodgPhyf3oNrZQDeuwei6sKW9z/anOrpziwap1EK4Cs5A/jb4RoEaatS3ru
	98FJnKfI2vbm36UEOnMvDayWO2QqHr6KaaM76oGTtvxIRHpB3jqfJBeDoDLTQD++3+ta
	hvwBx+8VLQg+1J43HnTAaDLp5OEnhdS+tosWtE/vSi2CFoxhykn1R2dowTu7fVN2ABqZ
	/ZBQ==
X-Gm-Message-State: APjAAAUw/NIdukDcznkDHDyS0g5L2afjNHnBRSvSJdRjnK30vMxH4uAN
	jiPOy/Lg+PRDW2kcgdBS++3dcloMUL/EdVb1GrA=
X-Google-Smtp-Source: APXvYqy20ex/F9Dv9C8ygawg4WLbjeYvZbmVqf9PqS7w//nCuol+K6+OINfWJ9KaOoIpHWBRdKFRZt6x/IuRv4JF0rk=
X-Received: by 2002:ac5:c5ba:: with SMTP id f26mr2951697vkl.32.1567431689251; 
	Mon, 02 Sep 2019 06:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <CACsETSsjtVOpXdR6_oWisx2LZM4hkKr37NfT+WmS_goDUZTO8g@mail.gmail.com>
In-Reply-To: <CACsETSsjtVOpXdR6_oWisx2LZM4hkKr37NfT+WmS_goDUZTO8g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 2 Sep 2019 15:41:18 +0200
Message-ID: <CANNYZj9=-t+=BZ4ahnJqvYufakkNa00gzjh0ksyoMR88HKMQ1g@mail.gmail.com>
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ptest-runner yocto build sytem issue
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
X-List-Received-Date: Mon, 02 Sep 2019 13:41:30 -0000
Content-Type: multipart/alternative; boundary="0000000000000c2de605919221f4"

--0000000000000c2de605919221f4
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Sep 2019 at 15:06, sateesh m <sateesh0457@gmail.com> wrote:

> I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when I
> boot to my image and run ptest-runner I have the output : "No ptests found."
> Is this normal ? I thought that
>
> DISTRO_FEATURES_append = " ptest"
> and
> EXTRA_IMAGE_FEATURES += "ptest-pkgs"
>
> would install all the ptests for me in my image, apparently I am wrong but
> could you please explain to me why this is not the case i.e why ptests are
> not automatically installed in the image even though I included the above
> lines in my local.conf ?
>
> How to test my packages using ptest. can you share sample test or testing
> procedure document .
>

Can you share the log.do_rootfs file for your image please?

There are also example ptest images in poky, so you could try those and see
how they work.

Alex

--0000000000000c2de605919221f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 2 Sep 2019 at 15:06, sateesh m &lt;<a href=3D"mailto:sateesh=
0457@gmail.com">sateesh0457@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I followed=20
the wiki <a href=3D"https://wiki.yoctoproject.org/wiki/Ptest" target=3D"_bl=
ank">https://wiki.yoctoproject.org/wiki/Ptest</a> , but when I boot to=20
my image and run ptest-runner I have the output : &quot;No ptests found.&qu=
ot;<br>Is this normal ? I thought that<br><br>DISTRO_FEATURES_append =3D &q=
uot; ptest&quot;<br>and<br>EXTRA_IMAGE_FEATURES +=3D &quot;ptest-pkgs&quot;=
<br><br>
 would install all the ptests for me in my image, apparently I am wrong=20
but could you please explain to me why this is not the case i.e why=20
ptests are not automatically installed in the image even though I=20
included the above lines in my local.conf ?</div><div><br></div><div>How to=
 test my packages using ptest. can you share sample test or testing procedu=
re document .</div></div></blockquote><div><br></div><div>Can you share the=
 log.do_rootfs file for your image please?</div><div><br></div><div>There a=
re also example ptest images in poky, so you could try those and see how th=
ey work.<br></div><div><br></div><div>Alex<br></div></div></div>

--0000000000000c2de605919221f4--
