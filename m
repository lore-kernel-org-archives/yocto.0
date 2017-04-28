Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B93E009AA; Fri, 28 Apr 2017 10:00:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ACABE009A0
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 10:00:54 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id g66so46409278ite.1
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 10:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=N5+KxL6XEfppJYxjEHo5AtWN2YAdSg5y90Vx8p2sa/g=;
	b=MAJut3er0P3bdP0sGwoQ9xJ56bjm6mQ3nroO/TtUp75D7Bq68/lDDE0RERz2FjJcfo
	TTd4H9D1ZVlj93/EuGxYIPKdj8yc/J1KQg4VV6qecSgBJV+THABqUAoAxls8b9nZkTnY
	NhaCqKxKSuzcvqx9YypiU4bR9aWNNP7eHcQC6ZhVeLnDtRlpx02QsB8oewaorcX9YZDc
	yQp1pDVkrVippace82RjDZenFctsD2w05PuX1MSqYhf8eDrqSh1LQOVBh+RV2yugmCKy
	+SItTqcAdLvHcoi/cwufo67SJKQBSLeACJ7P+Z1yfkAVTWGRH1ce0P7O4DdvaUAhX4Qg
	mROg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=N5+KxL6XEfppJYxjEHo5AtWN2YAdSg5y90Vx8p2sa/g=;
	b=tN3lUG3ENiftRTKsg0nIjQfaLqV3RGdTvJ3HJ0LirI2bkKhJtWqmYApdkYWU6YhAWx
	JBVZr20jHyiLHqB+3ZZhS7zDUOMjf/S2h2ltRd4LXOSsX4eEOFlNAM+YIFxqgrKLqT3s
	OM/5iwWmB2FW5TNQNsbBtlKxu3AWQ+oB0uSVUuL1+5oplyuP0a6iexRN6bOtaHfWwu/k
	Nm/uChWubsxY8lCYJFj+FQky85akOgmbCwbVyrGjqqsHGXYcpGyA3n6H7zHFVrlX/mWm
	1eoJ7nxQeqksF8D47CCykWx8owI2ykTjxY686WLozcbvrcDm2kkQiKOCx0lcE5j83Myn
	qMPg==
X-Gm-Message-State: AN3rC/4WkTs5oNc+nEmZJ3oGqVw+zFkXj4VXlavFUMw2MnPNcsFJBN9Y
	wcnRFjddF0mnjFL66dj+QuVl9LakMQ==
X-Received: by 10.157.30.163 with SMTP id n32mr5052690otn.192.1493398854518;
	Fri, 28 Apr 2017 10:00:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Fri, 28 Apr 2017 10:00:54 -0700 (PDT)
In-Reply-To: <CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 28 Apr 2017 19:00:54 +0200
Message-ID: <CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
To: Luca Carlon <carlon.luca@gmail.com>
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
X-List-Received-Date: Fri, 28 Apr 2017 17:00:57 -0000
Content-Type: multipart/alternative; boundary=001a113729b03b4c3a054e3d04d8

--001a113729b03b4c3a054e3d04d8
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 28, 2017 at 6:33 PM, Luca Carlon <carlon.luca@gmail.com> wrote:

> Then it means I'm doing something wrong, I'm a beginner with yocto at the
> moment. I hope this is what you are asking me:
>
> local.conf: https://pastebin.com/u6DjsNfC
> bblayers.conf: https://pastebin.com/a27eCrkG
>
> and revisions:
>
> meta-raspberrypi: 28d4404f89eb59d406b4976c0e3f5ca19137ba74
> poky: 924e576b8930fd2268d85f0b151e5f68a3c2afce
> meta-openembedded: fe5c83312de11e80b85680ef237f8acb04b4b26e
> meta-qt5: 3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1
> meta-rpi: af19c1ccb2d863e41d863175a5c21a73eb682f79
>
> I guess some of these layers are unnecessary (I was trying to build a
> different image at the beginning), but I assumed they should not hurt,
> maybe I'm wrong?
> Thank you for your help.
>

Uhmmm... never put meta-rpi into the mix but, as far as I can see from your
logs, building the kernel fails for trying to build bcm2708-rpi-0-w.dtb
which should not be in the list defined by KERNEL_DEVICETREE variable for
MACHINE=raspberrypi3-64. My suggestion is to start with the simplest layer
stack you can use to build an image for 64 bit RPi3 which includes poky and
meta-raspberrypi (maybe meta-oe is required also). Then I'd try with
core-image-minimal and then scale up to other more featured images...

--001a113729b03b4c3a054e3d04d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Apr 28, 2017 at 6:33 PM, Luca Carlon <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Then it means I&#39;m doing something wrong, I&#39;m a beginner =
with yocto at the moment. I hope this is what you are asking me:<br><br>loc=
al.conf: <a href=3D"https://pastebin.com/u6DjsNfC" target=3D"_blank">https:=
//pastebin.com/u6DjsNfC</a><br>bblayers.conf: <a href=3D"https://pastebin.c=
om/a27eCrkG" target=3D"_blank">https://pastebin.com/a27eCrkG</a><br><br>and=
 revisions:<br><br>meta-raspberrypi: 28d4404f89eb59d406b4976c0e3f5c<wbr>a19=
137ba74<br>poky: 924e576b8930fd2268d85f0b151e5f<wbr>68a3c2afce<br>meta-open=
embedded: fe5c83312de11e80b85680ef237f8a<wbr>cb04b4b26e<br>meta-qt5: 3601fd=
2c5306ac6d5d0d536e0be8cb<wbr>b90da9b4c1<br>meta-rpi: af19c1ccb2d863e41d8631=
75a5c21a<wbr>73eb682f79<br><br>I guess some of these layers are unnecessary=
 (I was trying to build a different image at the beginning), but I assumed =
they should not hurt, maybe I&#39;m wrong?<br>Thank you for your help.</div=
></blockquote><div><br></div><div>Uhmmm... never put meta-rpi into the mix =
but, as far as I can see from your logs, building the kernel fails for tryi=
ng to build=C2=A0bcm2708-rpi-0-w.dtb which should not be in the list define=
d by=C2=A0KERNEL_DEVICETREE variable for MACHINE=3Draspberrypi3-64. My sugg=
estion is to start with the simplest layer stack you can use to build an im=
age for 64 bit RPi3 which includes poky and meta-raspberrypi (maybe meta-oe=
 is required also). Then I&#39;d try with core-image-minimal and then scale=
 up to other more featured images...</div></div></div></div>

--001a113729b03b4c3a054e3d04d8--
