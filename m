Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5B3AE0141B
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 08:21:50 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hj3so6457320wib.12
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 08:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Yhs3AoiocJ2sSeuHTJFVyJHV1qyfjjoC0/dzYHKIczw=;
	b=B86CvQkNDzenMEK/7801FLNJ0j5E3GiczQg3wm86SAMDJ+BoBYTbUOreAa6bipIt84
	DfchZFQeZyCzQC4e1VZW6dey81zL+VWNoj9BM4pT20wx8xUaQIES/iR83pZh+0aOmrHr
	SEPH37eIDImQ98K6C4wdMSu3aPEieF1fANp5U2/dN8BOXmjlZRqEjVtIyJs/gyLIWkRr
	Y/Ad26xa8VM+YTK/j0dfjadirQ6twYEZW17woj4NuymUw7kOGtc0FZvEiIbIBlTXtGju
	aMc/MHOUJW1FzVM6KfVXZF/b6HZB/L4bZDifsVdbmnpT91GOBkCmW1g44Cwck9GG5yiK
	H6SQ==
X-Received: by 10.194.121.132 with SMTP id lk4mr18479919wjb.25.1373469709050; 
	Wed, 10 Jul 2013 08:21:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.241.233 with HTTP; Wed, 10 Jul 2013 08:21:28 -0700 (PDT)
In-Reply-To: <2373789.m1KKUZrBUI@helios>
References: <CAAGt+t10y_jTgOue2ZNdVJxwU1zhQDZqHmgVCfXecK-j9YhmLQ@mail.gmail.com>
	<2373789.m1KKUZrBUI@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 10 Jul 2013 17:21:28 +0200
Message-ID: <CAAGt+t2Ok3YR5-2PEMOQNoBAFnWV+grDd5sdyQ9q3H6k1tnVkQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: replace outdated opencv bitbake file
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
X-List-Received-Date: Wed, 10 Jul 2013 15:21:51 -0000
Content-Type: multipart/alternative; boundary=089e012292da1e2c0704e129d655

--089e012292da1e2c0704e129d655
Content-Type: text/plain; charset=ISO-8859-1

Thank You, I replaced with new one and build was successful.

How do i check whether OpenCV successfully integrated into my image? or Are
there any OpenCV libs or executables to check for? Should I check them in
rootfs.tar.bz2?

Regards,
Zafrullah Syed


On Wed, Jul 10, 2013 at 2:56 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 10 July 2013 13:52:24 Zafrullah Syed wrote:
> > How to replace outdated opencv bitbake file?
> >
> > When i build image, i get this following error, may be bitbake is unable
> to
> > fetch files. How to update these files?
> >
> > WARNING: Failed to fetch URL svn://
> > code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http,
> > attempting MIRRORS if available
> > ERROR: Fetcher failure: Fetch command failed with exit code 1, output:
> > svn: E000002: Unable to connect to a repository at URL '
> > http://code.opencv.org/svn/opencv/branches/2.4/opencv'
> > svn: E000002: Could not open the requested SVN filesystem
> >
> > ERROR: Function failed: Fetcher failure for URL: 'svn://
> > code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http'.
> > Unable to fetch URL from any source.
> > ERROR: Logfile of failure stored in:
> >
> /home/siguser/yocto2013-05-21/build/tmp/work/armv7a-vfp-neon-poky-linux-gnue
> > abi/opencv-2.4.2-r1/temp/log.do_fetch.26358 ERROR: Task 565
> >
> (/home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-suppor
> > t/opencv/ opencv_2.4.bb, do_fetch) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 2688 tasks of which 2330 didn't need to be
> > rerun and 1 failed.
> > Waiting for 0 running tasks to finish:
> >
> > Summary: 1 task failed:
> >
> >
> /home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-support
> > /opencv/ opencv_2.4.bb, do_fetch
> > Summary: There were 2 WARNING messages shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
>
> This opencv recipe is from meta-oe, which is not something the Yocto
> Project
> maintains. In any case it looks like you're using an older version of
> meta-oe
> because it has already been updated not to use the svn repository:
>
>
> http://cgit.openembedded.org/meta-openembedded/log/meta-oe/recipes-support/opencv/opencv_2.4.3.bb
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Regards,
Zafrullah Syed

--089e012292da1e2c0704e129d655
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank You, I replaced with new one and build was successfu=
l.=A0<div><br></div><div>How do i check whether OpenCV successfully integra=
ted into my image? or Are there any OpenCV libs or executables to check for=
? Should I check them in rootfs.tar.bz2?</div>

<div><br></div><div>Regards,</div><div>Zafrullah Syed</div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jul 10, 2013 at=
 2:56 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.egglet=
on@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 10 July 2013 =
13:52:24 Zafrullah Syed wrote:<br>
&gt; How to replace outdated opencv bitbake file?<br>
&gt;<br>
&gt; When i build image, i get this following error, may be bitbake is unab=
le to<br>
&gt; fetch files. How to update these files?<br>
&gt;<br>
&gt; WARNING: Failed to fetch URL svn://<br>
&gt; <a href=3D"http://code.opencv.org/svn/opencv/branches/2.4;module=3Dope=
ncv;protocol=3Dhttp" target=3D"_blank">code.opencv.org/svn/opencv/branches/=
2.4;module=3Dopencv;protocol=3Dhttp</a>,<br>
&gt; attempting MIRRORS if available<br>
&gt; ERROR: Fetcher failure: Fetch command failed with exit code 1, output:=
<br>
&gt; svn: E000002: Unable to connect to a repository at URL &#39;<br>
&gt; <a href=3D"http://code.opencv.org/svn/opencv/branches/2.4/opencv" targ=
et=3D"_blank">http://code.opencv.org/svn/opencv/branches/2.4/opencv</a>&#39=
;<br>
&gt; svn: E000002: Could not open the requested SVN filesystem<br>
&gt;<br>
&gt; ERROR: Function failed: Fetcher failure for URL: &#39;svn://<br>
&gt; <a href=3D"http://code.opencv.org/svn/opencv/branches/2.4;module=3Dope=
ncv;protocol=3Dhttp" target=3D"_blank">code.opencv.org/svn/opencv/branches/=
2.4;module=3Dopencv;protocol=3Dhttp</a>&#39;.<br>
&gt; Unable to fetch URL from any source.<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/siguser/yocto2013-05-21/build/tmp/work/armv7a-vfp-neon-poky-linu=
x-gnue<br>
&gt; abi/opencv-2.4.2-r1/temp/log.do_fetch.26358 ERROR: Task 565<br>
&gt; (/home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-=
suppor<br>
</div>&gt; t/opencv/ <a href=3D"http://opencv_2.4.bb" target=3D"_blank">ope=
ncv_2.4.bb</a>, do_fetch) failed with exit code &#39;1&#39;<br>
<div class=3D"im">&gt; NOTE: Tasks Summary: Attempted 2688 tasks of which 2=
330 didn&#39;t need to be<br>
&gt; rerun and 1 failed.<br>
&gt; Waiting for 0 running tasks to finish:<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;<br>
&gt; /home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-s=
upport<br>
</div>&gt; /opencv/ <a href=3D"http://opencv_2.4.bb" target=3D"_blank">open=
cv_2.4.bb</a>, do_fetch<br>
<div class=3D"im">&gt; Summary: There were 2 WARNING messages shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
<br>
</div>This opencv recipe is from meta-oe, which is not something the Yocto =
Project<br>
maintains. In any case it looks like you&#39;re using an older version of m=
eta-oe<br>
because it has already been updated not to use the svn repository:<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/log/meta-oe/recip=
es-support/opencv/opencv_2.4.3.bb" target=3D"_blank">http://cgit.openembedd=
ed.org/meta-openembedded/log/meta-oe/recipes-support/opencv/opencv_2.4.3.bb=
</a><br>


<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--089e012292da1e2c0704e129d655--
