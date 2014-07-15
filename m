Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E43E00547; Tue, 15 Jul 2014 11:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D71E004FF
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:18:22 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id tr6so4844024ieb.4
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bXGtOoz161Ob9BKxIsjli+bSMoi1NXnVoTxgNrCJtq0=;
	b=nKyPV97N3jG1TTeUm2+vTL2tysXuqqIh8cGTm6cPJEe8uOJN2xyuU/3ozwD9izhKsd
	lcNZPSzawl9/zc9VeQ1vt5QiOme1b6rtLLirJ27TJXVWOWY1aG9av3Lptmz2T3ge19x/
	u1wZNpHTdxoRUIJuiuUTDm4S6w4gVKWvPmKhCASfH3Fm6Za6WcbIfrs1htTIUI6JMxhd
	mfzkgfrT9ffjVUEwOLZ4kIE3WXbyLpd1yRPoafSXHWXTVSO7S8lU+81Nrg4LaSy5Ll2m
	v52kS8nPhffjBVRtu00QcnE3DAFBqa/trCD76iPr3n1VpYrrbupct+1OMXilR/tsCqec
	GbCg==
MIME-Version: 1.0
X-Received: by 10.42.90.74 with SMTP id j10mr31904510icm.29.1405448302105;
	Tue, 15 Jul 2014 11:18:22 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:18:22 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:18:22 -0700 (PDT)
In-Reply-To: <4c2985c7070540f08bd68ba8a7c25331@CY1PR0301MB0715.namprd03.prod.outlook.com>
References: <4c2985c7070540f08bd68ba8a7c25331@CY1PR0301MB0715.namprd03.prod.outlook.com>
Date: Tue, 15 Jul 2014 11:18:22 -0700
Message-ID: <CAMKF1spGz3g=B1UuUEOHKchbguCp1HRoWWvwOVEGqEJx-tgS8Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: zhenhua.luo@freescale.com
Cc: yocto@yoctoproject.org
Subject: Re: Query about the kernel version supported by Yocto
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
X-List-Received-Date: Tue, 15 Jul 2014 18:18:27 -0000
Content-Type: multipart/alternative; boundary=90e6ba53b27ccc1d6904fe3f6e20

--90e6ba53b27ccc1d6904fe3f6e20
Content-Type: text/plain; charset=UTF-8

On Jul 15, 2014 3:30 AM, "zhenhua.luo@freescale.com" <
zhenhua.luo@freescale.com> wrote:
>
> Hi all,
>
> The git tree of several kernel version is maintained in the Yocto
official git repository, 3.4, 3,8, 3.10 and 3.14, is there any reason to
skip kernel 3.12 which is a LTS version?

usually latest lts and ltsi plus latest stable thats available during yp
release time frame. 3.12 was declared lts a bit late iirc around march 2014
>
> What's the policy of kernel selection of kernel that is supported by
Yocto?
>
>
> Best Regards,
>
> Zhenhua
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--90e6ba53b27ccc1d6904fe3f6e20
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On Jul 15, 2014 3:30 AM, &quot;<a href="mailto:zhenhua.luo@freescale.com">zhenhua.luo@freescale.com</a>&quot; &lt;<a href="mailto:zhenhua.luo@freescale.com">zhenhua.luo@freescale.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; The git tree of several kernel version is maintained in the Yocto official git repository, 3.4, 3,8, 3.10 and 3.14, is there any reason to skip kernel 3.12 which is a LTS version?</p>
<p dir="ltr">usually latest lts and ltsi plus latest stable thats available during yp release time frame. 3.12 was declared lts a bit late iirc around march 2014 <br>
&gt;<br>
&gt; What&#39;s the policy of kernel selection of kernel that is supported by Yocto?<br>
&gt;<br>
&gt;<br>
&gt; Best Regards,<br>
&gt;<br>
&gt; Zhenhua<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</p>

--90e6ba53b27ccc1d6904fe3f6e20--
