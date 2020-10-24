Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.17146.1603571057542198014
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 13:24:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=qhuytA6o;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D057938C08C4
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2020 13:24:16 -0700 (PDT)
Received: by mail-ej1-f65.google.com with SMTP id ce10so7481003ejc.5
        for <yocto@yoctoproject.org>; Sat, 24 Oct 2020 13:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1P23WFnfxzsTHFX3oD+WgPkC6/uRrhKb05l9X+eai2g=;
        b=qhuytA6oXHCGiw8uHp2MQI4egF9UOsWWn54UsZhuyiXBlSdaa9Jw/3QysPjdMyznid
         t1xYHXzEgckLQW7OVr3xlwSGw6jQmiqDPvsaMgwS9x3XjTw0E6fL+J6sBZEshpO+J6sy
         gbB9fXTF0TcLLuiYANg7ZUelq+a3IMcUl1Mnwc6O2VnGDr1QWU9M6ADaZLO8/bWv0XNI
         99W+7qFSab3iGi1vKYCcJu7VEULRgSUM9VsTlDmqyjxRK1f8kmmuenR8RyxYyovVuDPo
         +QK4apnYL2uee9urxwInvQK9r3vCcJknxWvmCMOxmxw48AxDPso9jWQyNlnzsqQgKrpH
         7YlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1P23WFnfxzsTHFX3oD+WgPkC6/uRrhKb05l9X+eai2g=;
        b=QkkQCpV9iwLurrCQmamHnMtbuut60hlx8dsFuHajRfR8QEjP4zXX48nUhYaYSrXomY
         FatNMUdKqIyYfFV2wj7krJH/sWp2P2Hz4x0XBO0bTtmIn7dZfaQexVJZCpf3/o1ozqGW
         7pRTo098NF+BhjoyuPt3gPD6pRW069cGxVlZeQ7iqB/OQmkFh8lOsEsQnEDmKupyUuTL
         xMAl828rko5Plfvg+q9dw9KHF3qEs5RWSLgkADNw2Ag5NT9gm1YkrystgqS6xT+UPbce
         gJcYTg/y0PH5tixGPMK7V0TF56iBbECOONm3dB2mVkp9u8rw7UzS9hgLZV6H52bJBlHY
         6WOA==
X-Gm-Message-State: AOAM531xt/p36NsF0WOEWbfjMahjHZ23GnEeGdb8u6zZTUMN+k1U/aaE
	Jzy/F8hUOYCbYvyEYglNq4o=
X-Google-Smtp-Source: ABdhPJxZ2SjPHn0nH30VxEAs8dyvtXjeCeqtfIduw3DC8Nd+FXn8vmRi06YiV8NJmWSeVXQccpP5Ew==
X-Received: by 2002:a17:906:12cf:: with SMTP id l15mr8755769ejb.540.1603571055241;
        Sat, 24 Oct 2020 13:24:15 -0700 (PDT)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id p10sm2861316ejy.68.2020.10.24.13.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 13:24:14 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [opkg-utils PATCH] update-alternatives: correctly match priority
Date: Sat, 24 Oct 2020 22:24:05 +0200
Message-Id: <20201024202405.27503-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

It should always be at the end of string, otherwise something
like "/usr/bin/python3.9-config 123" will erroneously match
against priority 9.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 update-alternatives | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/update-alternatives b/update-alternatives
index 1389b3f..e0b31bf 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -94,7 +94,7 @@ add_alt() {
 	local path=3D"$2"
 	local priority=3D"$3"
 	remove_alt $name $path
-	if grep -qw "$priority" $ad/$name; then
+	if grep -qw "$priority"$ $ad/$name; then
 		echo "Warn: update-alternatives: $name has multiple providers with the=
 same priority, please check $ad/$name for details"
 	fi
 	echo "$path $priority" >> $ad/$name
--=20
2.28.0

