Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49A44E014E3
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 01:36:17 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n12so146656oag.27
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 01:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=5vOWf7MbQdXFQRxMORvyrgxvNM4YYGpVT6Cg8hjQws4=;
	b=HW7CCj8XNTs9MboyhJBE37ib9Q8z7Eukj8Dd0Tfd6taodsld3bd4DwUXA3rveaHFTb
	T0YIE8DNKiya0OY38Eye0H0wRt+mXBQxVdEORmkDkBloGmkoaWLVE3jfpBf1uM3O+lXL
	iLCa/8K0sDO6PvocDKDlognDszVzn01ZD340wM44MomCh3uhAZBUsujza1FpP2sZkdRh
	sKvvAp5f5J10dEDMzIyCtUfGktwVnzEtL6IhMg2jJl3gQm6wkTeYeO/9tnaP76cmE9q9
	6TbEkp3UN7ZK8PQfaxOA3ivfnG8VwkSC3aLAYtjhzT3LUpmmHgByqRe1i8gn1ZnBs/PA
	7qUQ==
MIME-Version: 1.0
X-Received: by 10.182.19.135 with SMTP id f7mr5081364obe.95.1364891777157;
	Tue, 02 Apr 2013 01:36:17 -0700 (PDT)
Received: by 10.76.21.173 with HTTP; Tue, 2 Apr 2013 01:36:17 -0700 (PDT)
Date: Tue, 2 Apr 2013 10:36:17 +0200
Message-ID: <CA+AhUGyaJm2MQFLB3MU7GUy7HcgKhSTJ9eXGKW6JY=H4FzzGOQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: florin.sarbu@windriver.com, 
	"Behrens, Holger" <holger.behrens@windriver.com>
X-Gm-Message-State: ALoCoQmYY8XjZat1HpeklEdgGWGwMSQx+WxlAe+RL8rg9i9p4Jd/QbMVkFIvc0BoJ2KwW+enz6Dw
X-Mailman-Approved-At: Tue, 02 Apr 2013 08:01:16 -0700
Cc: yocto@yoctoproject.org
Subject: [meta-ivi] Remove nfs-utils from packagegroup-core-p1
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
X-List-Received-Date: Tue, 02 Apr 2013 08:36:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I believe that nfs-utils is not longer necessary to include in
packagegroup-core-p1, right?

Cheers,
Erik

