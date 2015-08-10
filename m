Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB19AE00A90; Mon, 10 Aug 2015 12:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDF0E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 12:08:37 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so61624948qkb.2
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 12:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZxGXxFsgmPpfcUvCpELJzxSi8SOuqUCcyf0Nc4kXUYc=;
	b=k6IBabALZH5FJB/IV9C0mSNwYZhldnvej1SPTtETMTEaVP98Vta/U0BYrA09OYSfvu
	u8S19GYzF4ME12o97nhvckexRdEG50MsfbBeWLfV6G2T4wzggtixQP2GPpZKm88VUQPm
	CAoGUl7h7rx3kX97bESNVgjYEbGm9o7grcNx2jV3TvVs7TrQF7+7hW5BjCXXswRJJWQK
	0XxS7x0kk+j57Ud4ItGAuH37PypuMyJmRgvJ7gVVuz+xm74V0ypfTAIUeGtRSpsWr+5k
	O4z8BDR3mRV2GQYrtIRBlQsWD+8MhPG7wlmfPZumCvDzFQqejyHdfg7eR3r5GY9mKAwv
	Qbrw==
MIME-Version: 1.0
X-Received: by 10.55.50.74 with SMTP id y71mr29865744qky.52.1439233716912;
	Mon, 10 Aug 2015 12:08:36 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Mon, 10 Aug 2015 12:08:36 -0700 (PDT)
In-Reply-To: <F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
	<CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
	<F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
Date: Mon, 10 Aug 2015 21:08:36 +0200
Message-ID: <CACTu1Lj+9WOZXh2-P5pWeaGwn_CPxBt5bcQSB3dTAJnK5Yc=Og@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 19:08:40 -0000
Content-Type: multipart/alternative; boundary=001a11470ce272087f051cf9b655

--001a11470ce272087f051cf9b655
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I also did further research. The problem is that FIND_PACKAGE does not work
for soci. For that reason one has to specify CMake variable such as
SOCI_INCLUDEDIR manually. Using namespaces such as #include <soci/soci.h>
is no solution: When enabling further backends such as postgresql this
approach fails since these backends also require sth. like #include
<soci.h>. Therefore changes in the soci sources files would be necessary.

After manually changing CMakeLists.txt:

SET(SOCI_INCLUDEDIR /usr/include/soci)

to

SET(SOCI_INCLUDEDIR
/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroots=
/edison/usr/include/soci)

everything worked fine. Is there any way to get the path
"/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroot=
s/edison/"
within CMakeLists.txt automatically?


2015-08-10 19:56 GMT+02:00 Khem Raj <raj.khem@gmail.com>:

>
> On Aug 10, 2015, at 4:50 AM, yocto yocto <yoctomailinglist@gmail.com>
> wrote:
>
> Please see the attachment for a simplified example. A library (consisting
> of 1 cpp and 1 header) is being built using soci. Compiling fails since
> soci.h is not found.
>
> 2015-08-10 13:16 GMT+02:00 Burton, Ross <ross.burton@intel.com>:
>
>>
>> On 10 August 2015 at 12:13, yocto yocto <yoctomailinglist@gmail.com>
>> wrote:
>>
>>> However, when compiling my own recipe I get compiling errors ("soci.h
>>> not found"). I am 100% sure that I specified the correct paths.
>>>
>>
>> The headers are likely installed in the sysroot, but your script can't
>> find them.  The first step would be to verify that the sysroot does in f=
act
>> have the headers installed in, and then you'll have to debug your config=
ure
>> scripts to find out why they don't find the headers.  Sharing your recip=
e
>> and sources will help here.
>>
>
> yeah the CMakeLists.txt seems to not include search paths for
> <sysroot>/usr/include/soci one way you could do it is refer to soci files
> with namespace when using them in source code like #include <soci/soci.h>
> then it will automatically apply the default sysroot search paths to
> includedir and reach it. Alternative is that you can defile a .cmake file
> for soci
> and include that in soci recipe and then just find the module in your
> package=E2=80=99s CMakeLists.txt
>
>
>> Ross
>>
>
> <soci-example.tar.bz2>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a11470ce272087f051cf9b655
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I also did further research. The problem is that=
 FIND_PACKAGE does not work for soci. For that reason one has to specify CM=
ake variable such as SOCI_INCLUDEDIR manually. Using namespaces such as #in=
clude &lt;soci/soci.h&gt; is no solution: When enabling further backends su=
ch as postgresql this approach fails since these backends also require sth.=
 like #include &lt;soci.h&gt;. Therefore changes in the soci sources files =
would be necessary.<br><br></div>After manually changing  CMakeLists.txt:<b=
r><br>SET(SOCI_INCLUDEDIR /usr/include/soci)<br><br>to<br><br>SET(SOCI_INCL=
UDEDIR /home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/s=
ysroots/edison/usr/include/soci)<br><br></div>everything worked fine. Is th=
ere any way to get the path &quot;/home/my-PC/development/2015-08-04_edison=
-src/edison-src/build/tmp/sysroots/edison/&quot; within CMakeLists.txt auto=
matically? <br><div><br></div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">2015-08-10 19:56 GMT+02:00 Khem Raj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap=
:break-word"><br><div><span class=3D""><blockquote type=3D"cite"><div>On Au=
g 10, 2015, at 4:50 AM, yocto yocto &lt;<a href=3D"mailto:yoctomailinglist@=
gmail.com" target=3D"_blank">yoctomailinglist@gmail.com</a>&gt; wrote:</div=
><br><div><div dir=3D"ltr">Please see the attachment for a simplified examp=
le. A library (consisting of 1 cpp and 1 header) is being built using soci.=
 Compiling fails since soci.h is not found.</div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">2015-08-10 13:16 GMT+02:00 Burton, Ross <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blan=
k">ross.burton@intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div class=3D"gmail_extra"><span><br><div class=3D"gmail_q=
uote">On 10 August 2015 at 12:13, yocto yocto <span dir=3D"ltr">&lt;<a href=
=3D"mailto:yoctomailinglist@gmail.com" target=3D"_blank">yoctomailinglist@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>How=
ever, when compiling my own recipe I get compiling errors (&quot;soci.h not=
 found&quot;). I am 100% sure that I specified the correct paths.</div><div=
></div></blockquote></div><br></span>The headers are likely installed in th=
e sysroot, but your script can&#39;t find them.=C2=A0 The first step would =
be to verify that the sysroot does in fact have the headers installed in, a=
nd then you&#39;ll have to debug your configure scripts to find out why the=
y don&#39;t find the headers.=C2=A0 Sharing your recipe and sources will he=
lp here.</div></div></blockquote></div></div></div></blockquote><div><br></=
div></span><div>yeah the CMakeLists.txt seems to not include search paths f=
or &lt;sysroot&gt;/usr/include/soci one way you could do it is refer to soc=
i files with namespace when using them in source code like #include &lt;soc=
i/soci.h&gt; then it will automatically apply the default sysroot search pa=
ths to includedir and reach it. Alternative is that you can defile a .cmake=
 file for soci</div><div>and include that in soci recipe and then just find=
 the module in your package=E2=80=99s CMakeLists.txt</div><br><blockquote t=
ype=3D"cite"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><span><font color=3D"#888888">=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/font></span></div>
</blockquote></div><br></div>
<span>&lt;soci-example.tar.bz2&gt;</span>-- <br>___________________________=
____________________<br>yocto mailing list<br><a href=3D"mailto:yocto@yocto=
project.org" target=3D"_blank">yocto@yoctoproject.org</a><br><a href=3D"htt=
ps://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists=
.yoctoproject.org/listinfo/yocto</a><br></div></blockquote></div><br></div>=
</blockquote></div><br></div>

--001a11470ce272087f051cf9b655--
