Return-Path: <nitesh.guinde@gec.ac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B97E00D38; Mon,  6 May 2019 02:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66EC8E00D35
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 02:11:38 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id a190so19107779ite.4
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 02:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gec.ac.in; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=XmBifwip5jp2fI7GRDEqJiiXWmL8g+766SlURufLLL4=;
	b=bxKw1CzYD2b5OiUcf4P3npOvu8cs9+H+gMZSOt0PEUqpcRgVw/NV/CXgd2SydDOt+t
	VWDlk1NmhR4lZkHbb+pXk3yrf/ErPQ3u+9kjmGpMg7b+OA14HviSVEdSOuzEEF0FHeJJ
	U7pD2VlPrvYyUHTZ1Rop1dxzuUM8Hiy4yaVNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XmBifwip5jp2fI7GRDEqJiiXWmL8g+766SlURufLLL4=;
	b=jtn7VcGmSpRhc65FNE552D9kM38AcWAxo2I1qR0xM43v5b8O5cf+0YsRuCknmRWa51
	X714QUXF14FKjjaAa8/ZlNNXLndrcwNiXrG8ynuNUBxAoyRnme7+MHq9DmWJHEb5vIGz
	wtAW0nxqlcB64V+qprVxAjwQfD1z1bpTmsPzArd/ZiKX6CTT7roIdUwevXD1df4vevST
	8eywby6NT/xij2FQC7UtdJ+yN4NlALqDFPJIdiNzA6Rjmp1Md+WWOLtfbNsz0SCnSrTF
	tX56L/U+DGbrw/633zeFgEEDGaYxEIEnO4FArZa2A7wXx8FQ1j4mW/8R8OvVXcc/h6Go
	4Knw==
X-Gm-Message-State: APjAAAUSOSF6Eik4oqXc98kej//FxMi0zNqwXdTo6FkIM7YIQBy8QfuF
	QB01CZQ8sMpn1MIjm0UA8iXQP/lIp/be4MbFxpkCg5lR
X-Google-Smtp-Source: APXvYqwY9VaVkTSFGJc46orvEn9YGdBFkiui9gU9g1fmCtEFhYriWxrUfUh3FNYKbBGqUzyEVzrmaT/IxqKBQOxP+l4=
X-Received: by 2002:a02:6209:: with SMTP id d9mr17754139jac.34.1557133897459; 
	Mon, 06 May 2019 02:11:37 -0700 (PDT)
MIME-Version: 1.0
From: Nitesh Guinde <nitesh.guinde@gec.ac.in>
Date: Mon, 6 May 2019 14:41:26 +0530
Message-ID: <CAP1p9H7fSm_VBGWvy7J91YVUyrp_=ph=h=zEGY_zBKFKvvy02Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 06 May 2019 08:58:58 -0700
Subject: Re: xilinx Zynq zedboard gnuradio
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
X-List-Received-Date: Mon, 06 May 2019 09:11:39 -0000
Content-Type: multipart/alternative; boundary="000000000000d386020588347ca8"

--000000000000d386020588347ca8
Content-Type: text/plain; charset="UTF-8"

The following links were used to bitbake the image

https://github.com/balister/oe-gnuradio-manifest

https://wiki.gnuradio.org/index.php/Zynq

On Mon, May 6, 2019 at 2:40 PM Nitesh Guinde <nitesh.guinde@gec.ac.in>
wrote:

> Hi Philip,
>
> I am trying to port gnuradio onto zedboard. I used the following link
> https://github.com/balister/oe-gnuradio-manifest
>
> and build the images folder for zedboard-zynq7.
>  Then I copied uImage, boot.bin dtb and uenv.txt onto the sd card boot
> partition
>
> untarred the gnradio-dev-image-zedboard-zynq7.tar.gz onto the rootfs
> partition..
>
> However the card doesnt boot.
>
> Just wanted to find out if the process given in the following links are
> fine or any other tweaking is needed.
>
>
> Thanks,
> Nitesh B. Guinde
>

--000000000000d386020588347ca8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>The following links=
 were used to bitbake the image<br></div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr"><a href=3D"https://github.com/balister/oe-gnuradio-manifest">http=
s://github.com/balister/oe-gnuradio-manifest</a></div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr"><a href=3D"https://wiki.gnuradio.org/index.php/Zynq"=
>https://wiki.gnuradio.org/index.php/Zynq</a><br></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 6,=
 2019 at 2:40 PM Nitesh Guinde &lt;<a href=3D"mailto:nitesh.guinde@gec.ac.i=
n">nitesh.guinde@gec.ac.in</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Philip,=
</div><div><br></div><div>I am trying to port gnuradio onto zedboard. I use=
d the following link</div><div><a href=3D"https://github.com/balister/oe-gn=
uradio-manifest">https://github.com/balister/oe-gnuradio-manifest</a></div>=
<div><br></div><div>and build the images folder for zedboard-zynq7.</div><d=
iv>=C2=A0Then I copied uImage, boot.bin dtb and uenv.txt onto the sd card b=
oot partition <br></div><div><br></div><div>untarred the gnradio-dev-image-=
zedboard-zynq7.tar.gz onto the rootfs partition..</div><div><br></div><div>=
However the card doesnt boot. <br></div><div><br></div><div>Just wanted to =
find out if the process given in the following links are fine or any other =
tweaking is needed.</div><div><br></div><div><br></div><div>Thanks,</div><d=
iv>Nitesh B. Guinde=C2=A0 <br></div></div></div></blockquote></div></div>

--000000000000d386020588347ca8--
