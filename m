Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3311FE00A03; Sat, 15 Apr 2017 06:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0620FE0053A
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 06:39:31 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id o22so2926052iod.3
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 06:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=BNkDLDhPIeq3fvNsvlBMvOPU6CEMj7u+XA2NoZlHgWc=;
	b=PcERmscdEml8iud3P5sDUwku6VbMCupV7lwgjfYlf+yfhxqXXMGLXII2zkPQ6Qft89
	Dt87LJZy8HZ7Njj56IS3tRywrYvqfzprZuXNfCM5TsBqA+/v5Zok+DOZZk/lgGGB8LTR
	ONjxpBDq9P9JM9FYKxzxwNfEzKBqNPvM3BqfQAs2s2YCsMr8XkwgUN2hYcAUHUs2XLpn
	LbV/t03JfhCLfwkYyIT7JXqZORUum+9UPgFdDdbZtKtvxnByWZ+HvVF8qO221f74++9P
	P2bMVw4gPlitFGM94HSQ0e2hjPengPpjYvfanSn8u3i892hgF4EkEKlkVKw8GMff2aIF
	Qz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=BNkDLDhPIeq3fvNsvlBMvOPU6CEMj7u+XA2NoZlHgWc=;
	b=GKb+ixn1/JaWIif67cpGGExj+w9pYtHL0WpJS4L4brfjtHTKYxUIuRf4NiWgCDzvMD
	PvGnxfjNZPb7sMXD6TNQcBDSg4TbeGd9GUQ7RXo40Kez3Y3tnTpMYZB2oE6zqhzwrp7X
	w/x1QTfA4yZj64WJaoDvtuyQcyu3z9Q5+rQ5etSHT0DyZAaCR5rIXzxsdCZsi0nnnqXA
	c+GDI49Vg8/1jQ843uLEs49bN4ljClRIdzzJPhH4ed5nywtaBRZ3pCXrDKAJ4YkF9mf4
	BZ53x7zpzCZHFdvzxpuQu7IxPRzIN/Tb/yzL4a83xavWiAJRdxIffu76Xq3ZPhJ/1rzD
	ezxQ==
X-Gm-Message-State: AN3rC/4tw9lnph9m9mcoHRKu9xSZa2/JMJoGesPLbmVhd2EpcG4z3Gje
	aWg7BuREZIeVRWfcyLE=
X-Received: by 10.107.46.24 with SMTP id i24mr2370330ioo.84.1492263571058;
	Sat, 15 Apr 2017 06:39:31 -0700 (PDT)
Received: from linux-uys3 (69-165-142-50.dsl.teksavvy.com. [69.165.142.50])
	by smtp.gmail.com with ESMTPSA id 204sm837513itz.29.2017.04.15.06.39.29
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Apr 2017 06:39:30 -0700 (PDT)
Date: Sat, 15 Apr 2017 09:39:28 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170415133928.GA29433@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sat, 15 Apr 2017 13:39:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

I seem to have all the pieces in place, but can't get gles2 to work on the
raspberry pi. Specifically I'm using the raspberry pi 3, but the 32-bit armv7
build.

gles2 is provided by userland, and I've compiled up a couple gles2 programs.
Compiling succeeds without issue, but running is another case.

E.g.

	# es2_info
	Error: eglGetDisplay() failed

	# glmark2-es2
	Error: eglGetDisplay() failed with error: 0x3000
	Error: eglGetDisplay() failed with error: 0x3000
	Error: main: Could not initialize canvas

	# google-chrome --use-gl=egl
	[3487:3487:0415/133334:ERROR:gl_surface_egl.cc(605)] EGL display query failed with error EGL_SUCCESS
	[3487:3487:0415/133334:ERROR:gl_surface_egl.cc(612)] eglInitialize Default failed with error EGL_BAD_DISPLAY
	[3487:3487:0415/133334:ERROR:gl_initializer_x11.cc(142)] GLSurfaceEGL::InitializeOneOff failed.
	[3487:3487:0415/133334:ERROR:sandbox_linux.cc(343)] InitializeSandbox() called with multiple threads in process gpu-process. 
	[3487:3487:0415/133334:ERROR:gpu_child_thread.cc(348)] Exiting GPU process due to errors during initialization

Thoughts?

Does anyone have any of these (or something else?) working?

Thanks and best regards,
	Trevor

