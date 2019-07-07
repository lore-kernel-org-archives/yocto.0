Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B786FE00D5F; Sat,  6 Jul 2019 19:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44168E0098A
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 19:03:42 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id u19so27156097ior.9
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 19:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j0BrOU+8rmk2xHYOQSfx0tk/EKhrk+cVemnYuFFvch0=;
	b=SKDk2T8FWFQgdFFHGgLRUAyzi9ubvfbMkDWN2+TZ6j0UVc9XobUdBo1bMvgHlHIQy8
	v4x8tr5MNWO7VCKStNX7X9aQDySofOGup1/WDNlga+4DvGTPTD+cl/E7fmIdldvUz+SL
	VXZ/izq6vwsn4TExibq9bwboVXpVtLB5lqprHeGzMAWkZwVake6Ew+rqaDDBpIukWOhI
	MP3g79n+91ht4yDC1RuO/4BU2KMZ0Z8sWbFRgT/kI+lOGWCTRMIfS9pLg9+gwKEkPSpK
	ezwa8YKzwY0zP9n5nyU+QyRdKh8cyDySn48ixMzHb6dmJVTtrrDA4H7zyZOuvXVrBi/m
	vamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j0BrOU+8rmk2xHYOQSfx0tk/EKhrk+cVemnYuFFvch0=;
	b=hRSugBqsHNf8iAdtF1D+T9S0P8Ybwgn/zWrzULApyfJQFHMKt6xTjd7A7CKDrN6Se1
	qVQGtK+4msRNH1w9IQz0uzrkddcap+YIuy6jwikVnnKsbDPCf3KSTxeapwtAkhtDqMhs
	25Ub1oWuvjjfFQLjzgQLgWAV4ea8sfbAmXSE8VU5lfrsVpceWsD1XHV47tFLDbwVd/oD
	RMHpp34b0NksRIL30c+lSdl4P+NIlKkdHMhoMxXGQkafYFxZ2KlifkQUWNYoVNPpGaBf
	Ayho90f+czw5QdGQKOSU0EQlAAhQ1j4DzXK0rSRtmZmieUVwrbN8Tr23FGR3o/USJjJC
	HPHg==
X-Gm-Message-State: APjAAAV/SThGQoT9OAt8eLBIR5AxR/YVOFkvxIuZCwFfQbPI/+bW5sK7
	tLWmPMupkISMcdX2lKcDdznDujhI+TNcR4TWc6jl5QvG
X-Google-Smtp-Source: APXvYqyWGkGiF+NkrCIvEcWxC9KaVD/ReXWDJryXl0vad5Pi+x8cZdMVkQAvS2QGxHFA5/rHWrdrB1j0aeRosmsAMpY=
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr5899226iod.204.1562465021643; 
	Sat, 06 Jul 2019 19:03:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Sat, 6 Jul 2019 19:03:41 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sun, 7 Jul 2019 12:03:41 +1000
Message-ID: <CAA=hcWSYY+m=kLaZNoy4a9L2Xm3oV=CjGuvu56Of-Xx_XYnD-g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to add udev in Yocto build?
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
X-List-Received-Date: Sun, 07 Jul 2019 02:03:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to add a udev file to make kernel device name symbolic link,
any example I can make the Yocto configure to achieve it?

Thank you.

Kind regards,

- jupiter

