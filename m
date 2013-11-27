Return-Path: <tstellanova@gmail.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1232FE005A2
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2013 17:27:32 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id hi5so6071261wib.14
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2013 17:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yLU9dAm9k8lvcpahANeRMsrlo98w/c08ggw5MmEhG+w=;
	b=w1vri/w6Tr79V663F4JfgtYyaKAFdvM9DiXuhYJAYBiPk9tvnlYM76gkqdoAqg3jVx
	kO/rz8TasfJszOtoJ5+6J7OKv5cVlWjM+92Ke2b/LSkG+Y815yJzGN27UkylKZu5ldjP
	yhpwHwHRGxDrGYEqHx9Et3l81muei4Qoyrj3z5eEaadO1fE9evGgmBNv+gJPjt3B32p7
	x/suMSYhMdbh3Bl9jBciq575/siJufWtHmcRRS2mIg3/uy3owIs5FXviBY8luICHiYyv
	627JMGFU+Xjr97I4Gp5BzrtzGT/T2Quga7fgbrzaTjHii34ZIQulQyIjLnEeuDC8cY2W
	T21Q==
MIME-Version: 1.0
X-Received: by 10.194.75.165 with SMTP id d5mr29033686wjw.18.1385515650783;
	Tue, 26 Nov 2013 17:27:30 -0800 (PST)
Received: by 10.216.202.4 with HTTP; Tue, 26 Nov 2013 17:27:30 -0800 (PST)
In-Reply-To: <FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
	<CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>
	<2925583.ItqHBfeJuJ@helios>
	<FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
Date: Tue, 26 Nov 2013 17:27:30 -0800
Message-ID: <CACRzEucp69jwmpR1KzYcOMfy-RdNym_NAPsQtYNdiFNkbNMbtQ@mail.gmail.com>
From: Todd Stellanova <tstellanova@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Wed, 27 Nov 2013 01:27:35 -0000
Content-Type: multipart/alternative; boundary=047d7bb04bc23221b504ec1e809c

--047d7bb04bc23221b504ec1e809c
Content-Type: text/plain; charset=ISO-8859-1

Tried creating a fresh build folder and giving the vm more ram but the
results are basically the same:

Allocated inode: 15264
copy_file: Could not allocate block in ext2 filesystem
debugfs: sif "libgio-2.0.so.0.3800.1" mode 0x81ed

It appears that using package_rpm successfully allocates something like
15968 inodes. When calculating the ROOTFS_SIZE it looks like package_rpm
and package_ipk are using very different values:

package_rpm:

++ du -ks
/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new/1.0-r0/rootfs
++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192 ? base_size :
8192) + 0 + *51200*); if (base_size != int(base_size)) base_size =
int(base_size + 1); base_size = base_size + 4096 - 1; base_size -=
base_size % 4096; print base_size }'

+ ROOTFS_SIZE=*458752*

package_ipk:

++ du -ks
/fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new/1.0-r0/rootfs
++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192 ? base_size :
8192) + 0); if (base_size != int(base_size)) base_size = int(base_size +
1); base_size = base_size + 4096 - 1; base_size -= base_size % 4096; print
base_size }'

+ ROOTFS_SIZE=*376832*

I'm just guessing here, but it seems like package_ipk is underestimating
ROOTFS_SIZE and subsequently populate-extfs.sh fails trying to add files to
the ext fs.  Any ideas what might cause this?

Thanks for any help!






On Mon, Nov 25, 2013 at 7:03 AM, Todd Stellanova <tstellanova@gmail.com>wrote:

> Thanks for the ideas. I'll try creating a new build folder. If that still
> shows the problem, I'm thinking this has something to do with the fact that
> I'm running the build inside a vm (inside an Ubuntu vm running on a Mac).
> It looks like the build is using debugfs...maybe it's running out of ram at
> some point and not obtaining more in the vm properly?
>
> > On Nov 25, 2013, at 5:21 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> >
> > Hi Nicolas / Todd,
> >
> >> On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
> >> On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
> >> <tstellanova@gmail.com>wrote:
> >>> It appears that copying the files to the ext3 / sdcard image is
> failing in
> >>> *populate-extfs.sh*
> >>> I see a series of these errors:
> >>>
> >>> *copy_file: Could not allocate block in ext2 filesystem*
> >>>
> >>> Any idea what might cause this?  I've verified that the initial .tar
> >>> archive and the bz2 contain the right files.
> >>
> >> can you try to create a new <build> folder (do not remove the current
> one
> >> for now) and reuse the downloads and sstate folder? i am wondering if
> there
> >> is a bug when trying to change PACKAGE_CLASSES in an existing <build>
> >> folder.
> >
> > I do this not infrequently and never hit a problem like this, so I doubt
> this
> > is the case.
> >
> > Either there is a problem in how the filesystem is being set up (block
> sizes,
> > etc.) or there is some kind of corruption occurring.
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
>

--047d7bb04bc23221b504ec1e809c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Tried creating a fresh build folder and giving th=
e vm more ram but the results are basically the same:</div><div><br></div><=
div><div>Allocated inode: 15264</div><div>copy_file: Could not allocate blo=
ck in ext2 filesystem</div>
<div>debugfs: sif &quot;libgio-2.0.so.0.3800.1&quot; mode 0x81ed</div></div=
><div><br></div><div>It appears that using package_rpm successfully allocat=
es something like 15968 inodes. When calculating the ROOTFS_SIZE it looks l=
ike package_rpm and package_ipk are using very different values:</div>
<div><br></div><div><div>package_rpm:</div><div><br></div><div>++ du -ks /f=
sl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new/=
1.0-r0/rootfs</div><div>++ awk &#39;{base_size =3D $1 * 1.3; base_size =3D =
((base_size &gt; 8192 ? base_size : 8192) + 0 + <b>51200</b>); if (base_siz=
e !=3D int(base_size)) base_size =3D int(base_size + 1); base_size =3D base=
_size + 4096 - 1; base_size -=3D base_size % 4096; print base_size }&#39;</=
div>
<div><br></div><div>+ ROOTFS_SIZE=3D<b>458752</b></div><div><br></div><div>=
package_ipk:</div><div><br></div><div>++ du -ks /fsl-community-bsp/build/tm=
p/work/wandboard_dual-poky-linux-gnueabi/todd-new/1.0-r0/rootfs</div><div>
++ awk &#39;{base_size =3D $1 * 1.3; base_size =3D ((base_size &gt; 8192 ? =
base_size : 8192) + 0); if (base_size !=3D int(base_size)) base_size =3D in=
t(base_size + 1); base_size =3D base_size + 4096 - 1; base_size -=3D base_s=
ize % 4096; print base_size }&#39;</div>
<div><br></div><div>+ ROOTFS_SIZE=3D<b>376832</b></div></div><div><br></div=
><div>I&#39;m just guessing here, but it seems like package_ipk is underest=
imating ROOTFS_SIZE and subsequently populate-extfs.sh fails trying to add =
files to the ext fs. =A0Any ideas what might cause this?</div>
<div><br></div><div>Thanks for any help!=A0</div><div><br></div><div><br></=
div><div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">On Mon, Nov 25, 2013 at 7:03 AM, Todd Stellanova=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:tstellanova@gmail.com" target=3D"_=
blank">tstellanova@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Thanks for the ideas. I&#39;ll try creating =
a new build folder. If that still shows the problem, I&#39;m thinking this =
has something to do with the fact that I&#39;m running the build inside a v=
m (inside an Ubuntu vm running on a Mac). It looks like the build is using =
debugfs...maybe it&#39;s running out of ram at some point and not obtaining=
 more in the vm properly?<br>

<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; On Nov 25, 2013, at 5:21 AM, Paul Eggleton &lt;<a href=3D"mailto:paul.=
eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Nicolas / Todd,<br>
&gt;<br>
&gt;&gt; On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:<br>
&gt;&gt; On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova<br>
&gt;&gt; &lt;<a href=3D"mailto:tstellanova@gmail.com">tstellanova@gmail.com=
</a>&gt;wrote:<br>
&gt;&gt;&gt; It appears that copying the files to the ext3 / sdcard image i=
s failing in<br>
&gt;&gt;&gt; *populate-extfs.sh*<br>
&gt;&gt;&gt; I see a series of these errors:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; *copy_file: Could not allocate block in ext2 filesystem*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Any idea what might cause this? =A0I&#39;ve verified that the =
initial .tar<br>
&gt;&gt;&gt; archive and the bz2 contain the right files.<br>
&gt;&gt;<br>
&gt;&gt; can you try to create a new &lt;build&gt; folder (do not remove th=
e current one<br>
&gt;&gt; for now) and reuse the downloads and sstate folder? i am wondering=
 if there<br>
&gt;&gt; is a bug when trying to change PACKAGE_CLASSES in an existing &lt;=
build&gt;<br>
&gt;&gt; folder.<br>
&gt;<br>
&gt; I do this not infrequently and never hit a problem like this, so I dou=
bt this<br>
&gt; is the case.<br>
&gt;<br>
&gt; Either there is a problem in how the filesystem is being set up (block=
 sizes,<br>
&gt; etc.) or there is some kind of corruption occurring.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7bb04bc23221b504ec1e809c--
