Return-Path: <soq2000@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97B4BE00C1E; Fri, 22 Feb 2019 09:18:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (soq2000[at]yahoo.com)
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (son tran <soq2000[at]yahoo.com> )
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.137.64.204 listed in list.dnswl.org]
Received: from sonic303-23.consmr.mail.gq1.yahoo.com
	(sonic303-23.consmr.mail.gq1.yahoo.com [98.137.64.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 317A0E00BAB
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 09:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1550855897; bh=bM3KPC2c3L0OzYSTYjDNQh1fhZ/nr8os5xlu5oBbDx4=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=AWegCjv+nFplOHBuTSRlRZYANQDVzELgXeuajSxwQ5ZwtgbRyzy/bD5kFbh8SyN/wXqnEe4N29FsIuEoPjGRjs6OseRT5k50u9RMQesQPy03z8vkXJMUbCgCGH1PsyJGSEhuZADNUU6xOQ1kfMIaEjsMT69D7RjCN5sqXQ9zw2xqZ1FmuzZ30DVqHTbhvIIRZvygX/uOM1qa5cCterqHKgLtqxyBkAKIn6IAqSDNWX6KmDnfEyoOhhDvyaTFvAEzkymPjARWUjJrXZpZgmZcMkTMFERV6AMjv0uYpPPsw4Xl2ak0VPJNMf0XWRZHqvS7CabYRah56lR5hcZPZRLTbA==
X-YMail-OSG: fYzMfsAVM1ksYE9X1qcBkEOhX4dmUVxuGcNb6xqgW7JOzcEoZ_u6Y4n2Se9X7Gp
	lIcw6FXKmHyxOt64tIhAeqU4pvw3fM34f2vxS.a9HE6YsclCXoqakgaSZ_gkW9154eD0ltY_v9K_
	yY6K9acN2f9sag6uA0Ag1l.Wbho4eau9kngxxb1sgzrOV1pEMEPUIQoYCdELRrawIvDQPI_qWCtW
	JYYZJEcKrDIexK2g1nDZpML3LxWXx5lZTQ6YCmOi61_DDChKjdXbhlAPyTPxqtpvAPou53kcaJZE
	MKLaWVhn1ihhTyvT9dWeyQrJt61b7IsisE3HXsSafrJMC8lleTw8AeuSrFyTuAIzH1hijPf3w47b
	dkfeerjjGxDmaRSZPIL.YNKWIhifY.nH0ooXI4fVC9aE3hI1U0kQ1iXWeN0eF6KI78JIUxx5oDI0
	yFtqDjeBnvIJXxj7bWqiX80AV3DmS69qH5zfyL.Mh8ty1udoD2yVk1I2x0GmCwd11U.eNY3REgzN
	dFXhFTcri03yiKrDlJ8EilwkSnitybmFDfp1Voc58sIhi5QcgfUHFKE2a34TbL78GmuIBTXm.D4m
	ihzgaaLi7f6XUAxrtv5wEzO4m4XEG49o7o1d0UNVoHd.ZPBSIW8aqPn4eat4gabexH4pP_mMsSN0
	GPlO39.XMZ8cmAhGw7AGjofj7WjIDKwtnrpmZa8Px6IqSt72J0RQfFMibrhDZg0eQWtsG_BaXGZc
	2Wd3aGDWS8Xz86FcPKXlprTwE4hzI.zywNMx48x8UWd51jIUwL6E04NEAf4cG1EV6qB_tdErSK8O
	rnooypFYcovuIPq308Q84Dw..5AypFElma14dP_kNOAzWtdQmLFoFVavhJs.s0_lbTSeTpUyzBP6
	f6rGkzx0R_SB8i09lIAu2dM1h959SpAzlVbXHIXo2Sp1Oa6eNT0RnWnbIIR21t1C.bNGl3yUMGV2
	Y6.4Ry0vPKajIDzmP.mUfM9u.iMI36LX4YOuqkb7esuoINOmF8kTyICkF.LP.PMN2Pc8SEaN4W24
	Q2W6ecPnBEFUf.tz4AMOStK6oHvEhvupQORE-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.gq1.yahoo.com with HTTP;
	Fri, 22 Feb 2019 17:18:17 +0000
Date: Fri, 22 Feb 2019 17:18:15 +0000 (UTC)
From: SON TRAN <soq2000@yahoo.com>
To: <yocto@yoctoproject.org>
Message-ID: <1711238784.3901956.1550855895056@mail.yahoo.com>
MIME-Version: 1.0
References: <1711238784.3901956.1550855895056.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13123 YahooMailBasic Mozilla/5.0 (Windows NT 10.0;
	Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140
	Safari/537.36 Edge/17.17134
Subject: Add dhcpd service to yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: SON TRAN <soq2000@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Feb 2019 17:18:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear All,
I just get acquainted with Yocto. I wonder whether it is simple to have the dhcpd service in my yocto system without rebuild the kernel?
many thanks in advance for your helps
Best regards

