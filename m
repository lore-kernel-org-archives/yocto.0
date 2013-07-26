Return-Path: <djszapi@archlinux.us>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750EEE0152B
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:10:39 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id wz7so1921269pbc.9
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=j4XhPjYRTFxxj4koxrrmKW0GZyD9hAVXwA57E9bdLNw=;
	b=Jru3O+nGLRAwo1d0VyHF04fl+QbY+KrDw3yHw4pZzfzVXtBb0o7r0aJ4oktsVHqpYQ
	SnKkKoua8kQIUFh+nZ3Jr7GmgVf/mDMaW7g8OWZRhZ5S4LuldEDiXfyoceRh8zCz3j8f
	dLbuiHaQICpcx5SWGu8biOjUl2syOQB3qnSXI/SihKUUkXexRj59Fkc1Up4qEJGGUWFY
	QbEualZlnd1zXY9ejg0xE/as4+XE7nnAB3vAAuweMk4pS1vFK7uhSPqTUQYhb85of+zO
	TZUPg5z+alCleH9ApPnTLwBNDBWcx2s47/oQxVFKh8IILk/dkcp74ei7sZ4uGV42zihg
	Fd+w==
MIME-Version: 1.0
X-Received: by 10.68.25.102 with SMTP id b6mr52429598pbg.105.1374837039453;
	Fri, 26 Jul 2013 04:10:39 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 04:10:39 -0700 (PDT)
In-Reply-To: <CAJTo0Lb4bhnj5cwySn145dosZnGxubNS5B9P_LbOqrEii5ks1Q@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
	<CAJTo0Lb4bhnj5cwySn145dosZnGxubNS5B9P_LbOqrEii5ks1Q@mail.gmail.com>
Date: Fri, 26 Jul 2013 12:10:39 +0100
X-Google-Sender-Auth: SMF71ctqXmmlm02Jxk58IEe8D3k
Message-ID: <CAOMwXhOdKmzX6aaM3H-FmD73CGXN45tMtZebbgzTfHGNU1Tpcw@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQm4R2uCYGCeDLHt5pF9xq3UkXwVVEdY4bssA99xW3JpNzRLylCNDkqJ0SxXBThZr7Uoc0ML
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:10:41 -0000
Content-Type: multipart/alternative; boundary=bcaec53043295c6d9204e26831ad

--bcaec53043295c6d9204e26831ad
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 26, 2013 at 12:05 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 26 July 2013 11:57, Laszlo Papp <lpapp@kde.org> wrote:
> > Actually, I also have problems with Debian stable? See the bugreports I
> > sent. It is mentioned as "supported distribution". Yet, it does not
> work. I
> > do not to follow the parallelism with Arch accordingly.
>
> The words I were careful to use were "normal configuration".  A chroot
> isn't "normal" and needs careful attention to get the details right
> (such as a working /dev, /sys /dev/shm).  If you can't get this
> configured correctly you may have more luck with a more featureful
> container such as systemd-nspawn or KVM, where the guest actually
> boots and can set itself up.
>

As far as I can tell, the reference documentation does not write that
anywhere what you are claiming here. So you are either incorrect, or I need
to file a bugreport to fix the documentation.

No doubt a common "normal" could be found for Arch as well, which is what I
have been referring to, in several emails of this thread now. I do not see
Arch exclusive, respectively.

Laszlo

--bcaec53043295c6d9204e26831ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Fri, Jul 26, 2013 at 12:05 PM, Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 26 July 2013 11:57, Laszlo Papp &lt;<=
a href=3D"mailto:lpapp@kde.org">lpapp@kde.org</a>&gt; wrote:<br>

&gt; Actually, I also have problems with Debian stable? See the bugreports =
I<br>
&gt; sent. It is mentioned as &quot;supported distribution&quot;. Yet, it d=
oes not work. I<br>
&gt; do not to follow the parallelism with Arch accordingly.<br>
<br>
</div>The words I were careful to use were &quot;normal configuration&quot;=
. =A0A chroot<br>
isn&#39;t &quot;normal&quot; and needs careful attention to get the details=
 right<br>
(such as a working /dev, /sys /dev/shm). =A0If you can&#39;t get this<br>
configured correctly you may have more luck with a more featureful<br>
container such as systemd-nspawn or KVM, where the guest actually<br>
boots and can set itself up.<br></blockquote><div><br></div><div>As far as =
I can tell, the reference documentation does not write that anywhere what y=
ou are claiming here. So you are either incorrect, or I need to file a bugr=
eport to fix the documentation.</div>
<div><br></div><div>No doubt a common &quot;normal&quot; could be found for=
 Arch as well, which is what I have been referring to, in several emails of=
 this thread now. I do not see Arch exclusive, respectively.</div><div>
<br></div><div>Laszlo</div><div><br></div><div><br></div><div>=A0</div></di=
v></div></div>

--bcaec53043295c6d9204e26831ad--
