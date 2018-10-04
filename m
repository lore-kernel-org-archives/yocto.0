Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10F23E006AF; Thu,  4 Oct 2018 09:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (satya.2891[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BE95E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 09:17:28 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id q4-v6so8357454iob.8
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 09:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2nLLUY+lS5Zz2nhyf/X9aLfL43+/E23T0B7I6exVO/M=;
	b=ArH2131NuJtDN+v0rOlURTGsN02RM3e2/J6CupiqJYaXKQnskhf4offYQaeBcriMcq
	y11ZweHGU0FH95oNIEWM08lCpvWTHUay7H5lPOaS6G8Pq0lUQaSXR1awO5Npr6aDtvtU
	VTRcWRw4n1hiO6bX/F1GJf5JOBOWNDuTEREDxvDTAOu3O/2EUkv/K/J7kZ2zCLAowvhg
	aBAeLqFMVyXIfAOlfyb/sgebKiaW4cBoNfmMhZPsfyzwUDqtVGjmDcKs+Dc9ux53mmGI
	hTnAfpZPU4sKsvoJUgJoeonNpDetSdYvVAUPq2UNKxSchI3ZJPXRygED1VJO33wIeRTl
	+rIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2nLLUY+lS5Zz2nhyf/X9aLfL43+/E23T0B7I6exVO/M=;
	b=TYLrTresInv4ZGYqapUfYlebE+GWjEyuFOOsShxGHoegNs112XtWYz+Ane5W4lfCuM
	ZE0he6mJOMMl5FhVcPQpnudwytIWRTo8WTm/05wzjp3pKzL0YM/aeDrKGWUoM8WGb1jI
	zkKbHewYrAOT1+vZo170Gip42443EsEKofEZsXcmdkHQLMi8NBk9KlXb8ieDQcnxcIrs
	L6NeCWlDlYSAqhlviO1H3tzwchEtU29LcnqtrY42u8du5KI5ptQ6qzqJGJ4OK3jCvsSj
	+XTHS3vIHhvuUNH6TP9oF3DuPBOX61xgAw9IIfVm0xQPMs21iyhLW9fn2Mvmh/dndwLW
	rTvw==
X-Gm-Message-State: ABuFfohIhY6uQBvbVAfWXskLVRju/wNJB/brkHJCVSLTpzMCxPMp7UzX
	Y02GQ/gnkaAC0dP4T+FiC5dAEDWcyWxqfYODM+s+oQ==
X-Google-Smtp-Source: ACcGV60cS7trdcrrYW8E2d5iP+8y0BliS2cEOkCCr0v8xIvosS6TCHnttPW7bKRhCwgmkgZaDyZt2j7avofAEVc+tlU=
X-Received: by 2002:a6b:cd45:: with SMTP id
	d66-v6mr5202244iog.121.1538669847747; 
	Thu, 04 Oct 2018 09:17:27 -0700 (PDT)
MIME-Version: 1.0
From: Satya Sampangi <satya.2891@gmail.com>
Date: Thu, 4 Oct 2018 21:47:16 +0530
Message-ID: <CAF1M0z6xWh_ZqSKhYC7-Ej_iPkme4MYDzW1yK_BH=EMf_Q4uyA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Building package for the host / native system
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
X-List-Received-Date: Thu, 04 Oct 2018 16:17:29 -0000
Content-Type: multipart/alternative; boundary="000000000000b3a4400577697d3e"

--000000000000b3a4400577697d3e
Content-Type: text/plain; charset="UTF-8"

Dear All,

How can we build the package for the host / native system?

Thanks & Regards,
Satya

--000000000000b3a4400577697d3e
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Dear All,<div><br></div><div>How can we build the package for the host / native system?</div><div><br></div><div>Thanks &amp; Regards,</div><div>Satya</div></div>

--000000000000b3a4400577697d3e--
