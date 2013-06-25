Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86AE7E01530
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 23:58:55 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id z11so9100886wgg.22
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 23:58:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ndTnMfaTG+SX7uEEsCruMbWCtas2DvxHM7bAm903C9c=;
	b=JizTNvFaYfg9T4nI/jZjHo0Dl14N7R2Sckodv/SGBfM8/XnH/vidltxTxk35rXGc66
	NPnrjNphu++xrBvJclKO9oVEW/C/tphcT0Cv7YJl9ergd3VI6LzSyb3rlTcXRQI4D0Ga
	kIiuj9nwp5fyK0jJ5YIXdOgo5IX09tqHGdXyN50ntQWQhAVu6Lcs+lvH6X7qylwT/eUd
	XDjuY3G3zsWkSsT+G0ATIDLuXUww7PXs6PycmF/UN8u/AK2dHsdQrxvYeNkWHwQ7eX6V
	ekZQChU8aA9RImg3YgccsifSZrPm/4ZpfWlwhJUKG7maFUNHClAZqAH/fgiJcMaJdSA9
	iw1A==
X-Received: by 10.194.239.225 with SMTP id vv1mr18856429wjc.63.1372143534639; 
	Mon, 24 Jun 2013 23:58:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.83.1 with HTTP; Mon, 24 Jun 2013 23:58:34 -0700 (PDT)
In-Reply-To: <CAFMfyzLGoJ0iys=Cd3vzJRPCXOO11y=hMnyayB7u-jNwkzE+Mw@mail.gmail.com>
References: <CAFMfyzLGoJ0iys=Cd3vzJRPCXOO11y=hMnyayB7u-jNwkzE+Mw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 25 Jun 2013 08:58:34 +0200
Message-ID: <CAP71Wjxr0hz-_hNEat8o-=T91HNWbWfdNUNuzh43Fs9NHcVOkg@mail.gmail.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQkaW0tyr76aCXIIgDBSzjS/cOKg70DRk+NIHy5vstR8CojHbFzQCrAs0RQK0AFSNUd0tnV6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding users and their rights
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
X-List-Received-Date: Tue, 25 Jun 2013 06:58:58 -0000
Content-Type: multipart/alternative; boundary=089e01493384f6a18404dff50f37

--089e01493384f6a18404dff50f37
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 25, 2013 at 8:38 AM, DAMARLA Satya Swaroop <
satyaswaroop.damarla@gmail.com> wrote:

> I would like to know if its possible to add users and theri rights at the
> build itself... I know tinylogin provides the adduser to the target but how
> can I do it at the build is the issue here..
>
> Suggestions are deeply appreciated
>

not sure if i understand the question correctly, but isn't 'useradd' what
you are looking for:

http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-useradd

cheers

--089e01493384f6a18404dff50f37
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jun 25, 2013 at 8:38 AM, DAMARLA Satya Swaroop <span dir=3D"ltr">&l=
t;<a href=3D"mailto:satyaswaroop.damarla@gmail.com" target=3D"_blank">satya=
swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>I would like to know if its possible to add users and=
 theri rights at the build itself... I know tinylogin provides the adduser =
to the target but how can I do it at the build is the issue here..</div>


<div><br></div><div>Suggestions are deeply appreciated</div></blockquote></=
div><br>not sure if i understand the question correctly, but isn&#39;t &#39=
;useradd&#39; what you are looking for:=A0</div><div class=3D"gmail_extra">

<br></div><div class=3D"gmail_extra"><a href=3D"http://www.yoctoproject.org=
/docs/current/mega-manual/mega-manual.html#ref-classes-useradd">http://www.=
yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-user=
add</a><br>

</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style=
>cheers</div></div>

--089e01493384f6a18404dff50f37--
