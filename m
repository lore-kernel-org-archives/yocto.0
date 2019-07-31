Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45FC6E00D35; Wed, 31 Jul 2019 07:33:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13DBE00C94
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 07:33:54 -0700 (PDT)
Received: by mail-qk1-f193.google.com with SMTP id d15so49364657qkl.4
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 07:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2xc2kTCtYcZB3+A3jsuypwXEXP02fX+pXr6ihTihc+k=;
	b=RZGpypOu+pNvuzAPFxfZ57H2WFTfjjlk6VWvfBXnJY5Vp8bsXteluda6LD2AeurmSB
	5uXq+eIrLQQ2ND9vqO1cU0h7v4xQmke6HyMOoLGBEIcrkobgJKxfgtAuihho19ZWcB6a
	0DSLu0cT5DrE18Kcv2lW/3dwy3P8WtdpkmOwGC8lTLtInSwkn5hMeR5sx9u60RJYhFlj
	Q7zWBAenEFLEHf4ka0CQ6bNDNtYZGw6psEGmOFB+qTKDcxJFlz9Mfk560RW04xT8I1hk
	BARUPA8f4eka6gdJFAXnFNL6hTlWTs1JCaFKc3+9U04FKbqzEV3tn5eSHVUsPLOsKp85
	qjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2xc2kTCtYcZB3+A3jsuypwXEXP02fX+pXr6ihTihc+k=;
	b=kptg/t3G1EE1cJqypus6T0y7ghyTD1HE7N8RTwE3kPq1D0FE8Y0Hx4pleoSd1aGljg
	k7twvwN0wJ00QiJBhqyrEGgOhpF/jzwC//GbQZ1hZpKpfruGt2PhtelrvPjgs1yNZ0F9
	CUe7qMYlNSp9xQ4dEK/T6H7yUrLpAFloI2oR4u9gJAHWndWJIfmgd2DileQKo6j1cbjW
	ovtB1CfJ02eG5P4YRkrWL2DF0Zc9TX20edu5V4NZE4fUap+oeRIBOpm3xSCoaOCsrI84
	wm+NlcH5OXNOfvKLcmDEqszdczF+lSzN7pXG+SB79v+XQ6xcpGcdb4+EMmZP+MttWYOX
	Gycg==
X-Gm-Message-State: APjAAAWidegCNW+bKYoUgknCvi08tbAzX2e0y4iEPPkXW3dYW1ug4qqG
	G/KbU/AQjZY6G3PhXIDbMx3FCNN43Za+xRn1cf8tUxPk
X-Google-Smtp-Source: APXvYqw3BsmuG+4/8qXAjI+6wc1PwleBiK+goFJZX2mDbcBdy2KJK4tUbLnXjS6IF8/CVlqX4R++eJfeu4kwUyQ1GQE=
X-Received: by 2002:a37:7083:: with SMTP id l125mr77884268qkc.71.1564583633938;
	Wed, 31 Jul 2019 07:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190731132957.4782-1-bunk@stusta.de>
In-Reply-To: <20190731132957.4782-1-bunk@stusta.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 Jul 2019 07:33:37 -0700
Message-ID: <CAMKF1sriCokV8j2TsVva1DbxBnoe3q84cd=XXXaLpv6aHhLT-A@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: Remove documentation for the removed gnome class
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
X-List-Received-Date: Wed, 31 Jul 2019 14:33:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 31, 2019 at 6:30 AM Adrian Bunk <bunk@stusta.de> wrote:
>
> When removed all it did was
>   inherit gnomebase gtk-icon-cache gconf mime
> which would also be the most trivial replacement.
>
> Most of the time not all of these classes were needed,
> and it is recommended to use only the ones actually required.
>

This should go to oe-core ml as well.

> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> ---
>  documentation/ref-manual/ref-classes.xml | 15 ---------------
>  1 file changed, 15 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
> index 37619e382d..5403f20b6f 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -920,21 +920,6 @@
>      </para>
>  </section>
>
> -<section id='ref-classes-gnome'>
> -    <title><filename>gnome.bbclass</filename></title>
> -
> -    <para>
> -        The <filename>gnome</filename> class supports recipes that
> -        build software from the GNOME stack.
> -        This class inherits the
> -        <link linkend='ref-classes-gnomebase'><filename>gnomebase</filename></link>,
> -        <link linkend='ref-classes-gtk-icon-cache'><filename>gtk-icon-cache</filename></link>,
> -        <link linkend='ref-classes-gconf'><filename>gconf</filename></link> and
> -        <link linkend='ref-classes-mime'><filename>mime</filename></link> classes.
> -        The class also disables GObject introspection where applicable.
> -    </para>
> -</section>
> -

do we need to enhance the documentation for gnomebase bbclass to
mention about disabling  gobject introspection
or is it handled differently now.

>  <section id='ref-classes-gnomebase'>
>      <title><filename>gnomebase.bbclass</filename></title>
>
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

