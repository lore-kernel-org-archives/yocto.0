Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24917E009A5; Fri, 28 Apr 2017 09:33:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5768E00A48
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:33:46 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id 70so43174574ita.0
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p9PE0k9/ony+PHYJksuCQBOBsTuBEwbpiPNWnXuk5Mc=;
	b=HJm9RoQoNTrhSXg/LtbCwLS0T969Fx/MCtje4A1sE4laWvM1YUTHG6n3FcThFj6WGS
	LJBS7MliHM7MTFtlKdtbUmiI/Lhv5srntKN2nncLPIHXJeNZEC7ia8z04w6EVzDFKrDW
	FsfgYscmX0atBMwhpYKUS4h7sv+PamP+eOX73n16U75viM4/1OF687rYcgxw25tvVVns
	X+UqmRLvSTC/mbpt+6QIxuD7ALMif9qAbbVQ1x/w64OgOzDqAMTxr59M/Qjg2r5S8kXe
	iW4N71eO0raqVRTwQVfnOYehhjAHSc89i6/cLphjW0ERJOWxshAvlDspp4DNW3Eu8ZVi
	hzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p9PE0k9/ony+PHYJksuCQBOBsTuBEwbpiPNWnXuk5Mc=;
	b=EvPzOqOTwySbmBrttdbiZvNIGwcBVuVrhd79Vh4zTPCe1XqyxzWkXwKf5jrL0UAI65
	GQV+24nL5x1WcCs1i3iCpO+5hebzsq3IYs6DQvFdB2l+DVFlCy18sZSc1UbM7Pb3EZQx
	gWXCefNlTSlIpJ3M1/DaYWy5UAcwelERWxD5TNVorvgZoKWNZ/cVDQKTNdAtuSFzcV35
	ugvtRtpO/tEgAOA9AmtQ1fjFZUiN6umeUjTI8xwQJNAC5puk6AZ9dKunuOh7vDEQPozg
	pNh19ftYdrjz9pI4zO4FovvxaRfLOW1u0mF70eDfv43kAicwYjp34ZckRmM0+mElLvkZ
	K5uQ==
X-Gm-Message-State: AN3rC/6YGCy9yQnCpDeSkJ20BxDg+ZYbaSEbD5NLL0rZ5oY0QzZCvdla
	7l6B8FBNC/gyR2tYXhAdwUgyGhczgA==
X-Received: by 10.202.252.197 with SMTP id a188mr5150390oii.40.1493397225937; 
	Fri, 28 Apr 2017 09:33:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Fri, 28 Apr 2017 09:33:45 -0700 (PDT)
In-Reply-To: <CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
From: Luca Carlon <carlon.luca@gmail.com>
Date: Fri, 28 Apr 2017 18:33:45 +0200
Message-ID: <CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Fri, 28 Apr 2017 16:33:48 -0000
Content-Type: multipart/alternative; boundary=001a113df2bc29208f054e3ca374

--001a113df2bc29208f054e3ca374
Content-Type: text/plain; charset=UTF-8

Then it means I'm doing something wrong, I'm a beginner with yocto at the
moment. I hope this is what you are asking me:

local.conf: https://pastebin.com/u6DjsNfC
bblayers.conf: https://pastebin.com/a27eCrkG

and revisions:

meta-raspberrypi: 28d4404f89eb59d406b4976c0e3f5ca19137ba74
poky: 924e576b8930fd2268d85f0b151e5f68a3c2afce
meta-openembedded: fe5c83312de11e80b85680ef237f8acb04b4b26e
meta-qt5: 3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1
meta-rpi: af19c1ccb2d863e41d863175a5c21a73eb682f79

I guess some of these layers are unnecessary (I was trying to build a
different image at the beginning), but I assumed they should not hurt,
maybe I'm wrong?
Thank you for your help.

Luca

On Fri, Apr 28, 2017 at 6:13 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> On Fri, Apr 28, 2017 at 6:01 PM, Luca Carlon <carlon.luca@gmail.com>
> wrote:
>
>> Hello,
>> I'm trying to build rpi-test-image for Raspberry Pi 3 64 bit but I'm
>> getting this error: https://pastebin.com/rYJ0PL7h. It seems it is
>> looking for a file that is not there, and I don't see it in the linux repo
>> either: https://github.com/raspberrypi/linux/tree/53460a0a50
>> f3dd5e60266e945d0ac794ce0eca77/arch/arm64/boot/dts.
>>
>> The same build seems to succeed for machine raspberrypi2 and
>> raspberrypi3, instead. Any idea what I may be doing wrong?
>>
>
> Could you please share your layer config and revisions? Up to yesterday, I
> built from master (poky and meta-raspberrypi) with no error with
> MACHINE=raspberrypi3-64
>

--001a113df2bc29208f054e3ca374
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Then it means I&#39;m doing something wrong, I&#39;m a beg=
inner with yocto at the moment. I hope this is what you are asking me:<br><=
br>local.conf: <a href=3D"https://pastebin.com/u6DjsNfC">https://pastebin.c=
om/u6DjsNfC</a><br>bblayers.conf: <a href=3D"https://pastebin.com/a27eCrkG"=
>https://pastebin.com/a27eCrkG</a><br><br>and revisions:<br><br>meta-raspbe=
rrypi: 28d4404f89eb59d406b4976c0e3f5ca19137ba74<br>poky: 924e576b8930fd2268=
d85f0b151e5f68a3c2afce<br>meta-openembedded: fe5c83312de11e80b85680ef237f8a=
cb04b4b26e<br>meta-qt5: 3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1<br>meta-rp=
i: af19c1ccb2d863e41d863175a5c21a73eb682f79<br><br>I guess some of these la=
yers are unnecessary (I was trying to build a different image at the beginn=
ing), but I assumed they should not hurt, maybe I&#39;m wrong?<br>Thank you=
 for your help.<br><br>Luca</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Apr 28, 2017 at 6:13 PM, Andrea Galbusera <span di=
r=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=
=3D"">On Fri, Apr 28, 2017 at 6:01 PM, Luca Carlon <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">Hello,<br>I&#39;m trying to build rpi-test-image for Raspberry Pi 3 64 bi=
t but I&#39;m getting this error:=C2=A0<a href=3D"https://pastebin.com/rYJ0=
PL7h" target=3D"_blank">https://pastebin.com/rY<wbr>J0PL7h</a>. It seems it=
 is looking for a file that is not there, and I don&#39;t see it in the lin=
ux repo either:=C2=A0<a href=3D"https://github.com/raspberrypi/linux/tree/5=
3460a0a50f3dd5e60266e945d0ac794ce0eca77/arch/arm64/boot/dts" target=3D"_bla=
nk">https://github.com/ras<wbr>pberrypi/linux/tree/53460a0a50<wbr>f3dd5e602=
66e945d0ac794ce0eca77<wbr>/arch/arm64/boot/dts</a>.<div><br><div><div><div>=
The same build seems to succeed for machine raspberrypi2 and raspberrypi3, =
instead. Any idea what I may be doing wrong?</div></div></div></div></div><=
/blockquote><div><br></div></span><div>Could you please share your layer co=
nfig and revisions? Up to yesterday, I built from master (poky and meta-ras=
pberrypi) with no error with MACHINE=3Draspberrypi3-64</div></div></div></d=
iv>
</blockquote></div><br></div>

--001a113df2bc29208f054e3ca374--
