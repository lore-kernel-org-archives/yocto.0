Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31208E00509; Tue,  1 Nov 2016 13:17:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD10DE0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 13:17:52 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id 12so138173277uas.2
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 13:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CrvigkMeXnERctL/HWbfQtVJUChhZVfMJTAJPKfxB3s=;
	b=btBcs1RyfAiFuOnUAWQpArsMUAYKr534bHU17Ib+jxVvQ/knuBaEV3hXJmGycuPHjR
	VIoHSYYRX/eSi1g85kS3kpH1lUyctGAe+davdG2mo2oaZDZkg3XPkBwvOLIMAvLnjd+6
	eDavgfXqw/y16l8kucCbHbMBJiUJDEPh10C/IAk+1YfYcxQnTHiDTqU18QUsaiJCrrj9
	+1wSjz7Hs7kweLIkG3jY00NTc0ikOkyzCEw6F9rx8Evf09dYplh8kq7pVOaeffjfZkF2
	nhToSy5ULiPL5+1jeIJKGv9rgeBCgPKF5PQuiROv4o7JxkzwOH5wfC7WhUme5SDiD3SN
	3hPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CrvigkMeXnERctL/HWbfQtVJUChhZVfMJTAJPKfxB3s=;
	b=O8AxtCCV6Q9tgL24jhUDgvAAAisbG97HuC/v4lGNFBX4D+/KSjWoz13BGECpxdjyEV
	6lLoYvzsb+RcgCgc4SsT7qFzwVsrwmPHsVAaTeDTec13wjFAu5at2JgLVhiHWFJ1Dnhz
	FhpIhHGzgmctgybJoTZ6Y5vW2p8fWT/LeSAJojnWdbkuUG9uaqJhq+2Jg2fRyYepaLlK
	2ZeG8CANe62nOacekK6Jo65gpEettigkCqjCb+gybY8xa2Ttt6LAigpJ1T/hvTfk4sjD
	7EY/U/u29RIYpu1bQsQiKseE8Vpuqtcizvu1SSqZlNXDXqZSlCsy+UG37P1rYL1unun4
	vMNQ==
X-Gm-Message-State: ABUngvfuF0w+fObmoIlv3f9MWEb6+1YqkSKo2bNC49FZzN96ie60G1A0MfqqcO/9ae3/GrlGgmrMRP+DM/JbMA==
X-Received: by 10.176.2.110 with SMTP id 101mr9011802uas.8.1478031471626; Tue,
	01 Nov 2016 13:17:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.68 with HTTP; Tue, 1 Nov 2016 13:17:50 -0700 (PDT)
In-Reply-To: <3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
	<3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 1 Nov 2016 18:17:50 -0200
Message-ID: <CAF3SDA4-sC=YKc_oCWeDoPjyn6krPQWTSXgbmgqgw+pn3CrKdQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 20:17:56 -0000
Content-Type: multipart/alternative; boundary=001a113d1ad0d5504e05404304ff

--001a113d1ad0d5504e05404304ff
Content-Type: text/plain; charset=UTF-8

I have an example of a recipe exploding a tar here:
https://gist.github.com/gkos/02eccb8e1e02312327aa6db6cdc9d501
The tar is used as a source. So the bitbake explodes it to ${WORKDIR} and I
simply copy it to /opt
I hope that this helps :)

Regards,

2016-11-01 18:00 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Tue, 01 Nov 2016 18:45:02 Swapna.Gurumani@microchip.com wrote:
> > Every step I take close, I take 2 back :(
> > My bb now looks like the one attached. I had to add each folder for
> > FILES_${PN} contrary to your advice otherwise I got the following error:
> > ERROR: crank-1.0-r2 do_package: QA Issue: crank: Files/directories were
> > installed but not shipped in any package: /opt
> >   /opt/crank
> > Please set FILES such that these items are packaged. Alternatively if
> they
> > are unneeded, avoid installing them or delete them within do_install.
> > crank: 2 installed and not shipped files. [installed-vs-shipped]
> >
> >
> >
> > I am now getting the following error:
> > ERROR: crank-1.0-r2 do_install: Function failed: do_install (log file is
> > located at
> > /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-neon
> > -poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457) ERROR:
> Logfile
> > of failure stored in:
> > /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-neon
> > -poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457
> > Log data follows:
> > | DEBUG: Executing shell function do_install
> > | cp: cannot stat
> > | '/home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-n
> > | eon-poky-linux-gnueabi/crank/1.0-r2/crank': No such file or directory
> > | WARNING:
> > | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-ne
> > | on-poky-linux-gnueabi/crank/1.0-r2/temp/run.do_install.26457:1 exit 1
> from
> > | 'cp -a --no-preserve=ownership
> > | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-ne
> > | on-poky-linux-gnueabi/crank/1.0-r2/crank
> > | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-ne
> > | on-poky-linux-gnueabi/crank/1.0-r2/image/opt/' ERROR: Function failed:
> > | do_install (log file is located at
> > | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-ne
> > | on-poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457)
> > ERROR: Task 1082
> > (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/
> recipes-qt/apps/cra
> > nk_1.0.bb, do_install) failed with exit code '1' NOTE: Tasks Summary:
> > Attempted 3806 tasks of which 3805 didn't need to be rerun and 1 failed.
> No
> > currently running tasks (3034 of 4662)
> >
> > Summary: 1 task failed:
> >
> > /home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/
> recipes-qt/apps/cran
> > k_1.0.bb, do_install Summary: There was 1 WARNING message shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
> >
> >
> > Also if I look into the
> > /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/
> work/cortexa5hf-neon-
> > poky-linux-gnueabi/crank/1.0-r2 It is empty.
>
> There's something strange going on here, because the path you have just
> given
> is ${WORKDIR} - and that shouldn't be able to be empty at this point. If
> nothing else there should be a "temp" directory under it containing logs if
> *any* tasks have run. Surely you have skipped out some steps between when
> it
> was working and now? I notice the tarball name changed - did you
> regenerate it
> or just rename it?
>
> In any case, when debugging situations like this it helps to make a fresh
> start - run "bitbake -c clean crank" (you don't need -c cleansstate because
> being stuck at do_install you haven't got to any real sstate tasks yet).
> Then
> methodically run through each task - when do_unpack ran what got unpacked
> into
> ${WORKDIR}? If that's as expected, what got put into ${D} (which is the
> "image" subdirectory under ${WORKDIR})? Does what's in ${D} match up with
> the
> layout you expect to be on the target? At any time you can use
> "bitbake -e crank | less" to inspect the value of variables. You can also
> see
> exactly what commands got run within the task by looking at the run.do_*
> files
> under "temp" in the workdir.
>
> Also:
>
> * That third line "install -m ..." you now have in do_install won't work
> and
> in any case isn't necessary since you are already copying that with the cp
> command.
>
> * Based on what you've said earlier, your S value cannot be correct - it
> may
> not matter, but it might as well be fixed anyway. If the tarball unpacks a
> "crank" subdirectory then it should be set to "${WORKDIR}/crank".
>
> * There's no need to set the PR value, in fact doing so only serves to keep
> changing ${WORKDIR} which will potentially get in the way of debugging, so
> I'd
> suggest not doing that.
>
> * Setting DEPENDS isn't really doing you any good - DEPENDS is for
> build-time
> dependencies. You're only unpacking a tarball, you don't need any
> build-time
> dependencies to speak of. If you have runtime dependencies then set them in
> RDEPENDS_${PN} since that's where runtime dependencies need to be set.
>
> * As another responder pointed out, the inherit of pkgconfig isn't needed -
> you don't need pkg-config for anything being done here.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113d1ad0d5504e05404304ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I have an example of a recipe exploding a tar he=
re: <a href=3D"https://gist.github.com/gkos/02eccb8e1e02312327aa6db6cdc9d50=
1">https://gist.github.com/gkos/02eccb8e1e02312327aa6db6cdc9d501</a><br></d=
iv><div>The tar is used as a source. So the bitbake explodes it to ${WORKDI=
R} and I simply copy it to /opt<br></div>I hope that this helps :)<br><br><=
/div>Regards,<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">2016-11-01 18:00 GMT-02:00 Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Tue, 01 Nov 2016 18:45:02 <a href=3D"mailto:Swapna.Gurumani@mic=
rochip.com">Swapna.Gurumani@microchip.com</a> wrote:<br>
&gt; Every step I take close, I take 2 back :(<br>
&gt; My bb now looks like the one attached. I had to add each folder for<br=
>
&gt; FILES_${PN} contrary to your advice otherwise I got the following erro=
r:<br>
&gt; ERROR: crank-1.0-r2 do_package: QA Issue: crank: Files/directories wer=
e<br>
&gt; installed but not shipped in any package: /opt<br>
&gt;=C2=A0 =C2=A0/opt/crank<br>
&gt; Please set FILES such that these items are packaged. Alternatively if =
they<br>
&gt; are unneeded, avoid installing them or delete them within do_install.<=
br>
&gt; crank: 2 installed and not shipped files. [installed-vs-shipped]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am now getting the following error:<br>
&gt; ERROR: crank-1.0-r2 do_install: Function failed: do_install (log file =
is<br>
&gt; located at<br>
&gt; /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>work/=
cortexa5hf-neon<br>
</span>&gt; -poky-linux-gnueabi/crank/1.0-<wbr>r2/temp/log.do_install.26457=
) ERROR: Logfile<br>
<span class=3D"">&gt; of failure stored in:<br>
&gt; /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>work/=
cortexa5hf-neon<br>
&gt; -poky-linux-gnueabi/crank/1.0-<wbr>r2/temp/log.do_install.26457<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_install<br>
&gt; | cp: cannot stat<br>
&gt; | &#39;/home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wb=
r>work/cortexa5hf-n<br>
&gt; | eon-poky-linux-gnueabi/crank/<wbr>1.0-r2/crank&#39;: No such file or=
 directory<br>
&gt; | WARNING:<br>
&gt; | /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>wor=
k/cortexa5hf-ne<br>
&gt; | on-poky-linux-gnueabi/crank/1.<wbr>0-r2/temp/run.do_install.<wbr>264=
57:1 exit 1 from<br>
&gt; | &#39;cp -a --no-preserve=3Downership<br>
&gt; | /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>wor=
k/cortexa5hf-ne<br>
&gt; | on-poky-linux-gnueabi/crank/1.<wbr>0-r2/crank<br>
&gt; | /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>wor=
k/cortexa5hf-ne<br>
</span>&gt; | on-poky-linux-gnueabi/crank/1.<wbr>0-r2/image/opt/&#39; ERROR=
: Function failed:<br>
<span class=3D"">&gt; | do_install (log file is located at<br>
&gt; | /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>wor=
k/cortexa5hf-ne<br>
&gt; | on-poky-linux-gnueabi/crank/1.<wbr>0-r2/temp/log.do_install.<wbr>264=
57)<br>
&gt; ERROR: Task 1082<br>
&gt; (/home/swapna/workspace/work/<wbr>yocto/meta-atmel/qt5-layer/<wbr>reci=
pes-qt/apps/cra<br>
&gt; <a href=3D"http://nk_1.0.bb" rel=3D"noreferrer" target=3D"_blank">nk_1=
.0.bb</a>, do_install) failed with exit code &#39;1&#39; NOTE: Tasks Summar=
y:<br>
&gt; Attempted 3806 tasks of which 3805 didn&#39;t need to be rerun and 1 f=
ailed. No<br>
&gt; currently running tasks (3034 of 4662)<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;<br>
&gt; /home/swapna/workspace/work/<wbr>yocto/meta-atmel/qt5-layer/<wbr>recip=
es-qt/apps/cran<br>
&gt; <a href=3D"http://k_1.0.bb" rel=3D"noreferrer" target=3D"_blank">k_1.0=
.bb</a>, do_install Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Also if I look into the<br>
&gt; /home/swapna/workspace/work/<wbr>yocto/poky/build-atmel/tmp/<wbr>work/=
cortexa5hf-neon-<br>
&gt; poky-linux-gnueabi/crank/1.0-<wbr>r2 It is empty.<br>
<br>
</span>There&#39;s something strange going on here, because the path you ha=
ve just given<br>
is ${WORKDIR} - and that shouldn&#39;t be able to be empty at this point. I=
f<br>
nothing else there should be a &quot;temp&quot; directory under it containi=
ng logs if<br>
*any* tasks have run. Surely you have skipped out some steps between when i=
t<br>
was working and now? I notice the tarball name changed - did you regenerate=
 it<br>
or just rename it?<br>
<br>
In any case, when debugging situations like this it helps to make a fresh<b=
r>
start - run &quot;bitbake -c clean crank&quot; (you don&#39;t need -c clean=
sstate because<br>
being stuck at do_install you haven&#39;t got to any real sstate tasks yet)=
. Then<br>
methodically run through each task - when do_unpack ran what got unpacked i=
nto<br>
${WORKDIR}? If that&#39;s as expected, what got put into ${D} (which is the=
<br>
&quot;image&quot; subdirectory under ${WORKDIR})? Does what&#39;s in ${D} m=
atch up with the<br>
layout you expect to be on the target? At any time you can use<br>
&quot;bitbake -e crank | less&quot; to inspect the value of variables. You =
can also see<br>
exactly what commands got run within the task by looking at the run.do_* fi=
les<br>
under &quot;temp&quot; in the workdir.<br>
<br>
Also:<br>
<br>
* That third line &quot;install -m ...&quot; you now have in do_install won=
&#39;t work and<br>
in any case isn&#39;t necessary since you are already copying that with the=
 cp<br>
command.<br>
<br>
* Based on what you&#39;ve said earlier, your S value cannot be correct - i=
t may<br>
not matter, but it might as well be fixed anyway. If the tarball unpacks a<=
br>
&quot;crank&quot; subdirectory then it should be set to &quot;${WORKDIR}/cr=
ank&quot;.<br>
<br>
* There&#39;s no need to set the PR value, in fact doing so only serves to =
keep<br>
changing ${WORKDIR} which will potentially get in the way of debugging, so =
I&#39;d<br>
suggest not doing that.<br>
<br>
* Setting DEPENDS isn&#39;t really doing you any good - DEPENDS is for buil=
d-time<br>
dependencies. You&#39;re only unpacking a tarball, you don&#39;t need any b=
uild-time<br>
dependencies to speak of. If you have runtime dependencies then set them in=
<br>
RDEPENDS_${PN} since that&#39;s where runtime dependencies need to be set.<=
br>
<br>
* As another responder pointed out, the inherit of pkgconfig isn&#39;t need=
ed -<br>
you don&#39;t need pkg-config for anything being done here.<br>
<span class=3D"im HOEnZb"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a113d1ad0d5504e05404304ff--
