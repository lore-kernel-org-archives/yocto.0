Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A04E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 04:25:17 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id s7so2226524lbd.1
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 04:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xFxlWzn8xQq2qk6vpLhhhV7rJf9eJSZEw4zhqmvTqO4=;
	b=jCHJ1bvUpmSeyd+UDz0k4p42tYk6A4OByztumEPbPboI/7Llh/3AXGkHjAU4HCgGT8
	nzG6TcPApJYWIAxVJux7xt0PTTKHyTMYzvAM6NPC9r9gSSLdV98NYQ2w4it2B4aTsmyM
	cmsie1EZ0RcrdmIfuGhB7/9jPtHlustnYoL8qkc0vZHyPOlXCD/ETd5cTFepZNH9KayZ
	Cv+DbHCNbUUV35DY1iWNYNGvMEr90Iu50wbNHMuOJmG+a0m9QAOmuJgWJBMwvPXwQxfQ
	0W2FeDngTftT2KUfNK2xYjX0SiK3BWZzvC1Mk40zthMjwx/HHzSgfLTIOI4OHitYXyaW
	y7zA==
MIME-Version: 1.0
X-Received: by 10.152.10.72 with SMTP id g8mr904557lab.50.1397129115498; Thu,
	10 Apr 2014 04:25:15 -0700 (PDT)
Received: by 10.114.78.72 with HTTP; Thu, 10 Apr 2014 04:25:15 -0700 (PDT)
In-Reply-To: <CAKfC58saGQftdHrdUgpXa2s3OfCYrCizSh1oR=ZoxsLv5eVUeQ@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<CAKfC58saGQftdHrdUgpXa2s3OfCYrCizSh1oR=ZoxsLv5eVUeQ@mail.gmail.com>
Date: Thu, 10 Apr 2014 16:55:15 +0530
Message-ID: <CAE_REAtFPsY4T-NKTzq10uPqtiGRDeJtPpPukNd6ttWp0G=5Rg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Romain <romain145@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 11:25:21 -0000
Content-Type: multipart/alternative; boundary=001a1132efa2a27e3704f6ae7804

--001a1132efa2a27e3704f6ae7804
Content-Type: text/plain; charset=UTF-8

Dear Romain,

Did you try writing in "meta/conf/distro/include/default-providers.inc "
like below:

==
PREFERRED_PROVIDER_virtual/sshd ?= "openssh"
PREFERRED_PROVIDER_virtual/jpeg ?= "jpeg"
==

//Gaurang Shastri


On Thu, Apr 10, 2014 at 3:51 PM, Romain <romain145@gmail.com> wrote:

> Hi, any clue ?
>
> Thanks and Regards
> Romain
>
> On 8 April 2014 18:10, Romain <romain145@gmail.com> wrote:
>
>> Hello all,
>>
>> While building an image I get those notes, and I would like to lock down
>> the providers for sshd and jpeg :
>> NOTE: multiple providers are available for runtime sshd (openssh,
>> dropbear)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd
>> NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
>>
>> I tried a few syntax in the local.conf, but none of them seem to work :
>> PREFERRED_PROVIDER_virtual/sshd = "ssh-server-openssh"
>> PREFERRED_PROVIDER_sshd = "ssh-server-openssh"
>> PREFERRED_PROVIDER_sshd = "openssh"
>> PREFERRED_PROVIDER_openssh = "sshd"
>>
>> Thanks !
>> Romain
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1132efa2a27e3704f6ae7804
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Romain,<div><br></div><div>Did you try writing in &qu=
ot;meta/conf/distro/include/default-providers.inc &quot; like below:</div><=
div><br></div><div>=3D=3D</div><div>PREFERRED_PROVIDER_virtual/sshd ?=3D &q=
uot;openssh&quot;<br>
</div><div>PREFERRED_PROVIDER_virtual/jpeg ?=3D &quot;jpeg&quot;<br></div><=
div>=3D=3D</div><div><br></div><div>//Gaurang Shastri</div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Apr 10, 2014 at=
 3:51 PM, Romain <span dir=3D"ltr">&lt;<a href=3D"mailto:romain145@gmail.co=
m" target=3D"_blank">romain145@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, any clue ?<div class=3D=
"gmail_extra"><div><br></div><div>Thanks and Regards<span class=3D"HOEnZb">=
<font color=3D"#888888"><br>
Romain</font></span></div></div><div><div class=3D"h5"><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On 8 April 2014 18:10, Romain <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:romain145@gmail.com" target=3D"_blank">rom=
ain145@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><p dir=3D"ltr">Hello all,</p>
<p dir=3D"ltr">While building an image I get those notes, and I would like =
to lock down the providers for sshd and jpeg :<br>
NOTE: multiple providers are available for runtime sshd (openssh, dropbear)=
<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd<br>
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br></p><p>=
I tried a few syntax in the local.conf, but none of them seem to work :<br>=
PREFERRED_PROVIDER_virtual/sshd =3D &quot;ssh-server-openssh&quot;<br>PREFE=
RRED_PROVIDER_sshd =3D &quot;ssh-server-openssh&quot;<br>



PREFERRED_PROVIDER_sshd =3D &quot;openssh&quot;<br>PREFERRED_PROVIDER_opens=
sh =3D &quot;sshd&quot;</p>
<p dir=3D"ltr">Thanks !<span><font color=3D"#888888"><br>Romain<br></font><=
/span></p>
</div>
</blockquote></div><br></div></div></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1132efa2a27e3704f6ae7804--
