Return-Path: <karthik.poduval@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DEBBE00D6A; Thu, 24 Oct 2019 08:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
	[209.85.221.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D902E00C25
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:47:23 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id t5so746467vkm.7
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mGwEbIBd9CNCiiX2/nFzzhfL3Cco0oI0SDPgIKfc6dY=;
	b=s7J7zeHGLtJvcyhHB8lnvW9NcMZvltb1Gw+UXDZE1ha1FcoU6t31BXLByjUsM0TAxu
	Plfne3R3eebbxqcLDSzwTrNRHrmul1xpOSBfNsGC9g6o0Rs2ZohbbMBevVBFnip/0AU1
	m6Uv9uCrGHqjtcohqkkYlX352Nz9WULlDZY+QC0oSssnFQgEsNGSg5Tw25vNysVpeocu
	salSr3i/dQ8ohadTZDgTXLoPcdpumrU0eNvOiZuKsAMEscxz7cLNoM7XIc3m25EYV15D
	DT6rmRTFY1d4/whWokYROJXd17IeGYjYrAyWJtXVAQgcDC2sZHM2GeK6g8PiCrSGCiGb
	aZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mGwEbIBd9CNCiiX2/nFzzhfL3Cco0oI0SDPgIKfc6dY=;
	b=qup9iamxebDRH6P/aYneU1wvGiMds8r7Eso1V48+y4hrudZJZNnidFeDaTv1ltWa+E
	hevOcYx2xvLnc7JjbB2BsPWDJwHtxaAPKdL9iZVKzM69I5JJZWvi+V64xBe8Ckux5kh3
	4wbDMOpZhw3YisBkRCChN4c0EXWHBYB7JKE9/MEnXSnlbkeFCyeh/0tCx2+nRvrqVFPe
	C/HsAMbDscJZeLQHhyG1Wi2ElT3BXOY522/dC1brYc3Kgy55h+yD7a+dJse2MYII4CyG
	uP8IKsqaZfYNAvAwoM46XL+QcHYtIgbtv3jcszS8GVEORXtmWpSBZk8oNNoVgX/JjRWJ
	Z8mA==
X-Gm-Message-State: APjAAAVBvgdnp65xWG+NBXPOkt5NrcTt5L3J0udmHk6E3m4MihdQvpLI
	LDRj6Ge+SLT5VnVM0wfuDd2HT+5aF24tYu+sJteD/TYh
X-Google-Smtp-Source: APXvYqyJCZqOKVqRDKy/7XI8Hg4uk+/OXHch1AtnU0fQR9p74JaBmv2CxQZ/g/ccXokRlpOVm+iXEMsQkDqgTHfPRFk=
X-Received: by 2002:a1f:d906:: with SMTP id q6mr2381245vkg.25.1571932042794;
	Thu, 24 Oct 2019 08:47:22 -0700 (PDT)
MIME-Version: 1.0
From: karthik poduval <karthik.poduval@gmail.com>
Date: Thu, 24 Oct 2019 08:47:12 -0700
Message-ID: <CAFP0Ok9yJyq+LkDLNNPpiA=BMEwnpEyzT2a00t146rw-93=rkQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: kernel oops/panic stack trace decoding
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
X-List-Received-Date: Thu, 24 Oct 2019 15:47:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi All,

I was wondering if there is any yocto supplied tools/shortcuts to
changing kernel oops/panic log to line numbers in source code ?

-- 
Regards,
Karthik Poduval

