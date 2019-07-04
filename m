Return-Path: <sb@baader.hu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE6A4E00D35; Thu,  4 Jul 2019 00:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 939C7E00BE9
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 00:59:48 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id r21so414208otq.6
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 00:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baader-hu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=aieyRzfjQKDRF+nQCF5H8k2o5wZk/VDiq0jp1mvaUOs=;
	b=2SHBGNrGwJmF6hAc0LzAwrbff7m4i1eZXBx+zOjchk4HAcOJ8A3X2ytOXEpbvZEU/X
	38KuNNwH5v3rxiF+Z+IVxYSxFgEhuaplEKyHf2w8UsojwMvGySyZHB6o6+P195IqiJDd
	gynxVWaFFXjGUBKg1kKTTmmdN1hcxcYvB7kk//N+Yz55m070NPTl+Lh4rJXQ21TRf5nM
	4lD17w77pKMP/m5RNmg6KgPc+vWg+HNp8nPjYEIlPQj/TE8lgG1PMhaQGwaLazrSplpk
	vrXdac3abvXKf2Th+Wi9BfWY4R9WghIfsCfvOETSIJbZngOoVp37LLgVr+NlEMmzQe/B
	Xfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aieyRzfjQKDRF+nQCF5H8k2o5wZk/VDiq0jp1mvaUOs=;
	b=I8mNhTUGVJkcrT285Ro3okUh5rtBCaglxt7PYjMwuBwNxTvcuy2DfvkQs9BxItXXoN
	3/iJ63tiQhr8bGTFDNXntJQMH7I8kmzw1cG8F8n69FrBYNyH6MXsQgf+BDEVQsGHA4Ng
	r23Mj4mGGHRWQVj9sPd2nWAkv2U5QFWfHiiBXwPxuFsuBdwsXRkd1A5U+DYog5vDHuaz
	QK5rhucOjcXQb3PmM8X7DCizJPOW+N2k8aZWEeMbyd6Oi/WtCXA2AEVHs6OxAbcEgLQU
	bd6b1gN3TJ82JDbZcELwzZ78zw0l9borIyFbZOx4MhXIRJbAG6sOAzoa2UxHZ7kqcg8+
	KNaw==
X-Gm-Message-State: APjAAAVNeQ9fku/zjLevpL2k1G2tdkKxdzsLTbyQvcqmstYv0U8jN9uv
	N0budZ0CvOvjJyD7M+FqzctVKFATyR9nKdzSLGpXFA==
X-Google-Smtp-Source: APXvYqwb3632J34wERS0H9hKvxxs+/f1n/aoOGt/5JuQg9rB7jGRH6L31zondd6GOmz8A9PwyCAuZbjRx/iAeWJS9jo=
X-Received: by 2002:a05:6830:18a:: with SMTP id
	q10mr30880251ota.114.1562227187836; 
	Thu, 04 Jul 2019 00:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAH_3R3LHz5vfY3yyDX6tJe65b-pGg5m6B67uzUWUS0jzt6NOmQ@mail.gmail.com>
	<BBC05759-7692-4A75-AC20-CD984B229963@gmail.com>
In-Reply-To: <BBC05759-7692-4A75-AC20-CD984B229963@gmail.com>
From: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Date: Thu, 4 Jul 2019 09:59:36 +0200
Message-ID: <CAH_3R3KvZp-XGF8vQCGZ836FTB8pBCRWWHrGnBMydigf7BFweg@mail.gmail.com>
To: Gmail <jonaskgandersson@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to run script before mount rootfs
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
X-List-Received-Date: Thu, 04 Jul 2019 07:59:49 -0000
Content-Type: multipart/alternative; boundary="000000000000974145058cd65c73"

--000000000000974145058cd65c73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jonas!

Yes, I tried Swupdate, but not RAUC. I will try out and check it deeply!

I would like to create my own solution (as a learning path too). In this
case, if I think good, that possible to solve with systemd (emergency boot
etc) and uboot. I thought I can solve that with a kernel module or
something similar, with an init script. I saw one solution.. but I forget
where.. that was really smart hobby project on github. Therefore I asked
the community, maybe somebody have experience in this area.. which is the
best way to start that.

Regards,
Szabolcs

Gmail <jonaskgandersson@gmail.com> ezt =C3=ADrta (id=C5=91pont: 2019. j=C3=
=BAl. 3., Sze,
20:44):

> Hi,
>
> You can have a look at https://wiki.yoctoproject.org/wiki/System_Update.
>
> I have used RAUC and u-boot on Rasperry Pi, there is an meta-rauc layer
> for Yocto. RAUC Dok at https://rauc.readthedocs.io/en/latest/. RAUC have
> an u-boot example script for loading different rootfs on boot, have a loo=
k
> at there GitHub:
> https://github.com/rauc/rauc/blob/master/contrib/uboot.sh
>
> Best regards
> Jonas Andersson
>
> 3 juli 2019 kl. 18:59 skrev Szabolcs B=C3=A1der <sb@baader.hu>:
>
> Hi,
>
> I created for Raspberry Pi a simple OS-boot-switcher. I change a param
> from rootfs, reboot and new OS run. I would like to add to for this flow =
a
> parameter to create ro boot and rootfs.
>
> I would like to read this parameter at boot and depend on this choose
> which OS will load. How could I define this at boot (eg. from cmdline.txt
> or with a shell script or load c code ..?). What is the best idea/ way to
> do that within Yocto?
>
>
> Thanks in advance,
> Szabolcs
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000974145058cd65c73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Jonas!</div><div><br></div><div>Yes, I tried S=
wupdate, but not RAUC. I will try out and check it deeply!</div><div><br></=
div><div>I would like to create my own solution (as a learning path too). I=
n this case, if I think good, that possible to solve with systemd (emergenc=
y boot etc) and uboot. I thought I can solve that with a kernel module or s=
omething similar, with an init script. I saw one solution.. but I forget wh=
ere.. that was really smart hobby project on github. Therefore I asked the =
community, maybe somebody have experience in this area.. which is the best =
way to start that.<br></div><div><br></div><div>Regards,</div><div>Szabolcs=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Gmail &lt;<a href=3D"mailto:jonaskgandersson@gmail.com">jonaskgan=
dersson@gmail.com</a>&gt; ezt =C3=ADrta (id=C5=91pont: 2019. j=C3=BAl. 3., =
Sze, 20:44):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"auto">Hi,<div><br></div><div>You can have a look at=C2=A0<a href=
=3D"https://wiki.yoctoproject.org/wiki/System_Update" target=3D"_blank">htt=
ps://wiki.yoctoproject.org/wiki/System_Update</a>.=C2=A0</div><div><br></di=
v><div>I have used RAUC and u-boot on Rasperry Pi, there is an meta-rauc la=
yer for Yocto. RAUC Dok at=C2=A0<a href=3D"https://rauc.readthedocs.io/en/l=
atest/" target=3D"_blank">https://rauc.readthedocs.io/en/latest/</a>. RAUC =
have an u-boot example script for loading different rootfs on boot, have a =
look at there GitHub:</div><div><a href=3D"https://github.com/rauc/rauc/blo=
b/master/contrib/uboot.sh" target=3D"_blank">https://github.com/rauc/rauc/b=
lob/master/contrib/uboot.sh</a></div><div><br></div><div><div dir=3D"ltr">B=
est regards</div><div dir=3D"ltr">Jonas Andersson</div><div dir=3D"ltr"><br=
>3 juli 2019 kl. 18:59 skrev Szabolcs B=C3=A1der &lt;<a href=3D"mailto:sb@b=
aader.hu" target=3D"_blank">sb@baader.hu</a>&gt;:<br><br></div><blockquote =
type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br></di=
v><div>I created for Raspberry Pi a simple=20
OS-boot-switcher. I change a param from rootfs, reboot and new OS run. I
 would like to add to for this flow a parameter to create ro boot and=20
rootfs. <br></div><div><br></div><div>I would like to read this=20
parameter at boot and depend on this choose which OS will load. How=20
could I define this at boot (eg. from cmdline.txt or with a shell script
 or load c code ..?). What is the best idea/ way to do that within=20
Yocto?</div><div><br></div><div><br></div><div>Thanks in advance,</div><div=
>Szabolcs</div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>-- </sp=
an><br><span>_______________________________________________</span><br><spa=
n>yocto mailing list</span><br><span><a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a></span><br><span><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://l=
ists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></div=
></div></blockquote></div>

--000000000000974145058cd65c73--
