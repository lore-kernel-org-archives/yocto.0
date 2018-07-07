Return-Path: <timm@timmedia.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE005E00D23; Sat,  7 Jul 2018 04:30:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.timmedia.de (mail.timmedia.de [46.4.107.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF7B4E004F6
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 04:30:35 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.timmedia.de (Postfix) with ESMTP id 8E40D301EDD;
	Sat,  7 Jul 2018 11:30:32 +0000 (UTC)
X-Fuglu-Suspect: 702c89e50ae742789e8dd3e3dd7c6d30
X-Fuglu-Spamstatus: NO
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: timm@timmedia.de)
	by mail.timmedia.de (Postfix) with ESMTPSA;
	Sat,  7 Jul 2018 11:30:32 +0000 (UTC)
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
	<CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
From: Timm <timm@timmedia.de>
Message-ID: <5d98c3cd-cc93-cb19-431a-ae3bc051970e@timmedia.de>
Date: Sat, 7 Jul 2018 13:30:32 +0200
MIME-Version: 1.0
In-Reply-To: <CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
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
X-List-Received-Date: Sat, 07 Jul 2018 11:30:37 -0000
Content-Type: multipart/alternative;
	boundary="------------0497A18F6766A8403C309D66"
Content-Language: en-US

--------------0497A18F6766A8403C309D66
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Am 07.07.2018 um 12:17 schrieb Alexander Kanavin:
> How to do this is specific to each project. Generally, you want the
> target recipe to depend on the native recipe (so that the necessary
> native tools show up in the target sysroot), 
Done that: gutenprint depends on gutenprint-native.
> and then you need to
> study the build system of the upstream component project (makefiles
> etc.) to see how it can be instructed to use the tool installed in the
> system, instead of building and using it's own version. Then patch the
> source code accordingly from the recipe.
As I understand I have two options:
1. Patching the makefile that the makefile calls the upstream version of
"extract-strings" from gutenprint-native.
2. Would be the openwrt-way: removing the directories with the
extract-strings sources. So this part will not be compiled. Then copying
the the binary build by gutenprint-native. I extracted the part of the
openwrt-build-file:

define Build/Compile

# Replace the cross-compiled "extract-string" by a shell-script that

# runs the host's own compiled version (gutenprint needs to run this)

(cd $(PKG_BUILD_DIR) && $(MAKE) -C src/xml extract-strings && \

$(RM) src/xml/extract-strings && \

echo '#!/bin/sh' > src/xml/extract-strings && \

echo 'exec $(HOST_BUILD_DIR)/src/xml/extract-strings "$$$$@" ' \

>> src/xml/extract-strings && chmod +x src/xml/extract-strings && cp
src/xml/extract-strings /tmp/)

$(call Build/Compile/Default)

endef   


Source:
https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile

----------------------------------------------------------------------------------------------------------

There is one thing, I don't quite understand. How can I access the files
which were created by the gutenprint-native recipe?



--------------0497A18F6766A8403C309D66
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Am 07.07.2018 um 12:17 schrieb Alexander Kanavin:<br>
    <blockquote type="cite"
cite="mid:CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com">
      <pre wrap="">How to do this is specific to each project. Generally, you want the
target recipe to depend on the native recipe (so that the necessary
native tools show up in the target sysroot), </pre>
    </blockquote>
    Done that: gutenprint depends on gutenprint-native.<br>
    <blockquote type="cite"
cite="mid:CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com">
      <pre wrap="">and then you need to
study the build system of the upstream component project (makefiles
etc.) to see how it can be instructed to use the tool installed in the
system, instead of building and using it's own version. Then patch the
source code accordingly from the recipe.</pre>
    </blockquote>
    As I understand I have two options: <br>
    1. Patching the makefile that the makefile calls the upstream
    version of "extract-strings" from gutenprint-native. <br>
    2. Would be the openwrt-way: removing the directories with the
    extract-strings sources. So this part will not be compiled. Then
    copying the the binary build by gutenprint-native. I extracted the
    part of the openwrt-build-file:<br>
    <br>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC68" class="blob-code blob-code-inner js-file-line"><span
              class="pl-k">define</span> <span class="pl-smi">Build/Compile</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC69" class="blob-code blob-code-inner js-file-line">
            <span class="pl-c"><span class="pl-c">#</span> Replace the
              cross-compiled "extract-string" by a shell-script that</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC70" class="blob-code blob-code-inner js-file-line">
            <span class="pl-c"><span class="pl-c">#</span> runs the
              host's own compiled version (gutenprint needs to run this)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC71" class="blob-code blob-code-inner js-file-line">
            (cd <span class="pl-s">$(<span class="pl-smi">PKG_BUILD_DIR</span>)</span>
            &amp;&amp; <span class="pl-s">$(<span class="pl-c1">MAKE</span>)</span>
            -C src/xml extract-strings &amp;&amp; \</td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC72" class="blob-code blob-code-inner js-file-line">
            <span class="pl-s">$(<span class="pl-smi">RM</span>)</span>
            src/xml/extract-strings &amp;&amp; \</td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC73" class="blob-code blob-code-inner js-file-line">
            echo '<span class="pl-c"><span class="pl-c">#</span>!/bin/sh'
              &gt; src/xml/extract-strings &amp;&amp; <span
                class="pl-cce">\</span></span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC74" class="blob-code blob-code-inner js-file-line"><span
              class="pl-c"> echo 'exec
              $(HOST_BUILD_DIR)/src/xml/extract-strings "$$$$@" ' <span
                class="pl-cce">\</span></span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC75" class="blob-code blob-code-inner js-file-line"><span
              class="pl-c"> &gt;&gt; src/xml/extract-strings &amp;&amp;
              chmod +x src/xml/extract-strings &amp;&amp; cp
              src/xml/extract-strings /tmp/)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <table class="highlight tab-size js-file-line-container"
      data-tab-size="8">
      <tbody>
        <tr>
          <td id="LC76" class="blob-code blob-code-inner js-file-line">
            <span class="pl-s">$(<span class="pl-c1">call</span>
              Build/Compile/Default)</span></td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <span class="pl-k">endef    <br>
      <br>
      <br>
      Source:
<a class="moz-txt-link-freetext" href="https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile">https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile</a><br>
      <br>
----------------------------------------------------------------------------------------------------------<br>
      <br>
      There is one thing, I don't quite understand. How can I access the
      files which were created by the gutenprint-native recipe?<br>
      <br>
      <br>
    </span>
  </body>
</html>

--------------0497A18F6766A8403C309D66--
