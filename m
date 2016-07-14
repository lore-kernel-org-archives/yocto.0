Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BE5E00CC4; Thu, 14 Jul 2016 04:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C158EE00C6E
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 04:05:05 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id f6so43944499ith.1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 04:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rYZbM0Yam/Yx3ICgX1OoVM7GR4MNLcmY3kOzBt8/7yY=;
	b=Liokqu8O0ocopJ638maa1QU15c/8UbxEGw7DduqByI+zeQZRXTgnwgxxcpYpf1/bVm
	JkDIhF7P8PjB4IUKkp5WbUsmm0tYTBTk931sw/P6bfBkGcTBv/00krAtSCf2MpW2CTQz
	fXgagieUiaSa6pQg2YwhIlNUxB1dnbazNsrxpmUSi/23216gdGdfhz6+YzRUdxdVisj3
	av7tMocja1Z3ecIY/MQzlpv84Dhv5ZXXMuqtPDQsCwFzKX3YOdrJ42UGBCU2dOIL7Y6T
	IN6iN3VH6oyH//QOkrXwc726pZ+hOY8uqo6jHkeFy2t+7bCCrAITJdICK1+XSrmGXRpS
	uvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rYZbM0Yam/Yx3ICgX1OoVM7GR4MNLcmY3kOzBt8/7yY=;
	b=gE0FCJO52g+ukyd0SySWQs+iOc4890Ig30NvSP0MQ5j+aPQ8PcHmF0eejJm1PTix2f
	NtFaCnvHMLYEYmovDROnCAEtZG06U2uUI/+6p/O+yTIj/tRQ5mWAXp6bTHKJPyoOLvCy
	++esWurJpkDUG2w73UzV/uDsRA31ivOwgrP13CvMUrDoaFir7Pybm5zwGhDecyAfbzyp
	jals4cf/8rdKttxO1+mrhKZdFLiboSd9oA9vS5tmw805b+oiyDiMuV2AUyemPj6R2M0K
	NqLUwvU4u0Aw+R0dzusWIvBUQ0D5CVoXMH8RPLOnKWtHYq8Pq4Bqn0gaxUXkD5vWbDT3
	69BA==
X-Gm-Message-State: ALyK8tLLQxTHSoUBggVk/aumjKtMqA6/SwFiRyh09s5K/2KAShCgcAS1hYEi6eWbI9wutN5lEgToOCVn1DGMqbhs
X-Received: by 10.36.147.198 with SMTP id y189mr13821948itd.83.1468494304999; 
	Thu, 14 Jul 2016 04:05:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 14 Jul 2016 04:04:45 -0700 (PDT)
In-Reply-To: <OFD35E02B2.8525365B-ONC1257FF0.0037D0AB-C1257FF0.00390219@esa-grimma.de>
References: <OFD35E02B2.8525365B-ONC1257FF0.0037D0AB-C1257FF0.00390219@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Jul 2016 12:04:45 +0100
Message-ID: <CAJTo0LY-aC=c_Ae=3KCTVkc9ST8hsZNHh75iAbYbtnECuNVufw@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems finding python when using a cmake recipe
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
X-List-Received-Date: Thu, 14 Jul 2016 11:05:08 -0000
Content-Type: multipart/alternative; boundary=94eb2c089e14678dee053796799f

--94eb2c089e14678dee053796799f
Content-Type: text/plain; charset=UTF-8

On 14 July 2016 at 11:22, <S.Jaritz@esa-grimma.de> wrote:

> I want to create a recipe for an application. This application is
> generated through cmake. In the cmake file "CMakeLists.txt" is the passage:
> ##############
> include(FindPythonInterp)
> include(FindPythonLibs)
> ....
> add_custom_command(OUTPUT "${CMAKE_BINARY_DIR}/error.cpp"
> "${CMAKE_BINARY_DIR}/error.hpp"non_existant_file
>     COMMENT "create error.cpp"
>     COMMAND ${PYTHON_EXECUTABLE} "${CMAKE_SOURCE_DIR}/mc2cpp.py"
> "${CMAKE_SOURCE_DIR}/Common/ErrorCodes/Error_Build/Errors.mc"
> "${CMAKE_BINARY_DIR}/error"
> )
> ##############
>
> This generates a header and a cpp file, which contains some error codes.
> When executing the cmake in my common environment it works fine. Under
> Bitbake it fails. Python is not found.
>

This is because the cmake class stops cmake from finding binaries on the
host.  I'm not convinced this is the right thing to do but haven't had the
time to research the problem.

Add OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM = "BOTH" to your recipe after
inherit cmake and it will look for and find the Python interpretter in
/usr/bin.

Ross

--94eb2c089e14678dee053796799f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 July 2016 at 11:22,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz=
@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I want to crea=
te a recipe for an application.
This application is generated through cmake. In the cmake file &quot;CMakeL=
ists.txt&quot;
is the passage:</font>
<br><font size=3D"2" face=3D"sans-serif">##############</font>
<br><font size=3D"2" face=3D"sans-serif">include(FindPythonInterp)</font>
<br><font size=3D"2" face=3D"sans-serif">include(FindPythonLibs)</font>
<br><font size=3D"2" face=3D"sans-serif">....</font>
<br><font size=3D"2" face=3D"sans-serif">add_custom_command(OUTPUT &quot;${=
CMAKE_BINARY_DIR}/error.cpp&quot;
&quot;${CMAKE_BINARY_DIR}/error.hpp&quot;non_existant_file</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 COMMENT &quot;create=
 error.cpp&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 COMMAND ${PYTHON_EXE=
CUTABLE}
&quot;${CMAKE_SOURCE_DIR}/mc2cpp.py&quot; &quot;${CMAKE_SOURCE_DIR}/Common/=
ErrorCodes/Error_Build/Errors.mc&quot;
&quot;${CMAKE_BINARY_DIR}/error&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">)</font>
<br><font size=3D"2" face=3D"sans-serif">##############</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">This generates a header and a cpp =
file,
which contains some error codes. When executing the cmake in my common
environment it works fine. Under Bitbake it fails. Python is not found.</fo=
nt>
<br></blockquote></div><br>This is because the cmake class stops cmake from=
 finding binaries on the host.=C2=A0 I&#39;m not convinced this is the righ=
t thing to do but haven&#39;t had the time to research the problem.</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Add=C2=A0OECM=
AKE_FIND_ROOT_PATH_MODE_PROGRAM =3D &quot;BOTH&quot; to your recipe after i=
nherit cmake and it will look for and find the Python interpretter in /usr/=
bin.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--94eb2c089e14678dee053796799f--
