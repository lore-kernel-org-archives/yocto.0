Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1971CE007A0; Mon, 30 Mar 2015 12:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9571E00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 12:27:27 -0700 (PDT)
Received: by qgf60 with SMTP id 60so180218952qgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 12:27:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YfLPXFI/wyNWBsaFfaufA0K/hN5rdxL9KpoYSkCl0o8=;
	b=Ec/g+txbGmPZlL3Bm6tOQanr60vUmtLf/U4RbHkOpIPKcbXtLqF5nCKuOxrH7Z9tav
	sPt8ZFIJE57YuMhMecq1DZluuqib3cNrKSRyqiivSK6C01KBzN+6qbwHdKSED0C4A6so
	Qcs3AtMa/mSPAYHQ314rdOxjqz5DsyIxiuCxOxRcdSy4R7iTpaVUwC52CrDkhiZuN3co
	6DOZaHGRGgbJQfrUgxbK/XQgeFxSnrq/AmzNjVOcVlLeyvTT6WbmwaccSZyIiewtiByP
	PPuRdHjeZsejyK7SO/5PvO0DEKE5qVZ5x8+e6dFR8AyYuLsEtp+5TnsasDxx4qNPKl05
	ycyA==
X-Gm-Message-State: ALoCoQl+5H8m8PTvQAcOODQKNS9fuIgbNz2NMnDEM/ZAC7nDBOYqtbo9hHRd7lkwwY5+q59Zuj0+
X-Received: by 10.140.148.20 with SMTP id 20mr43215237qhu.67.1427743647198;
	Mon, 30 Mar 2015 12:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 30 Mar 2015 12:27:07 -0700 (PDT)
In-Reply-To: <551989B0.7070907@dynamicdevices.co.uk>
References: <551989B0.7070907@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Mar 2015 20:27:07 +0100
Message-ID: <CAJTo0LZ7D4NsVNP155jOy0pRzLCCxrYu_EbSLG60cQU8TN_hfQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: yocto master work-shared, kernel .config seems to have gone awol
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
X-List-Received-Date: Mon, 30 Mar 2015 19:27:34 -0000
Content-Type: multipart/alternative; boundary=001a113bb4ccec244a051286784a

--001a113bb4ccec244a051286784a
Content-Type: text/plain; charset=UTF-8

On 30 March 2015 at 18:36, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

> I'm updating to Yocto master and have been seeing that when I bitbake -c
> devshell virtual/kernel I go into a work-shared tree now.
>

The devshell drops you into whatever ${S} is for that recipe, which for the
kernel is ${STAGING_KERNEL_DIR} since the kernel optimisations.  For the
kernel yes, this is sub-optimal.  Maybe the kernel should override this
using the variable I added (as Bruce mentioned).

Ross

--001a113bb4ccec244a051286784a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 March 2015 at 18:36, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevi=
ces.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":75g" class=3D"a3s" style=3D"overflow:hidden">I&#39;m updating to Yocto=
 master and have been seeing that when I bitbake -c<br>
devshell virtual/kernel I go into a work-shared tree now.<br></div></blockq=
uote></div><br></div><div class=3D"gmail_extra">The devshell drops you into=
 whatever ${S} is for that recipe, which for the kernel is ${STAGING_KERNEL=
_DIR} since the kernel optimisations.=C2=A0 For the kernel yes, this is sub=
-optimal.=C2=A0 Maybe the kernel should override this using the variable I =
added (as Bruce mentioned).</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a113bb4ccec244a051286784a--
