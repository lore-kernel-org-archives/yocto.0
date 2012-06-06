Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CABE7E01436
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 22:13:51 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so7306740bkc.35
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 22:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nmj1fBi+eea16rPm7oN/cWcYDqC+8w6/1iCTIISmxI0=;
	b=XweVXMEIJ/23qPSDf9t2s3+3KsKJjlnDC7hycGyfJrOPev/JMskf8R0tl9NigqxszE
	FXucLiooIgKF/loZf9Ss0Iiw1N/ZvAn0AOhhd46lYIPNJYLiG758slYgB/w2P3HM0vk4
	6m6UjGdIFlS2vWi6DjWVe3X3+v5p+yz9QVT1VxNqsvbvyCVtlVe2tuVQO6nYPaIoDaeU
	GSg2EjxhqUGsB6JjJsre/tNRQm4ur32knQ596MWDLnDqxuPKWd7MWhulWtP6YIP0ltzo
	O5GgAKEABIFzxODTh+D26HSK3YaXllG9TXvFJcKdcXa6kJlqUVYdyRzVGBV5KLwekmyV
	bLfQ==
Received: by 10.204.151.200 with SMTP id d8mr11400692bkw.82.1338959630538;
	Tue, 05 Jun 2012 22:13:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.232.209 with HTTP; Tue, 5 Jun 2012 22:13:30 -0700 (PDT)
In-Reply-To: <CA+Z6RkUEkbtpytcF93wvziDoj+LcvJZQyDQUhwD+jmVh_r-_gQ@mail.gmail.com>
References: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
	<CA+Z6RkV3zeyCvfSx0ZrRQP7zhNQknchsN7q_sho1VkE2NGvFzg@mail.gmail.com>
	<CAMKF1spg+zYoLks6YNbFd8eXwMwdSLEeY2B2eOBLAJxTE=SODw@mail.gmail.com>
	<CA+Z6RkUEkbtpytcF93wvziDoj+LcvJZQyDQUhwD+jmVh_r-_gQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 6 Jun 2012 10:43:30 +0530
Message-ID: <CA+Z6RkW4UFDnRZU7AYpK1Pgdukb2XfZMzGWTZFVSg__Vc-wgeA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Broken SDK
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
X-List-Received-Date: Wed, 06 Jun 2012 05:13:52 -0000
Content-Type: multipart/alternative; boundary=0015175cba842597ed04c1c6d573

--0015175cba842597ed04c1c6d573
Content-Type: text/plain; charset=ISO-8859-1

Finally this error is also resolving. I was exporting wrong path for
QMAKESPEC.
I need to export same path as defined in
environment-setup-armv6-poky-linux-gnueabi, so i executed-

"source  /opt/poky/1.0/environment-setup-armv6-poky-linux-gnueabi "

then tried compiling Qt applications and got successful.
Thanks to Yocto community !!

On Tue, Jun 5, 2012 at 5:48 PM, Navani Srivastava <
navani.srivastava@gmail.com> wrote:

> Hi,
>
> Thanks for support. I successfully created SDK with this modification. I
> installed the same SDK and tried compiling Qt application, but got error
> mentioning
>
> "Failure to read QMAKESPEC conf file
> /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe-g++/qmake.conf/qmake.conf.
> Error processing project file: /home/Qt/hello/hello.pro"
>
> I had exported path of QMAKESPEC to
> /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe-g++/qmake.conf
>
>
> Any idea why I am ending up with this error ? Any reply is appreciable.
>
> Thanks
> Navani
>
>
> On Wed, May 30, 2012 at 12:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, May 29, 2012 at 2:03 AM, Navani Srivastava
>> <navani.srivastava@gmail.com> wrote:
>> >
>> > "ln -s
>> > /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs
>> > mkspecs
>> > | ln: creating symbolic link `mkspecs': File exists"
>> >
>>
>> as it says it seems file is there already. So make sure the preexisting
>> file
>> is correct if so then you can check first if file exists before creating
>> symlink
>> if the file is incorrect then just use ln -sf to create the symlink
>>
>> > On commenting out
>> >  "(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s
>> > ${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)"
>>
>
>

--0015175cba842597ed04c1c6d573
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Finally this error is also resolving. I was exporting wrong path for QMAKES=
PEC. <br>I need to export same path as defined in environment-setup-armv6-p=
oky-linux-gnueabi, so i executed-<br><br>&quot;source=A0 /opt/poky/1.0/envi=
ronment-setup-armv6-poky-linux-gnueabi &quot;<br>

<br>then tried compiling Qt applications and got successful.<br>Thanks to Y=
octo community !!<br><br><div class=3D"gmail_quote">On Tue, Jun 5, 2012 at =
5:48 PM, Navani Srivastava <span dir=3D"ltr">&lt;<a href=3D"mailto:navani.s=
rivastava@gmail.com" target=3D"_blank">navani.srivastava@gmail.com</a>&gt;<=
/span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br><br>Thanks for sup=
port. I successfully created SDK with this modification. I installed the sa=
me SDK and tried compiling Qt application, but got error mentioning <br>

<br>&quot;Failure to read QMAKESPEC conf file /opt/poky/1.0/sysroots/arm-po=
ky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe-g++/qmake.conf/q=
make.conf.<br>
Error processing project file: /home/Qt/hello/<a href=3D"http://hello.pro" =
target=3D"_blank">hello.pro</a>&quot;<br><br>I had exported path of QMAKESP=
EC to /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspec=
s/linux-gnueabi-oe-g++/qmake.conf <br>


<br>Any idea why I am ending up with this error ? Any reply is appreciable.=
<br><br>Thanks <br><span class=3D"HOEnZb"><font color=3D"#888888">Navani <b=
r></font></span><div class=3D"HOEnZb"><div class=3D"h5"><br><br><div class=
=3D"gmail_quote">

On Wed, May 30, 2012 at 12:36 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D=
"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>On Tue, May 29, 2012=
 at 2:03 AM, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blank">navani=
.srivastava@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &quot;ln -s<br>
&gt; /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs=
<br>
&gt; mkspecs<br>
&gt; | ln: creating symbolic link `mkspecs&#39;: File exists&quot;<br>
&gt;<br>
<br>
</div>as it says it seems file is there already. So make sure the preexisti=
ng file<br>
is correct if so then you can check first if file exists before creating sy=
mlink<br>
if the file is incorrect then just use ln -sf to create the symlink<br>
<div><div><br>
&gt; On commenting out<br>
&gt; =A0&quot;(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s<br>
&gt; ${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)&quot;<br>
</div></div></blockquote></div><br>
</div></div></blockquote></div><br>

--0015175cba842597ed04c1c6d573--
