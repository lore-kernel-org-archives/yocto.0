Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C20DBE00D36; Fri,  5 Feb 2016 10:27:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20243E00D2E
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:27:06 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id 5so19857972igt.0
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 10:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=DPek8evdEJim4FsVx6S8tjrkdLp9WLEmLVHNmqnARgU=;
	b=zkSxdH91/rx854zkyb6LYd9IzmnCEA4PwWqVOv609g+O8eHL3qDRl3RtIujRFu08Bl
	6eu0yAdnRojRshyY3acXqJe7G5CIdj1wcih7W2K8+7Z01wwFGQXk+rQ7A/7YvuT98yHx
	cT+fHQ5WJ/h2PXc4DL4VWaI1ljpWNCbPB/YS18uOZDnWjXYhyX5CV5YMEIBhmzqdEIMK
	mfHy3JaCeHyO0glmzV8vsKk4TmSPKr2BwNwC//0QBqMwFWVcvY/iBxa5yrGrnTEAYyHy
	wEQLHiM39/IY6JMKEFeFnk2/rPDMz7O+qiSlV45/j3bR3GKdeCCxlPxNT1PCpAuBXQCf
	kOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=DPek8evdEJim4FsVx6S8tjrkdLp9WLEmLVHNmqnARgU=;
	b=SKMH42KXn7w7kXRRRF/cyQ1gtm5CrdtSa/oMV6SXCOzj5SmqLNunUFVZBvYiYjc0+J
	Gab1LnlCTIMk/OvaMegljj+0zLPvT8MaZjHQjYyQDYzDLdL41YUanAl22S4hOQceSpuC
	R/a7pFX5tv7QatNO1rB5oClOvEjqbyHfw1avnY182QAENRnLW/W8wOA8CDgmtDC1o/HP
	3V2lDzTHt6yoYZ5XbwLfEI/Pxg5Sg6E782iM7yumcq3dttTg97OWzbfQEgtB0E9KT0v2
	Iqp98ueEn+FtGYacc+mNioQgElB845OWQ6e/dQaLsX62AxTTBfGcU9JDHc9E7J5ijeB5
	9zoA==
X-Gm-Message-State: AG10YOSSVEHMWYNXYWuVp7vyCZeEbcWYKa23/DQuUsLjqrQEojInC32I3JmReiEqWOoHhEXs9meq63LFjxfsxg==
X-Received: by 10.50.141.226 with SMTP id rr2mr10602322igb.75.1454696826437;
	Fri, 05 Feb 2016 10:27:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Fri, 5 Feb 2016 10:26:36 -0800 (PST)
In-Reply-To: <1117582A-9849-43DC-91FE-15F2F972B12B@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAMKF1sq6tRyHMfzDX7s=QaZxr8KsT+_kcFJLBkzqTPuc=oyLXA@mail.gmail.com>
	<1117582A-9849-43DC-91FE-15F2F972B12B@nathan.to>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Feb 2016 10:26:36 -0800
Message-ID: <CAMKF1soqv+YvKTBvvQwxfo=DwG9AAbsLWYjZ+X5a9W4b7MCTKA@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 18:27:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 5, 2016 at 10:23 AM, Nathan Sowatskey <nathan@nathan.to> wrote:
> Hi Kem
>
> The testprog was given to me as a .deb package by a third party to test. =
I did not compile it and I don=E2=80=99t know what they did either.

OK, paste the out of readelf -a on this binary
its mosly looking for libraries in wrong path
is it done on debian/ubuntu in multiarch directory structure ?

