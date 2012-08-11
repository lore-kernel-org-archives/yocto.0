Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB710E013F7
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 20:37:37 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so3364065pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 20:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=BTseIpXuqZXFpyLgR9fh8yyrmEOV1/rzj/3q4uT4SNI=;
	b=hvZFJ1Vz0TGBBt8L1HSAvPDU/ko2TX87ZGzIjMKCssq3pA09Q2I3Btd/G3v2gKKfPE
	zm32fl6tOdOcxiblpy5Bwgw3hSXrQQLbXvKJ03kZDrd+AKDeGnHUtj07MxP7powisNxq
	DG915FuzYwF8RtCfLLPBj9JRxS5tOqnLmzzo460aTXhI9PQecYk3teyM6xZvNEL2V7qx
	kY/zinAo8VIIqAUpu/2B3WksyiAP+oxNFPK7JrEx65xPxemvnzjJSIaqnmhdzT/BP3QD
	EDxCZb9FQAInUa6+MGcnXYiK3TmW+kkZeKLlDAuJYWh8rdI6h8QzQZvb1W2yV2RnX/rf
	MXjg==
Received: by 10.68.238.68 with SMTP id vi4mr17212950pbc.123.1344656257301;
	Fri, 10 Aug 2012 20:37:37 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sj5sm541120pbc.30.2012.08.10.20.37.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 20:37:36 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 11 Aug 2012 07:37:31 +0400
In-Reply-To: <ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
Message-Id: <AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 Aug 2012 03:37:37 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_883AD5AE-7C2E-4D0D-87E4-4A810A6B1D24"

--Apple-Mail=_883AD5AE-7C2E-4D0D-87E4-4A810A6B1D24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 9, 2012, at 8:47 PM, Elvis Dowson wrote:

> I switched to using gcc-4.6 from the meta-openembedded layer, and =
still get the same issue, i.e. no login or bash prompt with init=3D/bin/sh=


I decided to switch to code sourcery external toolchain, to try and =
narrow the cause to see if it was indeed a compiler issue.=20

Which building with the mentor-2012.03-71-powerpc-mentor-linux-gnu.bin =
toolchain, I get a bunch of failures similar to the one shown below:

| ./.libs/libsqlite3.so: undefined reference to `__gcc_qtod'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qneg'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qge'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qlt'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_itoq'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qtoi'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qgt'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_dtoq'

My target process is a PowerPC 440 with no hardware floating point unit, =
and my ppc440 tune has been setup to use software floating point.

The above errors appear to somehow related to the floating point type.=20=


How can I get past these type of errors? I don't get these errors with =
gcc-4.5.1, 4.6 and 4.7 recipes. It only appears with the mentor sourcery =
cross compiler for powerpc.

Getting yocto to build using the sourcery toolchain for the powerpc440, =
might yield some clues for narrowing down the issue related with the =
dynamic linker.

point=

--Apple-Mail=_883AD5AE-7C2E-4D0D-87E4-4A810A6B1D24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 9, 2012, at 8:47 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>I switched to using =
gcc-4.6 from the meta-openembedded layer, and still get the same issue, =
i.e. no login or bash prompt with =
init=3D/bin/sh</div></div></blockquote><br></div>I decided to switch to =
code sourcery external toolchain, to try and narrow the cause to see if =
it was indeed a compiler issue.&nbsp;</div><div><br></div><div>Which =
building with the&nbsp;<a =
href=3D"http://sourcery.mentor.com/public/gnu_toolchain/powerpc-mentor-lin=
ux-gnu/mentor-2012.03-71-powerpc-mentor-linux-gnu.bin">mentor-2012.03-71-p=
owerpc-mentor-linux-gnu.bin</a>&nbsp;toolchain, I get a bunch of =
failures similar to the one shown =
below:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qtod'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qneg'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qge'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qlt'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_itoq'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qtoi'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qgt'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_dtoq'</font></div></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"'Lucida Grande'">My target process is =
a PowerPC 440 with no hardware floating point unit, and my ppc440 tune =
has been setup to use software floating point.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"'Lucida Grande'">The above errors appear to somehow related to =
the floating point type.&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"'Lucida =
Grande'"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"'Lucida Grande'">How can I get past these type of errors? I =
don't get these errors with gcc-4.5.1, 4.6 and 4.7 recipes. It only =
appears with the mentor sourcery cross compiler for =
powerpc.</font></div><div><font class=3D"Apple-style-span" face=3D"'Lucida=
 Grande'"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"'Lucida Grande'">Getting yocto to build using the sourcery =
toolchain for the powerpc440, might yield some clues for narrowing down =
the issue related with the dynamic linker.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><span class=3D"Apple-style-span" =
style=3D"font-family: Helvetica; font-size: medium; =
">point</span></font></div></body></html>=

--Apple-Mail=_883AD5AE-7C2E-4D0D-87E4-4A810A6B1D24--
