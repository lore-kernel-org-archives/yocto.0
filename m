Return-Path: <mau.salvi@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A290C369DC
	for <webhook@archiver.kernel.org>; Tue, 29 Apr 2025 13:10:27 +0000 (UTC)
Received: from sonic309-24.consmr.mail.ir2.yahoo.com (sonic309-24.consmr.mail.ir2.yahoo.com [77.238.179.82])
 by mx.groups.io with SMTP id smtpd.web10.19442.1745932225148743725
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Apr 2025 06:10:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JRAgQ1vk;
 spf=neutral (domain: yahoo.com, ip: 77.238.179.82, mailfrom: mau.salvi@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1745932223; bh=c6moVCAE3cWSpouulENLFtGyg04OuqfrzbrrnKyILIM=; h=Date:Subject:To:References:Cc:From:In-Reply-To:From:Subject:Reply-To; b=JRAgQ1vkTAIIXYMxG0XI8bnJJnuX8jX6qYsapw6nyM3BS/1yNf23z4M2bo/32TR5iWFsnH7Giz8+DBtucCK5vCKFXCnS2vGdRdnPFWwuLze1CW/JgyztHpXC8Mi3Y6FtSsWjDudLwAkTDau/0Z03/L4WSLrRH+vnpA1VTmByy4HFOEJ/KDZhJVIdTWBngEInW0io3KPtgiqdlKaaEWSsJe7meC9Yhjvg8i16JSpQRi7aPI0UdohtqexEIBoH8gJNAJy41H0WEnhBNu+dGHQodTJ9Y+7D1X5MVhxB5NhSXC6mDOqSSz3GxbWu8T2v8ngzBVW/RsNRvrPKJLe83qvAgQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1745932223; bh=XYu8fBEBDEh89sd45DImZWcOwB2HZGWQW+BSeD5ySEY=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=BkvPLsCUk5XmkE6l4/VkTm/0FrH+J3ZxDfXAkc21bzq/AHmC8ufzib3vh73/2TRLFX4IzX3t3N253zbhCxy7FI0iqSKaLm9BP2yRKkvXq/e5YxwKrzyWDlqc4y192brpEqxC1JXxwRsHBFZUGGQxwA7kkuXEJIGedrcQH9U7NhHL07VmkT8/QxerFSUWCJ0ZWHI/cMQZoVByS6MzW5uzB5AiG+wZb1EVjoXN8wPWbhsvF2XwwPxluIxIIu99XyqGi1lx4yf4/lUyCBchV2a8aEA2c4KcGb7xjibqB1BHxguIEzEP8WnLHUjo6qzS5BPA+NiBMgCN7OpRN/QssC7Arg==
X-YMail-OSG: Ilro_pQVM1mU1qtlueliJZaEj4v5RJntXRQSHaem7XX63SvQtMoihedLkk8.9_Q
 vuH9zq3Su6JfueJQFTbtGjYhSzLD5dQQXl5xiFbcr1Gq2ic44WcWlgtDznBq57nmyqIIWjK3y8KG
 PH3Iab647l4c3pNcUaU0Bexky8uam9npFUb11s.F_ycCdpUqDzjI6s6cMTMpi1gEExRfq2UtvbWo
 IxCsAF8ije9silK0ZkwFt4mk.9_Bs1C7jCCveqCFvuhbD5ABwexTh.OQh1cgfzJ56H5NctbrdpXJ
 VV_6zV1jU9FlN1yJDdAUtbGiK2awpusRZStLJ0IK8fdvQvBR_ZrGz0PoRdxNZGP7kvfmO3GIRKAD
 5CM58.W6.bCBGig5_hNcqSjNKbo1x4LUk77WxbwwLlC5St62F2kXIOEJSMRapSYLAJ0canCw5Osz
 q_NhBshjkDvhzMfwBHL9TV_NLJ_HljAGP3jVYBtKayNZTCoLY0eefjrV.TzZ0xQRSfj7goX3XTJU
 iLJ4RS4CGchCgPM3uPuKaNdxkqYbRTNWfjGgZdSTz6CUAcA8RlasEBorBm9yIq97m1lLbHn41bKU
 LKbEUd4sgwYbPI36rDk03KQ4b970NVp.dyTGaiAv0iIb_w6.s4S00ZiqcaoomricyREA51uq3lWF
 VxxQ03xPEPRJsOWXgwXrFLshmRxzTsUN9.M4aJn0N8a2jWFvJxk6Cv_IVBWPX.ZnHew.s25MQvrV
 yYF5a7fBqq2Nnr9tyB1bX7qcMLGacvgOqqFS7F8wvSFSwkgWxyG1XbcaWB1Ny07LjeeFoXQO67V9
 5FJydsYmkPgxMFhwQSz29M4TzArJseWTkQqOKplrt3op0QpocALWhTkcNIUxDD_iflG5_gRKebT.
 EuMrOIBAoNhjHy2LGtM0aVt.cAU2oBnLvRkCGL.D7GESdDm5E8kyYrHI5nCKLiUhVRrKrH9aMT6_
 F3MZzhNt6hVZufKmBkCILGz_vnwBLGJbh6nqguLPprnTTHfTFCTul1htWogJhen0ibQAY7ZPY_ET
 dDLyqJboSVTySokR263B2lq6kfFtQkfgamxD6c1R8aZNCxIIGCHQAsjB0hVLko7kflPQQwk8ISxP
 BOIrS_si_K5Hg1fGvZtJg.k2hqpOn.nR7aWEs.A.4m11kOo7f8nemU.8_EWOigCemC5RdxE5JJkq
 4IIQJiVGQ_lyvXdQqa6iIXtb09SoUPfEq_gArJ4S6jGry.jOls_paLWFuZDoBXUUqbVQW9pztdDZ
 J0OhTU5dSDz9bdbLuZGNLK_Q8yYO1Hnx5a3jUFn6mUBeXkEZaf9VOshWH_8_3a9qMGZm0s2zeGiS
 9.G1FtDoZz9XkWbFVbQWg6Ze3IBCxpKGSVQLQcM4GTWhIBiUQ_DeE3nxPx1ShVkptRJeNxqf5xXT
 nIRGNDgH4hN1GgicZXTtbzX_eN2YAxzRr2Gn77dGQvzKcyR6b3c5HGKW1ul8xaN8ahGl7adOczXe
 akhNfd.Xir8lW0AQQNqZ9XlQBtMnP5fP5Of2o.yHY8ip5NOMmLxpe65MBJMhfSms1iBT0Z4aS_5W
 SZzDD.snQBIoFevBwzR1W2N9xixIsjZe1yww7.756JSTMDZ.HUYmOFnpQtGDvHSO4iJt8cOB_.Ey
 h0ml9OLEuXuWRYTjL4DRsT0G23.TfhLQ7LiZ07sYgF3cn9yg6q3EVDXDyq9F0lTN6rgySqptkLXx
 XpHZ4JzZ4opc.W1VP6.Suvr4XsA.hP0qSzlXkxMrcRHAxjqJHpk.sKBnQXblZH2zI0jh9HwLe_Hz
 vxVqyfhHYVTAkh7iC1PvO.931i14gMPLBBfcSdHzBgwj.UgE3mLv_66T1bPxw8w6zvvCknTj_jrV
 .DlAycUS2dW9gOs66HmcXuZwN3PQq2vZx_HuTmh8U8D8BXd6X5oks_blw7k8bclEVCTM5F9mpFy_
 hK7iwicPY0xQ444X3t62NJNHl7EcUKM7qOnM8y14HQaAkksmXFLeb2X4T5gyT2Dyg_nPCPKV35..
 kY90EDeXotvTF7yqDobSFj6l7.o3pjwzT__GBngDyFLFCL8cWE5yi61.Ircyp5nKtH8Z8rxxbTaX
 SzbfVMNGCulYX.8M9b2d935TXU6NdsHFku41ul9QGNSe5DdgA8pqVw02mbTUxwC1pj0c0fZMLuOZ
 WZASNqWbmSkg8UwCThdmfihCcCWp0YUy.cL9HASsTW4k5EPnsKbcZd1Xh5p50FVzTgceg87ZrE7M
 5gw--
X-Sonic-MF: <mau.salvi@yahoo.com>
X-Sonic-ID: 169e7fea-ac3f-46e4-896e-8315e0aadf57
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ir2.yahoo.com with HTTP; Tue, 29 Apr 2025 13:10:23 +0000
Received: by hermes--production-ir2-858bd4ff7b-jwnh6 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID a63c31bceb3edfadaeb13a48a4aec97e;
          Tue, 29 Apr 2025 13:10:20 +0000 (UTC)
Message-ID: <4d70427a-ea06-43a6-9d90-a40ac4c9f00b@yahoo.com>
Date: Tue, 29 Apr 2025 15:10:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Unable to add plymouth to image
To: bjorn.gurnett@thermia.com
References: <DB9PR05MB810573901111D3E66D940FB8E5802@DB9PR05MB8105.eurprd05.prod.outlook.com>
Content-Language: en-US, it
Cc: yocto@lists.yoctoproject.org
From: "Mauro S." <mau.salvi@yahoo.com>
In-Reply-To: <DB9PR05MB810573901111D3E66D940FB8E5802@DB9PR05MB8105.eurprd05.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.23737 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Apr 2025 13:10:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65264

On 29/04/25 15:03, Gurnett, Bjorn via lists.yoctoproject.org wrote:
> Hello
> 
> I am trying to add Plymouth on a mickledore based project. However, even 
> though I can clearly see that it exists, bitbake claims Nothing 
> RPROVIDES 'plymouth'.
> 
> If I try recipetool newappend, it does not create a bbappend file in our 
> custom layer. If I try recipetool on other recipes in the same folder, 
> bbappend files are created successfully. So it Is almost like the folder 
> is there, but the system just doesn’t know about it.
> 
> Any suggestions?
> 
> Thanks
> 

Hi Bjorn,

adding

   SPLASH = "plymouth"

to your distro file or to local.conf should do the magic.

Regards

-- 
Mauro S.

