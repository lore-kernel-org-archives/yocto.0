Return-Path: <chuckkamas@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06083C433F5
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 22:16:51 +0000 (UTC)
Received: from sonic304-25.consmr.mail.gq1.yahoo.com
 (sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
 by mx.groups.io with SMTP id smtpd.web11.5573.1633990609690585726
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 15:16:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=UizxEtwQ;
 spf=neutral (domain: yahoo.com, ip: 98.137.68.206,
 mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633990607; bh=bGmxM0DWfg44jMdNoUspJ+iFdw8xmz4x+9reRpRHkak=;
 h=To:From:Subject:Date:References:From:Subject:Reply-To;
 b=UizxEtwQZ/jCoivSVVjF/KLDAmH0WamQ2rsWBiNFjGY7h54LVBLEh2FXWuRXxQYKYQH1kzTB6EI9sMklkNTGLPnmLXhn2gabxlePnks/iqcX1BZGOL32P177/PIVrAfRNiYiBrPoc9x+ZeIWdzTx/6k2TFB2TWoDJ1fYQ7DMsjfPAxI/zF8HtInJHA+5GzAL0WoSE+zhyHPb5kaUya1eZWk+EgPppLudmObf+1Oa8WB3WPRhKH5JqDfMVDA13SlAU9zVIBP7GtAhD/wcxeSGOKDr0TAEWxePlxfnLtLeGfBmzxKEAprgp6dJm+ixLRl+UJWgNn7XQ50coORcSthusw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633990607; bh=tdCmgo87GlvuEhXwCYkmyYSXGLSoaKWgVbJH2Yu0soP=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=D8yAsZmD9p7GhU/Oad4altXAuEUftolQruDZxq1q+4+5lLTwF0vCU8jlrZBcvcjxZl+MFFb4rtEcHDFM8D87I+3CWaZcGgsaC2I4cJkTgdSZq4eBXlCrbBofpziD2ycMrJ9L0pQMYSIKcc5tP31kCk9PQyr6xS8LLz/Pn0zl3jiExdi/wCAFr0EIcTuYcUPrd57jxMqc1uWFH99IzYFucLt78uoaoMo78ttAtZwDqSuFhFVDASJd9sGr0xCx96+OS0YNDpvLD3maWTF02KPbdiHmdzyf8Nz1Q39DMZS59mu9dNeeivv3N9LHi8LMgQ2Ph6XnK5lDUhVWgEpCH2rIUg==
X-YMail-OSG: wjTZTnAVM1kEmvyH8mL_rb66fNvZBLOtD7N1YPNMgoH_u8M0NQLvYzVSEMLYn33
 u.NG6WqTW5buNAseM3dm7.17Tdjr2TOUYnznJwnfsb_Ecs4VNOvAF4m0f5x4WsTOXuvVvuEzBYZb
 ZQzp.gr6JCG0zyTN_2DYEdocNe8FTMWCHR7QA1mTbex4f43H5C0cVKF8uj9dRci5s_YL0MCUfitO
 enun2ZKun5uEY5blWhz0ShI30Ixz61vpboAf3IFNrwXbpgM_Utvu9PCvrCtQ.yaDLNepqF7Ek3b2
 W_sQ4KVOEqSTytbYo.FjBoJzX8n4VYrp_XhAXvc5rdImdO7XEW7xNeMvYxCyd7DKR30WRUWzPv4w
 tqoTM6mIKchLY.tVcAmrnPzbiC0Waf_yvd7KaAC5Lppelt9ltbLWUjbfLdF6WQZB.izU9r5liBXc
 _RZYMuE_0momqd0KhkTEEttym9CGgDYLV..kqjzFIafPiFyElMYmAfSVU6wuU23qQ8e_998xDKsY
 nTfmCMOim4ObuS.aNRCHkIHLY8mTFT4ymE6xBd30.ExQTBxC_pK4ZrujmueX6KKZxRItnuMsV8kq
 emCWRaDJh5gfLs1GluC5av8oXiA_YoyXtCXx_t.1Ga5xCxZBcpqM_17vTOVurhuphoHZ4x.T5qlf
 9eVVPKfcH6EfMOGcaHnf9B4rKCrFpcevMt2sgGsfIJDhKp_ZM10sKGPaNE9GhOlSCt_CU4Z0mMUU
 Wfx6WrtKYAnXGHqvZzOJPIP9xgS0WNNzr3LlIVCaJJjWUn8HTZpEi3xGyewXiFPHOESANWhd1RZG
 SSTNzYfomsCtuEI6lRLxEDhT1cq4UbikeRrIap7BCg2tkVt3PsvdVHnlEpVQ2T_IX75KSEsmZF8W
 PZzFwpcBTvCKOi55QWts3cGaRiMsv3L2lfynyV3FeRGM1HO77aeAScQqiRVJPiu78Cx6wMCkn9Py
 MzC6AJinTmZ0iExefDSkVLogkby1Ic.mtegSK8Aw1zyHEelF9v2XKxV5mp0wqMTCRg3k9yTIDVAB
 P3tHuw8Zh_FF8iYIUDcwBzlzTAS6xTpFGdlECXlu.szz8UzxAqbiKxhxxPz6comu4xWZcZbMfJHs
 lmym8sQYONBBK7E7xUApm4joRFHTMk4cOaDTozEmmJk9ihrua0BOgnZYzOsQjHZQMB.OKCGTTxyx
 Y2IL8iLKYs9_zcv4yXIXYuOspkHqjd.CJh2OIjQfx0zDVky23KeTPs0tFQ8UmlCU_DedWQ8iK.pj
 xPfAPMOjxlbC8fU_ZO4Wy4Q9TIB6keD0qWL0A_wWH.eqn_1dJNsh8.h6mP01kUfH7x2JBnDUde9N
 D5VGxg4F2FIwHBOtX.nYgDYci.Krwe6E01NJW1_RfgWCe0INvJEun84h8rWhxv9K7Rf.dWh4RSGl
 j.GUJ3lrruE02I4zMFfK.QP3ASSf9Ofj7rXnMKbLzl7YBpB6QnJVHuCd3jlrY6_I1zxtRqeV_0hl
 CwW.9FfQKc2aIIL9VFonSsSE6EKM5gNEc9GGUpa2e1aSE806D6gwyiaoYYHHILaqDrg8ZUrq5phN
 xQ9zPx05H7j5WVmFu1Z4HE8T_hySkVB3V8ooYinr8oIC.R0scZ1acKaLzIjlYBcDkSMxWjnsdhBg
 jhxas9do523uX4BrurK9h3DhA6ZV709lQw.q371wvNdwAv_rPzzq2iIfclEkHMMzfzDPIJVsy7Ge
 p7emNvwdKzqAdKAh18dOJ85apYgzjw7eFs6.DN.7pPLJpiBVejzOBxFzSOlLLBN5yI5RmECJFqj3
 bXZ3F6rIpz5NUGr8u8rhUGuQyl1yaZZk8qsqooCCnOfavgpuG2p3DSkq06Gl3Ve2hIto9PTeqe_G
 44hiwGVhxudiOCIYHyUBmQj5ZFCjm8wlCxKjL9fDNuZaGAdbh4929BK.tb97WP3Wgo1WqtOx43bj
 D84z3JdBdmiMD2djRfwXrunOfqBM2R6yLm_D13JE9WtUprqSCTziSPBrnG59JXQ_xfghCNAu4ja0
 .E9g626GIbQvChTGVnXi5MmyMoMG0YVGQyoAsWSo6IiucaVAKbGxPBKPwNYRuNyPWM4rm016Zxk5
 OhnyYZ6jikuupc2Yvoibqb5oXM2.ZVZUjrzoi6YQlxLThQf9Tk1Aefx7xNBu5dJReMNPzAtWmCLe
 ftTlSqrcFX9Gum5bFfuo_DNWP8BAzO5hzH.OhXd2Ym7MjsVBk5aD.c64aEG2cicdHaQBwhLvq82s
 9MoRmQ7nYrzgZlkSpIV1xXjV1J1g0tyVK2nhr8Ke7V4Ou85tWrYXLbWOXqTOEE3_.kaZPzIhXWyz
 s3wn1fmXTxOukZdHziKPOXWXVhDAp5IAVM6qDpsEFTaJM1BprjaI-
X-Sonic-MF: <chuckkamas@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Mon, 11 Oct 2021 22:16:47 +0000
Received: by kubenode512.mail-prod1.omega.ir2.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 12a7d9869fc7a7db2e5a3f9471e31765;
          Mon, 11 Oct 2021 22:16:42 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: Chuck Kamas <chuckkamas@yahoo.com>
Subject: building the kernel's usbipd daemon
Message-ID: <71f6581d-6d01-51a8-7c58-3582d57509f9@yahoo.com>
Date: Mon, 11 Oct 2021 15:16:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
References: <71f6581d-6d01-51a8-7c58-3582d57509f9.ref@yahoo.com>
X-Mailer: WebService/1.1.19116
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 22:16:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55020

Hi all,


I've googled most of the day, but to no avail. How does one compile and 
add to the image the daemon usbipd? Is there a bitbake file already for 
this? The code is part of the kernel found in the kernel tree:

KERNEL_SRC_PATH/tools/usb/usbip/src

and is invoked from the KERNEL_SRC_PATH/tools directory by calling

make usb


from: 
https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools

PC $> cd <Linux_kernel_source_path>/tools
PC $> make <tool>


I would think that there is a preexisting recipe.

thanks,

Chuck



