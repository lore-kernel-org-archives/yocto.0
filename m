Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA7AEE006B4; Wed, 25 Apr 2018 08:04:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF413E006B4
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 08:04:05 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id t11so858623wmt.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 08:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:content-transfer-encoding:user-agent;
	bh=e1YzuE49krU1JoxfAvU+Bgfa2hBI+jxt1lOGuaIGlQ8=;
	b=HgVCR79T0U40q1S6yoKrzNMlUhluXN5R76WwaSZ2E+Vt63EAkNG8Ma/2B7JXCdR5QQ
	9I3iRVbCNK9jBBuR3Bwe17veIxj+1OAQc+dT29LaGEjO6jp0YjPa+qxr+drABAp+Mi/y
	MJPu1tsth9rC1V/Q1DYRvOcNMsnMtEpsYjBMS6imskRz+Ul8kVD0JCkNrHT42hTMpN16
	XuPo7HBqBiU7t+s6HjWljrV9OjaRk7yXBs7zyly4iC6tDjyUpJp22pLN25m9L4LGQRI0
	R1O9G6t5b4ssghBHALeF4ZwvmIJfq2cRrwPauuCvpb+CPSx6f0+ZLlkxqpI9PpuMof/j
	+83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:content-transfer-encoding
	:user-agent;
	bh=e1YzuE49krU1JoxfAvU+Bgfa2hBI+jxt1lOGuaIGlQ8=;
	b=JiWHB2R3c2I/IV7Fn07tMxcjrWXKFSvWi2lm+rUqkiL6YcJeP3T2gYKTGiZRUSqrc7
	e70nFX7plFujQlef9nR3eDA6qJpPKqI+porvin1O0BW791f+3aQ5rTZmWZ+Kpw58Y3O8
	YuhzrAQvVIhmacG0oyriICOPax2NANlvarXdcWSj2425A7HEW7hQzLPsycLZMu2LR8oa
	gcLI7jNDnUHL4Goy9SeAG0IenDoUdnHy4nx02dA8yCPaNovTBSAM44RMlB/nRUi69tPd
	Kwo6YhklcgEtdOG4m+Y9F6OW/YSHmUoZmbnE0ZQnRmW3XkV5xu/0iSNkwlSs4go17Xn3
	+jTA==
X-Gm-Message-State: ALQs6tAatZ5oY49ZZAJqsx8VbDJl4A98dqDit6lvy2o9T9WcuHfOOD2x
	ypcuwjlX6KO1jxq684FvxRfBoavB
X-Google-Smtp-Source: AIpwx4/QitjLP4NdI31koo6mxWbbJEXMUw2eiXe+QE4osJQAq0pdvsgqI466fo6ru/c5/+25OvAXwg==
X-Received: by 10.80.202.1 with SMTP id d1mr34351291edi.187.1524668644051;
	Wed, 25 Apr 2018 08:04:04 -0700 (PDT)
Received: from localhost (x4dbb68e5.dyn.telefonica.de. [77.187.104.229])
	by smtp.gmail.com with ESMTPSA id p57sm7375edc.21.2018.04.25.08.04.02
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 25 Apr 2018 08:04:02 -0700 (PDT)
Date: Wed, 25 Apr 2018 17:03:33 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20180425150333.GA9349@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 25 Apr 2018 15:04:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

I try to compile yocto jethro environment which is working
on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.

The compilations stops on gettext-native.

bitbake -k fsl-image-mfgtool-initramfs
=20
 make[5]: Entering directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
| ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink gcc   -isystem/home/u=
s/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -=
release 0.19.4 ../gnulib-lib/libgettextlib.la  -lc -no-undefined  -L/home/u=
s/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -L/home/us/buil=
d-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/us/=
build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/=
home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/h=
ome/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath=
,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-O1 -o =
libgettextsrc.la -rpath /home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_6=
4-linux/usr/lib libgettextsrc_la-message.lo libgettextsrc_la-po-error.lo li=
bgettextsrc_la-po-xerror.lo libgettextsrc_la-read-catalog-abstract.lo libge=
ttextsrc_la-po-lex.lo libgettextsrc_la-po-gram-gen.lo libgettextsrc_la-po-c=
harset.lo libgettextsrc_la-read-po.lo libgettextsrc_la-read-properties.lo l=
ibgettextsrc_la-read-stringtable.lo libgettextsrc_la-open-catalog.lo libget=
textsrc_la-dir-list.lo libgettextsrc_la-str-list.lo libgettextsrc_la-read-c=
atalog.lo libgettextsrc_la-color.lo libgettextsrc_la-write-catalog.lo libge=
ttextsrc_la-write-properties.lo libgettextsrc_la-write-stringtable.lo libge=
ttextsrc_la-write-po.lo libgettextsrc_la-msgl-ascii.lo libgettextsrc_la-msg=
l-iconv.lo libgettextsrc_la-msgl-equal.lo libgettextsrc_la-msgl-cat.lo libg=
ettextsrc_la-msgl-header.lo libgettextsrc_la-msgl-english.lo libgettextsrc_=
la-msgl-check.lo libgettextsrc_la-file-list.lo libgettextsrc_la-msgl-charse=
t.lo libgettextsrc_la-po-time.lo libgettextsrc_la-plural-exp.lo libgettexts=
rc_la-plural-eval.lo libgettextsrc_la-plural-table.lo libgettextsrc_la-form=
at.lo libgettextsrc_la-format-c.lo libgettextsrc_la-format-sh.lo libgettext=
src_la-format-python.lo libgettextsrc_la-format-python-brace.lo libgettexts=
rc_la-format-lisp.lo libgettextsrc_la-format-elisp.lo libgettextsrc_la-form=
at-librep.lo libgettextsrc_la-format-scheme.lo libgettextsrc_la-format-java=
=2Elo libgettextsrc_la-format-csharp.lo libgettextsrc_la-format-awk.lo libg=
ettextsrc_la-format-pascal.lo libgettextsrc_la-format-ycp.lo libgettextsrc_=
la-format-tcl.lo libgettextsrc_la-format-perl.lo libgettextsrc_la-format-pe=
rl-brace.lo libgettextsrc_la-format-php.lo libgettextsrc_la-format-gcc-inte=
rnal.lo libgettextsrc_la-format-gfc-internal.lo libgettextsrc_la-format-qt.=
lo libgettextsrc_la-format-qt-plural.lo libgettextsrc_la-format-kde.lo libg=
ettextsrc_la-format-boost.lo libgettextsrc_la-format-lua.lo libgettextsrc_l=
a-format-javascript.lo libgettextsrc_la-read-desktop.lo
| x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a val=
id libtool object
| Makefile:2285: recipe for target 'libgettextsrc.la' failed
| make[5]: *** [libgettextsrc.la] Error 1
| make[5]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
| Makefile:2206: recipe for target 'all' failed
| make[4]: *** [all] Error 2
| make[4]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
| Makefile:1698: recipe for target 'all-recursive' failed
| make[3]: *** [all-recursive] Error 1
| make[3]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
| Makefile:1564: recipe for target 'all' failed
| make[2]: *** [all] Error 2
| make[2]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
| Makefile:380: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x86=
_64-linux/gettext-native/0.19.4-r0/build'
| Makefile:336: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /home/us/build=
-imx6ulevk-mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/temp/log.=
do_compile.5336)
ERROR: Task 531 (virtual:native:/home/us/build/os-poky/meta/recipes-core/ge=
ttext/gettext_0.19.4.bb, do_compile) failed with exit code '1'


I already tried to reinstall libtool but without success.

Some ideas whats the cause for this error?

Best regards,

Oliver

