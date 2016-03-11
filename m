Return-Path: <leon.anavi@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78384E00CE1; Fri, 11 Mar 2016 01:45:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99818E00929
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:45:36 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id l68so10569316wml.0
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=7h5NHF0FaiV45UaXHcSX5El4oiVzUdPgdWMgHrvpCcE=;
	b=PYM0dD/ndvaaziDJB4ZOdNoqFxMqYOTNSFvMtqCQbqYVeZrqelkonxVRmXKUVFSMw8
	zd4R81Je8maxaUpeCDqBzRPJaB4GyiLWJodRqpQp7JUjSSVvMGufZPWEBwrG/ivPEM3r
	wewRWykaD6a9/aP59xH7w3oMjrEHHbnIKqatk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=7h5NHF0FaiV45UaXHcSX5El4oiVzUdPgdWMgHrvpCcE=;
	b=FWm41UTVhs+buQiw0pRU6Kx5FLdf/bp2lfe69j3fUO2/rSiRt02sbtcnv2tE4pwv1h
	wxlFx55JKo3fBlXM9WY2ooHIvRkymi9n7RurbRgaXPd9WiMGX8WTDVdMTspvU5j4vhFI
	5wHNggo1h/5p9QrLDYqfDsicWozyKtz0g7trDo9h9HPvf/RpScS8MNv0KnSIPP9NLJxK
	FLyr1Q2/tQGiTcJVDNgNyfx8tz5k6ErAj7VhmL4yR3RfYa4Gg80PrcSVhdRYFj2W93Mg
	PCQ3gERHGEZeQK5TJUgRQ5JVzKqJ0PX9C/OZmqZztxS+LBLWMf/JLFvqg+EwWJ6VAulj
	rTzA==
X-Gm-Message-State: AD7BkJJJ0gPLEtBt4c6hXEJDgIWLIkUo6RemUV6jMfEqLqcl2GkL4VhFSi+/qxEMWzKcXg==
X-Received: by 10.28.134.137 with SMTP id i131mr1890233wmd.62.1457689534930;
	Fri, 11 Mar 2016 01:45:34 -0800 (PST)
Received: from [192.168.4.190] ([5.53.209.92])
	by smtp.googlemail.com with ESMTPSA id
	e127sm1395535wma.20.2016.03.11.01.45.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2016 01:45:34 -0800 (PST)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@yoctoproject.org
Message-ID: <56E293BD.1080009@konsulko.com>
Date: Fri, 11 Mar 2016 11:45:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 09:45:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Yesterday I noticed that the build of recipe nettle 2.7.1 from release 
Fido fails:
https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f

The build machine is with Ubuntu 14.04 (Trusty Tahr). I am build Poky 
with nettle for qemux86-64.

My investigation shows that nettle fails due to a couple of security 
fixes (CVE-2015-8804, CVE-2015-8803 and CVE-2015-8805) which have been 
applied to branch Fido recently:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/nettle/nettle_2.7.1.bb?h=fido#n13

The same patches are present in Jethro but the versions of nettle in 
Jethro and Fido are different. The version in Fido is 2.7.1. Jethro has 
recipes for both 2.7.1 and 3.1.1. As far as I can see in Jethro the 
patches are applied only for version 3.1.1.Therefore in my opinion these 
patches are for a newer versions of nettle and they are not compatible 
with version 2.7.1 from release Fido.

Could you please have a look and let me know if I am doing something 
wrong or if this is a bug that can be fixed for release Fido?

Best regards, Leon

-- 
Leon Anavi
Software Engineer
konsulko.com


