Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D4B3E00C18; Fri,  9 Nov 2018 06:40:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAAA3E00A0A
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:40:34 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id o19-v6so1403901iod.3
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 06:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YlKrhotXttTj2Xv1yWpkrfeDlwoGUac4wcUiQrMTM+Y=;
	b=PUPgy5fc4YgQ19Jw5wGtfYHz2VhJhOTFMsz6UD9Gd+/XEl0VOMNdUKjD3jIgh/wqIj
	tmSCfS9TrY2y78fsNmG5lgmeB7jv4qPBo3L1TH2WomaO2wa2FRm0qYHKozGTiXto2moU
	8We2hDP5MgxPjOUdiqC+SRsqmt3Fn7F8HTLZpNZrWo7OG11fMfJFw5zTY2GOEKMSXLwk
	ULqAVT15opl61pjQkY5tY293EBkWZBEedXVl0SQjcmbrySCNQ7NjTBFAfHlLjnQjVZ3Y
	p8gPjN/CiJvcnA7P+gznXpAZ2Z2Y/p1z8qJ22Lufx+YGpN2d5ri7cACeXCoYdbwO3x8R
	yN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YlKrhotXttTj2Xv1yWpkrfeDlwoGUac4wcUiQrMTM+Y=;
	b=Low/Cu1rcKNXNw/0f/a7btI5vRNCBJCME5KWvapzGtXjksSd9hF5PGnNljlmz+zcrv
	wUW/6fNB9KNTOIzZCJgv4DXsah0E7OS99do/VrepXJ11oIg6JyuxOMywu/oy1VWuEX8s
	Y5JnrYQdQeLxww7eZXOnN7KxGS4C9yJKKfQLBek23Ds+l+c5q3P7ttCviQl8/dnpqoVh
	EdAmaDKt6GnAjS0yf1mJ+XWDNmet6ISAWCezss2UlnunZXT596FlJIza6RSMJdBdpWa4
	SaJ9t83b9M4R8AHEz6vJbzpbdQLndad+CzZva1t71jhwiByClAoyy69Xh9z9Nk5B8EtG
	QHag==
X-Gm-Message-State: AGRZ1gKwYdsJzW158gWSj6JEEgqq8AsedY1ZLLk4bZIgquzWI/UHwkJS
	/078MRHBgFsxO/gRfRG3vOUsk/QZbC4YaTXtDbkD4FUz
X-Google-Smtp-Source: AJdET5dHHxBN5lq74lMcrgzWznpbe5mAHxbDUetzorEjlq44AfDp9Hvrc+zCNUO7PH+Gi2IK28QxYQ9Q7i/ciX+6Vx8=
X-Received: by 2002:a6b:2cd4:: with SMTP id
	s203-v6mr7006694ios.20.1541774434124; 
	Fri, 09 Nov 2018 06:40:34 -0800 (PST)
MIME-Version: 1.0
References: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
	<MA1PR01MB2604847AB21F2309705B5AA091C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2604847AB21F2309705B5AA091C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Nov 2018 14:40:22 +0000
Message-ID: <CAJTo0Lai9bbJeTgtwOvwB_jmNtfMGLj1PP2ywQdzee6ugNELaw@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: so how does PACKAGECONFIG_remove really work?
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
X-List-Received-Date: Fri, 09 Nov 2018 14:40:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 9 Nov 2018 at 14:36, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
> Can any one please help me to understand PACKAGECONFIG_remove feature
>
>
> Let's take an example of systemd recipe as follows:
>
> PACKAGECONFIG ??= "vconsole"
>
> PACKAGECONFIG[vconsole] = "-Dvconsole=true,-Dvconsole=false,,${PN}-vconsole-setup"
>
>
> Now how should we disable features set in PACKAGECONFIG[vconsole] using PACKAGECONFIG_remove from it's bbappend file?

The _remove override removes a value from a variable. So this will
remove 'vconsole' from the value of PACKAGECONFIG:

PACKAGECONFIG_remove = "vconsole"

Ross

