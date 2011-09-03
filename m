Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A960E011D3
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 14:50:44 -0700 (PDT)
Received: from mail-ww0-f44.google.com ([74.125.82.44])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 03 Sep 2011 14:50:44 -0700
Received: by wwf5 with SMTP id 5so2618326wwf.13
	for <yocto@yoctoproject.org>; Sat, 03 Sep 2011 14:50:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.49.148 with SMTP id x20mr2230754web.73.1315086641563; Sat,
	03 Sep 2011 14:50:41 -0700 (PDT)
Received: by 10.216.167.4 with HTTP; Sat, 3 Sep 2011 14:50:41 -0700 (PDT)
In-Reply-To: <CA+T6QPmL2ybO0wxRDPkj7d2AcDz66xfFMtk90w4KwgvXB=kqHQ@mail.gmail.com>
References: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
	<CA+T6QPmL2ybO0wxRDPkj7d2AcDz66xfFMtk90w4KwgvXB=kqHQ@mail.gmail.com>
Date: Sat, 3 Sep 2011 14:50:41 -0700
Message-ID: <CALZ2gZWttWUa9DEW1E0t7NE0nntRQGo-bGKe_P_nQ062zi4ebg@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Jason Kridner <jkridner@beagleboard.org>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Sat, 03 Sep 2011 21:50:45 -0000
Content-Type: multipart/alternative; boundary=001485f7d49a1e893b04ac107898

--001485f7d49a1e893b04ac107898
Content-Type: text/plain; charset=ISO-8859-1

Hi Brian - both bitbake and pseudo are part of the Yocto toolset. The
standard bitbake from the package manager on your host is not the correct
one. Make sure you have set your environment properly by sourcing the
build-env script, and it should be set correctly.

As Jason says, set BBPATH in your project directory in conf/local.conf

How did you download the tools, tarball or git?  I find it easiest to do
this:

git clone git://git.yoctoproject.org/poky.git

Note that responses may be delayed on a US holiday weekend :)

On Sat, Sep 3, 2011 at 1:48 PM, Jason Kridner <jkridner@beagleboard.org>wrote:

> On Sat, Sep 3, 2011 at 2:43 PM, Brian Duffy <brduffy@gmail.com> wrote:
> > Hi Yocto group. I am new to Yocto. I followed the starters guide and When
> > running bitbake I get some errors. first it complains that pseudo is not
> > available but required, and then it complains that bbpath is not set.
> What
> > is pseudo?
>
> Google should have helped you with this question:
> http://www.yoctoproject.org/projects/pseudo.
>
> I believe the primary purpose is to be able to create files with root
> ownership without root access.  This is critical for building your
> file system.
>
> > I have sudo installed and setup to work for me, but I don't know
> > what pseudo is. Also, bitbake was not installed on my fresh install of
> > Fedora 15 so I installed it through the package manager.
>
> I doubt you want to do that, but I don't see anything in the
> instructions provided to tell you where to get it either.
>
> > I guess that was
> > not included in the packages from the getting started guide. Where do I
> set
> > the bbpath?
>
> Did you edit conf/local.conf?
>
> > I followed the getting started guide and replaced the
> > appropriate commands with the ones from Davids blog post for the latest
> > release.
> >
> > thnx
> > Brian
> > --
> > Duff
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--001485f7d49a1e893b04ac107898
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Brian - both bitbake and pseudo are part of the Yocto toolset. The stand=
ard bitbake from the package manager on your host is not the correct one. M=
ake sure you have set your environment properly by sourcing the build-env s=
cript, and it should be set correctly.<div>
<br></div><div>As Jason says, set BBPATH in your project directory in conf/=
local.conf</div><div><br></div><div>How did you download the tools, tarball=
 or git? =A0I find it easiest to do this:</div><div><br></div><div>git clon=
e git://<a href=3D"http://git.yoctoproject.org/poky.git">git.yoctoproject.o=
rg/poky.git</a></div>
<div><br></div><div>Note that responses may be delayed on a US holiday week=
end :)</div><div><div><br><div class=3D"gmail_quote">On Sat, Sep 3, 2011 at=
 1:48 PM, Jason Kridner <span dir=3D"ltr">&lt;<a href=3D"mailto:jkridner@be=
agleboard.org">jkridner@beagleboard.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Sat, Sep 3, 2011 at 2:=
43 PM, Brian Duffy &lt;<a href=3D"mailto:brduffy@gmail.com">brduffy@gmail.c=
om</a>&gt; wrote:<br>

&gt; Hi Yocto group. I am new to Yocto. I followed the starters guide and W=
hen<br>
&gt; running bitbake I get some errors. first it complains that pseudo is n=
ot<br>
&gt; available but required, and then it complains that bbpath is not set. =
What<br>
&gt; is pseudo?<br>
<br>
</div>Google should have helped you with this question:<br>
<a href=3D"http://www.yoctoproject.org/projects/pseudo" target=3D"_blank">h=
ttp://www.yoctoproject.org/projects/pseudo</a>.<br>
<br>
I believe the primary purpose is to be able to create files with root<br>
ownership without root access. =A0This is critical for building your<br>
file system.<br>
<div class=3D"im"><br>
&gt; I have sudo installed and setup to work for me, but I don&#39;t know<b=
r>
&gt; what pseudo is. Also, bitbake was not installed on my fresh install of=
<br>
&gt; Fedora 15 so I installed it through the package manager.<br>
<br>
</div>I doubt you want to do that, but I don&#39;t see anything in the<br>
instructions provided to tell you where to get it either.<br>
<div class=3D"im"><br>
&gt; I guess that was<br>
&gt; not included in the packages from the getting started guide. Where do =
I set<br>
&gt; the bbpath?<br>
<br>
</div>Did you edit conf/local.conf?<br>
<div class=3D"im"><br>
&gt; I followed the getting started guide and replaced the<br>
&gt; appropriate commands with the ones from Davids blog post for the lates=
t<br>
&gt; release.<br>
&gt;<br>
&gt; thnx<br>
&gt; Brian<br>
&gt; --<br>
&gt; Duff<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osier-M=
ixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.net=
/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=3D"http://yo=
ctoproject.org/" target=3D"_blank">http://yoctoproject.org</a></div>
<br>
</div></div>

--001485f7d49a1e893b04ac107898--
