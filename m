Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15589E00D26; Fri, 29 Mar 2019 04:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60F3E00942
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 04:51:42 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id g17so3258335ita.2
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 04:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=bOypZGuwuY9IW+GtT9M1rV2WGwzAeX/Gwp8VTb/zdho=;
	b=kP2hyi+kEbhsvHJAU1vAUQl+oWzdr2VkuiCtmal6jkLS7+28fUjjGN7IC2kCAenvBg
	neN4jrfKzOaulSDW+d+xIfJ8XZma2/F5V3ppd3iGt7I7jaVDxDj9KQ1B4aKoTBnf8LXE
	9MCvNGfz/WWI36kNI7Fag74DC2OEA1gVosMJs/zma1FiPY+wj4P+TqBtI6dxT43+LPdO
	ovq4DTzGIEFGTySKD67PvaX1hOv4zISKM/QyPDS/m9+09JH7rLdsCOolZY2cDiOBFA7a
	KY4FkCqPyDmzI7F/VLpqMG+ULMMti57CNtnxQhMvN/OuldD6GL2G6tYubCbIoSH9joDo
	WD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=bOypZGuwuY9IW+GtT9M1rV2WGwzAeX/Gwp8VTb/zdho=;
	b=HTwyI9l5SN4lRXo7lEkHBJL6/BC1Q6vI9pe2Q+BkFff5VxrKIr8wfKZq9v1NfKJEZb
	VcdQ+Iv2vsRshS/jpxzSQfxuHX5eaYfP4GfCw0VM6HlG40W3i7zbI6xEeVsqciEUtT4U
	iItwKyXtuKel5SB0Z8gDBExbGf1pT9WNoNUjQ5z5tpfjU8hzHRzsgl1mAJAjCDP6ITNW
	x2LNwPvQgwzpeQP8xramx+LN3PWnHYNt2q8CoqbbmQQ063CR1DBBXB+SSgaWg1nJlOal
	qh741si0ed6QU1+RwxPPkanpSqsoQtNhMF+G4gPkusPebgEV3jq9i+N2iagpvmU2KfWP
	P+yg==
X-Gm-Message-State: APjAAAWYFktktEsiQePWeSidJdP5e5Xn2nw3aLG4w0rh+Oba8+rbnLe4
	GCih5Mhb8m1WLdjM1WGmLkw=
X-Google-Smtp-Source: APXvYqwMB5Xw85S6HANy/lk+t2AEE7vVQ42TvVb+QxTa4aoDpZH85/XmiM20RPWypK9/hxWITzJEag==
X-Received: by 2002:a24:4746:: with SMTP id t67mr3989489itb.123.1553860301894; 
	Fri, 29 Mar 2019 04:51:41 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id i23sm660660ion.40.2019.03.29.04.51.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 04:51:40 -0700 (PDT)
Date: Fri, 29 Mar 2019 07:51:38 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: =?utf-8?Q?Jo=C3=A3o_Gon=C3=A7alves?= <joao.jfgoncalves@gmail.com>
Message-ID: <20190329115138.GA8353@linux-uys3>
References: <CAHXEV+mfcxpGekquU2NFxLcmtw1gTAtp9eR3FYsXfdURW9YyfQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHXEV+mfcxpGekquU2NFxLcmtw1gTAtp9eR3FYsXfdURW9YyfQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: qemu segmentation fault on gobject-introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 11:51:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2019-02-20 @ 11:50:45 PM, João Gonçalves wrote:
> Hello,
> when trying to migrate my build to master branch of oe layers I got this
> qemu segmentation fault during gobject-introspection.
> Does anyone have any clue on this?
> 
> Thank you,
> João Gonçalves
> 
> | qemu: uncaught target signal 11 (Segmentation fault) - core dumped
> | Segmentation fault (core dumped)
> | If the above error message is about missing .so libraries, then setting
> up GIR_EXTRA_LIBS_PATH in the recipe should help.
> | (typically like this: GIR_EXTRA_LIBS_PATH="${B}/something/.libs" )
> | Command
> '['/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/g-ir-scanner-qemuwrapper',
> '/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/GLib-2.0',
> '--introspect-dump=/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/functions.txt,/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/dump.xml']'
> returned non-zero exit status 1.
> | ninja: build stopped: subcommand failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/temp/log.do_compile.20894)
> ERROR: Task
> (/home/joao/poky_imx6/poky/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.58.3.bb:do_compile)
> failed with exit code '1'

Is it possible you're building your image with the gold linker? I.e.

	DISTRO_FEATURES_append = " ld-is-gold"

It looks like there's a problem using the gold linker with 32-bit ARM targets.
Everything seems to work with the regular/default bfd linker is used instead.

Please see:
	http://lists.openembedded.org/pipermail/openembedded-core/2019-March/280537.html
	https://patchwork.openembedded.org/patch/159874/

Best regards,
	Trevor

