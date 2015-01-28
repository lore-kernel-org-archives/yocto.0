Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DE26E00872; Wed, 28 Jan 2015 10:32:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C0DE00827
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 10:31:57 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id u56so22519807wes.0
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 10:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=rmbmyEZtEBC9/EnGv8O/W/l9pWOomHWV3AjESKsOSgE=;
	b=rXSRsZfsiNsa30H3vTFP5NFvyptdA0hZQl/hMzEBlJteOEbqjfE/Cy6wj6sLsFgv5K
	J6gABsRWOyVLYOYJ1uVQcko6Dcw2b7Zt72Opiw0+T8/KKWXMh5i/EcY07mraFTNjysLk
	ISttsfMsszZxi07M9ncjYvgVFjNL1LrLFqlrw5qzD8VeY+zIP9E6WvqHuoTS0nsbHB+9
	bXb3h/KyRhyDEf+v+SNpZVOFtS+umJtXv0CKMxO7mjwLr4HQKaXfuCqVAfJRD8z2KviC
	lg7v67Qe2o+cNpbNCKNqrJ/cMXZZTVTOvuOeOERjgZZbeJ3e6UCDvO+pFKCa/rNKnmac
	2Z4Q==
X-Received: by 10.180.77.79 with SMTP id q15mr9823414wiw.19.1422469916708;
	Wed, 28 Jan 2015 10:31:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Wed, 28 Jan 2015 10:31:35 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 28 Jan 2015 19:31:35 +0100
Message-ID: <CAEfap_A5KbwEFkXCiz8uiGiH3_F2FBWSOUzwFFnfg-c+CeUWbA@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Jan 2015 18:32:04 -0000
Content-Type: multipart/alternative; boundary=f46d0438906316d634050dba9678

--f46d0438906316d634050dba9678
Content-Type: text/plain; charset=UTF-8

Hi Lachlan,

There is a redirection, yes, and this should not be a problem, as far as
I'm concerned. Why it does not work for those particular recipes of yours,
i have no clue. BUT, what I would do, is to bitbake <recipe-by-recipe>
trying to narrow down the problem.
When you still have problems when bitbaking single recipes, you might try
to override the SRC_URI from qt5-{PV}.inc (in my case qt5-5.3.2.inc, yours
might be different)

Whether those are reasonalble advices, well, I am not 100% sure, but maybe
Martin Jansa would help here. I also have some problems with generating
meta-toolchain-qt5, which I already posted here.


@Martin: i was so bold to email you directly. I apoligize if this is not
welcome, please correct me and i will not do this again.

best regards
simon :-)

  Message: 7
>  Date: Tue, 27 Jan 2015 01:32:43 +1030
>  From: peterengcomau001@adam.com.au [4]
>  To: yocto@yoctoproject.org [5]
>  Subject: [yocto] meta-qt5 problem in yocto 1.7
>  Message-ID:
>  ? ? ? ?
>  Content-Type: text/plain; charset="utf-8"
>
>  I have just downloaded yocto poky 1.7 and try to build an image. I
> get
>  teh follwing problems with fetching qt5 source:
>  Summary: 5 tasks failed:
>  ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
>  do_fetch
>  ?
>
> /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
>  do_fetch
>  ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
>  do_fetch
>  ?
>
> /home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/
> gstreamer1.0-plugins-hantro_1.0.bb,
>  do_configure
>  ?
>
> /home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/obp-utils_git.bb
> ,
>  do_install
>
>  I presume the last two problems(do_configure & do_install)? result
>  from dependencies on the previous three failed fetches.
>
>  The more complete error code for teh first three errors is:
>  WARNING: Failed to fetch URL
>  git://qt.gitorious.org/qt/qt3d.git;branch=master [7], attempting
> MIRRORS
>  if available
>  ERROR: Fetcher failure: Unable to find revision
>  8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even from
>  upstream
>  ERROR: Function failed: Fetcher failure for URL:
>  'git://qt.gitorious.org/qt/qt3d.git;branch=master [8]'. Unable to
> fetch
>  URL from any source.
>  ERROR: Logfile of failure stored in:
>
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch.29304
>  ERROR: Task 1993
>  (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.bb,
>  do_fetch) failed with exit code '1'
>  WARNING: Failed to fetch URL
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz
> [9],
>  attempting MIRRORS if available
>  ERROR: Fetcher failure: Fetch command failed with exit code 4, no
>  output
>  ERROR: Function failed: Fetcher failure for URL:
>
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz
> [10]'.
>  Unable to fetch URL from any source.
>  ERROR: Logfile of failure stored in:
>
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762
>  ERROR: Task 535
>
> (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,
>  do_fetch) failed with exit code '1'
>  WARNING: Failed to fetch URL
> http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2 [11],
>  attempting MIRRORS if available
>  WARNING: Failed to fetch URL
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [12],
>  attempting MIRRORS if available
>  ERROR: Fetcher failure: Fetch command failed with exit code 4, no
>  output
>  ERROR: Function failed: Fetcher failure for URL:
>
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [13]'.
>  Unable to fetch URL from any source.
>  ERROR: Logfile of failure stored in:
>
>
> /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587
>  ERROR: Task 675
>  (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,
>  do_fetch) failed with exit code '1'
>  NOTE: validating kernel config, see log.do_kernel_configcheck for
>  details
>
>  If I manually download the one of the files, e.g.? :
>
> '
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [14]
>  This works fine.
>
>  Can anyone suggest what I can look fro to determine the problem. I
>  have tried this a number of time over 24 hours and get the exact
> same
>  failures.
>
>  Thank you for any suggestions moving forward.
>
>  Regards
>  Lachlan
>
>  ---- Message sent via Adam Internet WebMail -
> http://www.adamcom.au/ [15]
>  -------------- next part --------------
>  An HTML attachment was scrubbed...
>  URL:
>
>  ------------------------------
>
>  --
>  _______________________________________________
>  yocto mailing list
> yocto@yoctoproject.org [17]
> https://lists.yoctoproject.org/listinfo/yocto [18]
>
>  End of yocto Digest, Vol 52, Issue 86
>  *************************************
>
>   ---- Message sent via Adam Internet WebMail -
> http://www.adam.com.au/
>
> Links:
> ------
> [1]
>
> http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz
> [2]
>
> http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tarxz
> [3]
>
> http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz
> [4] mailto:peterengcomau001@adam.com.au
> [5] mailto:yocto@yoctoproject.org
> [6]
> mailto:f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au
> [7] http://qt.gitorious.org/qt/qt3d.git;branch=master
> [8] http://qt.gitorious.org/qt/qt3d.git;branch=master
> [9]
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2tar.xz
> [10]
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz
> [11] http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2
> [12]
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [13]
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [14]
>
> http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz
> [15] http://www.adam.com.au/
> [16]
>
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150127/7d948cb1/attachment.html
> [17] mailto:yocto@yoctoproject.org
> [18] https://lists.yoctoproject.org/listinfo/yocto
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150129/b8546355/attachment.html
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
> End of yocto Digest, Vol 52, Issue 111
> **************************************
>

--f46d0438906316d634050dba9678
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Lachlan, <br><br></div><div>There is a redire=
ction, yes, and this should not be a problem, as far as I&#39;m concerned. =
Why it does not work for those particular recipes of yours, i have no clue.=
 BUT, what I would do, is to bitbake &lt;recipe-by-recipe&gt; trying to nar=
row down the problem. <br></div><div>When you still have problems when bitb=
aking single recipes, you might try to override the SRC_URI from qt5-{PV}.i=
nc (in my case qt5-5.3.2.inc, yours might be different)<br></div><div><br>W=
hether those are reasonalble advices, well, I am not 100% sure, but maybe M=
artin Jansa would help here. I also have some problems with generating meta=
-toolchain-qt5, which I already posted here.<br><br></div><div><br></div><d=
iv>@Martin: i was so bold to email you directly. I apoligize if this is not=
 welcome, please correct me and i will not do this again. <br></div><div><b=
r></div>best regards<br></div>simon :-)<br><div><div><div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">=C2=A0
Message: 7<br>
=C2=A0Date: Tue, 27 Jan 2015 01:32:43 +1030<br>
=C2=A0From: <a href=3D"mailto:peterengcomau001@adam.com.au">peterengcomau00=
1@adam.com.au</a> [4]<br>
=C2=A0To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a> [5]<br>
=C2=A0Subject: [yocto] meta-qt5 problem in yocto 1.7<br>
=C2=A0Message-ID:<br>
=C2=A0? ? ? ?<br>
=C2=A0Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
=C2=A0I have just downloaded yocto poky 1.7 and try to build an image. I<br=
>
get<br>
=C2=A0teh follwing problems with fetching qt5 source:<br>
=C2=A0Summary: 5 tasks failed:<br>
=C2=A0? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt=
3d_git.bb" target=3D"_blank">qt3d_git.bb</a>,<br>
=C2=A0do_fetch<br>
=C2=A0?<br>
<br>
/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtmultimed=
ia_5.3.2.bb" target=3D"_blank">qtmultimedia_5.3.2.bb</a>,<br>
=C2=A0do_fetch<br>
=C2=A0? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt=
webkit_5.3.2.bb" target=3D"_blank">qtwebkit_5.3.2.bb</a>,<br>
=C2=A0do_fetch<br>
=C2=A0?<br>
<br>
/home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/<=
a href=3D"http://gstreamer1.0-plugins-hantro_1.0.bb" target=3D"_blank">gstr=
eamer1.0-plugins-hantro_1.0.bb</a>,<br>
=C2=A0do_configure<br>
=C2=A0?<br>
<br>
/home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/<a href=3D"http:/=
/obp-utils_git.bb" target=3D"_blank">obp-utils_git.bb</a>,<br>
=C2=A0do_install<br>
<br>
=C2=A0I presume the last two problems(do_configure &amp; do_install)? resul=
t<br>
=C2=A0from dependencies on the previous three failed fetches.<br>
<br>
=C2=A0The more complete error code for teh first three errors is:<br>
=C2=A0WARNING: Failed to fetch URL<br>
=C2=A0git://<a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster"=
 target=3D"_blank">qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a> [7], at=
tempting<br>
MIRRORS<br>
=C2=A0if available<br>
=C2=A0ERROR: Fetcher failure: Unable to find revision<br>
=C2=A08a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even from<b=
r>
=C2=A0upstream<br>
=C2=A0ERROR: Function failed: Fetcher failure for URL:<br>
=C2=A0&#39;git://<a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dma=
ster" target=3D"_blank">qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a> [8=
]&#39;. Unable to<br>
fetch<br>
=C2=A0URL from any source.<br>
=C2=A0ERROR: Logfile of failure stored in:<br>
<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch.293=
04<br>
=C2=A0ERROR: Task 1993<br>
=C2=A0(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt3=
d_git.bb" target=3D"_blank">qt3d_git.bb</a>,<br>
=C2=A0do_fetch) failed with exit code &#39;1&#39;<br>
=C2=A0WARNING: Failed to fetch URL<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtmultimedia-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:/=
/download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultim=
edia-opensource-src-5.3.2.tar.xz</a><br>
[9],<br>
=C2=A0attempting MIRRORS if available<br>
=C2=A0ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br>
=C2=A0output<br>
=C2=A0ERROR: Function failed: Fetcher failure for URL:<br>
<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz" target=3D"_blank">h=
ttp://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtm=
ultimedia-opensource-src-5.3.2.tar.xz</a><br>
[10]&#39;.<br>
=C2=A0Unable to fetch URL from any source.<br>
=C2=A0ERROR: Logfile of failure stored in:<br>
<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762<br>
=C2=A0ERROR: Task 535<br>
<br>
(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtmultime=
dia_5.3.2.bb" target=3D"_blank">qtmultimedia_5.3.2.bb</a>,<br>
=C2=A0do_fetch) failed with exit code &#39;1&#39;<br>
=C2=A0WARNING: Failed to fetch URL<br>
<a href=3D"http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2" =
target=3D"_blank">http://www.apache.org/dist/subversion/subversion-1.8.9.ta=
r.bz2</a> [11],<br>
=C2=A0attempting MIRRORS if available<br>
=C2=A0WARNING: Failed to fetch URL<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http://dow=
nload.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-ope=
nsource-src-5.3.2.tar.xz</a><br>
[12],<br>
=C2=A0attempting MIRRORS if available<br>
=C2=A0ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br>
=C2=A0output<br>
=C2=A0ERROR: Function failed: Fetcher failure for URL:<br>
<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:=
//download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebki=
t-opensource-src-5.3.2.tar.xz</a><br>
[13]&#39;.<br>
=C2=A0Unable to fetch URL from any source.<br>
=C2=A0ERROR: Logfile of failure stored in:<br>
<br>
/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnu=
eabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587<br>
=C2=A0ERROR: Task 675<br>
=C2=A0(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtw=
ebkit_5.3.2.bb" target=3D"_blank">qtwebkit_5.3.2.bb</a>,<br>
=C2=A0do_fetch) failed with exit code &#39;1&#39;<br>
=C2=A0NOTE: validating kernel config, see log.do_kernel_configcheck for<br>
=C2=A0details<br>
<br>
=C2=A0If I manually download the one of the files, e.g.? :<br>
<br>
&#39;<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3=
.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:=
//download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebki=
t-opensource-src-5.3.2.tar.xz</a><br>
[14]<br>
=C2=A0This works fine.<br>
<br>
=C2=A0Can anyone suggest what I can look fro to determine the problem. I<br=
>
=C2=A0have tried this a number of time over 24 hours and get the exact<br>
same<br>
=C2=A0failures.<br>
<br>
=C2=A0Thank you for any suggestions moving forward.<br>
<br>
=C2=A0Regards<br>
=C2=A0Lachlan<br>
<br>
=C2=A0---- Message sent via Adam Internet WebMail -<br>
<a href=3D"http://www.adamcom.au/" target=3D"_blank">http://www.adamcom.au/=
</a> [15]<br>
=C2=A0-------------- next part --------------<br>
=C2=A0An HTML attachment was scrubbed...<br>
=C2=A0URL:<br>
<br>
=C2=A0------------------------------<br>
<br>
=C2=A0--<br>
=C2=A0_______________________________________________<br>
=C2=A0yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> [17]<b=
r>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a> [18]<br>
<br>
=C2=A0End of yocto Digest, Vol 52, Issue 86<br>
=C2=A0*************************************<br>
<br>
=C2=A0 ---- Message sent via Adam Internet WebMail -<br>
<a href=3D"http://www.adam.com.au/" target=3D"_blank">http://www.adam.com.a=
u/</a><br>
<br>
Links:<br>
------<br>
[1]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.4/5.4.0/su=
bmodules/qtbase-opensource-src-5.4.0.tar.xz" target=3D"_blank">http://downl=
oad.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensou=
rce-src-5.4.0.tar.xz</a><br>
[2]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.4/5.4.0/su=
bmodules/qtbase-opensource-src-5.4.0.tarxz" target=3D"_blank">http://downlo=
ad.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensour=
ce-src-5.4.0.tarxz</a><br>
[3]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.4/5.4.0/su=
bmodules/qtbase-opensource-src-5.4.0.tar.xz" target=3D"_blank">http://downl=
oad.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensou=
rce-src-5.4.0.tar.xz</a><br>
[4] mailto:<a href=3D"mailto:peterengcomau001@adam.com.au">peterengcomau001=
@adam.com.au</a><br>
[5] mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
[6]<br>
mailto:<a href=3D"mailto:f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.a=
dam.com.au">f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au</a=
><br>
[7] <a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster" target=
=3D"_blank">http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a><br>
[8] <a href=3D"http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster" target=
=3D"_blank">http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster</a><br>
[9]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtmultimedia-opensource-src-5.3.2tar.xz" target=3D"_blank">http://=
download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultime=
dia-opensource-src-5.3.2tar.xz</a><br>
[10]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtmultimedia-opensource-src-5.3.2.tar.xz" target=3D"_blank">http:/=
/download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultim=
edia-opensource-src-5.3.2.tar.xz</a><br>
[11] <a href=3D"http://www.apache.org/dist/subversion/subversion-1.8.9.tar.=
bz2" target=3D"_blank">http://www.apache.org/dist/subversion/subversion-1.8=
.9.tar.bz2</a><br>
[12]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http://dow=
nload.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-ope=
nsource-src-5.3.2.tar.xz</a><br>
[13]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http://dow=
nload.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-ope=
nsource-src-5.3.2.tar.xz</a><br>
[14]<br>
<a href=3D"http://download.qt-project.org/official_releases/qt/5.3/5.3.2/su=
bmodules/qtwebkit-opensource-src-5.3.2.tar.xz" target=3D"_blank">http://dow=
nload.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-ope=
nsource-src-5.3.2.tar.xz</a><br>
[15] <a href=3D"http://www.adam.com.au/" target=3D"_blank">http://www.adam.=
com.au/</a><br>
[16]<br>
<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/201501=
27/7d948cb1/attachment.html" target=3D"_blank">http://lists.yoctoproject.or=
g/pipermail/yocto/attachments/20150127/7d948cb1/attachment.html</a><br>
[17] mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.or=
g</a><br>
[18] <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150129/b8546355/attachment.html" target=3D"_blank">http://lists.yoctop=
roject.org/pipermail/yocto/attachments/20150129/b8546355/attachment.html</a=
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
End of yocto Digest, Vol 52, Issue 111<br>
**************************************<br>
</font></span></blockquote></div><br></div></div></div></div></div>

--f46d0438906316d634050dba9678--
