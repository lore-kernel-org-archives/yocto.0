Received: from posti.hhpartners.fi (posti.hhpartners.fi [85.194.237.131])
 by mx.groups.io with SMTP id smtpd.web10.4878.1621318531857413852
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 23:15:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hhpartners.fi, ip: 85.194.237.131, mailfrom: mikko.murto@hhpartners.fi)
Received: from MAIL.hhpartners.local (172.25.43.54) by MAIL.hhpartners.local
 (172.25.43.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.14; Tue, 18 May
 2021 09:15:07 +0300
Received: from MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f]) by
 MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f%4]) with mapi id
 15.01.2176.014; Tue, 18 May 2021 09:15:07 +0300
From: "Mikko Murto" <mikko.murto@hhpartners.fi>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Make do_image_complete wait for an earlier task
Thread-Topic: Make do_image_complete wait for an earlier task
Thread-Index: AddLrPttjmjp2ufPRwmA9MTCu36eVQ==
Date: Tue, 18 May 2021 06:15:07 +0000
Message-ID: <a28139be6f11445c9f4af80d748457c5@hhpartners.fi>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [80.220.75.146]
MIME-Version: 1.0
Content-Language: fi-FI
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I've created a task do_create_spdx that gets some data from packages after =
do_package. The task is currently added with `addtask do_create_spdx after =
do_package before do_packagedata` The data is then enriched and combined in=
 do_image_complete by adding the combining function to IMAGE_POSTPROCESS_CO=
MMAND. For the most part everything works as expected, but for some package=
s do_create_spdx does not complete in time for the combination step in do_i=
mage_complete. Is there a way for me force do_image_complete to wait for do=
_create_spdx to have been completed for all packages?

Best regards,
Mikko Murto


