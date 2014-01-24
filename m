Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D73AE00893
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 06:07:47 -0800 (PST)
Received: by mail-oa0-f46.google.com with SMTP id n16so3773740oag.19
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 06:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5jJcjQalnNmuwdKjpjS7l3IhZb6gygO93gKUaUZjwi4=;
	b=IhVUFMn0n5Yxp+7yHJm+8qp815jbvSxsdfX8yScjaXCAuIHGvzLHLwxm+IWF/2U3zM
	akIBPjQXJtdDzVOBohQvJnchAfaYMSEhqQi7X5B2TvaXoXPi9TTTKCRuduGUT2cz7x80
	ao8cIF4a4Df9jEkCNX8v3Nq8KhbBN7MSVNRcF6gXP+fhu1J8/ttYipRWVs/Zg/p8XH9Z
	bC0InmuXoeLJgFyirUw1WIOfLbTjhuAZJ+aI/Fv70KaCmRA1umjSqXDmXYA5Fgd17Hkm
	4QMH+Z79jw4qa5rns/NNcnRrIwwMAocawCcemU8kj6zmxN9F1omwzLaU2iXdV2gdkL6D
	3REQ==
MIME-Version: 1.0
X-Received: by 10.182.226.202 with SMTP id ru10mr12196355obc.7.1390572466912; 
	Fri, 24 Jan 2014 06:07:46 -0800 (PST)
Received: by 10.60.94.114 with HTTP; Fri, 24 Jan 2014 06:07:46 -0800 (PST)
In-Reply-To: <4881727.Fp3ZJb6UjL@peggleto-mobl5.ger.corp.intel.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CF07F9D1.3B9E2%belen.barros.pena@intel.com>
	<CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
	<4881727.Fp3ZJb6UjL@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 24 Jan 2014 09:07:46 -0500
Message-ID: <CAFZh4h8gSP9PWCVLm+uNJQR4uc3GsCEkCgpvYeFP0W413yDubw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 24 Jan 2014 14:07:48 -0000
Content-Type: multipart/alternative; boundary=001a11c32efaecc30a04f0b7e12a

--001a11c32efaecc30a04f0b7e12a
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 24, 2014 at 8:53 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

>
> If you want license and version information, probably the best place to
> get that is the automatically produced license manifest for the image:
>
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle
>
> Cheers,
> Paul
>
> For license compliance, I've just been taring up the deploy/licenses dir.
I know it includes way more than just the licenses for the packages in the
images but I've not investigated yet if there's a fancy way of managing
those better.

I've seen that section of the document you point out before ... I just need
to spend more time in it.  Our release procedure in this area needs to be
automated/streamlined and improved too!  I'll have to search the archives
and see if I can find prior discussions on that topic.

Regards,

Brian

--001a11c32efaecc30a04f0b7e12a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jan 24, 2014 at 8:53 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im">
<br>
</div>If you want license and version information, probably the best place =
to<br>
get that is the automatically produced license manifest for the image:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.h=
tml#maintaining-open-source-license-compliance-during-your-products-lifecyc=
le" target=3D"_blank">http://www.yoctoproject.org/docs/current/dev-manual/d=
ev-manual.html#maintaining-open-source-license-compliance-during-your-produ=
cts-lifecycle</a><br>

<br>
Cheers,<br>
Paul<br>
<span class=3D""><font color=3D"#888888"><br></font></span></blockquote><di=
v>For license compliance, I&#39;ve just been taring up the deploy/licenses =
dir.=A0 I know it includes way more than just the licenses for the packages=
 in the images but I&#39;ve not investigated yet if there&#39;s a fancy way=
 of managing those better.=A0 <br>
<br>I&#39;ve seen that section of the document you point out before ... I j=
ust need to spend more time in it.=A0 Our release procedure in this area ne=
eds to be automated/streamlined and improved too!=A0 I&#39;ll have to searc=
h the archives and see if I can find prior discussions on that topic.<br>
<br>Regards,<br><br>Brian<br></div></div><br></div></div>

--001a11c32efaecc30a04f0b7e12a--
