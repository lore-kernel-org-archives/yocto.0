Return-Path: <edahlseng@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AABC3ABC5
	for <webhook@archiver.kernel.org>; Sun, 11 May 2025 04:37:23 +0000 (UTC)
Received: from sonic306-22.consmr.mail.ne1.yahoo.com (sonic306-22.consmr.mail.ne1.yahoo.com [66.163.189.84])
 by mx.groups.io with SMTP id smtpd.web10.24053.1746938233823658800
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 May 2025 21:37:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=McKohQby;
 spf=neutral (domain: yahoo.com, ip: 66.163.189.84, mailfrom: edahlseng@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1746938233; bh=Kcc5yqUBn9lAVx+KNv6jhR/s7b2e9cguhfgqOm7jau4=; h=From:Subject:Date:To:References:From:Subject:Reply-To; b=McKohQby2x4XuHmnnSFom9HZCF4P17dUcKJgxf0UXtvMsgkFfXn7tKg7IhA8qyxzv+7LJGnD36sOVjZBUeCvzUOaTFkbA4wBIbTEsUQB4U8F8bZrYFdqEuQ/pKKHMkNspgWwgYmdmCK+hV13Z2K20SZT2sUT4WEf4wgfAifa+8PpHHIaus2FGW4pusqQOhCdEtByb3hiISKMe1bK5VHqTuM9DGc8m0Z3yWWGqAoUzVYwnItsyu/+2MzW8zTZW5nIQcU6AMZehmxpW/8mG76TjsrdGMjQd6yWxo6lAEIqvvPMk2ED+bscaNOjejV+0ZEWYuyULNZ93m6BsG7BSWiDgA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1746938233; bh=TvGqNvSqoCa11uyPFgKPF53WxNIUvpo4722UEOK1IFl=; h=X-Sonic-MF:From:Subject:Date:To:From:Subject; b=CByULNPWPPCa/eCNlKC9jeEUh72KCUp3aZ+Ub9ZDB1bxjJkztdLhQAWd3zitNgf6jDTFk6dWfyIEwpwNi8uXAkVJij/bwxJrhcNFA7+XeCBKLuY4c3qTyy/DcFq6qi5rb+infwdunhbmNIqV6WlrOrUHol8+Fuws0NNk99ALrUKwEChJ7oTxeOJpJYFSgMg4hBCIue0+9ZIUu+dPL5KlslPyLdwTnqmScACHw+Web/vQ3ZMILhKmmSbOJyZAWUfsAspgyd6itdnedbM0DSNTK4bFG2pL77GsWK2yWnvf9mSVvDaao8d0U6Sfy2yTpr1y/npfaCtLqnT6YkoQmq74GA==
X-YMail-OSG: orZG3h4VM1n8eTSRdVGw7j2aW80D6YJDSit156Zjey8I__62A7ui_6k9zV0kYrg
 wZAr3vahj8ilvIbUuoRjJgW8kQpbJnO1aFUAwVqxFwJZUZ4ASPsDnF7sO6E8O1Fh19k8t_.homcO
 nd_srM16b.BL.Sc10tCRWcfvOPQF1R2lJf3ZoBO7O4AXK_gsN_fOi_7gkNzrBcUbKP0PpxWQk5_8
 aXlUcp9MCwIqT7fPm54ImNTEjugIj0npMo6gLxNuGJXdLJ9DBkME0F1Oico0g3lin70Doswf.WEy
 zMipOPtF6ZPOTDIMxTWPNB.y8lvV1MyGMTwer3LwcgOddhL7PxXOm7OZJm1csAmcy_n5czIM3a3G
 Wr0TYDQJ9CAxQlafdUR.3TOt5s8qQkpZJubpHZnuCe1GMM3RCigBpyMGil3IL6XYNbygtFAPbO0u
 OI95zQ9lsRQoTiZPbUIPtSbHWYl0xaVVxYiLm_0GLR5IIyMiD42Y0KRzt0ik8CMlWp5.Q9uPdYiQ
 fcVPBBZR_xXLV_AAPC_AHNCC6nBN_.PFhxMBqx93Fzs7DfyL5WWjKUVb1itkMBmsTnheu.9utiNJ
 BcrhjT0ToNeNveiSQ2qqJggJQqRBaeqg7uQckJKcPNmP7t0xlOjQYlDQtEJiDeHAsLvyexObeUGh
 pnIrJnbVu66DFJj4Ns5T3m_CDDPMGUJ.ybGVgqGnwMb2oN0zEaIPzFylBrxGYOWKOGIiGIp7D4qb
 iGR6LxC2tETIklUq7M6deh5SQzjp2EQnwWekxbiVCTBRXnVh1jEpnUFo0PvQkIB_LK5rj.EzcHed
 5PgJZR657ZtqKmse0L2BOXVHedWAcTuCKnl7LZqKhKE0scaIwUwwEIE5EO9PAV5l2231ncvcwioq
 Y52cQeBTBwoVvaaAXdm5cflDC0skItwI9IZp3cnQvyLnEVtAOxSqUNcQdCPlZMYd.iGqYTaG5HBo
 Yre3cEfyQNrGiYPN2BoH90U5yxPf8EBJRq05.jS_fi0X_I1xuBZgm8lOiZebHAwGfiHLBy45uGjR
 u5LRG7NacgtO2N7uwC7bZq9fGUYdlL.2mN8MjW0F9aebb4ne_lFJfoUkAY8S4M.mAS1qo9lRrdgz
 zKOkF4waaFcuFc4L3MMI_XvsFqg7jwjHPU4CpR2yN_VpAXY6nGLH4rFnYSg6FrsvUnUDoQ1ahCQS
 fmPS6RAVim4t46FOIlaIQ.lp00viUyMt8ovLp8LBwh10qlpoRwfySdJZ93HqTx2enjIMGxKiTBLM
 WAVNjciUIUyHGHHFoEh_uJx1mKg92XRKbmuuQAJ1i_Wc_4M9WxSL4y1EaNncR5T_GztQ8GQLtSZm
 ._a2hMvAqZjX9hb64otkgtTSocvR9EocLYrE5poa1ZIAci7rEaxsws7FW35P_C6YoUT4bS7uGtbj
 f3zKxobmxV0dB3WLihsdn34uep0.FDbSW5QV66jEtket1iDfFbA044abnH9lO0Qk10YywwngH8h1
 6ZCkTxAwie1.0QdXuVIyEI6lFW34wPzGnRX5BdAmk7L4ZhUyVc31Z_vzY47f10..H1v703p21XGO
 cukuazS3iTWnG5rGZbu9IwzS0lWF5oiA_GQX5FfbYiWcZAwB33DEsLhT.SJd9o7JtgaXLkPmgv1Y
 PikEaCQK1U1TdA7747V51EqY.tfrSEes_9u7I1NoKuZ4VDnAhgz0ArjQspSphri_QyJPhsTp_ZFq
 Y1QFO4zGl64MYXMpkL97ZrItt5pxgkYYajWppTLuTeflOrson2S0sStrqoPuZ6BJcWPJ15hLMrNb
 wg.RMC2giS9ZtijJbMrV75eyUpfe.6C5m8C7qqWdpCvydR24VjI7LfSZcbrio5tmcfM_DOLlxgdG
 qB1HooPtiKOIbmm1d9BRotYW8E2qgr4l_GArWNudGYMJ.PImlkMtwyEXNy_k_ZFk7uWvMoXowzq0
 xU.sxs3n.V_0TmDzRxJzKfx0tH3QGbt8uCjTyx_sOZHDxMqvKswBn0tauOWKr5b8EXLFuDdjczZp
 OkF367PYxgDCwhU7p7LmdHPSqHR5bUtgt.ISblQq3S8gDD4EHEkpTzbVD.ykGboSN5DxtUALJyFF
 anoyn3lf9alXPY7eXTfPl0q_ChO0bQwqNOWJNm3YAAHmZXMXrkDCOsnzGygWtHZSIMStaAh3DUIc
 G6IUjGXMHl.8wuvRVlokr8uMvULzJILppEnnBxP_f9p_HLf58vtWxUWhR.32S_wpHk0F0eViQh90
 tAlzcX1AefsQoav9chcCij_D0hoLQkLgtgFwT5IFLxcK5NEfDsDKOtCXeQqk-
X-Sonic-MF: <edahlseng@yahoo.com>
X-Sonic-ID: 2b4063d4-c6e7-4d94-86c5-69e4fb91d6c0
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.ne1.yahoo.com with HTTP; Sun, 11 May 2025 04:37:13 +0000
Received: by hermes--production-gq1-74d64bb7d7-fddgg (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 461522482283c3a7019719d106163167;
          Sun, 11 May 2025 04:37:10 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Eric Dahlseng <edahlseng@yahoo.com>
Mime-Version: 1.0 (1.0)
Subject: How to include author/maintainer in SBOM
Message-Id: <6C44564C-884B-4618-A2E4-0FDE612FC330@yahoo.com>
Date: Sat, 10 May 2025 21:36:59 -0700
To: yocto@lists.yoctoproject.org
X-Mailer: iPhone Mail (22E252)
References: <6C44564C-884B-4618-A2E4-0FDE612FC330.ref@yahoo.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 May 2025 04:37:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65303

=EF=BB=BFHi everyone,

I=E2=80=99m working on a Yocto project in a regulated space and need to docu=
ment an SBOM containing name, version, and =E2=80=9Cmanufacturer=E2=80=9D fo=
r all components. I generated an SBOM for our project with the create-spdx c=
lass, but I do not see any =E2=80=9Cmanufacturer=E2=80=9D/author/maintainer i=
nformation included in the output. Is there a way to add anything like that t=
o the SBOM output? This particular project is still on Kirkstone in case tha=
t makes a difference.

Thanks in advance for your help!
Eric=


