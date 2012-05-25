Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1419EE00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:52:56 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so1718076bkc.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=ZKcLJpnkWzoMaYTe3UITHHAY4G/1ScMw9+GtcE6Seug=;
	b=AeD3TAphUwr1sRj2YQWs8dM+gVf44J2J+YuHChdiMrDaMp4K+40YDZvtEbOfpQ0z5S
	B4vhdkXkAJWBpKeGDLChIelcbXbVMrQK/2xwIHHnCHUQUPFlOnNLSt9Cq6QuqVctJ1gR
	HDbSQ+QLL4F7pIeNwci//L7uj66uxt5zbMC60HeGBSQ/5NYvj5uya0fSrJvq0WQBMR2l
	fQ5IyJMR030/QKaQujsj7WVzZaQ7Qu6ATSkhvRbDBo2XB6J5FFoKmrTXZz6cyPPxAf4B
	1COKQiDz9uqdGBxtH283ezCI1wSsLY4881zDMEsYjkf6AKRY0Y7c78TaUDWLw2i7CuPL
	/NEA==
MIME-Version: 1.0
Received: by 10.204.152.196 with SMTP id h4mr214416bkw.131.1337986375848; Fri,
	25 May 2012 15:52:55 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.205.65.134 with HTTP; Fri, 25 May 2012 15:52:55 -0700 (PDT)
Date: Fri, 25 May 2012 15:52:55 -0700
X-Google-Sender-Auth: RLcOOOrELb9D3Jk4CdU65zZ0n20
Message-ID: <CA+gsK-qXd1De=kyWbkXXO_9M7VruxNT+DLvpH9ZykPdLE4v1pw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmTrwb+TC+I3BHbOOVqMdfzmfHy71ciJDOdHA4IUbyrYoTtCj486brdVvZGMgV9Sp97Rt1U
Subject: Building linux-yocto kernel for BeagleBone
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
X-List-Received-Date: Fri, 25 May 2012 22:52:57 -0000
Content-Type: multipart/alternative; boundary=0015175cbab2a594d104c0e43ab2

--0015175cbab2a594d104c0e43ab2
Content-Type: text/plain; charset=ISO-8859-1

Has anyone tried to build a linux-yocto kernel for the BeagleBone? I
understand that there is the meta-ti layer to build an image for the BBone
but the recipes are not utilizing the Yocto Project kernels.

I know that the OMAP3 CPU of the BBoard is different form the AM355x CPU on
the BBone. However, can the yocto/standard/beagleboard branch be leveraged
to start off?

Thanks,
Rudi

--0015175cbab2a594d104c0e43ab2
Content-Type: text/html; charset=ISO-8859-1

Has anyone tried to build a linux-yocto kernel for the BeagleBone? I understand that there is the meta-ti layer to build an image for the BBone but the recipes are not utilizing the Yocto Project kernels.<div><br></div><div>
I know that the OMAP3 CPU of the BBoard is different form the AM355x CPU on the BBone. However, can the yocto/standard/beagleboard branch be leveraged to start off?</div><div><br></div><div>Thanks,</div><div>Rudi</div>

--0015175cbab2a594d104c0e43ab2--
