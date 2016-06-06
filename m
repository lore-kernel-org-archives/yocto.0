Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA3EEE00DC4; Mon,  6 Jun 2016 02:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE81E00DAC
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 02:18:25 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id n184so82199640wmn.1
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 02:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UBH0Bn3FKSK9u0TcmqOJuYT6xEsNmN7xwGp2Z47RS/E=;
	b=rMg+g93nxpj1Wm7vz7KcVg+Bd4B25KKRmo9zSD62giMy+wxPePkgHGG6MmAEuW/04m
	iWUu/brDQUcI4KDGRJrwLaGBdUpbMSiWFWvpLFU2EKyH6p21XzfGcNAYvt4YI/5lU3s7
	2sLU3FOgvfwvFD68pBe/NJEhvd09wwC5NaY1zn53eVeo+cIFZ1h3O4orRoZ2ujhMCitn
	YQVqjo5vzbvrPmsCukx01dtua74dTtCvVNZ60EjKTrE06mzVOk91+21kLx/i+2pqqFrE
	dTrQPTGXhN9BM1hjqOIvWDgI5EAL7gF4sNXvorjkIcC/BGR9MYPe7aWNnPJga/bgispm
	P15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UBH0Bn3FKSK9u0TcmqOJuYT6xEsNmN7xwGp2Z47RS/E=;
	b=iVZjm0OQWTBeQEvzKT87188cKRPZjjr4Ay5NWr2mjnWUSnYVj8icCiYYuqlYuoIG6X
	h6B+ENZuFhCWsFvBBZipTfLGh8SlR1lebLRhI9gCFeoNhvORYI/ny/P3odyEe35/oodb
	aOWNt+sXyD/eezOvmPeLIkYyFnKdMS6UMlTiH7io6aG0u2cDqLKpCpZNUEHQugAOvjol
	CrxVz4fE2ncKQky0MEbUlqYhAca2Sxnesu8i5NXhAqpsLaYWT/7mpdQx+bw0AX6ekzID
	rkOVSAWhHEH1G5RLFmuR9PDwxin8cI+Bs2WNOdS1V1F9XqdiXKoq4UDoXIW/SFpQRAn2
	78Fw==
X-Gm-Message-State: ALyK8tKdFklC8tankKc0gDwMQU3jHblFj8oGVg6ABXdG1Kc5jMbRUqvbGZtl8GXznevFF6mXoe5lqkl6P0o6dA==
X-Received: by 10.194.142.231 with SMTP id rz7mr3627450wjb.99.1465204704716;
	Mon, 06 Jun 2016 02:18:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.64.101 with HTTP; Mon, 6 Jun 2016 02:18:24 -0700 (PDT)
In-Reply-To: <57552430.5050105@mlbassoc.com>
References: <57552430.5050105@mlbassoc.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 6 Jun 2016 11:18:24 +0200
Message-ID: <CA+chaQeHXv4MBymo1qGQ3ZYhNw+AHXviw=BJ2+qPsrE=wwBgLg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another new error
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
X-List-Received-Date: Mon, 06 Jun 2016 09:18:27 -0000
Content-Type: multipart/alternative; boundary=089e0122e7faf2ad2f0534988de2

--089e0122e7faf2ad2f0534988de2
Content-Type: text/plain; charset=UTF-8

I was seeing this even before switch to python3, so probably unrelated.

On Mon, Jun 6, 2016 at 9:20 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I just got another message/error I've not seen before, after I interrupted
> a
> build using ^C
>
>
> ==========================================================================================
> Keyboard Interrupt, closing down...
>
> NOTE: Tasks Summary: Attempted 4444 tasks of which 3297 didn't need to be
> rerun and all succeeded.
> ERROR: Command execution failed: Stopped build
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> Execution was interrupted, returning a non-zero exit code.
> Process ProcessServer-1:
> Traceback (most recent call last):
>   File "/usr/lib/python3.4/multiprocessing/process.py", line 254, in
> _bootstrap
>     self.run()
>   File "/local/poky-cutting-edge/bitbake/lib/bb/server/process.py", line
> 104, in run
>     bb.cooker.server_main(self.cooker, self.main)
>   File "/local/poky-cutting-edge/bitbake/lib/bb/cooker.py", line 1689, in
> server_main
>     cooker.post_serve()
>   File "/local/poky-cutting-edge/bitbake/lib/bb/cooker.py", line 1624, in
> post_serve
>     procs = subprocess.check_output(["lsof", '-w', lockfile],
> stderr=subprocess.STDOUT)
>   File "/usr/lib/python3.4/subprocess.py", line 620, in check_output
>     raise CalledProcessError(retcode, process.args, output=output)
> subprocess.CalledProcessError: Command '['lsof', '-w',
> '/local/p0382_2016-01-13/bitbake.lock']' returned non-zero exit status 1
>
> ==========================================================================================
>
> Build Configuration:
> BB_VERSION = "1.31.0"
> BUILD_SYS = "x86_64-linux"
> NATIVELSBSTRING = "Ubuntu-15.10"
> TARGET_SYS = "arm-amltd-linux-gnueabi"
> MACHINE = "teton-p0382"
> DISTRO = "amltd"
> DISTRO_VERSION = "2.1+snapshot-20160606"
> TUNE_FEATURES = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> TARGET_FPU = "hard"
> meta = "poky-master:6c5d7f1fb276cbe0a461ece6c8f0ca17a478fa8c"
>
> Maybe it has to do with a change in the multiprocessing library
> between python2 and python3?
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0122e7faf2ad2f0534988de2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was seeing this even before switch to python3, so probab=
ly unrelated.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Mon, Jun 6, 2016 at 9:20 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">I just got another message/e=
rror I&#39;ve not seen before, after I interrupted a<br>
build using ^C<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Keyboard Interrupt, closing down...<br>
<br>
NOTE: Tasks Summary: Attempted 4444 tasks of which 3297 didn&#39;t need to =
be rerun and all succeeded.<br>
ERROR: Command execution failed: Stopped build<br>
<br>
Summary: There was 1 WARNING message shown.<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
Execution was interrupted, returning a non-zero exit code.<br>
Process ProcessServer-1:<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/usr/lib/python3.4/multiprocessing/process.py&quot;, line=
 254, in _bootstrap<br>
=C2=A0 =C2=A0 self.run()<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/server/process.py=
&quot;, line 104, in run<br>
=C2=A0 =C2=A0 bb.cooker.server_main(self.cooker, self.main)<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/cooker.py&quot;, =
line 1689, in server_main<br>
=C2=A0 =C2=A0 cooker.post_serve()<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/cooker.py&quot;, =
line 1624, in post_serve<br>
=C2=A0 =C2=A0 procs =3D subprocess.check_output([&quot;lsof&quot;, &#39;-w&=
#39;, lockfile], stderr=3Dsubprocess.STDOUT)<br>
=C2=A0 File &quot;/usr/lib/python3.4/subprocess.py&quot;, line 620, in chec=
k_output<br>
=C2=A0 =C2=A0 raise CalledProcessError(retcode, process.args, output=3Doutp=
ut)<br>
subprocess.CalledProcessError: Command &#39;[&#39;lsof&#39;, &#39;-w&#39;, =
&#39;/local/p0382_2016-01-13/bitbake.lock&#39;]&#39; returned non-zero exit=
 status 1<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Build Configuration:<br>
BB_VERSION =3D &quot;1.31.0&quot;<br>
BUILD_SYS =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING =3D &quot;Ubuntu-15.10&quot;<br>
TARGET_SYS =3D &quot;arm-amltd-linux-gnueabi&quot;<br>
MACHINE =3D &quot;teton-p0382&quot;<br>
DISTRO =3D &quot;amltd&quot;<br>
DISTRO_VERSION =3D &quot;2.1+snapshot-20160606&quot;<br>
TUNE_FEATURES =3D &quot;arm armv7a vfp thumb neon callconvention-hard corte=
xa9&quot;<br>
TARGET_FPU =3D &quot;hard&quot;<br>
meta =3D &quot;poky-master:6c5d7f1fb276cbe0a461ece6c8f0ca17a478fa8c&quot;<b=
r>
<br>
Maybe it has to do with a change in the multiprocessing library<br>
between python2 and python3?<span class=3D"HOEnZb"><font color=3D"#888888">=
<br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e0122e7faf2ad2f0534988de2--
