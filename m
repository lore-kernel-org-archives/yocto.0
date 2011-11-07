Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C366EE0138C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 14:50:36 -0800 (PST)
Received: from mail-fx0-f52.google.com ([209.85.161.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 07 Nov 2011 14:50:35 -0800
Received: by faan26 with SMTP id n26so5814601faa.25
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 14:50:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.77.71 with SMTP id f7mr49917179fak.33.1320706234411; Mon,
	07 Nov 2011 14:50:34 -0800 (PST)
Received: by 10.223.93.199 with HTTP; Mon, 7 Nov 2011 14:50:34 -0800 (PST)
In-Reply-To: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
References: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
Date: Mon, 7 Nov 2011 14:50:34 -0800
Message-ID: <CALZ2gZV3jGBj01=59NAmRDUJSOW8jJz=L0F-vN6rP0=sDM=28A@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: use case howto?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Nov 2011 22:50:37 -0000
Content-Type: multipart/alternative; boundary=0015174be34ef46c1104b12ce107

--0015174be34ef46c1104b12ce107
Content-Type: text/plain; charset=ISO-8859-1

Hi James,

On Mon, Nov 7, 2011 at 1:59 PM, James Abernathy <jfabernathy@gmail.com>wrote:

> I approach embedded Linux from a path of taking a Distro like Ubuntu or
> Fedora and chopping it down to a working set of code that forms the final
> solution.  Obviously, not the same methology as Yocto.  With some success
> with the current methods, it's difficult to see the advantages of Yocto.
> I'm reading what I can find to get smarting on Yocto, but like most new
> concepts, you try to compare what you used to do with how to do it with the
> new concept.
>
> For example, if I use a distro, I can install packages really simply with
> yum or apt-get; update them the same way. If I start with a Yocto meta-???
> that's closest to my hardware solution, and get it working at a base level,
> how do I add things, like browsers, or other application?
>
> Jim A
>

The approach you describe is followed by a number of embedded developers.
There are advantages to starting with a known-working quantity and scaling
it down, particularly one with a working software repository. Where many
developers get frustrated with that approach is in the details - on
constrained systems it is easy to run out of space, or to simply not be
able to scale the distro back to a point where it is useful on given
hardware. Distros are also somewhat difficult to customize to the level an
embedded product would need, and often those customizations are not
repeatable, nor portable to updated versions of the distribution.

The Yocto Project approach is in many ways the philosophical opposite. You
build from the ground up, starting from a base set of working components
and adding only those features that are needed for the final system. You
have complete control over every bit that goes into the final system, as
well as control over the build tools themselves. You also have a fully
repeatable and portable process, which is extremely important in a
production environment. In essence, you use Yocto Project tools to create
your own distro.

To answer your question, components like drivers (and entire board support
packages (BSPs)) as well as userland features and applications can all be
added by providing pointers to their recipes in a given build's
configuration file. This is covered in much greater detail in the
documentation at http://yoctoproject.org/documentation and on the wiki.

Hope this helps!

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--0015174be34ef46c1104b12ce107
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi James,=A0<div><br></div><div><div class=3D"gmail_quote">On Mon, Nov 7, 2=
011 at 1:59 PM, James Abernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfa=
bernathy@gmail.com">jfabernathy@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex;">
<div>I approach embedded Linux from a path of taking a Distro like Ubuntu o=
r Fedora and chopping=A0it down to a working set of code that forms the fin=
al solution.=A0 Obviously, not the same methology as Yocto.=A0 With some su=
ccess with the current methods, it&#39;s difficult to see the advantages of=
 Yocto.=A0 I&#39;m reading what I can find to get smarting on Yocto, but li=
ke most new concepts, you try to compare what you used to do with how to do=
 it with the new concept.</div>


<div>=A0</div>
<div>For example, if I use a distro, I can install packages really simply w=
ith yum or apt-get; update them the same way. If I start with a Yocto meta-=
??? that&#39;s closest to my hardware solution, and get it working at a bas=
e level, how do I add things, like browsers, or other application?</div>


<div>=A0</div>
<div>Jim A</div>
</blockquote></div><br><div>The approach you describe is followed by a numb=
er of embedded developers. There are advantages to starting with a known-wo=
rking quantity and scaling it down, particularly one with a working softwar=
e repository. Where many developers get frustrated with that approach is in=
 the details - on constrained systems it is easy to run out of space, or to=
 simply not be able to scale the distro back to a point where it is useful =
on given hardware. Distros are also somewhat difficult to customize to the =
level an embedded product would need, and often those customizations are no=
t repeatable, nor portable to updated versions of the distribution.=A0</div=
>
<div><br></div><div>The Yocto Project approach is in many ways the philosop=
hical opposite. You build from the ground up, starting from a base set of w=
orking components and adding only those features that are needed for the fi=
nal system. You have complete control over every bit that goes into the fin=
al system, as well as control over the build tools themselves. You also hav=
e a fully repeatable and portable process, which is extremely important in =
a production environment. In essence, you use Yocto Project tools to create=
 your own distro.=A0</div>
<div><br></div><div>To answer your question, components like drivers (and e=
ntire board support packages (BSPs)) as well as userland features and appli=
cations can all be added by providing pointers to their recipes in a given =
build&#39;s configuration file. This is covered in much greater detail in t=
he documentation at <a href=3D"http://yoctoproject.org/documentation">http:=
//yoctoproject.org/documentation</a> and on the wiki.=A0</div>
<div><br></div><div>Hope this helps!<br></div><div><br></div>-- <br>Jeff Os=
ier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefr=
o.net/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=3D"http=
://yoctoproject.org/" target=3D"_blank">http://yoctoproject.org</a></div>
<br>
</div>

--0015174be34ef46c1104b12ce107--
