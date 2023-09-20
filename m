Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18231C05025
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 21:00:05 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.1032.1695243596985073256
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 13:59:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=TKpPQlY1;
 spf=pass (domain: ibeeto.com, ip: 209.85.214.171, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1c44c7dbaf9so1913335ad.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 13:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1695243596; x=1695848396; darn=lists.yoctoproject.org;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yBJ3hXrlKwHvjUPGQsIUVQktAztRBLWYADj+54kB7dA=;
        b=TKpPQlY12R5h/fRF4ZtudER5hkW+1m9z08JIpFDOTlKedgbBAdnRyotx4VHCg9Pjib
         xUFGHCh1xU8Pj056BEE7dVUVwuvh60ZOI49EIO+NjyhGpQ+xljH6pD69kwC1QpwLL+ho
         BlKWZe3tLpFHmLiHd1nIPXyexDpf9Z7SpD9GtjbezrgA1d4RPvN5iUV/alUDHY/cRT2s
         FEna6zUT8tFj988UJOY7kizoQHDuCk1uABQKFRng7jnrsC3qHflZsIeLzBwYQcqCX64p
         EWPPh1fkO3oxq1L2DJKZPHP+SPvmSm9vzvlTjSnql4TumfaNdTRdYE0DGVoaouvUfbFj
         ZWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695243596; x=1695848396;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBJ3hXrlKwHvjUPGQsIUVQktAztRBLWYADj+54kB7dA=;
        b=sHg6OHTpkMSMEwt6Od1/E47ba8cz7Msb3v5MaMGiSP9idCIsQeU5wrFNZjUM5Y2beM
         JlcMWrK2XlZR08nxTsJrrpaeD1MjBhSdKEsVr/piF5yNNGVOJtXSNX0AJnSjd2tfI9VA
         Z7PiBFq/KSmEW5YBGp/TsuKNWYvLekESucADB3RFJMarr6Y69WHEbEPsT2/QZcHkewUE
         Mu43WIIuTI/Yg+nLQkfpuVktaD4uf+TK04dY21Da5t0Swn19nEIZJGwPO2QwrocPprKX
         cx7Z/pXEHXOm8JiSWsELjQMci5jaeB+ST/5B3R0I8EyQxpaxn7IcacF2pQXglFnDQZYs
         aAhw==
X-Gm-Message-State: AOJu0YxMEtvWHJANyp56/mZv/c4jLJ837fL6XdHXxka7SmGU0MgduP92
	SsfjxND2kpLEJ+1BZvD4BgI2jo02VoAMu66MwpBPNg==
X-Google-Smtp-Source: AGHT+IG75zsYww7PO5YlaSRp6scqn11KpCE0jgSTO3PFkjRS/AM6cdSKPZkXAd+UG8p5rt4D3vt12g==
X-Received: by 2002:a17:902:efc6:b0:1bb:7b6c:983a with SMTP id ja6-20020a170902efc600b001bb7b6c983amr2579102plb.59.1695243596036;
        Wed, 20 Sep 2023 13:59:56 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902a40400b001c407fac227sm12258790plq.41.2023.09.20.13.59.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 13:59:55 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------zDxk4sh7CjToyUQUrfDmOCJ4"
Message-ID: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
Date: Wed, 20 Sep 2023 13:59:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Forcing uninative?
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 21:00:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61057

This is a multi-part message in MIME format.
--------------zDxk4sh7CjToyUQUrfDmOCJ4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I need to resurrect a Yocto Project build environment based on honister. 
My dev system has since moved on to a newer glibc etc. As expected, I am 
getting this warning

WARNING: Your host glibc version (2.37) is newer than that in uninative 
(2.34). Disabling uninative so that sstate is not corrupted.

The distro's gcc now is 13.2.1.

Now the following packages do not compile anymore:

  * rust-llvm-native : which there is a patch (applied to kirkstone):
    https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/
  * libdnf-native : because std::uint32_t does not exist anymore

I don't care about the sstate as I am creating a new one. However, how 
can I force uninative to be used and would it even solve the problem (I 
would think so as the idea of uninative is to isolate the build from the 
host libraries)?

Thanks,
Rudi


--------------zDxk4sh7CjToyUQUrfDmOCJ4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I need to resurrect a Yocto Project build environment based on
      honister. My dev system has since moved on to a newer glibc etc.
      As expected, I am getting this warning</p>
    <p>WARNING: Your host glibc version (2.37) is newer than that in
      uninative (2.34). Disabling uninative so that sstate is not
      corrupted.</p>
    <p>The distro's gcc now is 13.2.1.</p>
    <p>Now the following packages do not compile anymore:</p>
    <ul>
      <li>rust-llvm-native : which there is a patch (applied to
        kirkstone):
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/">https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/</a></li>
      <li>libdnf-native : because std::uint32_t does not exist anymore</li>
    </ul>
    <p>I don't care about the sstate as I am creating a new one.
      However, how can I force uninative to be used and would it even
      solve the problem (I would think so as the idea of uninative is to
      isolate the build from the host libraries)?</p>
    <p>Thanks,<br>
      Rudi<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------zDxk4sh7CjToyUQUrfDmOCJ4--

