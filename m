Return-Path: <kernelraj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E165E00ED0; Sun, 11 Sep 2016 21:39:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kernelraj[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D66E00E7E
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 21:39:10 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id a6so11866652wmc.2
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 21:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EVO+/ILziTnVy2aqig1e333KWvjN/U9e6qZ/DHEOI00=;
	b=M/+Iv1NBRih9iIdOXFoLrqRdrLfyc6Ra0eK4Yigeg1+uk8lliYkRVsIExsDwTYtgMq
	x11xybDW/Xaw5P2GPVsqeZrh8IJ2JgMOOMJ1UwQU766GZi+FlZmecTGLI72lHvwgbWSc
	oa1jAu750Kl0Jfwo7IROjngBDwLm3j6VeNlBuVlXgBBeFrgs/Erl7JY2Scv+w7+3OnSL
	7+CMAKnmXuI9vOl5Cteql01mH8Gt3nE0IwwU8eu/lrae8oaAFPn1x9l1i7uptZ7smuFF
	+WYo2WD3Q5I7eDEaWHgF7QIDgsqYGt5AOipiXR1hX4/sgyx/3iHouASxZFCzVU9Up4Rt
	qSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EVO+/ILziTnVy2aqig1e333KWvjN/U9e6qZ/DHEOI00=;
	b=IqDMSgHxoEhHxVV5SGmK66o3VmhRQB8HYroSUahXHKY08ABLr7MjOflsUDLQ+yr8vj
	uNX4/qv+Ag0YeRtEEC9NfiAAhjdtIfzT+P54e9COJE5YV0s1/dj1SmxEU4P4Lc2kqhtq
	zhBJmbE9FErwIlrR+UiAGfKpg+axWYrpEw0QJQw1lKmwllJR1PLjhJbNK//VWgdUFN7N
	3kqo38XbezZlWq0j0E/ICbuO5JOaYVvX4WWJ3LqfjWn7/Rd+/neTJP6dW66C52vJySqP
	bMIeoU++EDjyLFjHATeei1yfVBC693Tl8046AOGy5tUpevAiL8mz2nDg8gbk0HPB4PeI
	IXBA==
X-Gm-Message-State: AE9vXwMpJx7WLNVpFbhAz9TuSLO7f+VhHZeSjoFl53Rc1DN04EAEaIRHgnmf+xcmK8Lo5SXv6Wy25quxbwMa/w==
X-Received: by 10.28.93.82 with SMTP id r79mr8936081wmb.89.1473655149383; Sun,
	11 Sep 2016 21:39:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.166.69 with HTTP; Sun, 11 Sep 2016 21:39:09 -0700 (PDT)
From: BHARATH RAJ <kernelraj@gmail.com>
Date: Sun, 11 Sep 2016 21:39:09 -0700
Message-ID: <CAJz+W7ASjdtmamR3KGfkt4yaKhB9pA3sSMrR4kHbxVtgOs+vig@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 12 Sep 2016 07:00:21 -0700
Subject: : error: '__uint128_t' does not name a type
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
X-List-Received-Date: Mon, 12 Sep 2016 04:39:15 -0000
Content-Type: multipart/alternative; boundary=001a11472238b35566053c48134e

--001a11472238b35566053c48134e
Content-Type: text/plain; charset=UTF-8

Hi All,

I am trying to build one recipes on Yocto2.0 based environment.

However I am seeing following error.I wonder if this is a known problem.

It says error: '__uint128_t' does not name a type

/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:240:1:
warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
are undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:250:31:
warning: invoking macro __MATHDECL argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:279:1:
warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
 __MATHCALL (rint,, (_Mdouble_ __x));
 ^
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:240:1:
warning: invoking macro __CONCAT argument 2: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
In file included from
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/sigcontext.h:27:0,
                 from
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/signal.h:306,
                 from
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/glib-2.0/glib/gbacktrace.h:33,
                 from
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/glib-2.0/glib.h:34,
                 from <command-line>:0:
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/asm/sigcontext.h:53:2:
error: '__uint128_t' does not name a type
  __uint128_t vregs[32];
  ^
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
warning: invoking macro __MATHDECL argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-rglibc/sysroots/usr/include/bits/mathcalls.h:279:1:
warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
are undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:217:1:
warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
 __MATHCALLX (copysign,, (_Mdouble_ __x, _Mdouble_ __y), (__const__));
 ^
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:250:31:
warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:250:31:
warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
are undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:217:1:
warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
are undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
are undefined in ISO C90 and ISO C++98 [enabled by default]
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:241:29:
warning: invoking macro __MATHCALL argument 2: empty macro arguments are
undefined in ISO C90 and ISO C++98 [enabled by default]


Regards
Bharath

--001a11472238b35566053c48134e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am trying to build one recipe=
s on Yocto2.0 based environment.</div><div><br></div><div>However I am seei=
ng following error.I wonder if this is a known problem.</div><div><br></div=
><div>It says=C2=A0error: &#39;__uint128_t&#39; does not name a type</div><=
div><br></div><div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-s=
ize:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/=
sysroots/usr/include/bits/mathcalls.h:240:1: warning: invoking macro __MATH=
_PRECNAME argument 2: empty macro arguments are undefined in ISO C90 and IS=
O C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-famil=
y:tahoma;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/b=
uild/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:250:31: warning: invok=
ing macro __MATHDECL argument 3: empty macro arguments are undefined in ISO=
 C90 and ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0)=
;font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL=
_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:279:1: warn=
ing: invoking macro __MATHDECL_1 argument 3: empty macro arguments are unde=
fined in ISO C90 and ISO C++98 [enabled by default]</div><div style=3D"colo=
r:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=C2=A0__MATHCALL (rint=
,, (_Mdouble_ __x));</div><div style=3D"color:rgb(0,0,0);font-family:tahoma=
;font-size:13.3333px">=C2=A0^</div><div style=3D"color:rgb(0,0,0);font-fami=
ly:tahoma;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/=
build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:240:1: warning: invok=
ing macro __CONCAT argument 2: empty macro arguments are undefined in ISO C=
90 and ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);f=
ont-family:tahoma;font-size:13.3333px">In file included from /local/mnt/wor=
kspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/sig=
context.h:27:0,</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font=
-size:13.3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysr=
oots/usr/include/signal.h:306,</div><div style=3D"color:rgb(0,0,0);font-fam=
ily:tahoma;font-size:13.3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/=
tmp-glibc/sysroots/usr/include/glib-2.0/glib/gbacktrace.h:33,</div><div sty=
le=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /local/mnt/workspa=
ce/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/glib-2.0/gli=
b.h:34,</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13=
.3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from=
 &lt;command-line&gt;:0:</div><div style=3D"color:rgb(0,0,0);font-family:ta=
homa;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build=
/tmp-glibc/sysroots/usr/include/asm/sigcontext.h:53:2: error: &#39;__uint12=
8_t&#39; does not name a type</div><div style=3D"color:rgb(0,0,0);font-fami=
ly:tahoma;font-size:13.3333px">=C2=A0 __uint128_t vregs[32];</div><div styl=
e=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=C2=A0 ^</div=
><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/lo=
cal/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/inclu=
de/bits/mathcalls.h:82:1: warning: invoking macro __MATHDECL argument 3: em=
pty macro arguments are undefined in ISO C90 and ISO C++98 [enabled by defa=
ult]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.33=
33px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-rglibc/sysroots=
/usr/include/bits/mathcalls.h:279:1: warning: invoking macro __MATH_PRECNAM=
E argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98 =
[enabled by default]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma=
;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp=
-glibc/sysroots/usr/include/bits/mathcalls.h:217:1: warning: invoking macro=
 __MATHDECL_1 argument 3: empty macro arguments are undefined in ISO C90 an=
d ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-f=
amily:tahoma;font-size:13.3333px">=C2=A0__MATHCALLX (copysign,, (_Mdouble_ =
__x, _Mdouble_ __y), (__const__));</div><div style=3D"color:rgb(0,0,0);font=
-family:tahoma;font-size:13.3333px">=C2=A0^</div><div style=3D"color:rgb(0,=
0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/narasimha=
/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:250:31:=
 warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are=
 undefined in ISO C90 and ISO C++98 [enabled by default]</div><div style=3D=
"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/worksp=
ace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathca=
lls.h:250:31: warning: invoking macro __MATH_PRECNAME argument 2: empty mac=
ro arguments are undefined in ISO C90 and ISO C++98 [enabled by default]</d=
iv><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/=
local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/inc=
lude/bits/mathcalls.h:217:1: warning: invoking macro __MATH_PRECNAME argume=
nt 2: empty macro arguments are undefined in ISO C90 and ISO C++98 [enabled=
 by default]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-si=
ze:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/s=
ysroots/usr/include/bits/mathcalls.h:82:1: warning: invoking macro __MATHDE=
CL_1 argument 3: empty macro arguments are undefined in ISO C90 and ISO C++=
98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-family:tah=
oma;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_NEW/poky/build/=
tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1: warning: invoking mac=
ro __MATH_PRECNAME argument 2: empty macro arguments are undefined in ISO C=
90 and ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);f=
ont-family:tahoma;font-size:13.3333px">/local/mnt/workspace/narasimha/AGL_N=
EW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:241:29: warni=
ng: invoking macro __MATHCALL argument 2: empty macro arguments are undefin=
ed in ISO C90 and ISO C++98 [enabled by default]</div></div><div><br></div>=
<div><br></div><div>Regards</div><div>Bharath</div><div><br></div><div><br>=
</div></div>

--001a11472238b35566053c48134e--
