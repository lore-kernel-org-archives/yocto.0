Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A28FE01549
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 02:39:31 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id mz12so2905507bkb.27
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 02:39:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=ao6G5wODadJlSRPiiybFCC33gOesS9yQKYxWH9DnxUc=;
	b=GG7U2q1Ms+hkNfgNxcVhIG4UV5sEb5R8FygkazprK+FH4ESpMkkBnX09O4n9enaKci
	rY/kiOtUkdUaOSg8i18EE2AEeqEZgjWZ7ZzloaI77ydx9FZ0ap70vpHPdG6SIzpHkvTm
	Mp33QVYz+WIgo1ng4Z0YStefg9ktykHNZWKO5NnFxQXZ1O0r1sNUHYFwa6SlPnYg/egL
	9Nh20/4lB13oKLDZQ5HZYq42UwEnezz/Ho9/1zpON7qEl2NM/zcOiQK315lEhPLQEbdD
	q15K8S6ATAv+qWU4Ae0E2LXv+A+3dVxS26mPQTTD5pQOY5qSOdk5ZOoJN/n6Cn60MDYZ
	DpKQ==
X-Gm-Message-State: ALoCoQm8Aj2ObBnIgKMCMiTeuIWX1jAhoP4kkiBf1oMtqnvJlfF6uECiWXKtZeR7dv17VBQOen2A
X-Received: by 10.205.15.72 with SMTP id pt8mr18109463bkb.17.1378805969899;
	Tue, 10 Sep 2013 02:39:29 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id w9sm4788150bkn.12.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Sep 2013 02:39:28 -0700 (PDT)
Message-ID: <522EE8CE.3060806@vtkloud.com>
Date: Tue, 10 Sep 2013 11:39:26 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: curl smart package requires curl-cert... another strange smart dependency issue
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
X-List-Received-Date: Tue, 10 Sep 2013 09:39:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Did anyone already had this very strange issue installing curl ?

Computing transaction... error: Can't install 
libcurl5-7.29.0-r1@armv6_vfp: no package provides curl-certs



I have more and more issues with smart... Is there any specific 
discussion channel for it?

Jay


