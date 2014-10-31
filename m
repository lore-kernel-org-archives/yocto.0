Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7551E008B3; Thu, 30 Oct 2014 18:13:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A966BE007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 18:13:48 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tr6so327106ieb.28
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 18:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=CVV4alP0/DgWSgmvqnRImVanty/YJc4Yp3ULGFH1bCA=;
	b=iiUHxxipHoYt0JcpvfX0nTGyTIe8ItLnLM4rRXnwJNusGwLG1vclh2HkA4pK3fyutN
	edR00Fi55el3G9S3FV7FfzjdlXHkaSqym8NkuIUOc6N8beC/4HaJNS1a8q2PPUBmMo3F
	8ePdT/GUXlCz+8JEUQrUif9V/hTcMvKh4nhX15onU0T9nbY3R10C/86TEHL4hbGQj8TW
	kteLcNQTbW1ij6VI/4MC1wOX6op30UrPaj7gMin2BJ6FnoZXGxF8o45Ehlh8w9xM25I8
	+eIKhaYr7Js91wW4ur12CLrtLZPM/V6GhWzo6d00ghffD7SQAwHRwj8hDFGVudMMPhu2
	z+og==
X-Gm-Message-State: ALoCoQn5K4fENHp5Nsb/NwG/n1x1sZCm5+rCKFCwR/dDAn13BaahMxYA8RSW2MnYvvqKsfy5KAhZ
MIME-Version: 1.0
X-Received: by 10.50.70.40 with SMTP id j8mr469663igu.31.1414718027738; Thu,
	30 Oct 2014 18:13:47 -0700 (PDT)
Received: by 10.107.148.145 with HTTP; Thu, 30 Oct 2014 18:13:47 -0700 (PDT)
In-Reply-To: <CAJTo0LamCUm7qwjM0rAdtUw=fJhkXYzDKUtg79HN+YS+9LGxJw@mail.gmail.com>
References: <CALXw4G7HBPGg-WPZf15Sg8Y7-cFKNK0_-bcKB=PFQZ40qpCuZQ@mail.gmail.com>
	<CAJTo0LamCUm7qwjM0rAdtUw=fJhkXYzDKUtg79HN+YS+9LGxJw@mail.gmail.com>
Date: Thu, 30 Oct 2014 20:13:47 -0500
Message-ID: <CALXw4G5n8KaYGJL1sY-_AWBF43Scdd9OT-is4pGFh2wqW68=Lw@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Build warning chown/chmod
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
X-List-Received-Date: Fri, 31 Oct 2014 01:13:58 -0000
Content-Type: multipart/alternative; boundary=047d7b3a969680bb580506adb5ec

--047d7b3a969680bb580506adb5ec
Content-Type: text/plain; charset=UTF-8

Thanks Ross, but no sticky bits :( It's actually the group of the patched
files that gets changed to root and not the owner (sorry).

michael#/opt/oe/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2$ ll
total 11M
drwxr-xr-x 36 michael michael 4.0K Oct 30 20:02 ./
drwxr-xr-x  4 michael michael 4.0K Oct 30 20:02 ../
-rw-r--r--  1 michael michael  38K Jul  4  2003 ABOUT-NLS
drwxr-xr-x  2 michael michael 4.0K Oct 30 20:02 autom4te.cache/
drwxr-xr-x  7 michael michael 4.0K Oct 16  2013 boehm-gc/
-rw-r--r--  1 michael michael 540K Oct 16  2013 ChangeLog
-rw-r--r--  1 michael michael 3.2K May 13  2004 ChangeLog.tree-ssa
-rwxr-xr-x  1 michael michael 3.7K Aug 22  2009 compile*
drwxr-xr-x  2 michael michael 4.0K Oct 16  2013 config/
-rwxr-xr-x  1 michael michael  45K Oct 30 20:02 config.guess*
-rw-r--r--  1 michael michael  25K Mar 22  2011 config-ml.in
-rwxr-xr-x  1 michael michael  15K Feb 13  2011 config.rpath*
-rwxr-xr-x  1 michael michael  35K Oct 30 20:02 config.sub*
-rwxr-xr-x  1 michael root    462K Oct 30 20:02 configure*
-rw-r--r--  1 michael root    101K Oct 30 20:02 configure.ac
...

This happens on other patched files as well. My machine is Ubuntu 12.04.05
x86_64.

Michael Gloff


On Thu, Oct 30, 2014 at 7:13 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 30 October 2014 19:46, Michael Gloff <mgloff@emacinc.com> wrote:
>
>> copyfile: failed to chown/chmod
>> /opt/oe/build/tmp/work/core2-32-emac-linux/gcc-runtime/4.8.2-r0/gcc-4.8.2/build.i586-emac-linux.i586-emac-linux/gcc/config/sparc/linux64.h
>>
>> I suspect it is something with my development machine as this doesn't
>> happen on the build server. For some reason when any patch is applied, the
>> ownership of the patched files gets changed to root, thus the warning. I've
>> cleared the build directory to no avail. I'm working with daisy branch of
>> both poky and meta-oe. Has anyone else seen this before or possibly know
>> what might be the cause?
>>
>
> Check for sticky bits on directories such as /opt or /opt/oe.
>
> Ross
>

--047d7b3a969680bb580506adb5ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Ross, but no sticky bits :( It&#39;s actually =
the group of the patched files that gets changed to root and not the owner =
(sorry).<br><br>michael#/opt/oe/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.=
2$ ll<br>total 11M<br>drwxr-xr-x 36 michael michael 4.0K Oct 30 20:02 ./<br=
>drwxr-xr-x=C2=A0 4 michael michael 4.0K Oct 30 20:02 ../<br>-rw-r--r--=C2=
=A0 1 michael michael=C2=A0 38K Jul=C2=A0 4=C2=A0 2003 ABOUT-NLS<br>drwxr-x=
r-x=C2=A0 2 michael michael 4.0K Oct 30 20:02 autom4te.cache/<br>drwxr-xr-x=
=C2=A0 7 michael michael 4.0K Oct 16=C2=A0 2013 boehm-gc/<br>-rw-r--r--=C2=
=A0 1 michael michael 540K Oct 16=C2=A0 2013 ChangeLog<br>-rw-r--r--=C2=A0 =
1 michael michael 3.2K May 13=C2=A0 2004 ChangeLog.tree-ssa<br>-rwxr-xr-x=
=C2=A0 1 michael michael 3.7K Aug 22=C2=A0 2009 compile*<br>drwxr-xr-x=C2=
=A0 2 michael michael 4.0K Oct 16=C2=A0 2013 config/<br>-rwxr-xr-x=C2=A0 1 =
michael michael=C2=A0 45K Oct 30 20:02 config.guess*<br>-rw-r--r--=C2=A0 1 =
michael michael=C2=A0 25K Mar 22=C2=A0 2011 <a href=3D"http://config-ml.in"=
>config-ml.in</a><br>-rwxr-xr-x=C2=A0 1 michael michael=C2=A0 15K Feb 13=C2=
=A0 2011 config.rpath*<br>-rwxr-xr-x=C2=A0 1 michael michael=C2=A0 35K Oct =
30 20:02 config.sub*<br>-rwxr-xr-x=C2=A0 1 michael root=C2=A0=C2=A0=C2=A0 4=
62K Oct 30 20:02 configure*<br>-rw-r--r--=C2=A0 1 michael root=C2=A0=C2=A0=
=C2=A0 101K Oct 30 20:02 <a href=3D"http://configure.ac">configure.ac</a><b=
r>...<br><br></div><div>This happens on other patched files as well. My mac=
hine is Ubuntu 12.04.05 x86_64.<br><br></div><div>Michael Gloff<br></div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Thu, Oct 30, 2014 at 7:13 PM, Burton, Ross <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 30 October 2014=
 19:46, Michael Gloff <span dir=3D"ltr">&lt;<a href=3D"mailto:mgloff@emacin=
c.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div>copyfile: failed to chown/chmod /opt/oe/build=
/tmp/work/core2-32-emac-linux/gcc-runtime/4.8.2-r0/gcc-4.8.2/build.i586-ema=
c-linux.i586-emac-linux/gcc/config/sparc/linux64.h<br><br></div>I suspect i=
t is something with my development machine as this doesn&#39;t happen on th=
e build server. For some reason when any patch is applied, the ownership of=
 the patched files gets changed to root, thus the warning. I&#39;ve cleared=
 the build directory to no avail. I&#39;m working with daisy branch of both=
 poky and meta-oe. Has anyone else seen this before or possibly know what m=
ight be the cause?<span><font color=3D"#888888"><br></font></span></blockqu=
ote></div><br>Check for sticky bits on directories such as /opt or /opt/oe.=
</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--047d7b3a969680bb580506adb5ec--
