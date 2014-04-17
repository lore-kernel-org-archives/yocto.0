Return-Path: <katutxakurra@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 901CBE00955
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 23:34:40 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h18so342043igc.8
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 23:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2sNAn49RMenJ4P8vLlbWpE+dNg0mqcmijPaV8zKmLyA=;
	b=p9OKT89JVpER9WrNB466pmo0HYRM+svCnolT/DVEz2IXgy74sRBNfdl7qwFjia5D6s
	ENmqidXRtfZxoI8c0vr8h8Be38nTHR42nwYhe2RxNGCd7VsnFsZ6D6KFQKDzoeyMX4iD
	YSqCZAwTG9RFI7oqiEbbYZ0jfA6Y37oV4sCpSS3lmOVk8G4Jd1/vCq/En11wzj0AZ4z2
	VicNtuhF2ALq04dMXe1CiUz7c9vQ48axLUywD7YHHM/ueTn00qDjSsMBkFisPl2fZlky
	ndOPaNAXE1w9zUKmFKWRelgJAqxPSP7Q5rCL90XjCJkSj7DldOP8NmT4NDxfbpuRkqDU
	I+qQ==
MIME-Version: 1.0
X-Received: by 10.42.229.201 with SMTP id jj9mr7751872icb.11.1397716480449;
	Wed, 16 Apr 2014 23:34:40 -0700 (PDT)
Received: by 10.50.115.2 with HTTP; Wed, 16 Apr 2014 23:34:40 -0700 (PDT)
In-Reply-To: <4960605.ayIGcoMIuZ@peggleto-mobl5.ger.corp.intel.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
	<2723535.xEbZsL9sAs@peggleto-mobl5.ger.corp.intel.com>
	<CAM1ZcoUuebe55sDijir5xVqF36KuHmrax8PrqvxHPp0TptaEcg@mail.gmail.com>
	<4960605.ayIGcoMIuZ@peggleto-mobl5.ger.corp.intel.com>
Date: Thu, 17 Apr 2014 07:34:40 +0100
Message-ID: <CAM1ZcoW_dN1ftaDEFWwq_Kg55KG4JAxZVe6tmbv2ax11+3X-4A@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: non empty package group
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
X-List-Received-Date: Thu, 17 Apr 2014 06:34:43 -0000
Content-Type: multipart/alternative; boundary=001a11c3ab8e50628304f7373a5e

--001a11c3ab8e50628304f7373a5e
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thanks a lot for your help. I'm sure that there is a good reason why that's
not the way it works. I will continue then using individual packages for
updates/installation.

Regards,
Katu


2014-04-16 17:34 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Wednesday 16 April 2014 17:28:45 Katu Txakur wrote:
> > 2014-04-16 17:17 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com
> >:
> > > On Wednesday 16 April 2014 17:09:19 Katu Txakur wrote:
> > > > yes, it does "inherit packagegroup" and all the packages are
> installed.
> > > > What I would like to have is a mypackagegroup.ipk that I can copy to
> any
> > > > system to install all the files, binaries.... in those recipes using
> > > > "opkg install mypackage.ipk"
> > > > The problem that I have is that the files, binaries... of the
> recipes in
> > > > RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you
> know
> > > > how can I include them?
> > >
> > > opkg and similar package managers simply aren't designed to work like
> > > that; it's expected that both devices would have access to the same
> > > package feeds and therefore you would just install the packagegroup
> > > package on each system in the same way.
> >
> > I see, but I don't want to feed the package from a repo, I just want to
> > include all the files in the package.
> > I'm now trying to set
> > PREFERRED_PROVIDER_each-recipe = "mypackagegroup"
> > hoping that it will change the location of the files from their
> individual
> > recipes/packages to the packagegroup.
> > I've just cleaned the entire tmp folder, I will find out tomorrow if this
> > worked.
>
> It isn't as simple as that, that just selects between providers but there
> is
> nothing to actually make the "mypackagegroup" recipe actually provide
> anything. The files would need to actually be produced as part of the
> packagegroup recipe, and then it isn't really a packagegroup anymore.
>
> I'm afraid our system just isn't designed to work this way. I'm sure it
> could
> be made to, but it would require some additional work.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c3ab8e50628304f7373a5e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Paul,<br><br></div>Thanks a lot for your=
 help. I&#39;m sure that there is a good reason why that&#39;s not the way =
it works. I will continue then using individual packages for updates/instal=
lation.<br>
<br></div>Regards,<br></div>Katu<br></div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">2014-04-16 17:34 GMT+01:00 Paul Eggleton <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D=
"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wednesday 16 April 2014 1=
7:28:45 Katu Txakur wrote:<br>
&gt; 2014-04-16 17:17 GMT+01:00 Paul Eggleton &lt;<a href=3D"mailto:paul.eg=
gleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;:<br>
&gt; &gt; On Wednesday 16 April 2014 17:09:19 Katu Txakur wrote:<br>
&gt; &gt; &gt; yes, it does &quot;inherit packagegroup&quot; and all the pa=
ckages are installed.<br>
&gt; &gt; &gt; What I would like to have is a mypackagegroup.ipk that I can=
 copy to any<br>
&gt; &gt; &gt; system to install all the files, binaries.... in those recip=
es using<br>
&gt; &gt; &gt; &quot;opkg install mypackage.ipk&quot;<br>
&gt; &gt; &gt; The problem that I have is that the files, binaries... of th=
e recipes in<br>
&gt; &gt; &gt; RDEPENDS_${PN} are not included in the mypackagegroup.ipk. D=
o you know<br>
&gt; &gt; &gt; how can I include them?<br>
&gt; &gt;<br>
&gt; &gt; opkg and similar package managers simply aren&#39;t designed to w=
ork like<br>
&gt; &gt; that; it&#39;s expected that both devices would have access to th=
e same<br>
&gt; &gt; package feeds and therefore you would just install the packagegro=
up<br>
&gt; &gt; package on each system in the same way.<br>
&gt;<br>
</div><div class=3D"">&gt; I see, but I don&#39;t want to feed the package =
from a repo, I just want to<br>
&gt; include all the files in the package.<br>
&gt; I&#39;m now trying to set<br>
&gt; PREFERRED_PROVIDER_each-recipe =3D &quot;mypackagegroup&quot;<br>
&gt; hoping that it will change the location of the files from their indivi=
dual<br>
&gt; recipes/packages to the packagegroup.<br>
&gt; I&#39;ve just cleaned the entire tmp folder, I will find out tomorrow =
if this<br>
&gt; worked.<br>
<br>
</div>It isn&#39;t as simple as that, that just selects between providers b=
ut there is<br>
nothing to actually make the &quot;mypackagegroup&quot; recipe actually pro=
vide<br>
anything. The files would need to actually be produced as part of the<br>
packagegroup recipe, and then it isn&#39;t really a packagegroup anymore.<b=
r>
<br>
I&#39;m afraid our system just isn&#39;t designed to work this way. I&#39;m=
 sure it could<br>
be made to, but it would require some additional work.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a11c3ab8e50628304f7373a5e--
