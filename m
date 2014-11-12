Return-Path: <sergiosiena@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664EBE0087C; Tue, 11 Nov 2014 16:28:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sergiosiena[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48A8E007C0
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 16:28:13 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id gq15so10523908lab.15
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 16:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=h9OzCgd9/cfVBSJEoQwnG5uVkkG8Pr5xOPMAiNTB8J8=;
	b=jJgoMVcLg5EhiSFJnJzzfqBiayN5j6xYSSsmDYerFLTXAuR0km0/u4FYeGpf7A/yT1
	MrxWbZpxoLh7gh6rosfcMDzwMohvlKkwLe4T/HG7OyiltvLT1uh429gwI1WPGUtPDMKR
	5KThhcM1FZKkD1oRg/nsD0cTxI36dRHlFjKJ4z7sx+BcrCiUCddtFqV/ApnLc+4A3zJV
	g8yP1tXenjM3835qHWeFaKczKi2TI8gFGTaEaOOVSCcM06TVLxStQOrs0vOgd0cXezDE
	+RYVL1I2oGzze93zeP7w+/4+j1S4tTyQWA3bjhwpKs8aLv0E4Gn5Rkg5V5kI9Hyxhbvn
	Tm9A==
X-Received: by 10.112.73.39 with SMTP id i7mr39070313lbv.8.1415752091379; Tue,
	11 Nov 2014 16:28:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.36.161 with HTTP; Tue, 11 Nov 2014 16:27:41 -0800 (PST)
From: Sergio Prado <sergiosiena@gmail.com>
Date: Tue, 11 Nov 2014 22:27:41 -0200
Message-ID: <CAKm6Z3U_M8J_8tL3awdEo4aFHmY5gQt5hMh5mxggAcLqXatKnw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Bitbake bash completion
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
X-List-Received-Date: Wed, 12 Nov 2014 00:28:24 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I have just written a bitbake bash completion script so it could make
my life easier when trying to discover a recipe name and bake it.

https://github.com/sergioprado/bitbake-bash-completion

It should complete all commands (bitbake 1.22.0), recipes and tasks.

When running for the first time, it will execute "bitbake -e" to get
the BBPATH variable and save it in a hidden file. It will use this
file on subsequent executions.

Feel free to try it and let me know if you find any bug or have
suggestions on how to improve it.

Thanks,

Sergio Prado
www.sergioprado.org
https://twitter.com/sergioprado

