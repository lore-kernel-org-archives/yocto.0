Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5903BE00D26; Wed,  7 Dec 2016 06:01:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0448CE00D12
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 06:01:16 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id q130so226462144qke.1
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 06:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qojeTmgnBK1eXcUnl2b/NsZ0azYCy2LXC/vBQpBEYOY=;
	b=Djq5VdVNB7+kytVYzFEityvYUf++FKORTmozqnZjrDB9/1xjvvULHq9B2/ySNfUIDc
	vwaNV0IYY1P2wKm06UlaUf99Fw0skDr0cRZBBd2KmvMv1jbP4Jnqj5DiY28etAkrnctq
	2hyTOTRKXd20jwNBXylacEmFbDL5KaGiKms3mzZtmGq/YAoEHW7obHhriVgaNnL4DHeK
	sIoe47j0HzsrReA74FKvdt8i4K6xYvd6QxDqnPMBnhNHIlQVXvaEkQWhZQLHPUWDiiQR
	rHntWPtKoL0W/RgMtYcUfgqyT7jegj9SL8ywUEWtIyWS9MgB4+L1r5wLb1KQxhmbWus3
	QrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qojeTmgnBK1eXcUnl2b/NsZ0azYCy2LXC/vBQpBEYOY=;
	b=I4NjYZ3wFmkkqTMkDl+0bzsncHrbdrc1NgVf29sR8FcfhAfGqDjaMtIQPvj105NxZc
	MsfNCmhPrjJJ7ZW6HH6WmCw8JBGiXzr11fHqkbxVCaozVHhMZhnYECn92GGs7mDJSUEN
	MzWtFPPwtBr/up52eUJFhKrwz6BUAU9Rr2Ab0pC9JuSQhlpuymcm3k+eD8MYT1387Wrg
	6mceOO3BpqDVUP4qYIDpLC6Kb3hIXRDjpjWb2gY7BZ1yp3r1JH6tpqMKMpcEE7JpTFGr
	EaVVHr2k7gSzv/5WR59ssE63Sfb33KvUUjdA26kxDgoWlmKnejyY15fwinAVT2tkO771
	6LTQ==
X-Gm-Message-State: AKaTC01mXBd/Xt8qLIaWxIYYkTh39+K6vIwORSMvjDGSMrj9uRBzeDfCjnsMvjVHSDdbKYC76vYUREtD8U98TyWx
X-Received: by 10.55.39.88 with SMTP id n85mr57870710qkn.244.1481119275875;
	Wed, 07 Dec 2016 06:01:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 7 Dec 2016 06:00:55 -0800 (PST)
In-Reply-To: <cover.1481116465.git.jussi.kukkonen@intel.com>
References: <cover.1481116465.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Dec 2016 14:00:55 +0000
Message-ID: <CAJTo0LaGcRAG_v7KjkTP0Z=ewVZGNC8sLH-pCD+NQPsFOvAhVw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-wm][PATCH 0/3] matchbox-window-manager fixes
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
X-List-Received-Date: Wed, 07 Dec 2016 14:01:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c094b164f957a054311f47a

--94eb2c094b164f957a054311f47a
Content-Type: text/plain; charset=UTF-8

On 7 December 2016 at 13:22, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> One actual bug fix (YOCTO #10635) and a few build cleanups.
>

Looks good to me, push away.

Ross

--94eb2c094b164f957a054311f47a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 December 2016 at 13:22, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1g=
3" class=3D"a3s aXjCH m158d97326426b5a2">One actual bug fix (YOCTO #10635) =
and a few build cleanups.<br></div></blockquote></div><br>Looks good to me,=
 push away.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--94eb2c094b164f957a054311f47a--
