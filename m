Return-Path: <ronan.lemartret@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD8CDE00736; Thu, 31 Jul 2014 07:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4F31E00572
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 07:55:08 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id x12so2815814wgg.4
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 07:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=YlCNj1eWBjXYdpveTicbH1o7PFJ5pfcMVRi61ByaCDk=;
	b=gN0CwcN2RhgEASfRc+MFQnxCNcWoHLe5wDFQ6tQ7miHsnnrEinwP2sN/nv/qlMk7CF
	CB3g4ehdQQ6O6KiEvKHCXz6OdKtuObYr8GJZTP7tfioH1flNUdxuqsaoiz2Gd9SK/6kD
	h6OMlHbc1T8IPavjE/76XtGGa1nNzrjPi47tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=YlCNj1eWBjXYdpveTicbH1o7PFJ5pfcMVRi61ByaCDk=;
	b=MR1SgSisA1KDZO+4eskYgz7sbAggF9AkzSO2wP2c5A5OdDnZBlYsNZ6mZxsYGHFkJd
	QOch0U8Azi+fxIXJaAaIYtjI2rXsVZ0tWfv2dDIZwY9c06VTkPPaNmAoEh4St1pY0AHZ
	WYVH82y5TPgpdcrwnxdxLzrVxoYC2+maY4kzBT+AN/y978hznzt8DjTrQzrU9Prcch4h
	sO+wl1BqUFVUkPBHXodxThKJyWIU14JNkm6AjIQJ3p6w36SrAExpi853r6414NgLa1Wm
	pwdy59rUJoNCKmraGsMeLF9sJRxxm8reVwntp6fMcFwr0i/PK1/5Vz591x+K1mnrDYES
	tfqA==
X-Gm-Message-State: ALoCoQnsVs/tbEAs5fjKOHPo4VsIg7l83MFw1FK8cmqdSVk2/Rx+ZQ3K7Zp6ZmaPXvhazEyK4YxJ
X-Received: by 10.194.86.225 with SMTP id s1mr17671235wjz.21.1406818506496;
	Thu, 31 Jul 2014 07:55:06 -0700 (PDT)
Received: from [10.19.3.35] ([46.18.96.46]) by mx.google.com with ESMTPSA id
	rw4sm13883061wjb.44.2014.07.31.07.55.05 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 31 Jul 2014 07:55:05 -0700 (PDT)
Message-ID: <53DA58C9.50705@open.eurogiciel.org>
Date: Thu, 31 Jul 2014 16:55:05 +0200
From: ronan <ronan.lemartret@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: general@lists.tizen.org, yocto@yoctoproject.org
Subject: Build Tizen with yocto work-flow
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
X-List-Received-Date: Thu, 31 Jul 2014 14:55:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,
presently we are working on a project "Tizen on Yocto" that provides an 
alternative to gbs tools or OBS.
     - https://wiki.tizen.org/wiki/Tizen_on_yocto

We are glad to announce the first release 0.1 of our project.

The main features as the same found in Tizen common:
- Smack security
- Pure wayland environment, with tz-launcher
- Crosswalk
- Multi-user support
- ...

We would like to share this project with Tizen and Yocto communities.

If you are interested to build Tizen with yocto, just follow this link:
     - https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto

If you have any question or issue feel free to contact us, on the Tizen 
mailing list (dev@lists.tizen.org) .

Here a link to the yocto project:
     - https://www.yoctoproject.org/


Regards,
Ronan

