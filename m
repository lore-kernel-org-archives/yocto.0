Return-Path: <ysan99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49D53E00BA0; Wed,  6 Apr 2016 20:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ysan99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03601E00B46
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 20:46:45 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id d68so82046554ywe.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 20:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=6XHxwf7wKEHSVSi24Qbn+HFZp5VYykXiaF1f8Ujbfp4=;
	b=d5uemqvVDkH/vW+3kq4dJykhqA/9j3+qHRNq4C6+hdWpOGw5ere2sp5yhlgHAzIYR9
	oXHTbSBeTXt29Cgr/4IjTdHkpNPr2SPRDAlUJnsCf1lkZf09VExN3owCme0Qrl8A+KWb
	MBcu+z9KpQF1LezYAEIoUKkfd1nkWiOP4c8eZ0NOaoZq5zXrTSnvhpUifdzD+2/TmSvb
	+Z2oc1Yv3u88Tj0/kmYLuUiqXbUqgKh3ILrdnACq4my/gU5AdZV+cabrNVkuJB7tlrTF
	940Xws5pYODXxPb5taKkVbnStEthm7pLzeI3OMF0aSQ1ZgPZm51XpsGFXpYB2g6v9om1
	QNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=6XHxwf7wKEHSVSi24Qbn+HFZp5VYykXiaF1f8Ujbfp4=;
	b=ZFTlxWRuCbr9DDmmNTIZVX24u0GomX5pQW7DLry+yuP2GbKz512B0R8ZMdRKppOyha
	xeQ3RK9L6DEv2LhDgGYZbqIdEtSQAapr+4xOLOtvbOBAlBLiNE9lhnfHPSv8gCw3PL0c
	3VzIVadFxqOwT28ZZJAlw1htJPaB7NqIXLHnE2Nh+163jRg52ZWMhq5b4khbcXFYOGgW
	fxEPkaMpmSO0ig4k9nihbe4kYCaRbWXojNR70W2S9aXNcvVIsmxF22U+F5wXy+iQlQBy
	C0dbuvfILcrugZwUkkXts3UwW1ltWSNnLLQqCFtz2OciXB4odgVAR8RCk7UBhvFO9UDw
	oZlg==
X-Gm-Message-State: AD7BkJIbgiC9WLepaHARkS3eSuLihKvWQ8PSL8Avn2w7lpyinAuuXblPuDPUwYAPlLe+vJ15QBI6hKhjm83Gyg==
MIME-Version: 1.0
X-Received: by 10.13.223.73 with SMTP id i70mr454303ywe.27.1460000805000; Wed,
	06 Apr 2016 20:46:45 -0700 (PDT)
Received: by 10.37.17.195 with HTTP; Wed, 6 Apr 2016 20:46:44 -0700 (PDT)
Received: by 10.37.17.195 with HTTP; Wed, 6 Apr 2016 20:46:44 -0700 (PDT)
In-Reply-To: <CAJTo0LZs7x8iRjfeKQOQtzYtm5-Lic4URRmN-Gt_qfJCx23vVA@mail.gmail.com>
References: <CAFcFeQKU5EkgSdw-Wyy3gcF4sNTMZO4WtFjgptaFbwrgZeyhPQ@mail.gmail.com>
	<CAJTo0LZs7x8iRjfeKQOQtzYtm5-Lic4URRmN-Gt_qfJCx23vVA@mail.gmail.com>
Date: Thu, 7 Apr 2016 09:16:44 +0530
Message-ID: <CAFcFeQLkMK=8WkG3JgyBEph5sT0qC9nosvXMdyoitb8RV+CvmA@mail.gmail.com>
From: Santosh Y <ysan99@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Sharing Sstate cache among different platform architectures
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
X-List-Received-Date: Thu, 07 Apr 2016 03:46:49 -0000
Content-Type: multipart/alternative; boundary=94eb2c06aa2a5ab1b1052fdced35

--94eb2c06aa2a5ab1b1052fdced35
Content-Type: text/plain; charset=UTF-8

On Apr 7, 2016 1:44 AM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>
> On 6 April 2016 at 18:18, Santosh Y <ysan99@gmail.com> wrote:
>>
>> Can sstate cache be shared among builds for different architectures like
x86 & PowerPC?
>
> Yes (and different host distros).
>
> Ross

Thank you.

--94eb2c06aa2a5ab1b1052fdced35
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On Apr 7, 2016 1:44 AM, &quot;Burton, Ross&quot; &lt;<a href="mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On 6 April 2016 at 18:18, Santosh Y &lt;<a href="mailto:ysan99@gmail.com">ysan99@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Can sstate cache be shared among builds for different architectures like x86 &amp; PowerPC?<br>
&gt;<br>
&gt; Yes (and different host distros).<br>
&gt;<br>
&gt; Ross</p>
<p dir="ltr">Thank you.</p>

--94eb2c06aa2a5ab1b1052fdced35--
