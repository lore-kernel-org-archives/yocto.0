Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69AAEE00C9B; Thu, 10 Sep 2015 21:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35620E00B63
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 21:32:38 -0700 (PDT)
Received: by vkgd64 with SMTP id d64so20619579vkg.0
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 21:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Bc/wrEIeUupmAmFCVn0jetGn5mpZ2ixXcMoTI+m9LxY=;
	b=rgb7OgfTkplio1E2fjN3VCvihXgPsCl6xNmKX3Dr0CeaIf0LopCfbVZ/tE157fxTpW
	4tk2pZMO9DgmhXVtB6KELz5zBlFMQWX5m44QV04+VOzCxmChntDX/Rs1JNMl9IK/iNLJ
	c7O3w5LBpGZJAefq8bb4QkiBTh6eTCmMGBzIz/7Berma3WLproeosYUygatwoRAiYj94
	jl6heurJSj6szDwwB2Nu3Ck7/n7IiulxzoeTnJlPDk5CGQ9fLRXAInghCpu4+EUmBgFS
	n5p5i2T5+KwSFDl4n+h2pkl+W8NzdySd2LhIPO+FRuFyb2wELjeIiWg97gzIjcnOtYCI
	LLUQ==
MIME-Version: 1.0
X-Received: by 10.31.172.23 with SMTP id v23mr3178575vke.47.1441945957732;
	Thu, 10 Sep 2015 21:32:37 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Thu, 10 Sep 2015 21:32:37 -0700 (PDT)
In-Reply-To: <55F1BFF2.9040708@reliableembeddedsystems.com>
References: <CALLyC8QDpCybg9+-zxf5HP-6xKMOUkUjUkJ6x2O2ebTcCK10ww@mail.gmail.com>
	<55F1BFF2.9040708@reliableembeddedsystems.com>
Date: Fri, 11 Sep 2015 10:02:37 +0530
Message-ID: <CALLyC8REbFegD8KhOM1Ykae2nKWAoepSsr3Os7tptMSP+JwC5w@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: dropbear is not working after including in IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Sep 2015 04:32:42 -0000
Content-Type: multipart/alternative; boundary=001a1143f796989b50051f713458

--001a1143f796989b50051f713458
Content-Type: text/plain; charset=UTF-8

Hi,
Now Dropbear feature is including in the image but it is getting failed to
start time while booting
error  [    3.164188] systemd[1]: Failed to start SSH Server.
Does can one help with this issue.

Thanks and Regards
        vivek

On Thu, Sep 10, 2015 at 11:07 PM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> On 09/10/2015 05:17 PM, Vivek Per wrote:> Hi,
> >       I have included IMAGE_FEATURES += "ssh-server-dropbear" in my
> > recipe image. and created the image.
>
> So you have something like:
>
> image-features-image.bb with something like this?
>
> -->
>
> IMAGE_INSTALL = "packagegroup-core-boot packagegroup-base-extended"
>
> IMAGE_FEATURES += "debug-tweaks splash x11-base ssh-server-dropbear \
>                    package-management x11-sato"
>
> inherit core-image
>
> <--
>
> > But after flashing the image i was not able to connect to target using
> > ssh from my host machine. but target to host is working fine. Can any
> > one tell me why it is not working. Is there any package need to add?
>
> check your IMAGE_FEATURES if it's really like you want it:
>
> bitbake -e image-features-image | grep ^IMAGE_FEATURES=
>
> I see something like this:
>
> IMAGE_FEATURES="debug-tweaks splash x11-base ssh-server-dropbear
> package-management x11-sato"
>
> You might want to check if dropbear made it into your image with
> something like this before flashing it:
>
> bitbake -g image-features-image && cat pn-depends.dot | grep -v -e
> '-native' | grep -v digraph | grep -v -e '-image' | awk '{print $1}' |
> sort | uniq
>
> This will give you a list and you should find something like:
>
> "dropbear"
>
>
> "packagegroup-core-ssh-dropbear"
>
> >
> >
> > Thanks and Regards
> >
> >
> > --
> >
>
> Regards,
>
> Robert..."Whereas Europeans generally pronouce my name the right way
> (Ni-klows Virt), Americans invariably mangle it into 'Nickle-less
> Worth'. This is to say that Europeans call me by name, but Americans
> call me by value." -- Niklaus Wirth
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143f796989b50051f713458
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div>Now Dropbear feature is including in the ima=
ge but it is getting failed to start time while booting=C2=A0<div>error =C2=
=A0<font color=3D"#ff0000">[ =C2=A0 =C2=A03.164188] systemd[1]: Failed to s=
tart SSH Server.</font></div><div><font color=3D"#000000">Does can one help=
 with this issue.</font></div><div><font color=3D"#000000"><br></font></div=
><div><font color=3D"#000000">Thanks and Regards</font></div><div><font col=
or=3D"#000000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 vivek</font></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 10, 2015 at 1=
1:07 PM, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"mailto:gmane@reliab=
leembeddedsystems.com" target=3D"_blank">gmane@reliableembeddedsystems.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 09/10/2015 05:17=
 PM, Vivek Per wrote:&gt; Hi,<br>
<span class=3D"">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I have included IMAGE_FEATU=
RES +=3D &quot;ssh-server-dropbear&quot; in my<br>
&gt; recipe image. and created the image.<br>
<br>
</span>So you have something like:<br>
<br>
<a href=3D"http://image-features-image.bb" rel=3D"noreferrer" target=3D"_bl=
ank">image-features-image.bb</a> with something like this?<br>
<br>
--&gt;<br>
<br>
IMAGE_INSTALL =3D &quot;packagegroup-core-boot packagegroup-base-extended&q=
uot;<br>
<br>
IMAGE_FEATURES +=3D &quot;debug-tweaks splash x11-base ssh-server-dropbear =
\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0packag=
e-management x11-sato&quot;<br>
<br>
inherit core-image<br>
<br>
&lt;--<br>
<span class=3D""><br>
&gt; But after flashing the image i was not able to connect to target using=
<br>
&gt; ssh from my host machine. but target to host is working fine. Can any<=
br>
&gt; one tell me why it is not working. Is there any package need to add?<b=
r>
<br>
</span>check your IMAGE_FEATURES if it&#39;s really like you want it:<br>
<br>
bitbake -e image-features-image | grep ^IMAGE_FEATURES=3D<br>
<br>
I see something like this:<br>
<br>
IMAGE_FEATURES=3D&quot;debug-tweaks splash x11-base ssh-server-dropbear<br>
package-management x11-sato&quot;<br>
<br>
You might want to check if dropbear made it into your image with<br>
something like this before flashing it:<br>
<br>
bitbake -g image-features-image &amp;&amp; cat pn-depends.dot | grep -v -e<=
br>
&#39;-native&#39; | grep -v digraph | grep -v -e &#39;-image&#39; | awk &#3=
9;{print $1}&#39; |<br>
sort | uniq<br>
<br>
This will give you a list and you should find something like:<br>
<br>
&quot;dropbear&quot;<br>
<br>
<br>
&quot;packagegroup-core-ssh-dropbear&quot;<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks and Regards<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
<br>
Regards,<br>
<br>
Robert...&quot;Whereas Europeans generally pronouce my name the right way<b=
r>
(Ni-klows Virt), Americans invariably mangle it into &#39;Nickle-less<br>
Worth&#39;. This is to say that Europeans call me by name, but Americans<br=
>
call me by value.&quot; -- Niklaus Wirth<br>
<br>
My public pgp key is available,at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" rel=3D"noreferrer" target=3D"_blank">http://pgp.mit.edu:11371/pks/loo=
kup?op=3Dget&amp;search=3D0x90320BF1</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1143f796989b50051f713458--
