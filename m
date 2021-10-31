Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2742EC4332F
	for <webhook@archiver.kernel.org>; Sun, 31 Oct 2021 13:09:34 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.30275.1635685772323074906
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aW8r1KXM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id d13so24181958wrf.11
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=PYEr0ox4urktoTeiOoXNgFF+t4iQk2bLMM8dNZCvpR8=;
        b=aW8r1KXMidDcltisnN3i4fwpqaEw30Q0Bz+U/w8u0yTiq2FdH6OqV4LPAo1e4WE3Sr
         oiIf4KJhtfhQh2DKSn8zuhsuQDgQgF59qjTBPNAlguPqHFABtOljyGvr40ALt0xDLmLh
         1CM+KqfwR9ESGWq3O2YHua53kBnzxBmbkhg2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PYEr0ox4urktoTeiOoXNgFF+t4iQk2bLMM8dNZCvpR8=;
        b=J96OzpAuLf0Bs+36R3b5UDJn0gcYeBkTkD4u3W+Tcj7Ju+wtpTmJWEAe1fzYaI3/P6
         98ru1FJosfi2eGiv4WZI1ojRtf+AS2NOLisdNF5EKKEiXRZwk8wwFeUl7m0LfiisVo/M
         nySAJ2G3tssJPd71JbSVQFxxd3tLWxzQm23ti+idWSzJLgSvgUI+vNrL5V4UBDQ1oOLb
         EVAia21ndso4SPRPshiVn6DHWVZ0E6lykDmAYy3Di050/zHACqSPFcXZMLU2p99YUG5n
         st5lEgi1M4nlwg7TYF22/4PULwZoeF2AgoC+udtdrpCzfyRQ7+gJW1wEHqd8sN/+iEl9
         cZHw==
X-Gm-Message-State: AOAM5332uWPXnq7K1AoeZQk4gxkuveobDXLD4HAh/hvY74ExUin2AMsd
	rIbeLvmLTC6BVb3aM2PwsNo2L85W0yWY6Q==
X-Google-Smtp-Source: 
 ABdhPJwfP/AEycDA8hC1uM2sc7MkTguo8E3+p571OcoGyfD0rTaCXGrkIcm0ovG+xddFMKtUC1AR3A==
X-Received: by 2002:adf:fe88:: with SMTP id l8mr9104546wrr.208.1635685770667;
        Sun, 31 Oct 2021 06:09:30 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:b85c:77c5:c945:ad1c])
        by smtp.gmail.com with ESMTPSA id
 m16sm4518861wmc.46.2021.10.31.06.09.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 06:09:30 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 2/4] prepare-shared-repos: Make it
 clear when rsync starts in logs
Date: Sun, 31 Oct 2021 13:09:27 +0000
Message-Id: <20211031130929.3478176-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
References: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Oct 2021 13:09:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55196

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 1573f85..c221e69 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,5 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
+    utils.printheader("Running rsync")
     subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
-- 
2.32.0


