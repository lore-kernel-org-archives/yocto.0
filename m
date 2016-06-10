Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBF17E00DF7; Fri, 10 Jun 2016 12:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95225E00DF3
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 12:33:10 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id o127so28105978iod.2
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 12:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pCKd7JLqV0tGNfzQB/A+N0WJ09d8S2nTBcY3HNBoABs=;
	b=Fx9iBj+UKn3Q22T/UVkVA219R5tOmXRk1wiHJIE18ruoi6TFADnXxmDuPrA1Vpz6Rk
	am6QFzh1PBjx1joNBw8QYCGDkkAES6G08E40exlFI9OMNrgvbYgUsylbDngn1KRN9KAo
	9+M5I+ERA4oYOlKMImp94TUFhA6DsB6655ybCV6yL0cPyGOuZjtPyCQevdRcXYfymD07
	DSWIbOsgHSxeEt8X5/i7lpZmFNHE31SXtpRENsdupNzvXMVfQg1VLR32u7633PzJNSLr
	sIYOIIFtZf5ceDfwWDblm1xdh6A27T8Ej4DzMkwa9d7dzMW8vSMSPeLlU8IAA2uVV/t5
	xCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pCKd7JLqV0tGNfzQB/A+N0WJ09d8S2nTBcY3HNBoABs=;
	b=ke4yg1yW7lfLCYdCeiO1bQkHLSgQjAUiIzpjU2mCCq8tuDIb5JElneQmejqd+PFB8+
	YgkO1HpJqYMpjDp7P2vDXUkEHI52iSBpkZ1hwEuQS+iTuYbqKUTiNLlBrhekM+BsQhe0
	TD7Ojt7MrzMMXm2gi2dOYA4qZD5L5o1iRFa2hgz1Uq9InCKFdzC9RSzq1+3Otmt0LK6M
	GrKsX8zjn5l50RYaWI9Mv9S79233Vo1tXWma21r2QiOq4gwBBePbXuxTL4ZA3MJURW0i
	u2HX+k/jW2JHEMVOnLlqBDS060JkrAV5fs5HAUIuB4wQiaE2kE36b0Wm3sATLSzDAvL/
	Fnog==
X-Gm-Message-State: ALyK8tLA5pcXcQRmJ72Yajg7Po0ngRNyk4L6Y0Q3VCnqr9pB3ltt4f2axggytn6HjT77anQKRa3BDWC2Feue/0vA
X-Received: by 10.107.138.201 with SMTP id c70mr6475842ioj.148.1465587189915; 
	Fri, 10 Jun 2016 12:33:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 12:32:50 -0700 (PDT)
In-Reply-To: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
References: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 20:32:50 +0100
Message-ID: <CAJTo0LYhW6XdK=T2F5B+Y4OX-O-ZSYHVUzFp5CqH_LZiV5RHmg@mail.gmail.com>
To: Michael Hu <pxmyhdev@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_patch through Yocto fails while "git am" succeed
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
X-List-Received-Date: Fri, 10 Jun 2016 19:33:13 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6ad7be230534f19bc4

--001a113e8e6ad7be230534f19bc4
Content-Type: text/plain; charset=UTF-8

On 10 June 2016 at 19:12, Michael Hu <pxmyhdev@gmail.com> wrote:

> What could be the difference?
>

bitbake uses quilt to apply patches, not git am, so if the patch isn't
exactly right then they'll behave differently.  Stripping the trailing CRs
would be a start.

Ross

--001a113e8e6ad7be230534f19bc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 June 2016 at 19:12, Michael Hu <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:pxmyhdev@gmail.com" target=3D"_blank">pxmyhdev@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div>What could be the difference?<=
/div><div></div></blockquote></div><br>bitbake uses quilt to apply patches,=
 not git am, so if the patch isn&#39;t exactly right then they&#39;ll behav=
e differently.=C2=A0 Stripping the trailing CRs would be a start.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--001a113e8e6ad7be230534f19bc4--
