Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C8C2E0083D; Mon, 24 Apr 2017 03:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35E2E00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:30:12 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id m36so109304939qtb.0
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6NPDTeYnyjeA9YlrLlavO24zaAu3u+RJqxKQfuRfDKE=;
	b=Quxj4+zxKQEyVNlDsRUOjigNluGZ2aaLf0sIoVUXlDcJ34Y9433jDoNEceJEXZIWvk
	J4LHoUrqmdCpcvr4Rj8JUIc7WGflNlGnEm+c8HcOcCnOgTqY9IAQQF5B0geuKB0IRTFE
	yk0OkkXyFBWQ3iubumYswNTjrfk/QrCrqCZiM2yl8vLXumlm923uVm/VSTVfWnvkwYEG
	uZCS7Ki3+ykafdFQDmnmAcaP779FKLSrhumlofN8zdbWXzrJDuyr21suqhh0ROE2Jimc
	Hqt2iODMnWEYRfIQl7wffAJediuf6I93qXjVL7NT/QI8tgCaTSpkXYf9bXkFgnyHPPL3
	BxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6NPDTeYnyjeA9YlrLlavO24zaAu3u+RJqxKQfuRfDKE=;
	b=oGu1uGhvO31HuZ5XJfKPoUC8DoGu6deOGjxJ4EDYvai2E3WtkNYDSoHsr/8Tl24xDO
	NOns1SBnbji5PvXtcuwUsu2Bax/NtqsAQMZH9vF9f4nqP0bD3p1HT+q2TRztj1pcGTnp
	JIWGwwRR4Ul7ce6yi1T0v75ALTucOjPsdfgLXShIk7EYrexD/VYyw86yP66li5UwnI4A
	qFd2DOORxUve88/x0TjCdp29RGPK8ZuWSZ6kAKqBiOk//p67ScBcSRSwTzVJ2WcZdLRe
	Awt33J2ZDNOSZGOoUpMBISB69Mo6UQOUkmvp6VMVs6S4O/zjlcdCAlPxEYUtzMXwHTo8
	4t2A==
X-Gm-Message-State: AN3rC/5p6u+TjfwNIG15bbxFSg+t3E2HMGpVTSkEPf1ix38H2r368JIW
	RJ52G70n70tHl2rVBhSZosZEiakgBARt5yI=
X-Received: by 10.200.34.242 with SMTP id g47mr24297300qta.109.1493029811817; 
	Mon, 24 Apr 2017 03:30:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 03:29:51 -0700 (PDT)
In-Reply-To: <CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 11:29:51 +0100
Message-ID: <CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 10:30:16 -0000
Content-Type: multipart/alternative; boundary=001a114037d4929e7c054de7177d

--001a114037d4929e7c054de7177d
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 01:31, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:

> I wasn't able to bring up the linux-yocto one .. but the 4.10 linux Yocto
>> should be at a high enough stable
>> release to build with gcc7. So if there's a direct link to that error, I
>> can take a closer look.
>>
>
> And sure enough, after I sent that the error page with linux-yocto finally
> wheezed in.
>
> I see that it was the 4.1 kernel, which is expected to fail. I haven't
> looked into backporting gcc7 fixes
> that far, but if there's demand, it is something we can consider/look into.
>

| kernel/built-in.o: In function `update_wall_time':
| (.text+0x65ecc): undefined reference to `____ilog2_NaN'

I'm getting that with 4.9.15 from meta-intel, should I be telling Saul to
update the BSP with some fixes you've made?

Ross

--001a114037d4929e7c054de7177d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 01:31, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"=
mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-lef=
t-color:rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><div>I wasn&#39;t able to bring up the linux-yocto one .. but the 4.10 =
linux Yocto should be at a high enough stable</div><div>release to build wi=
th <span class=3D"gmail-il">gcc7</span>. So if there&#39;s a direct link to=
 that error, I can take a closer look.</div></div></div></div></blockquote>=
<div><br></div></span><div>And sure enough, after I sent that the error pag=
e with linux-yocto finally wheezed in.</div><div><br></div><div>I see that =
it was the 4.1 kernel, which is expected to fail. I haven&#39;t looked into=
 backporting <span class=3D"gmail-il">gcc7</span> fixes</div><div>that far,=
 but if there&#39;s demand, it is something we can consider/look into.</div=
></blockquote></div><br><div class=3D"gmail_extra">| kernel/built-in.o: In =
function `update_wall_time&#39;:</div><div class=3D"gmail_extra">| (.text+0=
x65ecc): undefined reference to `____ilog2_NaN&#39;</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">I&#39;m getting that with 4.9=
.15 from meta-intel, should I be telling Saul to update the BSP with some f=
ixes you&#39;ve made?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div></div>

--001a114037d4929e7c054de7177d--
