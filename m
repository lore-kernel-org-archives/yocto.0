Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web08.72316.1629392448012048308
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 10:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ah1tU0/P;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id z9so10068129wrh.10
        for <yocto@lists.yoctoproject.org>; Thu, 19 Aug 2021 10:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WXZBljFmhaL6HBvuIuDnbIVCxDuWD+m93Tr+nh8ALmQ=;
        b=ah1tU0/Poihhvhu1bZqLChJHpH3E2iwdk3TFbySpiJ9AWxfPSyBVlQVMJNoDFTjHwE
         eojY0dx6rPB/qFFqi82qNT/QiiKRZ+I8Pt65G/v1Hcqew1etsKsz+FrlksqPA+o3rHEF
         OKncEEIuHhTC0gn1rjfn4dHn3939Yfk2vxio4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WXZBljFmhaL6HBvuIuDnbIVCxDuWD+m93Tr+nh8ALmQ=;
        b=q1E8bGujJxKXaWI6y/R7LXqgNwLpVfzgV97QPs90n3mm59j4v4/Ir6/PKuHYdP44Rq
         nvcgyaVAcFKITT+eqtcgAvcNoDmLiaMFdmkaGuyFOs5QOQix6VrFzIPxWP2bbmcCpTjL
         V22m+jQxaBvjngHyIn0Zked0uRcNSMITjGNiP+54P7cbXsQ4TmyhHFPhUDLILRJ0UTgC
         1vLmpRSxikUHd4ORkhVV6ECRGPY4IyqLZk0iLoKxw697PBAQZxo7CzW6yjHNZH+qCBuD
         kX9U7VmMq/+S1q5i5fYMuOSTE5EyjAoilpnsFHs8csdRhXtAm+ktO0XKW3JVQ9/wblr9
         HZgA==
X-Gm-Message-State: AOAM5312xi1Vyt9MHxP/4wFjYdIxuszRsE1OZfm621xcuFt8gemfYIMc
	+pKSD2wrmtuwHevJtEmuTvNBtyo2bWpy0A==
X-Google-Smtp-Source: ABdhPJykag8fvNQ6uj2JVawTFPYo1QHjahJJDWptZldDRFHI3KSCX8j8Z54NmCWk/DklQaj6FGtmmQ==
X-Received: by 2002:a5d:65c2:: with SMTP id e2mr5038394wrw.191.1629392445758;
        Thu, 19 Aug 2021 10:00:45 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:893b:b0d7:8112:9a58])
        by smtp.gmail.com with ESMTPSA id o34sm8342265wms.10.2021.08.19.10.00.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 10:00:45 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 1/2] layer.conf: Set elfutils version correctly
Date: Thu, 19 Aug 2021 18:00:43 +0100
Message-Id: <20210819170044.45851-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We need to set PREFERRED_VERSION for elfutils or the wrong one will be used.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 3abe6b5..b0915d4 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,5 +18,6 @@ LAYERSERIES_COMPAT_gplv2 = "honister"
 
 LICENSE_PATH += "${LAYERDIR}/licenses"
 
+PREFERRED_VERSION_elfutils = "${@['', '0.148']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
 PREFERRED_VERSION_shared-mime-info = "${@['', '1.10']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
 PREFERRED_VERSION_shared-mime-info-native = "${@['', '1.10']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
-- 
2.32.0

