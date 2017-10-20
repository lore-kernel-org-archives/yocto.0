Return-Path: <xavinux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C0FEE00B53; Fri, 20 Oct 2017 10:22:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xavinux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C623E007EF
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 10:22:02 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id z19so19313156qtg.11
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 10:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=T3nz2Wca0cVT9IgMXhw6bom17m4g1QZWSqahfV+/xBQ=;
	b=rQ9VA/1GeJ1a4l41DKAj7EuiYmwYNScLriJWrxoyngLVKBObtI29yb6C1zIef2YdnH
	DuVB6GIDi5ET5fUq1xWbcr0ruQ2EiLOtE97hMTHFfRj1zjDtOidGVM+mjnZERmkispPy
	jlskLZy1b4iMsTViKHfSfdZxqLFiKHGR21Y+8GEeonUcpde1bpTnWdF2IYWErlUeynyw
	T/xPnFcHxhtt1ywZavs6ygkUHMVqsASqk1TEzfvLr1rxl0hpBLuzhHjqF86MxJOS8erP
	AOxOsZbmw7W7k8HG7xU0F+HULnZd7G7ylQ1XX76oJe9Tie1vWL/VCmQbNUG2WZKq2f1I
	WZtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T3nz2Wca0cVT9IgMXhw6bom17m4g1QZWSqahfV+/xBQ=;
	b=CnqBe1FT454UVYzPdd6Dk4kbaSbszegH8MOeKt5rKm/o73wEMJ02jJMLwluN242wXe
	pAR+Owc7X3PiGstdCQKajn4hIzKdYxDg9nGJHsN0sFrNq1PBKZtFth/GjU0AiVuUMO71
	TK8HjyAQYEXi5aCyzTOw8vsCb5KZaRLb6e3vtNCCCc8nUceVCXP1qoOILrY527jOUWYW
	y7ExSbkX38Wx4iusi/yMRS3qJlBOh5R9U173qh9Lq22HWE1wMMWomPBcRD+6B+UZrVDx
	G5YqUGONKXhbckk2z4tSPiatnjwSHCeMCb3LUfOoW93KpMDwPlrmfzl7L7EybGA2Yaas
	c2MQ==
X-Gm-Message-State: AMCzsaVj3z0GaIgGOb3+Io7GULo3tIkie2FBZHMvd1gbTP3YBRPrEHFw
	7DpTq42AFn3tZyjkmBNTg6ec0NsmtOgTEkTszZ0B9lw7
X-Google-Smtp-Source: ABhQp+Qyqgf7uqT11PpxPhjFwyUIkThduwVIYi0dL4qkwcgpA/D7I34k2S3qCxWNSfWYCQMAIlWizsHA0KDnuc0afHg=
X-Received: by 10.237.33.186 with SMTP id l55mr8684181qtc.71.1508520121853;
	Fri, 20 Oct 2017 10:22:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.153.200 with HTTP; Fri, 20 Oct 2017 10:22:01 -0700 (PDT)
From: Javier Romero <xavinux@gmail.com>
Date: Fri, 20 Oct 2017 14:22:01 -0300
Message-ID: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Contribution to Yocto Linux.
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
X-List-Received-Date: Fri, 20 Oct 2017 17:22:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

My name is Javier and live in Argentina.

Would like to know if it can be useful to test Yocto Linux's Kernel on
my Raspberry PI 3, and report bugs that maybe found.

Thanks for your attention.

Regards,


Javier Romero
E-mail: xavinux@gmail.com
Skype: xavinux

