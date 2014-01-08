Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC57E0089A
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 06:34:44 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id uz6so1747760obc.34
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 06:34:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=iggJWizdB0WKD9lAFpYUxz1g090viwMYnZqzzcPEA4w=;
	b=LBPy+VkxRYAu6meC6t8/7ACXsowJz/yshBKFFL/1JT2R2WpqsfoqeWR+1NsQ54u6Gt
	dwLN5aPD3f4srN9SbAyrS2MQ7eFyH8o5pn3xq0DtvMUpOxovP+FBtwSwODfhE8V7okmT
	eKd1Lh0hSlmZS3lrtCKb8IWkvJ7Pvdk5Dmwr9Lr1xwUBHaddZNWWKRqRNQU1u7mJcVfo
	rvGfg97+iLeXNLhHRJxk3QpPPsQ5fo+9LO2iSACAf+3ZmoERcPhU8RgQ4tYVy/N7/Iw3
	gQrlGd2Cuey8zPizSDtS90puX9zE3yQ4RKIP/y0ibHw7VR/ElwVhsgk4VHau0ZMPInQC
	IZsg==
X-Gm-Message-State: ALoCoQku/UR30/bFJDIKXqEHdRrawFSHvT/IbDA9D6/UB2GXgbFsSfIllc60cTE+bj+xyvkNUJK3
X-Received: by 10.60.16.201 with SMTP id i9mr80027940oed.14.1389191683778;
	Wed, 08 Jan 2014 06:34:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.89.143 with HTTP; Wed, 8 Jan 2014 06:34:23 -0800 (PST)
In-Reply-To: <CAGNTBAUw=P7S4kWTSu2SE7PjrwpCHj9eWgvXGB=naY4XMSNjQg@mail.gmail.com>
References: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
	<CAP71WjxP67f0pnxBYZfFKEB0dvR55yc4r3etUNhwbi1vZdftMg@mail.gmail.com>
	<CAGNTBAVHWpnM2p+WoWmOJ145Y8eaeQSEPex8AXZtPod77hGtgA@mail.gmail.com>
	<CAP71WjzP3w43Bmw7R=FeC8p31pJLNwD1zyBmsGL4ZshwbzLpag@mail.gmail.com>
	<CAGNTBAUw=P7S4kWTSu2SE7PjrwpCHj9eWgvXGB=naY4XMSNjQg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 8 Jan 2014 15:34:23 +0100
Message-ID: <CAP71Wjy6XTw9nQn8fc1ZmUY6iqiFkAS-Z1dAZK9+7=KteMbvzA@mail.gmail.com>
To: Reeve Yang <reeve.yang@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Problem & Question about FILES_${PN}
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
X-List-Received-Date: Wed, 08 Jan 2014 14:34:45 -0000
Content-Type: multipart/alternative; boundary=089e0122fa7ad65ded04ef7664a1

--089e0122fa7ad65ded04ef7664a1
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 7, 2014 at 9:59 PM, Reeve Yang <reeve.yang@gmail.com> wrote:

> As you suggested, I removed  ${libdir}/${BPN}/*${SOLIBSDEV} from
> "FILES_${PN}-dev", but now I'm getting this error:
>
> ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
> syslog-ng path
> '/work/x86_64-poky-linux/syslog-ng/3.2.5-r12.1/packages-split/syslog-ng/usr/lib64/syslog-ng/libafsocket.so'
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home2/reeve-ws/yocto-dylan-merge/build/tmp/work/x86_64-poky-linux/syslog-ng/3.2.5-r12.1/temp/log.do_package.16779
> ERROR: Task 6
> (/home2/reeve-ws/yocto-dylan-merge/meta-openembedded/meta-oe/recipes-support/nonworking/syslog-ng/
> syslog-ng_3.2.5.bb, do_package) failed with exit code '1'
>

right, this is a 'sanity' check which is done in
meta/classes/insane.bbclass to make sure that .so symlink only go in the
-dev packages. i am not familiar with your situation and syslog-ng build,
but I would expect plugins DLL (e.g. .so files) to be real files, not
symlink. symlink .so are typically used for library (linker name vs
soname). a good similar example is the Gstreamer plugins which are real .so
files.


>
>
> It looks main binary package doesn't have a symlink of .so. How to fix
> that?
>

 it is right for OE to prevent you from having symlink .so in binary
packages (to me), so you might need to understand why you get them in the
first place.

--089e0122fa7ad65ded04ef7664a1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 7, 2014 at 9:59 PM, Reeve Yang <span dir=3D"ltr">&lt;<a href=3D=
"mailto:reeve.yang@gmail.com" target=3D"_blank">reeve.yang@gmail.com</a>&gt=
;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>As you suggested, I removed=A0<span style=3D"font-siz=
e:13px;font-family:arial,sans-serif">=A0${libdir}/${BPN}/*${</span><span st=
yle=3D"font-size:13px;font-family:arial,sans-serif">SOLIBSDEV} from &quot;F=
ILES_${PN}-dev&quot;, but now I&#39;m getting this error:</span></div>


<div><span style=3D"font-size:13px;font-family:arial,sans-serif"><br></span=
></div><div><span style=3D"font-size:13px;font-family:arial,sans-serif"><di=
v>ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so: s=
yslog-ng path &#39;/work/x86_64-poky-linux/syslog-ng/3.2.5-r12.1/packages-s=
plit/syslog-ng/usr/lib64/syslog-ng/libafsocket.so&#39;</div>


<div>ERROR: QA run found fatal errors. Please consider fixing them.</div><d=
iv>ERROR: Function failed: do_package_qa</div><div>ERROR: Logfile of failur=
e stored in: /home2/reeve-ws/yocto-dylan-merge/build/tmp/work/x86_64-poky-l=
inux/syslog-ng/3.2.5-r12.1/temp/log.do_package.16779</div>


<div>ERROR: Task 6 (/home2/reeve-ws/yocto-dylan-merge/meta-openembedded/met=
a-oe/recipes-support/nonworking/syslog-ng/<a href=3D"http://syslog-ng_3.2.5=
.bb" target=3D"_blank">syslog-ng_3.2.5.bb</a>, do_package) failed with exit=
 code &#39;1&#39;</div>

</span></div></blockquote><div><br></div><div>right, this is a &#39;sanity&=
#39; check which is done in meta/classes/insane.bbclass to make sure that .=
so symlink only go in the -dev packages. i am not familiar with your situat=
ion and syslog-ng build, but I would expect plugins DLL (e.g. .so files) to=
 be real files, not symlink. symlink .so are typically used for library (li=
nker name vs soname). a good similar example is the Gstreamer plugins which=
 are real .so files.=A0</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div><span style=3D"font-size:13px;font-fami=
ly:arial,sans-serif">
<div><br></div><div><br></div><div>It looks main binary package doesn&#39;t=
 have a symlink of .so. How to fix that?</div></span></div></blockquote></d=
iv><br>=A0it is right for OE to prevent you from having symlink .so in bina=
ry packages (to me), so you might need to understand why you get them in th=
e first place.<br>

</div></div>

--089e0122fa7ad65ded04ef7664a1--
