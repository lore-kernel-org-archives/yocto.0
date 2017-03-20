Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3BDFE00ADB; Mon, 20 Mar 2017 04:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 572C4E00AC8
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 04:16:29 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id n21so103495798qta.1
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 04:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xX0YTTay3vPFw8dLRWU8sZtIL/SPbdUbCh45+N7hFco=;
	b=LfB0zh/RTvzDoeVWSpAZBRTawNU9UCKVim6MBEi4zBv4HbpNpWCnbIr1yS1St5YjEP
	JCLeNAGsyPYySo5DT3y11AC8/0HFhj8XKxES0P7EPUrNY5SFQXa3wbePvdqZvp791V1b
	HRiIJtnHFNK0vWvASrR+E29/f/48ji/6aiVNW4o3r3npZmpMii2dY9ISocr4wFeYxXzU
	YfU1G6uOnP0GhglxQpIy41gYdLyY1NG2D5xX+yZ3BeruccMjrrMjTNazZuEBWPP0D66O
	zuE9zfzUZa/gayQPM3sHrCfyWRw5fgqCcGgcodtbR/ftmHtbJXOwFvqnxq9RFypfhQQt
	qHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xX0YTTay3vPFw8dLRWU8sZtIL/SPbdUbCh45+N7hFco=;
	b=I0oqi1+ED3+G0NYeXqdtMtRciN2jTszM+G8QgZlimEzSDsSmR9HtgEAwBMsgyuJP5d
	JhYmfcuJ0Qmcpb7OX3D4jRd4LLByORgOsuoXwAK4n1MV+lIhZwzOC92uYbDwhIVFxUVO
	9wICmBoJkkzdDw+xo5TGq2bStJNEHWrvJn3j1d5/HV8VJ3tdJ+MheC49GPspidz/I3DH
	zaeEHQtx80PEJB+kxvllOM+Pm4jBFrGyxo5mo+wXr4nu+2F8XjxXDnAmWPsN/VcoLk2c
	t7LHxxh9IFdECR8zK7I8pYpWscW2aE9E3dVVLohpPNW6ulzNItJR4ZOY6yNmYBP0HkEQ
	bKSw==
X-Gm-Message-State: AFeK/H0WAqNyrSJoh0aMSwm6tMIAEJtd1HErWYaX7kmqgCaWFaXH1H3vA4QQ4xwQlB89SRJkHN5VMYRRr4GExsYw
X-Received: by 10.237.34.250 with SMTP id q55mr25987226qtc.144.1490008589021; 
	Mon, 20 Mar 2017 04:16:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 20 Mar 2017 04:16:08 -0700 (PDT)
In-Reply-To: <CALDHXtc=M_cfCZO-e=2A2cib6b7v9N0jKL-99CoPTpS4kv+0iw@mail.gmail.com>
References: <CALDHXtc=M_cfCZO-e=2A2cib6b7v9N0jKL-99CoPTpS4kv+0iw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Mar 2017 11:16:08 +0000
Message-ID: <CAJTo0LaAYZLN4xjspRDRR2DK4OaddYYTKd_ocwcPNOyJ6K957g@mail.gmail.com>
To: ravikiran j <ravikiran.j@mistralsolutions.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
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
X-List-Received-Date: Mon, 20 Mar 2017 11:16:32 -0000
Content-Type: multipart/alternative; boundary=001a113eea5aa96b83054b27a823

--001a113eea5aa96b83054b27a823
Content-Type: text/plain; charset=UTF-8

On 20 March 2017 at 11:07, ravikiran j <ravikiran.j@mistralsolutions.com>
wrote:

> ERROR: Nothing PROVIDES 'gstreamer1.0-libav'
> ERROR: gstreamer1.0-libav was skipped: *because it has a restricted
> license not whitelisted in LICENSE_FLAGS_WHITELIST*
> ERROR: gstreamer1.0-libav was skipped: because it has a restricted license
> not whitelisted in LICENSE_FLAGS_WHITELIST
>

Look at the recipe and you'll see LICENSE_FLAGS = "commercial".  This means
that there are "interesting" clauses to the licenses, such as patents or
royalties which may be valid in your country, which you need to state that
you've reviewed.

If you've done that then you can set LICENSE_FLAGS_WHITELIST="commercial"
in your local.conf to allow it to build.

Ross

--001a113eea5aa96b83054b27a823
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 March 2017 at 11:07, ravikiran j <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ravikiran.j@mistralsolutions.com" target=3D"_blank">ravikiran.j@mistral=
solutions.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex"><div>ERROR: Nothing=
 PROVIDES &#39;gstreamer1.0-libav&#39;<br>ERROR: gstreamer1.0-libav was ski=
pped: <b>because it has a restricted license not whitelisted in LICENSE_FLA=
GS_WHITELIST</b><br>ERROR: gstreamer1.0-libav was skipped: because it has a=
 restricted license not whitelisted in LICENSE_FLAGS_WHITELIST<br></div></b=
lockquote></div><br>Look at the recipe and you&#39;ll see=C2=A0LICENSE_FLAG=
S =3D &quot;commercial&quot;.=C2=A0 This means that there are &quot;interes=
ting&quot; clauses to the licenses, such as patents or royalties which may =
be valid in your country, which you need to state that you&#39;ve reviewed.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If yo=
u&#39;ve done that then you can set LICENSE_FLAGS_WHITELIST=3D&quot;commerc=
ial&quot; in your local.conf to allow it to build.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113eea5aa96b83054b27a823--
