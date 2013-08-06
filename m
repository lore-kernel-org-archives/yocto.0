Return-Path: <jamesnuss@nanometrics.ca>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3421BE003F8
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 07:09:26 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id f14so2790889wiw.2
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2013 07:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nanometrics.ca; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YLQs7F5vg/PvqbwqTGcerMr5sdgzCaBmzvC2EiH4cg8=;
	b=AVLNXZ2bM3aGyRttnyucPDrkpc/wXS0hwBHDpwaRHQilKfJQef724Su5nN/Rwq4Tb8
	AlLFF2IafRXnWSD2MhgbPRIuvEdTIWrdrGjTGdF3uARV+3slqezDYvOFjpWDSI77qsBA
	9ccrg3ugreAv7in9WuOG90Ythandqd5ut474c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YLQs7F5vg/PvqbwqTGcerMr5sdgzCaBmzvC2EiH4cg8=;
	b=m8Wkwy7TNkN0i8UE2i0VU645oC3NRCdfK3o2fRGvnAMZ/8faJKyRUiUp/gYYJ5lOlS
	ArfF4rcA6JVx5AH9MdqCbQU7Tb+3vUofFX+f4jatrvuRSqnml/SnVSXj3LD4OGRE3a71
	ZOUfZQsKTCnPHaflImpTPyDYyYX8BK+A35SLPIPyl1BAo1jc+iCOaM4vAeqTEg+PEgPs
	5Hr3miE775T+5OHwGSSc7sVyuPGg2S8il6ud2xNW5wtO3UCbcIJi6cjD+9Nc3w2vPHu+
	q5kL2hoffHHEQWMF7ay3jB9N5wvKmEFp4F1vXsz1S75h0uLHSDq4VtXx853XFsJuZ5AD
	L/hw==
X-Gm-Message-State: ALoCoQmdGM1CuovgdGqrAIQxqSwFSx3Z4IiTXGhrKOvdHwd2uMPFBLnYRi3avqDglaVLC63B+whd
MIME-Version: 1.0
X-Received: by 10.180.77.163 with SMTP id t3mr1181869wiw.24.1375798165393;
	Tue, 06 Aug 2013 07:09:25 -0700 (PDT)
Received: by 10.216.162.70 with HTTP; Tue, 6 Aug 2013 07:09:25 -0700 (PDT)
In-Reply-To: <37436E37-302E-470D-9840-D309BA110F46@gmail.com>
References: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
	<37436E37-302E-470D-9840-D309BA110F46@gmail.com>
Date: Tue, 6 Aug 2013 10:09:25 -0400
Message-ID: <CALgcdhiE0nRdcku_8SZWZ6spB1d7mEgYKPcMNFCHjsOTQD-zUg@mail.gmail.com>
From: James Nuss <jamesnuss@nanometrics.ca>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Tue, 06 Aug 2013 14:09:27 -0000
Content-Type: multipart/alternative; boundary=f46d043bdfdeee65b104e347f8eb

--f46d043bdfdeee65b104e347f8eb
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 6, 2013 at 12:43 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jul 29, 2013, at 11:20 AM, James Nuss <jamesnuss@nanometrics.ca> wrote:
>
> Does anybody know if eglibc is supported as a libc implementation for
> Oracle's embedded JRE?
> Since Yocto only supports eglibc rather than GNU glibc [1], I'd like to
> know if there are any issues running Oracle's embedded JRE on a Yocto build.
>
>
> nothing to worry there. eglibc is no different then glibc, its a superset
> actually.
>
>
> I can see that the meta-oracle-java [2] layer provides a recipe to install
> the i586 and x64 JRE binaries so this is a good sign that it is at least
> supported on those archs.
> However I would like to know if it will work specifically on ARM arch.
>
>
> you need java8 IIRC for arm and meta-oracle-java is supporting java7 at
> present.
>

Is there any particular reason why java8 is required for ARM?


>
>
>
>
> [1]
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-components-bitbake
> [2] git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java
>
> Regards.
> James
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
Regards,
James

--f46d043bdfdeee65b104e347f8eb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Tue, Aug 6, 2013 at 12:43 AM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<div style=3D"word-wrap:break-word"><br><div><div class=3D"im"><div>On Jul =
29, 2013, at 11:20 AM, James Nuss &lt;<a href=3D"mailto:jamesnuss@nanometri=
cs.ca" target=3D"_blank">jamesnuss@nanometrics.ca</a>&gt; wrote:</div><br><=
blockquote type=3D"cite">
<font face=3D"courier new,monospace">Does anybody know if eglibc is support=
ed as a libc implementation for Oracle&#39;s embedded JRE?<br>Since Yocto o=
nly supports eglibc rather than GNU glibc [1], I&#39;d like to know if ther=
e are any issues running Oracle&#39;s embedded JRE on a Yocto build.<br>
</font></blockquote><div><br></div></div><div>nothing to worry there. eglib=
c is no different then glibc, its a superset actually.</div><div class=3D"i=
m"><br><blockquote type=3D"cite"><font face=3D"courier new,monospace">
<br>I can see that the meta-oracle-java [2] layer provides a recipe to inst=
all the i586 and x64 JRE binaries so this is a good sign that it is at leas=
t supported on those archs.<br>However I would like to know if it will work=
 specifically on ARM arch.<br>
</font></blockquote><div><br></div></div><div>you need java8 IIRC for arm a=
nd meta-oracle-java is supporting java7 at present.</div></div></div></bloc=
kquote><div><br>Is there any particular reason why java8 is required for AR=
M?<br>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"=
><div><div><br></div><br><blockquote type=3D"cite"><div class=3D"im"><font =
face=3D"courier new,monospace">
<br><br>[1] <a href=3D"http://www.yoctoproject.org/docs/latest/mega-manual/=
mega-manual.html#usingpoky-components-bitbake" target=3D"_blank">http://www=
.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-compon=
ents-bitbake</a><br>

[2] <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java" =
target=3D"_blank">git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java</a><b=
r><br>Regards.<br>James<br></font></div>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></blockquote></div><br>Regards,<br>James<br>

--f46d043bdfdeee65b104e347f8eb--
