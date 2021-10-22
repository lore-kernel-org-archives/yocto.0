Return-Path: <chuckkamas@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65364C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Oct 2021 17:23:26 +0000 (UTC)
Received: from sonic304-24.consmr.mail.gq1.yahoo.com
 (sonic304-24.consmr.mail.gq1.yahoo.com [98.137.68.205])
 by mx.groups.io with SMTP id smtpd.web08.572.1634923405486684424
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Oct 2021 10:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=G434BnOi;
 spf=neutral (domain: yahoo.com, ip: 98.137.68.205,
 mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634923404; bh=VRoNIjA4saqpIRitpVp9RRL6nD6ftFf5IHzSeKGmINs=;
 h=To:From:Subject:Date:References:From:Subject:Reply-To;
 b=G434BnOiL2bVevsNzg/Q5A2riPIIbUaingGiojS9EkPjxPjnJwboEIzw9nAAr5KO2B0bHyhBgEzG/wy8yA2HPKVv7Z1eL6XOnAd+zUp7YqpQuuflwAhMau1dkLmFxt4Ur/Lios3yDJAB4eI0qZZ1WpVx9zZfTm7md+fFb/NbyjuCVm40x/menmjTekAFEnyOY0y5+4C1hXFhaMEfPMTP/7huiJXG0dhDjZ/aqc0OibXkjqVB1hmHTv9JEZAS0MJohLrimuioOmaG2Qj9Q+FEa4QnWnn8l/lXBBIIdUzN3WiBOxGC0mgBnCqdZGAtOdB4clR3x5Fc6u/OHj07BfxSBg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634923404; bh=3dhmc/mXOnRZYvCeEdAnGsSDhjtu1rkhkOqt8tdGyda=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=aNr7Bkc58hXXv4iVWekkWITxreG2qRtWXk+2YXVqVdsJ2t3vUZdu3B9qYXLW7cJx192UpUs7dDR7z/LbIJGnKFtZ2bwJVcvJo4zwJulF3CBsteK+NhxOwKVHHhyWvxjMULz1T7rLKGVOZgloly9P8BIIqf19kuDLsu/DmIC7olfzGkwhd+u0arcPO/slT7h/e/urDO7fVWTNqWEh9ADsM5FSGIb2VTdQkIXTySio7OLe4czv/k+MXMM8ava4oNnnF+4o+gpoLesbNNaktJCDXpQnkpP2HUImO39FoRCKHZA2Pw+cEEXd3yTIgJ+wtwMoKflMNa+ewMGABxCQbrlPYQ==
X-YMail-OSG: l_2GT70VM1m5sBdP_uzjQ3M_jxaDf0ysGMcLvKUy40BmaYZAkxkWgv6AfxhmLQi
 KUrd_zhkLZkYQgXFsXUBaisfeo_jfo7UTc3.J3Or9as.znFsBSF2kXuVJ3VWhpmlbyBHMDge_8tY
 VZGwpKF73xp0LsSSmEoBbuWjSny6n216bNTnU2g33MHJUZho_1Cmpo8iTXIkr0K4ImB52W_FDU_e
 B116agFCEdayxcP8gQdVESryEuSwOgA1sQaFalYHvFneGHT_0vrE4hTXxKM25Ij4LmB6x2JM10ks
 SIw82JuTD7R.r8wTGxolZg8JTXOODcsAGDpDAxZpHlvwJieEGjrL4tOnM2VqX.LZPt7Rmw9gJ7Zz
 CNC0Bn50xmzbBT4dm0TqbmCs9dMQGVVnWIoPuNrb3h38uOlWrPWrYYi4T5pryKW0d8QLUSbeViLu
 D34V3CgOgrrsMceQVaD1HSTqnlrWawHiKmcHz41LRMQSFIeZuHtbB6kRey8nzVT0RkU8WnOFHGKH
 CfzFwrO_0KiGdjep3sTccuD6Vva0sAWMFMaLgnV75_hHEXRiO_dJ2ynBBHEbJ025w.QSyoX0sMk2
 7LFjXqdOnMOepWiRjOQgJPMZOrJua99m97gj37suqzW8fcXIe8bKuAE1K_Sh5O1TBLHWi6CnmF5K
 PcbKX9OLT9lfDTyaUedGenv20E2QsuMpZzxrEG7ZjYD.yjnRopOsbvaZlPIPGiWImGsv2GNd2.IS
 56In6W53Euzr.KuYIziH8NapneS_YF6oHvjs11pMsInrF3zBe3XTmMqCk2rf7EGjb9htvuV7TwYr
 mHtmNwyIeBWI4._9yUWA.SrVtpFDUnZJrEUcO9gg9GTXx9h_Wh0CMTpvUTUhRuhrwW7k7adkPJWL
 8V1pJI.HsJs1.wvA2VwV3mOrnVGfnW1bsYpHFF2kYnHXVdhM2Z_M8IUO6C78kka_MTDfisV_k1zT
 dyNZkMwMrbBV20uK7ymL3NxUb8D.SDkx10go7n.UdF5FF9sY_cIwWoTGTzC3nvtYDg6ZlRnU1Ads
 JXHv2XQmLVaTd7KpvKcO6wGJJxm8iQoplcM.pMfA5Kjx1Ja2Af_IHB3kFCadjg6KjSwS6HYJUKa9
 Nbg0DqbazDKQYDgofR_WvuXRZMUh5SfCzoPW1Vh5Wn3l_eCgsRQvXY1fJ7aWVYmEVS.nAhqMIUPP
 7jDQMFsvatkjQ9JTGBekgJu0iVderaIPs8BVdudvkAGlhSnbp..b3WkaJsqM7auPkk4AkK4mb3CA
 OzW9ImgGnO59miUtvreFDjKHfS20zeoNVz4CFj8OdBlPI_Jc7wWebKiPGVrD3Eer4o5SLV7ZZNRg
 Ze_pCLKfj1mXe38i_3cw0Roo.xBog1snZa00syTtFNw1bMvh2o_cs87rHtdUd0x28C_uo7_Tv5Mc
 YCsMKUrHBAbj8CwE4Byh97WM4nEN5J_F6521tdeZEVV0AkPftbWsVu2JUcbObEa.WK9M2Mnn9sSJ
 ytU.aHArLadkDeQ7L7j_PTrtihdrjhMl2F3E_L3PDJYDKdDKiCc.xrWaN6bc3SOu_AxhbwO2QhuD
 5nXRBMdGmOvTIkU_R6SZKr0edg1RGn5BdNfMQZWqewZ6k_mdSC7bnaPbD4E9wv4DP3Ku_fO4qB5R
 7ftF.0ps4z3MJABma3Wzmd6v7FC_B63Pi.qSv.mAFwpVfH_Zv169h.r_GpTbw3puuISWaNSkdqP_
 aFn4q.7Vtba.AbBUxGrr9ut1N3IXYsUQa8TkxEPb9lJMFgNQ5EgFgcBILexKhylBUkgMBWAvZGqe
 NnYBqJ6ZpTmj._Rplnoa6suDy9cE1L4BT4r6Gkd91NTQ.TOSpi3Xwv9LmxCyBIfDv4fO36Ajz7dv
 iNVh9IZu5Yo4P8Qr3Wy6xSnQ7F6ARdQNRqSX_W52EJ7Kv21ZZiggjWTPwxtYVOAzRhfjVGqLl.x_
 0LLkBmdFygkEunbqstmp8CCDf__gasgH7GWfFAPls6NW.Fd_P7CiV9Xl97vt._G9Iw1hIznVJMvY
 .sA1iaH92yHOklTtEhjEuHl.2RjqO9HQyPQMguL8VCa7ezLxltCXrDkseJ_Ys8UQM7A7RiSPdQcK
 qdQbc6_FHEQX98UDOqBJsDUuB4HBG7xbFzbWeDnZHBd_ShXWSCLlZ0DE.sBeHCB1Fhec1m_14Ic4
 8B68xJy2_whS.9LC5uVYrYmEVcDLQMSlTxdHLIJLVSxDQTLkqcCQzq9iZb4n9lIgCBYGPTalm7LV
 T0xGn.UuwrETgAx.xXQmfiwoySDHlrz.iZKc3yoiDUXIiW.J.MR0z8kps_kyDhg--
X-Sonic-MF: <chuckkamas@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Fri, 22 Oct 2021 17:23:24 +0000
Received: by kubenode550.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID ed0fc4510218ad8dc71cceb848e29555;
          Fri, 22 Oct 2021 17:23:22 +0000 (UTC)
To: yocto <yocto@lists.yoctoproject.org>
From: Chuck Kamas <chuckkamas@yahoo.com>
Subject: rebuilding perf fails after cleanall
Message-ID: <7ae2fdbf-acdf-6d54-a428-65a38497a83d@yahoo.com>
Date: Fri, 22 Oct 2021 10:23:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
References: <7ae2fdbf-acdf-6d54-a428-65a38497a83d.ref@yahoo.com>
X-Mailer: WebService/1.1.19198
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Oct 2021 17:23:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55121

Hi all,


I am trying to model a new recipe off of perf.bb to compile the usbip 
helper kernel code. I have been having issues with the 
work-shared/../kernel-source directory being empty, so I went back to 
the perf recipie and tried:

bitbake perf -c cleanall

bitbake perf


I get the same error about path does not exist and the work-shared 
kernel-source directory being empty.


Is perf.bb only executable in the context of a global rebuild?


Chuck





