Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E787E00C59; Tue, 21 Nov 2017 05:29:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2045AE00AF2
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 05:29:34 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id 72so1981696itl.5
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 05:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O5rF2dXik3FZ5PwBhPdkcsz41RB1oxbgwZAzGIrTG1o=;
	b=nFCGhpfIiauLL67CrQmBSmIuTgz07aHqeWz1dqk+Syojn8N1AN2OCYfLPsYo0m/eqW
	mBZOgprEyQVfEyql7guZ3GgWoVbiUXZeWDNtzMbrEJ068WANwN255DsS0zcAYhaq05of
	gKMnuSQJSguOhKikHSHz15PKYSsN5SNYfLdZ9TBcFsYlqWyDiqgYTHszU/fWU+qjacAG
	cN1YF/hBJqDfDS5h1+3QtzELVD0ZW54b5Y/Rb95PCUXLo/Nv5RFB1R3eqfM0+gk9WaRN
	3Rz1vI/7qC9DRs6HeCLzje8k216TZdgotnuczqaUua9JQN6sBHSpEbjrLQHgw+VrWlYJ
	uytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O5rF2dXik3FZ5PwBhPdkcsz41RB1oxbgwZAzGIrTG1o=;
	b=OzQPbFJC+lSUrfyE5FDwBPYd+QN3vfMP2eV61Bpj7ygYzkF4yQbQ4dvZ0DZgvhwFKu
	9kKhjd5+zjGQj6e4rOlB0VHw06AHVeK4Il/pnADDe/gpCW9vhXfVE7IyJ2Xf1/0CIc17
	Yr8k7/MSeh+dOsXdE5P81GYcmouUwMTqMutLRBXYdw+jY6/J0YUif3Yh9jQGHPopWzHY
	eqEIljPHw+0G8Md3JpY/s+Ig0g+QaA+bt2D2TzAN+WNQq1onnpmfcLVd4YqMZESYFLXG
	zpFxWdSvI22ez29nsQeGr/QCOhdXgk02nvhPgAnPTnNC48xyZDjgYVoLjE4HKn86Kr7I
	hy4g==
X-Gm-Message-State: AJaThX5xbbawjr0rTTfQXWKXNxOsS08lRqRk5E0/IB+TOHDsmw/jkMt+
	dQrMzzDIdtKNxqjrLi9R9OFQhlIktgUPOSdY/tzkrTpd
X-Google-Smtp-Source: AGs4zMakL0V2ooNSLihfjACxp6Yt/fonBY4gUB15WImtMLZBujS1YJwdyuWvcC8qsJglhLsTnqQQ7yEhULRUUycyoI8=
X-Received: by 10.36.71.74 with SMTP id t71mr1900173itb.53.1511270974210; Tue,
	21 Nov 2017 05:29:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Tue, 21 Nov 2017 05:29:13 -0800 (PST)
In-Reply-To: <3759e2a5-2e8f-752f-ac14-87d5b7cfba5e@guy-morand.ch>
References: <597142b3-515b-e75f-263d-8981d2b6cd67@guy-morand.ch>
	<CAJTo0LY_s_+HViLrjGF6GVguTE8mUy9odL97udCs8KzcFG+rfw@mail.gmail.com>
	<c05cb2f0-419d-3ea7-a276-ae57264c9863@guy-morand.ch>
	<3759e2a5-2e8f-752f-ac14-87d5b7cfba5e@guy-morand.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 21 Nov 2017 13:29:13 +0000
Message-ID: <CAJTo0LZyHd_EyFidmk9a3ycgUZfOAz5dAqbMQVxQtCJgQdJt3g@mail.gmail.com>
To: Guy Morand <guy@guy-morand.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Makefile library and debian naming
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
X-List-Received-Date: Tue, 21 Nov 2017 13:29:36 -0000
Content-Type: multipart/alternative; boundary="001a113f6a2093de2c055e7e313c"

--001a113f6a2093de2c055e7e313c
Content-Type: text/plain; charset="UTF-8"

Yes, that :)

http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html

Ross

On 21 November 2017 at 13:26, Guy Morand <guy@guy-morand.ch> wrote:

> Ok a quick search on the Internet and I've found out that I probably miss
> some linker parameters such as:
> -Wl,-soname,libmessages.so.0
>
> Great, I have the feeling I learned something important today!
>
> Thanks for the pointers!
>
> Guy
>
>
> On 11/21/2017 02:22 PM, Guy Morand wrote:
>
>> Ross,
>>
>> Thanks for your quick reply!
>>
>> No, I don't inherit debian and wish I could leave the so file as is, it
>> was just a quick and dirty hack to compile my image.
>>
>>  > Another indication of this is the lack of renaming.  Look at
>>  > the makefile, specifically the specified soname.
>>
>> The Makefile is written by myself. The library is built as follow:
>> $(SHARED_OUT_DIR)/%.o: %.c
>>      $(CC) $(CFLAGS) -fPIC -c -o $@ $<
>>
>> $(SHARED_OUT_DIR)/$(SHARED_LIB_NAME): $(SHARED_OBJS)
>>      $(CC) -shared $(LDFLAGS) $(SHARED_OBJS) -o $@
>>
>> What do you mean with "lack of renaming", do you have some pointers?
>> Something with LDFLAGS? What is the specified "soname"?
>>
>> Guy
>>
>> On 11/21/2017 02:13 PM, Burton, Ross wrote:
>>
>>> You don't need to inherit debian in a recipe, that is meant to be a
>>> distro-level inherit (and is inherited out of the box).
>>>
>>> Deleting the .so breaks non-static linking as that is the file which is
>>> used to link against, so don't delete it.  It should be in the -dev package.
>>>
>>> The QA error is probably because your library is built wrong in the
>>> makefile.  Another indication of this is the lack of renaming.  Look at the
>>> makefile, specifically the specified soname.
>>>
>>> Ross
>>>
>>> On 21 November 2017 at 13:00, Guy Morand <guy@guy-morand.ch <mailto:
>>> guy@guy-morand.ch>> wrote:
>>>
>>>     Hallo Yocto developpers!
>>>
>>>     I'm trying to build a Makefile based library. The recipe looks like
>>>     this:
>>>     ---[recipe mesages.bb <http://mesages.bb>]---
>>>     # SNIP recipe header
>>>
>>>     do_compile() {
>>>        oe_runmake LDFLAGS="${LDFLAGS}" shared-lib
>>>        oe_runmake LDFLAGS="${LDFLAGS}" static-lib
>>>     }
>>>
>>>     do_install() {
>>>        oe_runmake install DESTDIR=${D}${prefix}
>>>
>>>        # Fix pkg-config
>>>        sed -i 's,${D},,g' ${D}/usr/lib/pkgconfig/messages.pc
>>>
>>>        # FIXME: Try to make a debian package libmessages instead
>>>        # This avoids errors when installing an app linking with this
>>>     library!
>>>        rm ${D}/${libdir}/lib${PN}.so
>>>     }
>>>     ---[/recipe mesages.bb <http://mesages.bb>]---
>>>
>>>     The resulted image in WORKDIR looks like this:
>>>     ---[WORKDIR/image]---
>>>     image/usr/lib/libmessages.so.0.3.0
>>>     image/usr/lib/libmessages.so.0
>>>     image/usr/lib/libmessages.a
>>>     image/usr/lib/pkgconfig/messages.pc
>>>     image/usr/include/messages/<all my headers>
>>>     ---[/WORKDIR/image]---
>>>
>>>     The generated ipk packages are:
>>>     ---[ipks]---
>>>     messages-dev_git.ipk
>>>     messages_git.ipk
>>>     messages-staticdev_git.ipk
>>>     messages-dbg_git.ipk
>>>     ---[/ipks]---
>>>
>>>     The problem is that an application compiled with this library links
>>>     against the static library. If I don't remove the .so file from the
>>>     recipe, my application fails installing:
>>>     ---[bitbake error]---
>>>     ERROR: myApp do_package_qa: QA Issue: /usr/bin/myApp contained in
>>>     package myApp requires libmessages.so, but no providers found in
>>>     RDEPENDS_myApp? [file-rdeps]
>>>     ---[/bitbake error]---
>>>
>>>     Probably because the .so gets packed in the messages-dev.ipk ...
>>>
>>>     The strange thing is that I would expect a generated ipk with debian
>>>     naming such as:
>>>     libmessages_git.ipk
>>>     libmessages-dbg_git.ipk
>>>     libmessages-dev_git.ipk
>>>     libmessages-staticdev_git.ipk
>>>
>>>
>>>     I  have other libraries based on cmake and everything works as
>>> expected!
>>>
>>>     Despite the recipe already inherits "debian", explicitly inheriting
>>>     this class doesn't help.
>>>
>>>     What am I doing wrong?
>>>
>>>     Guy Morand
>>>     --     _______________________________________________
>>>     yocto mailing list
>>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>     https://lists.yoctoproject.org/listinfo/yocto
>>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>>
>>> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f6a2093de2c055e7e313c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, that :)<div><br></div><div><a href=3D"http://tldp.org=
/HOWTO/Program-Library-HOWTO/shared-libraries.html">http://tldp.org/HOWTO/P=
rogram-Library-HOWTO/shared-libraries.html</a><br></div><div><br></div><div=
>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 November 2017 at 13:26, Guy Morand <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:guy@guy-morand.ch" target=3D"_blank">guy@guy-morand.ch</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Ok a quick search on the Internet=
 and I&#39;ve found out that I probably miss some linker parameters such as=
:<br>
-Wl,-soname,libmessages.so.0<br>
<br>
Great, I have the feeling I learned something important today!<br>
<br>
Thanks for the pointers!<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Guy</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 11/21/2017 02:22 PM, Guy Morand wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Ross,<br>
<br>
Thanks for your quick reply!<br>
<br>
No, I don&#39;t inherit debian and wish I could leave the so file as is, it=
 was just a quick and dirty hack to compile my image.<br>
<br>
=C2=A0&gt; Another indication of this is the lack of renaming.=C2=A0 Look a=
t<br>
=C2=A0&gt; the makefile, specifically the specified soname.<br>
<br>
The Makefile is written by myself. The library is built as follow:<br>
$(SHARED_OUT_DIR)/%.o: %.c<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0$(CC) $(CFLAGS) -fPIC -c -o $@ $&lt;<br>
<br>
$(SHARED_OUT_DIR)/$(SHARED_LIB<wbr>_NAME): $(SHARED_OBJS)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0$(CC) -shared $(LDFLAGS) $(SHARED_OBJS) -o $@=
<br>
<br>
What do you mean with &quot;lack of renaming&quot;, do you have some pointe=
rs? Something with LDFLAGS? What is the specified &quot;soname&quot;?<br>
<br>
Guy<br>
<br>
On 11/21/2017 02:13 PM, Burton, Ross wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
You don&#39;t need to inherit debian in a recipe, that is meant to be a dis=
tro-level inherit (and is inherited out of the box).<br>
<br>
Deleting the .so breaks non-static linking as that is the file which is use=
d to link against, so don&#39;t delete it.=C2=A0 It should be in the -dev p=
ackage.<br>
<br>
The QA error is probably because your library is built wrong in the makefil=
e.=C2=A0 Another indication of this is the lack of renaming.=C2=A0 Look at =
the makefile, specifically the specified soname.<br>
<br>
Ross<br>
<br>
On 21 November 2017 at 13:00, Guy Morand &lt;<a href=3D"mailto:guy@guy-mora=
nd.ch" target=3D"_blank">guy@guy-morand.ch</a> &lt;mailto:<a href=3D"mailto=
:guy@guy-morand.ch" target=3D"_blank">guy@guy-morand.ch</a>&gt;&gt; wrote:<=
br>
<br>
=C2=A0=C2=A0=C2=A0 Hallo Yocto developpers!<br>
<br>
=C2=A0=C2=A0=C2=A0 I&#39;m trying to build a Makefile based library. The re=
cipe looks like<br>
=C2=A0=C2=A0=C2=A0 this:<br>
=C2=A0=C2=A0=C2=A0 ---[recipe <a href=3D"http://mesages.bb" rel=3D"noreferr=
er" target=3D"_blank">mesages.bb</a> &lt;<a href=3D"http://mesages.bb" rel=
=3D"noreferrer" target=3D"_blank">http://mesages.bb</a>&gt;]---<br>
=C2=A0=C2=A0=C2=A0 # SNIP recipe header<br>
<br>
=C2=A0=C2=A0=C2=A0 do_compile() {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 oe_runmake LDFLAGS=3D&quot;${LDFLAGS}&quot;=
 shared-lib<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 oe_runmake LDFLAGS=3D&quot;${LDFLAGS}&quot;=
 static-lib<br>
=C2=A0=C2=A0=C2=A0 }<br>
<br>
=C2=A0=C2=A0=C2=A0 do_install() {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 oe_runmake install DESTDIR=3D${D}${prefix}<=
br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 # Fix pkg-config<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 sed -i &#39;s,${D},,g&#39; ${D}/usr/lib/pkg=
config/message<wbr>s.pc<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 # FIXME: Try to make a debian package libme=
ssages instead<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 # This avoids errors when installing an app=
 linking with this<br>
=C2=A0=C2=A0=C2=A0 library!<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 rm ${D}/${libdir}/lib${PN}.so<br>
=C2=A0=C2=A0=C2=A0 }<br>
=C2=A0=C2=A0=C2=A0 ---[/recipe <a href=3D"http://mesages.bb" rel=3D"norefer=
rer" target=3D"_blank">mesages.bb</a> &lt;<a href=3D"http://mesages.bb" rel=
=3D"noreferrer" target=3D"_blank">http://mesages.bb</a>&gt;]---<br>
<br>
=C2=A0=C2=A0=C2=A0 The resulted image in WORKDIR looks like this:<br>
=C2=A0=C2=A0=C2=A0 ---[WORKDIR/image]---<br>
=C2=A0=C2=A0=C2=A0 image/usr/lib/libmessages.so.0<wbr>.3.0<br>
=C2=A0=C2=A0=C2=A0 image/usr/lib/libmessages.so.0<br>
=C2=A0=C2=A0=C2=A0 image/usr/lib/libmessages.a<br>
=C2=A0=C2=A0=C2=A0 image/usr/lib/pkgconfig/messag<wbr>es.pc<br>
=C2=A0=C2=A0=C2=A0 image/usr/include/messages/&lt;al<wbr>l my headers&gt;<b=
r>
=C2=A0=C2=A0=C2=A0 ---[/WORKDIR/image]---<br>
<br>
=C2=A0=C2=A0=C2=A0 The generated ipk packages are:<br>
=C2=A0=C2=A0=C2=A0 ---[ipks]---<br>
=C2=A0=C2=A0=C2=A0 messages-dev_git.ipk<br>
=C2=A0=C2=A0=C2=A0 messages_git.ipk<br>
=C2=A0=C2=A0=C2=A0 messages-staticdev_git.ipk<br>
=C2=A0=C2=A0=C2=A0 messages-dbg_git.ipk<br>
=C2=A0=C2=A0=C2=A0 ---[/ipks]---<br>
<br>
=C2=A0=C2=A0=C2=A0 The problem is that an application compiled with this li=
brary links<br>
=C2=A0=C2=A0=C2=A0 against the static library. If I don&#39;t remove the .s=
o file from the<br>
=C2=A0=C2=A0=C2=A0 recipe, my application fails installing:<br>
=C2=A0=C2=A0=C2=A0 ---[bitbake error]---<br>
=C2=A0=C2=A0=C2=A0 ERROR: myApp do_package_qa: QA Issue: /usr/bin/myApp con=
tained in<br>
=C2=A0=C2=A0=C2=A0 package myApp requires libmessages.so, but no providers =
found in<br>
=C2=A0=C2=A0=C2=A0 RDEPENDS_myApp? [file-rdeps]<br>
=C2=A0=C2=A0=C2=A0 ---[/bitbake error]---<br>
<br>
=C2=A0=C2=A0=C2=A0 Probably because the .so gets packed in the messages-dev=
.ipk ...<br>
<br>
=C2=A0=C2=A0=C2=A0 The strange thing is that I would expect a generated ipk=
 with debian<br>
=C2=A0=C2=A0=C2=A0 naming such as:<br>
=C2=A0=C2=A0=C2=A0 libmessages_git.ipk<br>
=C2=A0=C2=A0=C2=A0 libmessages-dbg_git.ipk<br>
=C2=A0=C2=A0=C2=A0 libmessages-dev_git.ipk<br>
=C2=A0=C2=A0=C2=A0 libmessages-staticdev_git.ipk<br>
<br>
<br>
=C2=A0=C2=A0=C2=A0 I=C2=A0 have other libraries based on cmake and everythi=
ng works as expected!<br>
<br>
=C2=A0=C2=A0=C2=A0 Despite the recipe already inherits &quot;debian&quot;, =
explicitly inheriting<br>
=C2=A0=C2=A0=C2=A0 this class doesn&#39;t help.<br>
<br>
=C2=A0=C2=A0=C2=A0 What am I doing wrong?<br>
<br>
=C2=A0=C2=A0=C2=A0 Guy Morand<br>
=C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 ______________________________<wbr=
>_________________<br>
=C2=A0=C2=A0=C2=A0 yocto mailing list<br>
=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bla=
nk">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0=C2=A0=C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/=
listinfo/yocto</a><br>
=C2=A0=C2=A0=C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wb=
r>g/listinfo/yocto</a>&gt;<br>
<br>
<br>
</blockquote></blockquote>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a113f6a2093de2c055e7e313c--
