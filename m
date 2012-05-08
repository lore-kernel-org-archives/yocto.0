Return-Path: <kergoth@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277C5E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 06:59:48 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so4840323wgb.11
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=JMrtTSERwH0K1y51Nzo90Dx2ONJeZcIaHQc/6c9Kq+k=;
	b=QnbhQM3vLAXfhCYaTJzaZ22F0qHH/sNsEu11E87KivHyty/7BPlSKnHy7T2n9D3wZY
	oSRsHZYl17ulp+cJK2hPwcQQtMuIPQLcKpaTM1/vD3m4y+mBtN0cKxIdQ5OEPSFrHiVW
	WdPGgLXkBwbFWm8lVuk4rosShPf5cEpTWeDCSU+vT0b0oksQFX+jxjilbnfxYljdExyc
	u8gtbHPcSK9IUmXC+4rFz5WpP4GLPH6CIAfr4U8E1BbT5uFo2lYX/+N047EbIt1LeZE2
	FunBVFrShqdywAWVmOnTk7a7+tSMVK4iX5qHw2R6A/2EgOfZu5VOEnV8nrEuv1ZkHXxy
	8DkA==
Received: by 10.180.24.35 with SMTP id r3mr44954247wif.7.1336485586299; Tue,
	08 May 2012 06:59:46 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.181.16 with HTTP; Tue, 8 May 2012 06:59:25 -0700 (PDT)
In-Reply-To: <CAPhrxTpxKd=UutkKUuU1hcE=JN3nObzh0aot9x=B4EBJPr3oYw@mail.gmail.com>
References: <CAPhrxTpxKd=UutkKUuU1hcE=JN3nObzh0aot9x=B4EBJPr3oYw@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 8 May 2012 06:59:25 -0700
X-Google-Sender-Auth: aAP9jTRJo_VNZ0G1qKsML73ow8I
Message-ID: <CABcZANm125goVF54Lg4Exy4yaOs8Bevq-sTYcZ1bHy7HViykxA@mail.gmail.com>
To: Radha Krishna Srimanthula <srimanthula.radhakrishna@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Help with configuring Yocto with an external toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 May 2012 13:59:48 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 8, 2012 at 2:39 AM, Radha Krishna Srimanthula
<srimanthula.radhakrishna@gmail.com> wrote:
> I have an armv5tej platform for which I need put in place, a toolchain and a
> build system. It is in this regard that I need some help:
>
> Can Yocto use an external toolchain (we use CodeSourcery)? If so, how do I
> configure Yocto to use the external toolchain? I went through the developers
> and user manuals of Yocto - am not too sure how to go about doing this. Can
> you please help me with this?

TCMODE = "external-csl"
EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
-- 
Christopher Larson

