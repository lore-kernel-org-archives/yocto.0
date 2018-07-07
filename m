Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ED51E00EB1; Sat,  7 Jul 2018 07:53:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05BFAE00A48
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 07:53:09 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id w126-v6so28642299oie.7
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+zRSqybA91XEd/PPUzhbGjRpUYheNiR5HksfqFmwgEg=;
	b=PL98Zhs4HHfauhvKmzvZxOYjVpq5bFc83Dhi8SYtMAts0N1rd3kvw7mjrm6ZYPcGD/
	CH7oXQnoSglnxOEibVrIz/1VX0h2m3XMD1p7fr9aoWfdYXxqpysSRZHxIo6/n5x3znRu
	s+qbPjqmcc6JdoXyPFd73sy5jxq61noeUJzdmVb0iQS8xgkWZMpYJa/QIdLpu3y877vm
	aSEMArIyXCUDBq/19BG78PfyWJxurvm86nbMw+79JgjgiJMBaCZDhuHk5IMOOnqkPq1w
	CWlZUvYgA+10YMni+w21hRaq3cUaLLFTrqFxHhjTpAUYTqoZhfcPt93bO4barzNqLyPv
	ZeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+zRSqybA91XEd/PPUzhbGjRpUYheNiR5HksfqFmwgEg=;
	b=WZoLMQsP0IDjxEwovQ2fU6mtKNflDf+RbBcSLPBKeaaMhfHaQsQmu25/tdYuOABvjF
	gJtkGBgC9TMxurdkLpPN1BDA72FPV4pZt4pyILMXqLf9esex1lL52Aq6GXX5FZ95SsnE
	5SMwD2fGVzQaxQT0dgnabSuYJHArob0VYZpy5JeqLnfAjLEW0oq4yDxwUmOxCmTN5t6o
	a+hkxowjXN3en3MDQR1Ut853jUYU3Znwp7Ud31SfCByrW66DatGztozenl5oAdym9Ezk
	dEfqjC9cLB5Yw86IgaIzo48DyYVdlbDevlaxYMjxT/ATBzuWXzI3PCV01ApgMtOzgJEo
	WIZQ==
X-Gm-Message-State: APt69E3ghICk1kjqM9/S7tLtf3ZQ9eqQ0ZSOiEnf+DKu/oiPbJSA/76q
	lf+2uIQW2QUYCmr9CwDb+ZJYSfGIxyZ1ownqX0c=
X-Google-Smtp-Source: AAOMgpclqI4FRBPz9gX9g9mkXfdSdc9f0GKpaVFPXcOoc3vMZg1Lgii+8eVlzF0ueE3iPW9aTgBq/yYx9fyA2jLxicw=
X-Received: by 2002:aca:3d4:: with SMTP id
	203-v6mr14627794oid.321.1530975189415; 
	Sat, 07 Jul 2018 07:53:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 07:53:09 -0700 (PDT)
In-Reply-To: <5d98c3cd-cc93-cb19-431a-ae3bc051970e@timmedia.de>
References: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
	<CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
	<5d98c3cd-cc93-cb19-431a-ae3bc051970e@timmedia.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 7 Jul 2018 16:53:09 +0200
Message-ID: <CANNYZj-NvXP+J7VTotkm+F8rN02_88HS2=gH7pdsV0j3XQ9dKA@mail.gmail.com>
To: Timm <timm@timmedia.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building gutenprint recipe
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
X-List-Received-Date: Sat, 07 Jul 2018 14:53:11 -0000
Content-Type: multipart/alternative; boundary="000000000000533d1c057069f047"

--000000000000533d1c057069f047
Content-Type: text/plain; charset="UTF-8"

I do not recommend that you copy the binary over; it's better to clearly
separate native and target. Just patch the makefile.

Alex

2018-07-07 13:30 GMT+02:00 Timm <timm@timmedia.de>:

> Am 07.07.2018 um 12:17 schrieb Alexander Kanavin:
>
> How to do this is specific to each project. Generally, you want the
> target recipe to depend on the native recipe (so that the necessary
> native tools show up in the target sysroot),
>
> Done that: gutenprint depends on gutenprint-native.
>
> and then you need to
> study the build system of the upstream component project (makefiles
> etc.) to see how it can be instructed to use the tool installed in the
> system, instead of building and using it's own version. Then patch the
> source code accordingly from the recipe.
>
> As I understand I have two options:
> 1. Patching the makefile that the makefile calls the upstream version of
> "extract-strings" from gutenprint-native.
> 2. Would be the openwrt-way: removing the directories with the
> extract-strings sources. So this part will not be compiled. Then copying
> the the binary build by gutenprint-native. I extracted the part of the
> openwrt-build-file:
>
> define Build/Compile
> # Replace the cross-compiled "extract-string" by a shell-script that
> # runs the host's own compiled version (gutenprint needs to run this)
> (cd $(PKG_BUILD_DIR) && $(MAKE) -C src/xml extract-strings && \
> $(RM) src/xml/extract-strings && \
> echo '#!/bin/sh' > src/xml/extract-strings && \
> echo 'exec $(HOST_BUILD_DIR)/src/xml/extract-strings "$$$$@" ' \
> >> src/xml/extract-strings && chmod +x src/xml/extract-strings && cp
> src/xml/extract-strings /tmp/)
> $(call Build/Compile/Default)
> endef
>
>
> Source: https://github.com/FranciscoBorges/openwrt-
> printing-packages/blob/master/net/gutenprint/Makefile
>
> ------------------------------------------------------------
> ----------------------------------------------
>
> There is one thing, I don't quite understand. How can I access the files
> which were created by the gutenprint-native recipe?
>
>
>

--000000000000533d1c057069f047
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I do not recommend that you copy the binary over; it&=
#39;s better to clearly separate native and target. Just patch the makefile=
.</div><div><br></div><div>Alex<br></div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">2018-07-07 13:30 GMT+02:00 Timm <span dir=3D"=
ltr">&lt;<a href=3D"mailto:timm@timmedia.de" target=3D"_blank">timm@timmedi=
a.de</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span class=3D"">
    Am 07.07.2018 um 12:17 schrieb Alexander Kanavin:<br>
    <blockquote type=3D"cite">
      <pre>How to do this is specific to each project. Generally, you want =
the
target recipe to depend on the native recipe (so that the necessary
native tools show up in the target sysroot), </pre>
    </blockquote></span>
    Done that: gutenprint depends on gutenprint-native.<span class=3D""><br=
>
    <blockquote type=3D"cite">
      <pre>and then you need to
study the build system of the upstream component project (makefiles
etc.) to see how it can be instructed to use the tool installed in the
system, instead of building and using it&#39;s own version. Then patch the
source code accordingly from the recipe.</pre>
    </blockquote></span>
    As I understand I have two options: <br>
    1. Patching the makefile that the makefile calls the upstream
    version of &quot;extract-strings&quot; from gutenprint-native. <br>
    2. Would be the openwrt-way: removing the directories with the
    extract-strings sources. So this part will not be compiled. Then
    copying the the binary build by gutenprint-native. I extracted the
    part of the openwrt-build-file:<br>
    <br>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC68" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line"><span class=3D"m_-3319893517160037274pl-k">define</span> <span=
 class=3D"m_-3319893517160037274pl-smi">Build/Compile</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC69" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            <span class=3D"m_-3319893517160037274pl-c"><span class=3D"m_-33=
19893517160037274pl-c">#</span> Replace the
              cross-compiled &quot;extract-string&quot; by a shell-script t=
hat</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC70" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            <span class=3D"m_-3319893517160037274pl-c"><span class=3D"m_-33=
19893517160037274pl-c">#</span> runs the
              host&#39;s own compiled version (gutenprint needs to run this=
)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC71" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            (cd <span class=3D"m_-3319893517160037274pl-s">$(<span class=3D=
"m_-3319893517160037274pl-smi">PKG_BUILD_DIR</span>)</span>
            &amp;&amp; <span class=3D"m_-3319893517160037274pl-s">$(<span c=
lass=3D"m_-3319893517160037274pl-c1">MAKE</span>)</span>
            -C src/xml extract-strings &amp;&amp; \</td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC72" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            <span class=3D"m_-3319893517160037274pl-s">$(<span class=3D"m_-=
3319893517160037274pl-smi">RM</span>)</span>
            src/xml/extract-strings &amp;&amp; \</td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC73" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            echo &#39;<span class=3D"m_-3319893517160037274pl-c"><span clas=
s=3D"m_-3319893517160037274pl-c">#</span>!/bin/sh&#39;
              &gt; src/xml/extract-strings &amp;&amp; <span class=3D"m_-331=
9893517160037274pl-cce">\</span></span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC74" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line"><span class=3D"m_-3319893517160037274pl-c"> echo &#39;exec
              $(HOST_BUILD_DIR)/src/xml/<wbr>extract-strings &quot;$$$$@&qu=
ot; &#39; <span class=3D"m_-3319893517160037274pl-cce">\</span></span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC75" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line"><span class=3D"m_-3319893517160037274pl-c"> &gt;&gt; src/xml/e=
xtract-strings &amp;&amp;
              chmod +x src/xml/extract-strings &amp;&amp; cp
              src/xml/extract-strings /tmp/)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class=3D"m_-3319893517160037274highlight m_-3319893517160037274t=
ab-size m_-3319893517160037274js-file-line-container">
      <tbody>
        <tr>
          <td id=3D"m_-3319893517160037274LC76" class=3D"m_-331989351716003=
7274blob-code m_-3319893517160037274blob-code-inner m_-3319893517160037274j=
s-file-line">
            <span class=3D"m_-3319893517160037274pl-s">$(<span class=3D"m_-=
3319893517160037274pl-c1">call</span>
              Build/Compile/Default)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <span class=3D"m_-3319893517160037274pl-k">endef=C2=A0=C2=A0=C2=A0 <br>
      <br>
      <br>
      Source:
<a class=3D"m_-3319893517160037274moz-txt-link-freetext" href=3D"https://gi=
thub.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenpri=
nt/Makefile" target=3D"_blank">https://github.com/<wbr>FranciscoBorges/open=
wrt-<wbr>printing-packages/blob/master/<wbr>net/gutenprint/Makefile</a><br>
      <br>
------------------------------<wbr>------------------------------<wbr>-----=
-------------------------<wbr>----------------<br>
      <br>
      There is one thing, I don&#39;t quite understand. How can I access th=
e
      files which were created by the gutenprint-native recipe?<br>
      <br>
      <br>
    </span>
  </div>

</blockquote></div><br></div>

--000000000000533d1c057069f047--
