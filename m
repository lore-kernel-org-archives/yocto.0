Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 287AAE00559; Wed, 16 Jul 2014 09:37:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0DB1E00543
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 09:37:02 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id rp18so1001220iec.19
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 09:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0wucF9prAXtXxg5Zjh2uONtkJPr47jBFmCe20ZhL/jk=;
	b=ITNs6DUvmFUzIPOjIEgh1wYst9W0GNyRvbo5YsoAn+GXq8A0yqlI6fyJgY57PSZ1Cg
	k8gt4KMnimb1I2BPgPQ/XHkFc025HJkQa2I4O5UsfCJmvb/F1/EnFFHY55dlMsbEsgpz
	HiIU+iZh27d4G+PiYzVox3vAL5VvrFEGa2YxLMGLNRzGL6ZS2E70ctbYCx4vkUaQ41du
	r6ZEWwpntA5DiYH0yYxr7Y8eCevspl8rj231jQDTYXy75FLttv2J0qUHV4rVKj9gvCIW
	79GRCYw2S5tUj5opNRI8PwZsEmCZZl9QK+6vLiasQrtfofyPJRkMpEjpUm8BOSOfur4C
	GuNw==
MIME-Version: 1.0
X-Received: by 10.42.240.20 with SMTP id ky20mr4959996icb.97.1405528621457;
	Wed, 16 Jul 2014 09:37:01 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 09:37:01 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 09:37:01 -0700 (PDT)
In-Reply-To: <CAP71Wjxs_GjVn64UjkskGn06yvVTvSKDRcefPh5Ny226e1gMmA@mail.gmail.com>
References: <CAH21_vFnWJZC60p8vzqjB-B9YCiKKbVOsUFts7Ej80gp5K1-TQ@mail.gmail.com>
	<CAP71Wjxs_GjVn64UjkskGn06yvVTvSKDRcefPh5Ny226e1gMmA@mail.gmail.com>
Date: Wed, 16 Jul 2014 22:07:01 +0530
Message-ID: <CAH21_vFphaS04tuo1a3XP9vhco9mFx4wq=PPEDXxZhLDguTXBA@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain build independent of host machine
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
X-List-Received-Date: Wed, 16 Jul 2014 16:37:06 -0000
Content-Type: multipart/alternative; boundary=001a113328f234296a04fe522284

--001a113328f234296a04fe522284
Content-Type: text/plain; charset=UTF-8

Hi Nicolas,

Thanks for your reply.
And i am using Fedora20.
Also please let me know how to check whether the machine has been install
with 32bit lib or not?

Thanks and regards,
Atul
On 16 Jul 2014 19:15, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
wrote:

> On Wed, Jul 16, 2014 at 3:28 PM, atulkumar singh
> <atul.singh008@gmail.com> wrote:
> > I wish to build my toolchain independent of host machine, either my sdk
> > machine is 32bit or 64 bit.
> > Like for 32bit host machine i am mentioning with i686 for SDKMACHINE in
> > local.conf and x86-64 for 64 bit machine.
> > Please let me know what i need to do to make my toolchain independent of
> > whether my host machine is 32bit or 64bit.
>
> just build the 32-bits version of the SDK. it will work on both
> 32-machine and 64-machine. this is assuming you install the 32-bit
> compatibility libs which depends on which distro you use, but most
> distro provide instructions to do that.
>

--001a113328f234296a04fe522284
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Nicolas,</p>
<p>Thanks for your reply.<br>
And i am using Fedora20.<br>
Also please let me know how to check whether the machine has been install w=
ith 32bit lib or not?</p>
<p>Thanks and regards,<br>
Atul</p>
<div class=3D"gmail_quote">On 16 Jul 2014 19:15, &quot;Nicolas Dechesne&quo=
t; &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@lina=
ro.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
On Wed, Jul 16, 2014 at 3:28 PM, atulkumar singh<br>
&lt;<a href=3D"mailto:atul.singh008@gmail.com">atul.singh008@gmail.com</a>&=
gt; wrote:<br>
&gt; I wish to build my toolchain independent of host machine, either my sd=
k<br>
&gt; machine is 32bit or 64 bit.<br>
&gt; Like for 32bit host machine i am mentioning with i686 for SDKMACHINE i=
n<br>
&gt; local.conf and x86-64 for 64 bit machine.<br>
&gt; Please let me know what i need to do to make my toolchain independent =
of<br>
&gt; whether my host machine is 32bit or 64bit.<br>
<br>
just build the 32-bits version of the SDK. it will work on both<br>
32-machine and 64-machine. this is assuming you install the 32-bit<br>
compatibility libs which depends on which distro you use, but most<br>
distro provide instructions to do that.<br>
</blockquote></div>

--001a113328f234296a04fe522284--
