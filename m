Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FD25E00D60; Wed,  9 May 2018 16:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91CE2E009F8
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 16:27:36 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id j7-v6so142910vkc.9
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 16:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=moHjqOJiOFAKtLAuJF6LjufNNiVFadrltUZzxYC5OP8=;
	b=j5p358cshft3eRhGElAyiFQiGjOfjhT+sj/foyiWNkcHNTFlUuFMYh6KgpkXexklGO
	S4KZbXQQZcGwATfObI7Y+uNwrwiWadmjnjH0mzrzEUZby1SfOQNysub1YbpqdMkag+Gb
	9cVpIS7ZcleRzfEVGD0O9P9CBZGgrSgN3XBzn/ZkW3f05okFsdMpdGwS78BbS1CGdjw4
	wBUN7Gh8rx2+veBhZXGzINNOue1b0WJh9F76endmfEhMWieEpDoYpMqmCTbxzHoDPFLm
	ozRBWBZaeZgMb6EfYFEM9V05vSL7t6jPhFZ/dPO8uksU7arjUm0flfH3ozM/KVaRCEdq
	Gusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=moHjqOJiOFAKtLAuJF6LjufNNiVFadrltUZzxYC5OP8=;
	b=OpyZOGOsskOp/PxPjVLMQqoD3KWDl/lxvEv6C9bWBU6EzcWTwrbuaJOefyS4bVJKLu
	VA/9OLUWdycX3EGOVZyNgim/O03+Q9IwThIdhAMQQb2HudnxxFI5urCwhMgEoKXlN/Es
	EUXGq1HL8dfRDOlpT55vxKRTxR0EQGyui2E+YU+uYDCaw0z4Wp9MZpYjGm/xW/uk5Jnd
	K0RVPW5+i2J8/W2tzK/xeNUCNxDPRAt7cL0tpqaovIIp5ri8uT+pCa1aJq1I3ldxJnTT
	GPFwx075/ge2cX3lz8UgpLJ1MdK4YR3C11xEbsTMdMAGn18QTzbU4r9pVIPQtr+h5C4l
	u5FQ==
X-Gm-Message-State: ALQs6tBkUPmjf2ezW/ZuX+WB8dZOmjjFRkLsgcHMJkiGa6xfNU1KbR7i
	R8AzsFVPxWbKTIFkldHwF01VUNVMnVYm3IuJWOk=
X-Google-Smtp-Source: AB8JxZonTBxt6aJLk11LPkgT3x6PDZFJUTmfHCHcC50Oams8AgljbenucKdRVkNi6lf6by8c5Ny7s9ITgbZUGnq+ZYk=
X-Received: by 2002:a1f:3451:: with SMTP id
	b78-v6mr37412462vka.2.1525908455885; 
	Wed, 09 May 2018 16:27:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Wed, 9 May 2018 16:27:35 -0700 (PDT)
In-Reply-To: <20180509214855.3330-1-matt.hoosier@gmail.com>
References: <20180509214855.3330-1-matt.hoosier@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 9 May 2018 16:27:35 -0700
Message-ID: <CAJ86T=UpVWZsvYSz4yeDVZp+EmbnhFsWGRGq5EWgG766qTZ-xA@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Matt Hoosier <matt.hoosier@garmin.com>
Subject: Re: [PATCH] bitbake: fetch2/gitsm: avoid live submodule fetching during unpack()
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
X-List-Received-Date: Wed, 09 May 2018 23:27:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 2:48 PM, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> From: Matt Hoosier <matt.hoosier@garmin.com>
>
> Although the submodules' histories have been fetched during the
> do_fetch() phase, the mechanics used to clone the workdir copy
> of the repo haven't been transferring the actual .git/modules
> directory from the repo fetched into downloads/ during the
> fetch task.
>
> Fix that, and for good measure also explicitly tell Git to avoid
> hitting the network during do_unpack() of the submodules.
>
> Ref:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12739

Patches for bitbake should be sent to the bitbake-devel mailing list:

  http://lists.openembedded.org/mailman/listinfo/bitbake-devel

> ---
>  bitbake/lib/bb/fetch2/gitsm.py | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/bitbake/lib/bb/fetch2/gitsm.py b/bitbake/lib/bb/fetch2/gitsm.py
> index 0aff1008e5..1f3fc44352 100644
> --- a/bitbake/lib/bb/fetch2/gitsm.py
> +++ b/bitbake/lib/bb/fetch2/gitsm.py
> @@ -132,4 +132,14 @@ class GitSM(Git):
>
>          if self.uses_submodules(ud, d, ud.destdir):
>              runfetchcmd(ud.basecmd + " checkout " + ud.revisions[ud.names[0]], d, workdir=ud.destdir)
> -            runfetchcmd(ud.basecmd + " submodule update --init --recursive", d, workdir=ud.destdir)
> +
> +            # Copy over the submodules' fetched histories too.
> +            if ud.bareclone:
> +                repo_conf = ud.destdir
> +            else:
> +                repo_conf = os.path.join(ud.destdir, '.git')
> +            runfetchcmd("cp -pr %s %s" % (os.path.join(ud.clonedir, 'modules'), repo_conf), d)
> +
> +            # Careful not to hit the network during unpacking; all history should already
> +            # be fetched.
> +            runfetchcmd(ud.basecmd + " submodule update --init --recursive --no-fetch", d, workdir=ud.destdir)
> --
> 2.13.6
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

