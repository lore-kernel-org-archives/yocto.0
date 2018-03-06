Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E83E00971; Tue,  6 Mar 2018 03:15:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9041E00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 03:15:50 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id b34so21622284ioj.6
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 03:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fYy8xdFPUuToVVeGiTwyg42mGihrWG/EqFuqWmsjljQ=;
	b=hJhDPHloSChXhAhUglm6z4ipddCHX7oEmuwpsx0Et9oILza7hklKwWUVU3MTCe0mQS
	sGZL5cuwYcPI+ChicJbAPdmmyuzcTTGIRevyPR7JasYnam9HsF6KY4r/CvqVugzvjvah
	jnvX0jYrQWrF55cMwYJF0XQCDhZlBXah3ojI27aF0dRl674cBrff08ejYgv/atespNPO
	xDKdpLpDzpBrzlpZ0eEcJV26EGQCxoWbdjltqvpLjMpF51yw2d8Bj1QFr6ckSRREyC96
	AqKQxTJXNoyou5g6Gc8+ZBM8gzFdm5TpyCLI1h674zo4fcAHTxEgmfX8zsBuxFK/IVG7
	v9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fYy8xdFPUuToVVeGiTwyg42mGihrWG/EqFuqWmsjljQ=;
	b=lrBPhUlF/B6KygbaHPwb/auMuNhrr9KsvQbHo+1Dhq7a7XacbYfpzdvT98QH8W+75o
	4UtT3hSkQRluBAnMgd5qjtC+7yjvK71YEAIcOl1p7nOA6u9WDG3ixXNUiiDG6od6KOeU
	qS987NXoR6Qliuo18slouVLESuy91NVPnWaj+JMLetX0pcD2eCQcLdyNkn0CajQALxdo
	NrwmBfSTEG37K7kCwuFpxpgugVPKPuQNNL5XlRYyVlxKYf30wpP/1Fj0xPyzWvASKnd1
	BxKZu6Cej5pkmXM12bBjk+5VsTMpas8ryisqTDvIvNHb7Git4WueOQy2ZRYk/QxUItiB
	ppFw==
X-Gm-Message-State: APf1xPB4licWTTL494yWKNzxKWNa/RapUda+3MXo9/cQVjP1NvLxhNTI
	xgWVRMsGzuTU7cY8qTDbYykJSrAquUnp5e+cgKEuSA==
X-Google-Smtp-Source: AG47ELvKjoVwxYBt656x8QwDsMVZiZnPCP+OggNxU1/QWceLAhX79rGrmykIG8suu3PyJwi8jAhbqn7iC4Nin/jiAzg=
X-Received: by 10.107.6.139 with SMTP id f11mr22112790ioi.23.1520334950034;
	Tue, 06 Mar 2018 03:15:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 03:15:29 -0800 (PST)
In-Reply-To: <AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0@AM4PR0401MB2052.eurprd04.prod.outlook.com>
References: <AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0@AM4PR0401MB2052.eurprd04.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 11:15:29 +0000
Message-ID: <CAJTo0Lb0aZSOYVLMfdb+UAw4LO3C=T49ft6ZLayydzK_cJoaYw@mail.gmail.com>
To: Avishay Orpaz <avishay@magosys.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK without qemu
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
X-List-Received-Date: Tue, 06 Mar 2018 11:15:52 -0000
Content-Type: multipart/alternative; boundary="001a113eeaeaa30a020566bc907b"

--001a113eeaeaa30a020566bc907b
Content-Type: text/plain; charset="UTF-8"

Do you mean "how can I build a SDK without using qemu" or "how can I build
a SDK that doesn't contain qemu"?

On 5 March 2018 at 15:37, Avishay Orpaz <avishay@magosys.com> wrote:

> Is there a way to build an SDK without qemu?
>
>
> Avishay
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113eeaeaa30a020566bc907b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do you mean &quot;how can I build a SDK without using qemu=
&quot; or &quot;how can I build a SDK that doesn&#39;t contain qemu&quot;?<=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 5 March 2=
018 at 15:37, Avishay Orpaz <span dir=3D"ltr">&lt;<a href=3D"mailto:avishay=
@magosys.com" target=3D"_blank">avishay@magosys.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-5948399257930637112divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Is there a way to build an SDK wi=
thout qemu?</p><span class=3D"HOEnZb"><font color=3D"#888888">
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Avishay</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
</font></span></div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113eeaeaa30a020566bc907b--
