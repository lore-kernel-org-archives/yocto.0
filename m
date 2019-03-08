Return-Path: <rahulchauhankitps@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3091BE00BE8; Fri,  8 Mar 2019 09:23:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rahulchauhankitps[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E228E00AD5
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 09:23:42 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id q128so18022882ljb.11
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 09:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w39E94JXGtk0l+aU9vNuMIlW3d3iNlayVH5SWuNTABQ=;
	b=SwOrCgQGvpcZI/g6Lya5x3FTeukO+iXopvgz23E1Pzb6VTFMM17zS3E98pFdQbW/yu
	IjMzXZn2PgsVW6L4eqv994JUC7Y1/tn+phOE4H3pdo43/VrjwARBVT7cXxTzLXCyUr4I
	6ps78+wY9/P1h84M8j4EyetDBbHbGM+dUMKDTesTBnnDXPrpfjKmwJxmvYznRPVzHSqa
	b2+7rPqypOmNx/F/5PoVAo+ifoUJIAfPS7yVD638rXK6ZbO3kOuqMpzvrKcveDeMnj2w
	BZX0GyITBVdaLIaYF6mOBPPHa4ZiXw1Mx2Q8f9bMTsDAEubveJvVDTsgLfgQtF6j1VBh
	8uVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w39E94JXGtk0l+aU9vNuMIlW3d3iNlayVH5SWuNTABQ=;
	b=hg7LBWPpTbC+RuolIpkjHz0ce9oIkSPuh0j6R/61Q1OIlMSn+fHvBityhEgI5RhRwR
	IupWFcCZYE9/A///Q6XJ7glVTuv//PnegAkDR9hzsiI+FT8DA6xY6QM/D4PWFP6QeF61
	eLPI8oN1amnxClitIT55n2eDRkjZFmfP5rI0BDNdPPsn6ycjmuCDOQx/lguaHhGmD/fC
	9lBZc4r1S2IY/mYgwxihg/JDyVxzBpKLpgvvdZoM34WUQkZo6BSWGT3ygGt1Px+6Yjx+
	/S3dZN9IVMsdYhZPwXMY752nzeQ1tnvKUXjm9nwBKyhF6ubq3CJ5iqavBqirwC/sSKwh
	jOzA==
X-Gm-Message-State: APjAAAXVctKgGTlg5FrtqAGtU0n9Aa6IxTRD+Uzn5yEBZpDPeJI3/sjC
	OKui9RaOIn94+oZBvJTo8tRPA19aYnvLbycx8LyMfdG/
X-Google-Smtp-Source: APXvYqy+t7xvMfUfvB+KLy4oH25zNYxS+CfUFvg6GVXpeP0YDBBHWweCTwGvcNJTYke+1RGf6driU20dhXcfKCR7mD8=
X-Received: by 2002:a2e:6f08:: with SMTP id k8mr9322966ljc.197.1552065820996; 
	Fri, 08 Mar 2019 09:23:40 -0800 (PST)
MIME-Version: 1.0
From: rahul chauhan <rahulchauhankitps@gmail.com>
Date: Fri, 8 Mar 2019 22:53:29 +0530
Message-ID: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 11 Mar 2019 08:28:17 -0700
Subject: Guidance to start yocto project.
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
X-List-Received-Date: Fri, 08 Mar 2019 17:23:43 -0000
Content-Type: multipart/alternative; boundary="000000000000edbcd80583987b98"

--000000000000edbcd80583987b98
Content-Type: text/plain; charset="UTF-8"

Hello,

I am beginner with yocto project and i want to learn the yocto project and
start working on it.
can you please guide how can i proceed step by step and  what are the
prerequisites?

Thanks and Regards
Rahul Chauhan

--000000000000edbcd80583987b98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div></div><div><br></div><div>I am begin=
ner with yocto project and i want to learn the yocto project and start work=
ing on it. <br></div><div> can you please guide how can i proceed step by s=
tep and=C2=A0 what are the prerequisites? </div><div><br></div><div>Thanks =
and Regards</div><div>Rahul Chauhan<br></div></div>

--000000000000edbcd80583987b98--
