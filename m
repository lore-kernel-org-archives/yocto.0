Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30F3E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:08:16 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id mc17so3022631pbc.4
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=7L6ZSguE68d0HS8ic/yOhU9zbpTufL7zpxVm9n95Xns=;
	b=f2j1Vb+lEcDxKwOZwyZUcL+nq7m9Nk2LwkGvmQ9g7FHQR/2hhXfrj2ztIuJupx5K7Y
	gIP6WePsS3UfLeStE3lzkq9+5Q7YJbOF4C9POfNN8Z196SAT69BHderCy5vgwqLeHYdg
	3ZDVu8PQynREuD0rHna4SrNBEYm6jDPb2tggVGQWB0Q13ic64JHQLvfhXuv5PXoJl8wv
	HzZEycM3wjTpHpHnjSczPo8A996YhIYCk3kP0gAcqWX3hcPHLjGOTMTRM6SJ8vlmL7iw
	xckSRRab2XkCUwh3FGUHrCVpJhKlC/xUt2P53L9XgFsbMWHIzs6HJUXVRAunyMpsH5Zv
	hX8g==
MIME-Version: 1.0
X-Received: by 10.66.27.72 with SMTP id r8mr5125545pag.151.1369321696402; Thu,
	23 May 2013 08:08:16 -0700 (PDT)
Received: by 10.68.5.230 with HTTP; Thu, 23 May 2013 08:08:16 -0700 (PDT)
In-Reply-To: <CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
	<CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
	<CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
Date: Thu, 23 May 2013 20:38:16 +0530
Message-ID: <CAGxOggHHLbwq7jVPnZVPmwhNdj9Fjixk8dfi7tZT0vKNy2BBJQ@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Thu, 23 May 2013 15:08:16 -0000
Content-Type: multipart/alternative; boundary=bcaec52bec1f4c21f604dd640da8

--bcaec52bec1f4c21f604dd640da8
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Followed the instructions given by you and it worked....thanks a lot...!!!!

But now I got one more problem......when I tried logging in I found out
that my keyboard's key mapping got changed and it was not working. How can
I fix this.... :(

//
Varun


On Wed, May 22, 2013 at 10:49 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 22 May 2013 18:12, varun bhatnagar <varun292006@gmail.com> wrote:
> > Thanks Burton, Ross....
> > Will try this at my workplace.....
> > And is this a bug?
>
> No.  Make it require SDL and people object, make it always build
> without SDL and people object.  So the dependency is "floating".
>
> Ross
>

--bcaec52bec1f4c21f604dd640da8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>Followed the instructions giv=
en by you and it worked....thanks a lot...!!!!</div><div style><br></div><d=
iv style>But now I got one more problem......when I tried logging in I foun=
d out that my keyboard&#39;s key mapping got changed and it was not working=
. How can I fix this.... :(</div>
<div style><br></div><div style>//</div><div style>Varun</div></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, May 22, 2013=
 at 10:49 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 22 May 2013 18:12, varu=
n bhatnagar &lt;<a href=3D"mailto:varun292006@gmail.com">varun292006@gmail.=
com</a>&gt; wrote:<br>

&gt; Thanks Burton, Ross....<br>
&gt; Will try this at my workplace.....<br>
&gt; And is this a bug?<br>
<br>
</div>No. =A0Make it require SDL and people object, make it always build<br=
>
without SDL and people object. =A0So the dependency is &quot;floating&quot;=
.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--bcaec52bec1f4c21f604dd640da8--
