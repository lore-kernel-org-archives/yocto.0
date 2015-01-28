Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19467E0086E; Wed, 28 Jan 2015 01:56:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 672DDE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 01:56:33 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id k11so17358919wes.2
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 01:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=6zqk3naOt1e4zsSL4Lk/CbuKv+LYtFuc0PHT2+0B0ao=;
	b=Ut45NAXXyuemTeJv6+a/91PZjABvTO51b81o+VYAkQFYaT2WiwmfCuy3fIhHlzBVMe
	MAHK4ibkRHiDVybIAdtHJnlH3y0tRdUbyeBeVl2xz0qfbpyICwx0SMg3OByPjre2S3oQ
	G3nBp1eExUHiaj5MU3Ow4Qk9wU77fEGVe5XbtLKpsOIr5v30s7yyt/WYYuyov+MMBsrY
	yb/2qbSdMHpqO3eBh5eCgZcvEynTMOjgk7IMhsmwsIAZQet+ulr0yeVfzRhU1tIq36KX
	ZrKaLPUEf2XIZK6Z546rBSclJ6HBcAmVDQ7pqT3LsVivO+1/r/6LFrtd3F/zGKdNmd7n
	Gr6g==
X-Received: by 10.194.189.138 with SMTP id gi10mr5757786wjc.86.1422438993198; 
	Wed, 28 Jan 2015 01:56:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Wed, 28 Jan 2015 01:56:11 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 28 Jan 2015 10:56:11 +0100
Message-ID: <CAEfap_BLswdcShw-CYsNUu_W3jAhy-K8OrmEmAHWJtWW_jLPKw@mail.gmail.com>
To: yocto@yoctoproject.org, peterengcomau001@adam.com.au
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Wed, 28 Jan 2015 09:56:53 -0000
Content-Type: multipart/alternative; boundary=047d7bf0d326e78508050db36261

--047d7bf0d326e78508050db36261
Content-Type: text/plain; charset=UTF-8

Hi Lachlan,

In case you have not solved the problem yet.
Look at the recipe of qt3d, once you checked it out of git. There is a
line:

QT_MODULE_BRANCH = "master"

just change it to "dev" and it should work. It is already corrected in the
upstream of meta-qt5, but in dizzy it is still "master". If you look at the
gitorious of qt you will find this
SRCDEV="8a9723d7420829a2ba0141a9f7d8dc8cd11d8331" in dev" branch.
That is, at least, what i figured out.

Hope that will help.

best regards
simon :-)

>
> Message: 7
> Date: Tue, 27 Jan 2015 01:32:43 +1030
> From: peterengcomau001@adam.com.au
> To: yocto@yoctoproject.org
> Subject: [yocto] meta-qt5 problem in yocto 1.7
> Message-ID:
>         <f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au>
> Content-Type: text/plain; charset="utf-8"
>
> I have just downloaded yocto poky 1.7 and try to build an image. I get
> teh follwing problems with fetching qt5 source:
> Summary: 5 tasks failed:
> ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
> do_fetch
> ?
> /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
> do_fetch
> ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
> do_fetch
> ?
> /home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/
> gstreamer1.0-plugins-hantro_1.0.bb,
> do_configure
> ?
> /home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/obp-utils_git.bb
> ,
> do_install
>
> I presume the last two problems(do_configure & do_install)? result
> from dependencies on the previous three failed fetches.
>
> The more complete error code for teh first three errors is:
> WARNING: Failed to fetch URL
> git://qt.gitorious.org/qt/qt3d.git;branch=master, attempting MIRRORS
> if available
> ERROR: Fetcher failure: Unable to find revision
> 8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even from
> upstream
> ERROR: Function failed: Fetcher failure for URL:
> 'git://qt.gitorious.org/qt/qt3d.git;branch=master'. Unable to fetch
> URL from any source.
> ERROR: Logfile of failure stored in:
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch.29304
> ERROR: Task 1993
> (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
> do_fetch) failed with exit code '1'
> WARNING: Failed to fetch URL
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz
> ,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, no
> output
> ERROR: Function failed: Fetcher failure for URL:
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz
> '.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762
> ERROR: Task 535
> (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
> do_fetch) failed with exit code '1'
> WARNING: Failed to fetch URL
> http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2,
> attempting MIRRORS if available
> WARNING: Failed to fetch URL
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> ,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, no
> output
> ERROR: Function failed: Fetcher failure for URL:
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> '.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587
> ERROR: Task 675
> (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
> do_fetch) failed with exit code '1'
> NOTE: validating kernel config, see log.do_kernel_configcheck for
> details
>
> If I manually download the one of the files, e.g.? :
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> This works fine.
>
> Can anyone suggest what I can look fro to determine the problem. I
> have tried this a number of time over 24 hours and get the exact same
> failures.
>
> Thank you for any suggestions moving forward.
>
> Regards
> Lachlan
>
> ---- Message sent via Adam Internet WebMail - http://www.adam.com.au/
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150127/7d948cb1/attachment.html
> >
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 52, Issue 86
> *************************************
>

--047d7bf0d326e78508050db36261
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lachlan,<br><br></div><div>In case you have not so=
lved the problem yet. <br></div><div>Look at the recipe of qt3d, once you c=
hecked it out of git. There is a line: <br><br>QT_MODULE_BRANCH =3D &quot;m=
aster&quot;<br><br></div><div>just change it to &quot;dev&quot; and it shou=
ld work. It is already corrected in the upstream of meta-qt5, but in dizzy =
it is still &quot;master&quot;. If you look at the gitorious of qt you will=
 find this SRCDEV=3D&quot;8a9723d7420829a2ba0141a9f7d8dc8cd11d8331&quot; in=
 dev&quot; branch. <br>That is, at least, what i figured out. <br></div><di=
v><br>Hope that will help.<br></div><br>best regards<br>simon :-)<br><div><=
div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Message: 7<br>
Date: Tue, 27 Jan 2015 01:32:43 +1030<br>
From: <a href=3D"mailto:peterengcomau001@adam.com.au">peterengcomau001@adam=
.com.au</a><br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] meta-qt5 problem in yocto 1.7<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:f902a9d11fd7326c8f53a3fad=
fde295f6231fbcb@webmail.adam.com.au">f902a9d11fd7326c8f53a3fadfde295f6231fb=
cb@webmail.adam.com.au</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
I have just downloaded yocto poky 1.7 and try to build an image. I get<br>
teh follwing problems with fetching qt5 source:<br>
Summary: 5 tasks failed:<br>
? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt3d_git=
.bb" target=3D"_blank">qt3d_git.bb</a>,<br>
do_fetch<br>
?<br>
/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtmultimed=
ia_5.3.2.bb" target=3D"_blank">qtmultimedia_5.3.2.bb</a>,<br>
do_fetch<br>
? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtwebkit=
_5.3.2.bb" target=3D"_blank">qtwebkit_5.3.2.bb</a>,<br>
do_fetch<br>
?<br>
/home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/<=
a href=3D"http://gstreamer1.0-plugins-hantro_1.0.bb" target=3D"_blank">gstr=
eamer1.0-plugins-hantro_1.0.bb</a>,<br>
do_configure<br>
?<br>
/home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/<a href=3D"http:/=
/obp-utils_git.bb" target=3D"_blank">obp-utils_git.bb</a>,<br>
do_install<br>
<br>
I presume the last two problems(do_configure &amp; do_install)? result<br>
from dependencies on the previous three failed fetches.<br>
<br>
The more complete error code for teh first three errors is:<br>
WARNING: Failed to fetch URL<br>
git://<a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster" targe=
t=3D"_blank">qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a>, attempting M=
IRRORS<br>
if available<br>
ERROR: Fetcher failure: Unable to find revision<br>
8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even from<br>
upstream<br>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;git://<a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster" =
target=3D"_blank">qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a>&#39;. Un=
able to fetch<br>
URL from any source.<br>
ERROR: Logfile of failure stored in:<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch.293=
04<br>
ERROR: Task 1993<br>
(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt3d_git.=
bb" target=3D"_blank">qt3d_git.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
WARNING: Failed to fetch URL<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtmultimedia-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:/=
/download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultim=
edia-opensource-src-5.3.2.tar.xz</a>,<br>
attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br>
output<br>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz" target=3D"_blank">h=
ttp://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtm=
ultimedia-opensource-src-5.3.2.tar.xz</a>&#39;.<br>
Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in:<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762<br>
ERROR: Task 535<br>
(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtmultime=
dia_5.3.2.bb" target=3D"_blank">qtmultimedia_5.3.2.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
WARNING: Failed to fetch URL<br>
<a href=3D"http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2" =
target=3D"_blank">http://www.apache.org/dist/subversion/subversion-1.8.9.ta=
r.bz2</a>,<br>
attempting MIRRORS if available<br>
WARNING: Failed to fetch URL<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http://dow=
nload.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-ope=
nsource-src-5.3.2.tar.xz</a>,<br>
attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br>
output<br>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:=
//download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebki=
t-opensource-src-5.3.2.tar.xz</a>&#39;.<br>
Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in:<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587<br>
ERROR: Task 675<br>
(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtwebkit_=
5.3.2.bb" target=3D"_blank">qtwebkit_5.3.2.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
NOTE: validating kernel config, see log.do_kernel_configcheck for<br>
details<br>
<br>
If I manually download the one of the files, e.g.? :<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:=
//download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebki=
t-opensource-src-5.3.2.tar.xz</a><br>
This works fine.<br>
<br>
Can anyone suggest what I can look fro to determine the problem. I<br>
have tried this a number of time over 24 hours and get the exact same<br>
failures.<br>
<br>
Thank you for any suggestions moving forward.<br>
<br>
Regards<br>
Lachlan<br>
<br>
---- Message sent via Adam Internet WebMail - <a href=3D"http://www.adam.co=
m.au/" target=3D"_blank">http://www.adam.com.au/</a><br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150127/7d948cb1/attachment.html" target=3D"_blank">http://lists.yoctop=
roject.org/pipermail/yocto/attachments/20150127/7d948cb1/attachment.html</a=
>&gt;<br>
<br>
------------------------------<br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 52, Issue 86<br>
*************************************<br>
</font></span></blockquote></div><br></div></div></div></div>

--047d7bf0d326e78508050db36261--
