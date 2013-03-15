Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C8F6E00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 07:36:43 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id o13so327972qaj.12
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 07:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=n29oy+fBLO/iDzEqdLvTTQqMGQlPlSRHK01zIg/lh+E=;
	b=k/7UUM78L5HiAQegeQvFEMiuxner389se9r17p0dd8wYwrQJMCWv0/J8MpRIO/1qCI
	f3QzgSGT0kbDdse+SlGOAa2HEYO931q1oPL+XHiQnTC9dTWve0ysrHGvkpEGPoKfw4XL
	BBSWYgQXgaYR95EIxk00WRsxJzT6UscZezcIEHpv3P0+MRKTO/2444jsNbEVL0zdi8jX
	R7cO0Z01rU5MKmznmVHmn5YhDHhZ/vyWTdws84KzROq+caG3+hT79oqEgXGKAf1GvQfh
	/FKgqVtgqdEm7jQk7aD3PRJ0+8eT/bRnU5FJegTgZIVLCYttHiKadrYM1ttICnPTxiXn
	FAQQ==
MIME-Version: 1.0
X-Received: by 10.224.216.8 with SMTP id hg8mr5916315qab.74.1363358202801;
	Fri, 15 Mar 2013 07:36:42 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Fri, 15 Mar 2013 07:36:42 -0700 (PDT)
In-Reply-To: <51432E43.7060708@windriver.com>
References: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
	<51432E43.7060708@windriver.com>
Date: Fri, 15 Mar 2013 15:36:42 +0100
Message-ID: <CAFyqS9qmjLqMoXkqdFCvzHN_dMcZOd5yn0tgUR4iX5bGdvSSVQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: remove /boot/uImage and /usr/share/terminfo
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
X-List-Received-Date: Fri, 15 Mar 2013 14:36:43 -0000
Content-Type: multipart/alternative; boundary=20cf3005141a61339a04d7f7913d

--20cf3005141a61339a04d7f7913d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2013 at 3:20 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-03-15 06:33 AM, Hans Beck=E9rus wrote:
>
>> Hi. In an effort to shrink our rootfs by some major numbers we found two
>> low-hanging fruits that we would like to address before cherry picking
>> and removing lots of good linux functionality. We have no need for the
>> uImage (3MB) stored in /boot and also we can leave out the terminfo tree
>> (2.5MB).
>> My question here now is if the build system provide functionality to
>> actually tell the image builder not to include these specific components=
?
>>
>
> From kernel.bbclass, you just need to clear RDEPENDS_kernel-base
> in your .conf files:
>
> # Allow machines to override this dependency if kernel image files are
> # not wanted in images as standard
> RDEPENDS_kernel-base ?=3D "kernel-image"
>
> You'll still get your kernel modules installed after making this change.
>
> Bruce
>

Thanks Bruce.How could I have missed that? I believe I scanned through the
kernel.bbclass for something like this.
Also got some good tip regarding /usr/share/terminfo? Guess I need to
figure out what package drags it in ;)

Hans

--20cf3005141a61339a04d7f7913d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Mar 15, 2013 at 3:20 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"im">On 13-03-15 06:33 AM, Hans Beck=E9rus wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi. In an effort to shrink our rootfs by some major numbers we found two<br=
>
low-hanging fruits that we would like to address before cherry picking<br>
and removing lots of good linux functionality. We have no need for the<br>
uImage (3MB) stored in /boot and also we can leave out the terminfo tree<br=
>
(2.5MB).<br>
My question here now is if the build system provide functionality to<br>
actually tell the image builder not to include these specific components?<b=
r>
</blockquote>
<br></div>
From kernel.bbclass, you just need to clear RDEPENDS_kernel-base<br>
in your .conf files:<br>
<br>
# Allow machines to override this dependency if kernel image files are<br>
# not wanted in images as standard<br>
RDEPENDS_kernel-base ?=3D &quot;kernel-image&quot;<br>
<br>
You&#39;ll still get your kernel modules installed after making this change=
.<br>
<br>
Bruce<br></blockquote><div><br>Thanks Bruce.How could I have missed that? I=
 believe I scanned through the kernel.bbclass for something like this.<br>A=
lso got some good tip regarding /usr/share/terminfo? Guess I need to figure=
 out what package drags it in ;)<br>
=A0<br>Hans<br></div></div><br>

--20cf3005141a61339a04d7f7913d--
