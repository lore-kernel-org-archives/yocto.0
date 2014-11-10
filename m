Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A618FE008D7; Sun,  9 Nov 2014 17:43:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55864E007C2
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:42:57 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uz6so5002489obc.33
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DVNcWSvkOoyKr66syBEM3T24v/pTUAf9XfuPJJOGsxM=;
	b=oGWJG+3vHABcEZVKma2Mbm39fnk8cBt89NAXkSLKnjjLWenSO7QYTmY6uLkJpJSGRC
	igffvWckH/dk/nRLt9eMELolLbdRY53+5gAZuCJcfrWohzfpIskAdJbZoz+tT4qRA3TG
	vrvstr28Kkos5aBdaVaa5V5NkQ2qtzV17U+At5g8vfc9TpAC9DERwkXq783sSqQOfjEH
	ewdzw7db+oyHW4H7vidynzITMJKHWyH0AxjgllzqVT0qvBxS2sREiLq9EcWpNBp2jU8x
	W8Tpn/gaOSmX2AF9v31ag+G7XhUMqNjpLSJFUlrFmgRoKJ8Ne9VoD3kmgbL/m937T/qr
	iEsg==
X-Received: by 10.182.50.198 with SMTP id e6mr5105049obo.45.1415583777560;
	Sun, 09 Nov 2014 17:42:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Sun, 9 Nov 2014 17:42:36 -0800 (PST)
In-Reply-To: <5460158A.1000108@mindchasers.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
	<5460158A.1000108@mindchasers.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 10 Nov 2014 12:42:36 +1100
Message-ID: <CANR6C57niqeDaJHCB-Z=52A-sqkih5NFm-bxVUUDp6YamAy3eg@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 01:43:00 -0000
Content-Type: multipart/alternative; boundary=089e01537fc6361dec050777489c

--089e01537fc6361dec050777489c
Content-Type: text/plain; charset=UTF-8

Thanks Bob - glad to hear I'm not the first to see this!

Not using the ADT and 'source oe-init-build-env' is run before building.

On Mon, Nov 10, 2014 at 12:31 PM, Bob Cochran <yocto@mindchasers.com> wrote:

> On 11/09/2014 08:15 PM, Nick D'Ademo wrote:
>
>> Thanks for the quick reply Nick.
>>
>> Host system is Ubuntu 14.04. ncurses is already installed:
>>
>> sudo apt-get install libncurses5-dev
>> Reading package lists... Done
>> Building dependency tree
>> Reading state information... Done
>> libncurses5-dev is already the newest version.
>>
>
>
> Oh boy, I've seen this before.  I seem to remember this being caused by a
> problem with the path setup or something in the environment and maybe not
> being able to find the scripts folder or reaching a wrong folder first.
>
> How are you setting up your environment before invoking bitbake?
>
> Were you using the ADT?  If so check out cross compiling the kernel here:
> http://www.openembedded.org/wiki/SDK/Toolchain/
> Application_Developer_Toolkit
>
>
>
>
>>
>> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com
>> <mailto:xerofoify@gmail.com>> wrote:
>>
>>     Check to see if you actuality have it installed on your host system
>>     for your package manager.
>>     The library for ncurses for compiling the kernel is different based
>>     on your distro, check
>>     your distro's installer and install the correct ncurses package
>>     first. If this is still an
>>     issue please reply with a newer error message.
>>     Cheers Nick
>>
>>     On 14-11-09 08:05 PM, Nick D'Ademo wrote:
>>     > Getting a strange error when attempting to configure the Yocto
>> Linux kernel
>>     > via: bitbake linux-yocto -c menuconfig.
>>     >
>>     > Does anyone have any ideas? (error message below)
>>     > Much appreciated.
>>     >
>>     > Build Configuration:
>>     > BB_VERSION        = "1.24.0"
>>     > BUILD_SYS         = "x86_64-linux"
>>     > NATIVELSBSTRING   = "Ubuntu-14.04"
>>     > TARGET_SYS        = "x86_64-poky-linux"
>>     > MACHINE           = "nuc"
>>     > DISTRO            = "poky"
>>     > DISTRO_VERSION    = "1.7"
>>     > TUNE_FEATURES     = "m64 corei7"
>>     > TARGET_FPU        = ""
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>     >
>>      > *make[1]: Entering directory
>>     > `/home/nick/poky/build/tmp/work/corei7-64-intel-common-
>> poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_
>> 0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
>>     > GEN     ./Makefile *** Unable to find the ncurses libraries or the
>> ***
>>     > required header files. *** 'make menuconfig' requires the ncurses
>>     > libraries. ***  *** Install ncurses (ncurses-devel) and try again.
>> ***
>>     > make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
>>     > [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: ***
>> [__sub-make]
>>      > Error 2Command failed.Press any key to continue... *
>>      >
>>      >
>>      >
>>
>>
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01537fc6361dec050777489c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Bob - glad to hear I&#39;m not the first to se=
e this!<br><br></div>Not using the ADT and &#39;source oe-init-build-env&#3=
9; is run before building.<br><div class=3D"gmail_extra">
<br><div class=3D"gmail_quote">On Mon, Nov 10, 2014 at 12:31 PM, Bob Cochra=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:yocto@mindchasers.com" target=3D"=
_blank">yocto@mindchasers.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">On 11/09/2014 08:15 PM, Nick D&#39;Ademo wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks for the quick reply Nick.<br>
<br>
Host system is Ubuntu 14.04. ncurses is already installed:<br>
<br>
sudo apt-get install libncurses5-dev<br>
Reading package lists... Done<br>
Building dependency tree<br>
Reading state information... Done<br>
libncurses5-dev is already the newest version.<br>
</blockquote>
<br>
<br></span>
Oh boy, I&#39;ve seen this before.=C2=A0 I seem to remember this being caus=
ed by a problem with the path setup or something in the environment and may=
be not being able to find the scripts folder or reaching a wrong folder fir=
st.<br>
<br>
How are you setting up your environment before invoking bitbake?<br>
<br>
Were you using the ADT?=C2=A0 If so check out cross compiling the kernel he=
re: <a href=3D"http://www.openembedded.org/wiki/SDK/Toolchain/Application_D=
eveloper_Toolkit" target=3D"_blank">http://www.openembedded.org/<u></u>wiki=
/SDK/Toolchain/<u></u>Application_Developer_Toolkit</a><br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
<br>
<br>
On Mon, Nov 10, 2014 at 12:09 PM, nick &lt;<a href=3D"mailto:xerofoify@gmai=
l.com" target=3D"_blank">xerofoify@gmail.com</a><br></span><div><div class=
=3D"h5">
&lt;mailto:<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofoi=
fy@gmail.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Check to see if you actuality have it installed on your host =
system<br>
=C2=A0 =C2=A0 for your package manager.<br>
=C2=A0 =C2=A0 The library for ncurses for compiling the kernel is different=
 based<br>
=C2=A0 =C2=A0 on your distro, check<br>
=C2=A0 =C2=A0 your distro&#39;s installer and install the correct ncurses p=
ackage<br>
=C2=A0 =C2=A0 first. If this is still an<br>
=C2=A0 =C2=A0 issue please reply with a newer error message.<br>
=C2=A0 =C2=A0 Cheers Nick<br>
<br>
=C2=A0 =C2=A0 On 14-11-09 08:05 PM, Nick D&#39;Ademo wrote:<br>
=C2=A0 =C2=A0 &gt; Getting a strange error when attempting to configure the=
 Yocto Linux kernel<br>
=C2=A0 =C2=A0 &gt; via: bitbake linux-yocto -c menuconfig.<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt; Does anyone have any ideas? (error message below)<br>
=C2=A0 =C2=A0 &gt; Much appreciated.<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt; Build Configuration:<br>
=C2=A0 =C2=A0 &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0&q=
uot;<br>
=C2=A0 =C2=A0 &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86=
_64-linux&quot;<br>
=C2=A0 =C2=A0 &gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;=
<br>
=C2=A0 =C2=A0 &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-p=
oky-linux&quot;<br>
=C2=A0 =C2=A0 &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;nuc&quot;<br>
=C2=A0 =C2=A0 &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;poky&quot;<br>
=C2=A0 =C2=A0 &gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7&quot;<br>
=C2=A0 =C2=A0 &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m64 corei7&qu=
ot;<br>
=C2=A0 =C2=A0 &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<b=
r>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 =C2=A0&gt; *make[1]: Entering directory<br>
=C2=A0 =C2=A0 &gt; `/home/nick/poky/build/tmp/<u></u>work/corei7-64-intel-c=
ommon-<u></u>poky-linux/linux-yocto/3.17.1+<u></u>gitAUTOINC+b86dd5c6f4_<u>=
</u>0caf16d385-r0/linux-corei7-64-<u></u>intel-common-standard-build&#39;<b=
r>
=C2=A0 =C2=A0 &gt; GEN=C2=A0 =C2=A0 =C2=A0./Makefile *** Unable to find the=
 ncurses libraries or the ***<br>
=C2=A0 =C2=A0 &gt; required header files. *** &#39;make menuconfig&#39; req=
uires the ncurses<br>
=C2=A0 =C2=A0 &gt; libraries. ***=C2=A0 *** Install ncurses (ncurses-devel)=
 and try again. ***<br>
=C2=A0 =C2=A0 &gt; make[3]: *** [scripts/kconfig/<u></u>dochecklxdialog] Er=
ror 1make[2]: ***<br>
=C2=A0 =C2=A0 &gt; [menuconfig] Error 2make[1]: *** [sub-make] Error 2make:=
 *** [__sub-make]<br>
=C2=A0 =C2=A0 =C2=A0&gt; Error 2Command failed.Press any key to continue...=
 *<br>
=C2=A0 =C2=A0 =C2=A0&gt;<br>
=C2=A0 =C2=A0 =C2=A0&gt;<br>
=C2=A0 =C2=A0 =C2=A0&gt;<br>
<br>
<br>
<br>
<br>
</div></div></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--089e01537fc6361dec050777489c--
