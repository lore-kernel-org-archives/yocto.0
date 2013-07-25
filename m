Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2246EE014E4
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 16:57:33 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so2260267pdj.31
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 16:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=IaoVSnZFN3B6TDxD9hVJmNv9l7Yz641eFdKXlJQ55Bk=;
	b=CtfzTBOPo5Oq2Y3NyAJfOKb9Mbz30HT0DGiFJzVTnYxxCbOug/IeFLW0KCKNc1Zw6Q
	iDU7tcEJ5GKMoBrZeEMn9AiPaoBUmx31b1qh4xM1Ig+46H2wzVBPWhC6NERGIJlC2Jo8
	i2wZX5xfmvslAR94nTD0UPH8bdZbFl28fgKV9Uhmv7zkdC6ik/Wkn86FRrQgU3u2drls
	LNWYlBSa8gv4l0ufWiBS2P0/nbC7j+vGYzG/iaVk9dQxg2QkU6r5q/GHalGZTJAFRnaT
	SFNYYGjT3a4cYY9RjKFo0jQFn/KOHSi8cCSwlE2Yit10nFTBnetgWuAdr8eDURPYuWry
	OqpA==
X-Received: by 10.68.76.34 with SMTP id h2mr50846832pbw.20.1374796652910;
	Thu, 25 Jul 2013 16:57:32 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id y6sm56481416pbl.23.2013.07.25.16.57.30
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 16:57:32 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <51F1BB68.6010204@gna.org>
Date: Fri, 26 Jul 2013 11:57:28 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Detecting build type within recipe (target, native or nativesdk)
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
X-List-Received-Date: Thu, 25 Jul 2013 23:57:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi there,

Is there a way to detect what kind of build is going on (target, native 
or nativesdk) from within a recipe or a class?

Basically when using 'BBCLASSEXTEND = "native nativesdk"', how can I 
tweak the build behaviour depending of the build type?

Does anyone know an example recipe I could use as a reference for doing 
these kind of things?

Regards,
Chris

