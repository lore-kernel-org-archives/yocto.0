Subject: Re: NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: yocto@lists.yoctoproject.org
From: baranarman@gmail.com
X-Originating-Location: Ankara, TR (213.14.123.114)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 16 Aug 2020 23:50:51 -0700
References: <3944.1595511409254609404@lists.yoctoproject.org>
In-Reply-To: <3944.1595511409254609404@lists.yoctoproject.org>
Message-ID: <7400.1597647051189438797@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VVdhmjQQA6PUP8WaU5fm"

--VVdhmjQQA6PUP8WaU5fm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I am still stuck with this issue,
I understood that the autogen.sh is the point where it wants to update the=
 common submodule.

*Even if BB_NO_NETWORK is set it still tries to access the* https://anongi=
t.freedesktop.org/git/gstreamer/common.git ( https://anongit.freedesktop.or=
g/git/gstreamer/common.git )
Which I think is quite surprising!

But about the following lines, I don't know how to do the described thing.

>=20
> Usually it was failing in do_configure when building without access to
> this git repo, *we were adding "common" git repo to SRC_URI explicitly t=
o
> make sure that the right revision is always there with the gstreamer
> sources and managed with bitbake fetcher (so that it's used from downloa=
ds
> directory instead of the fetch from internet every single time gst*
> recipes are rebuilt for whatever reason)*.

* What should i copy to my local? the content of https://anongit.freedeskt=
op.org/git/gstreamer/common.git ??? shall i copy one file or complete direc=
tory
* And then in which file shall i add this url? /home/aselsan/imx-yocto-bsp=
/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0_1.12.2.bb ? or=
 in a new recipe
* And is it enough just to add the path to SRC_URI or shall i also add the=
 file also ?
Regards,

--VVdhmjQQA6PUP8WaU5fm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,<br /><br />I am still stuck with this issue,&nbsp;<br />I unders=
tood that the autogen.sh is the point where it wants to update the common s=
ubmodule.&nbsp;<br /><br /><strong>Even if BB_NO_NETWORK is set it still tr=
ies to access the</strong> <a href=3D"https://anongit.freedesktop.org/git/g=
streamer/common.git" target=3D"_blank" rel=3D"noopener">https://anongit.fre=
edesktop.org/git/gstreamer/common.git&nbsp;</a><br />Which I think is quite=
 surprising!<br /><br />But about the following lines, I don't know how to =
do the described thing.&nbsp;<br />
<blockquote>Usually it was failing in do_configure when building without a=
ccess to this git repo, <strong>we were adding "common" git repo to SRC_URI=
 explicitly to make sure that the right revision is always there with the g=
streamer sources and managed with bitbake fetcher (so that it's used from d=
ownloads directory instead of the fetch from internet every single time gst=
* recipes are rebuilt for whatever reason)</strong>.</blockquote>
<ol>
<li>What should i copy to my local? the content of <a href=3D"https://anon=
git.freedesktop.org/git/gstreamer/common.git" target=3D"_blank" rel=3D"noop=
ener">https://anongit.freedesktop.org/git/gstreamer/common.git</a>&nbsp;???=
 shall i copy one file or complete directory</li>
<li>And then in which file shall i add this url? /home/aselsan/imx-yocto-b=
sp/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0_1.12.2.bb ? =
or in a new recipe</li>
<li>And is it enough just to add the path to SRC_URI or shall i also add t=
he file also ?</li>
</ol>
Regards,

--VVdhmjQQA6PUP8WaU5fm--
