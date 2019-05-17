Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9178E00CB9; Fri, 17 May 2019 14:49:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91ABDE00CAB
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 14:49:52 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id g3so4301879pfi.4
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 14:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=B1XnqTp6rR1g06M4718fLKRqbDIJPRy6L9WMEG77Dew=;
	b=olQcFZQnwSAOL3eRxnAehS2mAjjs7L8gVLIk5Rn3zbmWYlhnRXQwPd+CiJwjfOqMWA
	p0DEhc3C4UcF105iW2C7S2vwCTF6nTGv3q3CQFv0DI8VpdzWeAbmHK/P86O5tybuRj8h
	8SUHntvA+kO2IdsWLkBN+UuKJKCDov8/AHBHCmQWtHW1jWSEVn1g8shHk2HqdKIQzKs8
	FyIDOx45DggLTrI9hW21TcSI/tE/0sGKVwjp0Nu3ZyIh6yGgv7MKCxju6dQTX1rH2tZT
	u2MZjNKQlQLRqG/9A64b1aPv3ZGPLJ6kjKYFfCuCrUl6N1AGkfMCaF+6NSz8n3Qp+ZUm
	o4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=B1XnqTp6rR1g06M4718fLKRqbDIJPRy6L9WMEG77Dew=;
	b=E3vQpvOGmMbmp6bN/1GPTPMHKWC8X3D5qSdgfzoW6ZWvrW4f0NnQ42UeA2TuNw3mQ0
	8HNcdOio2lx5ZHhCESEke8dOCfmkSNBTwmK9YwpwOUavtTUuQOaX+92qesuSPkLxwZyn
	LiQh4QcImsTZGbyoBXuyByL3yQMsc0BlUATTZSGHii23xgQFWzl7Cbh4IOFx+XX3XYYz
	01GI3WP0zjfZAKYinTf3uziIRbeQwDCFnDv01VI3El+c2NB66Z0Cu0IU2sjsLn9WNCJ8
	9GWIIR95Rcf1Z4uct3R2K2KU6HORqTNIwZyGGKJ/GyYMBm2JN1Kcgreo84PuWKuamsX3
	W7og==
X-Gm-Message-State: APjAAAUw7S41LbqTnSpfE+Av+Yxwpph8CaP/Bu2VZ4qCsH7h9W7rqYEV
	CuK6UWmlGMNRDtWV+SnJYNQPOjZn
X-Google-Smtp-Source: APXvYqyolCFkdIeEkaSaqVuQy9uIKBh7wpjhrOJPtx1nQDSKpzNj9rwDz8BlkQsbMp4Kwe0itH/MoQ==
X-Received: by 2002:aa7:81d1:: with SMTP id c17mr43640613pfn.174.1558129791819;
	Fri, 17 May 2019 14:49:51 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:2c77:e1be:f825:40e5?
	([2601:202:4180:c33:2c77:e1be:f825:40e5])
	by smtp.gmail.com with ESMTPSA id
	o5sm13414921pgl.48.2019.05.17.14.49.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 May 2019 14:49:51 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <20190517164603.13885-1-akuster808@gmail.com>
	<CA+chaQfJUtza+tf-CH41N7RP2RsRzKdpi8236yN3fS1OA_GNJQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <4078aa19-a596-69d4-88e2-11abc0141d96@gmail.com>
Date: Fri, 17 May 2019 14:49:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQfJUtza+tf-CH41N7RP2RsRzKdpi8236yN3fS1OA_GNJQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] keyutils: fix library install path
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
X-List-Received-Date: Fri, 17 May 2019 21:49:53 -0000
Content-Type: multipart/alternative;
	boundary="------------E828898C55789B0222459DDF"
Content-Language: en-US

--------------E828898C55789B0222459DDF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 5/17/19 1:20 PM, Martin Jansa wrote:
> When you're on it, can you please check if it works with multilib?
>
> I think $(USRLIBDIR) doesn't respect ${libdir} from OE, so it always
> installs the library to /usr/lib instead of e.g. /usr/lib64 with
> multlilib.

Thank,

Will do.

- armin
>
> e.g. recipes-security/ccs-tools/ccs-tools_1.8.4.bb
> <http://ccs-tools_1.8.4.bb> is setting USRLIBDIR=${libdir}, I guess
> keyutils needs the same.
>
> On Fri, May 17, 2019 at 6:46 PM Armin Kuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     ---
>      .../files/fix_library_install_path.patch      | 28
>     +++++++++++++++++++
>      recipes-security/keyutils/keyutils_1.6.bb
>     <http://keyutils_1.6.bb>     |  1 +
>      2 files changed, 29 insertions(+)
>      create mode 100644
>     recipes-security/keyutils/files/fix_library_install_path.patch
>
>     diff --git
>     a/recipes-security/keyutils/files/fix_library_install_path.patch
>     b/recipes-security/keyutils/files/fix_library_install_path.patch
>     new file mode 100644
>     index 0000000..938fe2e
>     --- /dev/null
>     +++ b/recipes-security/keyutils/files/fix_library_install_path.patch
>     @@ -0,0 +1,28 @@
>     +From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00
>     2001
>     +From: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     +Date: Tue, 26 Sep 2017 07:59:51 +0000
>     +Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for
>     link
>     +
>     +The absolute path of the symlink will be invalid
>     +when populated in sysroot, so use relative path instead.
>     +
>     +Upstream-Status: Pending
>     +
>     +Signed-off-by: Jackie Huang <jackie.huang@windriver.com
>     <mailto:jackie.huang@windriver.com>>
>     +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     +{rebased for 1.6]
>     +Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     +
>     +Index: keyutils-1.6/Makefile
>     +===================================================================
>     +--- keyutils-1.6.orig/Makefile
>     ++++ keyutils-1.6/Makefile
>     +@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
>     +       $(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
>     +       $(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
>     +       mkdir -p $(DESTDIR)$(USRLIBDIR)
>     +-      $(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
>     ++      $(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
>     +       sed \
>     +       -e 's,@VERSION\@,$(VERSION),g' \
>     +       -e 's,@prefix\@,$(PREFIX),g' \
>     diff --git a/recipes-security/keyutils/keyutils_1.6.bb
>     <http://keyutils_1.6.bb>
>     b/recipes-security/keyutils/keyutils_1.6.bb <http://keyutils_1.6.bb>
>     index c961fa2..2968a24 100644
>     --- a/recipes-security/keyutils/keyutils_1.6.bb
>     <http://keyutils_1.6.bb>
>     +++ b/recipes-security/keyutils/keyutils_1.6.bb
>     <http://keyutils_1.6.bb>
>     @@ -19,6 +19,7 @@ SRC_URI =
>     "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2
>     <http://people.redhat.com/dhowells/keyutils/$%7BBP%7D.tar.bz2> \
>                 file://keyutils-test-fix-output-format.patch \
>                
>     file://keyutils-fix-error-report-by-adding-default-message.patch \
>                 file://run-ptest \
>     +           file://fix_library_install_path.patch \
>                 "
>
>      SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
>     -- 
>     2.17.1
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------E828898C55789B0222459DDF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 5/17/19 1:20 PM, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQfJUtza+tf-CH41N7RP2RsRzKdpi8236yN3fS1OA_GNJQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">When you're on it, can you please check if it
            works with multilib?
            <div><br>
            </div>
            <div>I think $(USRLIBDIR) doesn't respect ${libdir} from OE,
              so it always installs the library to /usr/lib instead of
              e.g. /usr/lib64 with multlilib.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Thank,<br>
    <br>
    Will do.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CA+chaQfJUtza+tf-CH41N7RP2RsRzKdpi8236yN3fS1OA_GNJQ@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div><br>
            </div>
            <div>e.g. recipes-security/ccs-tools/<a
                href="http://ccs-tools_1.8.4.bb" moz-do-not-send="true">ccs-tools_1.8.4.bb</a>
              is setting USRLIBDIR=${libdir}, I guess keyutils needs the
              same.</div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, May 17, 2019 at 6:46
          PM Armin Kuster &lt;<a href="mailto:akuster808@gmail.com"
            moz-do-not-send="true">akuster808@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by:
          Armin Kuster &lt;<a href="mailto:akuster808@gmail.com"
            target="_blank" moz-do-not-send="true">akuster808@gmail.com</a>&gt;<br>
          ---<br>
           .../files/fix_library_install_path.patch      | 28
          +++++++++++++++++++<br>
           recipes-security/keyutils/<a href="http://keyutils_1.6.bb"
            rel="noreferrer" target="_blank" moz-do-not-send="true">keyutils_1.6.bb</a> 
             |  1 +<br>
           2 files changed, 29 insertions(+)<br>
           create mode 100644
          recipes-security/keyutils/files/fix_library_install_path.patch<br>
          <br>
          diff --git
          a/recipes-security/keyutils/files/fix_library_install_path.patch
b/recipes-security/keyutils/files/fix_library_install_path.patch<br>
          new file mode 100644<br>
          index 0000000..938fe2e<br>
          --- /dev/null<br>
          +++
          b/recipes-security/keyutils/files/fix_library_install_path.patch<br>
          @@ -0,0 +1,28 @@<br>
          +From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17
          00:00:00 2001<br>
          +From: Wenzong Fan &lt;<a
            href="mailto:wenzong.fan@windriver.com" target="_blank"
            moz-do-not-send="true">wenzong.fan@windriver.com</a>&gt;<br>
          +Date: Tue, 26 Sep 2017 07:59:51 +0000<br>
          +Subject: [PATCH] Subject: [PATCH] keyutils: use relative path
          for link<br>
          +<br>
          +The absolute path of the symlink will be invalid<br>
          +when populated in sysroot, so use relative path instead.<br>
          +<br>
          +Upstream-Status: Pending<br>
          +<br>
          +Signed-off-by: Jackie Huang &lt;<a
            href="mailto:jackie.huang@windriver.com" target="_blank"
            moz-do-not-send="true">jackie.huang@windriver.com</a>&gt;<br>
          +Signed-off-by: Wenzong Fan &lt;<a
            href="mailto:wenzong.fan@windriver.com" target="_blank"
            moz-do-not-send="true">wenzong.fan@windriver.com</a>&gt;<br>
          +{rebased for 1.6]<br>
          +Signed-off-by: Armin Kuster &lt;<a
            href="mailto:akuster808@gmail.com" target="_blank"
            moz-do-not-send="true">akuster808@gmail.com</a>&gt;<br>
          +<br>
          +Index: keyutils-1.6/Makefile<br>
+===================================================================<br>
          +--- keyutils-1.6.orig/Makefile<br>
          ++++ keyutils-1.6/Makefile<br>
          +@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)<br>
          +       $(INSTALL) -D $(LIBNAME)
          $(DESTDIR)$(LIBDIR)/$(LIBNAME)<br>
          +       $(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)<br>
          +       mkdir -p $(DESTDIR)$(USRLIBDIR)<br>
          +-      $(LNS) $(LIBDIR)/$(SONAME)
          $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)<br>
          ++      $(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)<br>
          +       sed \<br>
          +       -e 's,@VERSION\@,$(VERSION),g' \<br>
          +       -e 's,@prefix\@,$(PREFIX),g' \<br>
          diff --git a/recipes-security/keyutils/<a
            href="http://keyutils_1.6.bb" rel="noreferrer"
            target="_blank" moz-do-not-send="true">keyutils_1.6.bb</a>
          b/recipes-security/keyutils/<a href="http://keyutils_1.6.bb"
            rel="noreferrer" target="_blank" moz-do-not-send="true">keyutils_1.6.bb</a><br>
          index c961fa2..2968a24 100644<br>
          --- a/recipes-security/keyutils/<a
            href="http://keyutils_1.6.bb" rel="noreferrer"
            target="_blank" moz-do-not-send="true">keyutils_1.6.bb</a><br>
          +++ b/recipes-security/keyutils/<a
            href="http://keyutils_1.6.bb" rel="noreferrer"
            target="_blank" moz-do-not-send="true">keyutils_1.6.bb</a><br>
          @@ -19,6 +19,7 @@ SRC_URI = "<a
            href="http://people.redhat.com/dhowells/keyutils/$%7BBP%7D.tar.bz2"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2</a>
          \<br>
                      <a class="moz-txt-link-freetext" href="file://keyutils-test-fix-output-format.patch">file://keyutils-test-fix-output-format.patch</a> \<br>
                     
          <a class="moz-txt-link-freetext" href="file://keyutils-fix-error-report-by-adding-default-message.patch">file://keyutils-fix-error-report-by-adding-default-message.patch</a>
          \<br>
                      <a class="moz-txt-link-freetext" href="file://run-ptest">file://run-ptest</a> \<br>
          +           <a class="moz-txt-link-freetext" href="file://fix_library_install_path.patch">file://fix_library_install_path.patch</a> \<br>
                      "<br>
          <br>
           SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"<br>
          -- <br>
          2.17.1<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href="mailto:yocto@yoctoproject.org" target="_blank"
            moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------E828898C55789B0222459DDF--
