Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6728E00576; Mon, 11 Aug 2014 02:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3450BE004D1
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 02:31:17 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id x3so1337045qcv.37
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 02:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2eC9tZA91Zuiep+5hhtRtBbZyGlCXvANEwZ8Z+tSn2c=;
	b=GRL8Y8DAHAEvikIIsSXCkZPxCdezUOcRZjZusjy+IXxvlhOmVUdtm2TkXn35ly5xji
	Tn5loxWi64ubgH9TGMYze81UcKovt1Y/iZ3gy4X4nSboR+xsW+rUtAZb7yMHmB+ZW9oh
	JpIWnZHqKpypFrYJ61SEElhOYn53mCD4irrxUf2I8OPoMhuMp7ZLEGD64qJb0FZ4dMie
	rZlKrNNRj1QArhA3CyLqGgMVz85HHUOOfo13vayKeGGB+GGH4tzYmVg5FhLUvBgiS7Qs
	P+RKrzKoakVn4bDdMxdVjZH9f9LmZTEkkJ9jXw7ami+67OoGvVgC2ESyWsRhXKf00nvG
	yRZA==
X-Gm-Message-State: ALoCoQn3F6U0jPiG3js1IdbIT7Lo80uzte5YOasHKxJwdBTwZ5wzxn/MOPRbLt295/7VpdQzjFW4
X-Received: by 10.140.19.100 with SMTP id 91mr46091139qgg.32.1407749477288;
	Mon, 11 Aug 2014 02:31:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.95.235 with HTTP; Mon, 11 Aug 2014 02:30:57 -0700 (PDT)
In-Reply-To: <loom.20140730T114540-914@post.gmane.org>
References: <loom.20140730T114540-914@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Aug 2014 10:30:57 +0100
Message-ID: <CAJTo0LZ142LEGbt5H0Qwdx56iDV0J+v_Rnejc_OTmyR6=gSYGQ@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tizen Bitbake error - systemd
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
X-List-Received-Date: Mon, 11 Aug 2014 09:31:26 -0000
Content-Type: text/plain; charset=UTF-8

On 30 July 2014 10:46, Anoop <babu.anoop@gmail.com> wrote:
> /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
> gnueabi/systemd/git-r0/temp/run.do_install.17788: line 131: /usr/bin/mkdir:
> No such file or directory

Did you get this resolved?  The recipe is hard-coding /usr/bin/mkdir
but you don't have a mkdir there - the recipe should just be using
mkdir.

However as I've said before the maintainers of meta-tizen don't read
this list, so you should approach them directly.

Ross

