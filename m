Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18DFFE009CA; Mon,  8 Jun 2015 00:36:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63AE1E00293
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 00:36:40 -0700 (PDT)
Received: by laar3 with SMTP id r3so41261564laa.3
	for <yocto@yoctoproject.org>; Mon, 08 Jun 2015 00:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=KhgJTrUOHxCt/YphumFGWBHf9U3NEds5+W9BFD6mKNQ=;
	b=G34MVAzroPuIElQCMlxIi2sJoXI3xRULkn47SREYpCt0KXcGpWkmXAgg2V/tUr0Gyc
	5S+l9eLHWEZnkX/EhL40RF7MhhLUlZt97VX/KXvF+6PkbBH+Ah+ZkYJS4VyCbFQPvwvo
	JvSd6CyR7JfxhPd1jixaf2rv0h60IhZVEqwj4VtJuA7SRhHt7cJY32i1DzZZHBhF/RgZ
	W8c/pAfj5EHNSh3BwjXaJetkY3JhomMbXMss/qTBEyH1IGUWbGKtSEzfdhdEcouze53n
	fV7HGDXEPYug2b4fh30SdZmHKs9VJJ0d+w3RaxH9tZuOaO/Hi4WZek/Kn/q2hyROd1Kl
	GDJA==
X-Gm-Message-State: ALoCoQm1c1amxfOAjrUkxwMExzV0HnY8tntU7273aCt6lXYozZEMpx/QsALilduAj5Z8CIx4OUc2
X-Received: by 10.152.1.227 with SMTP id 3mr15155915lap.61.1433748998366;
	Mon, 08 Jun 2015 00:36:38 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id a7sm444565lbc.36.2015.06.08.00.36.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Jun 2015 00:36:37 -0700 (PDT)
Date: Mon, 8 Jun 2015 09:36:35 +0200
From: Anders Darander <anders@chargestorm.se>
To: Darren Breeze <darren.j.breeze@gmail.com>
Message-ID: <20150608073635.GA20609@ad.chargestorm.se>
Mail-Followup-To: Darren Breeze <darren.j.breeze@gmail.com>,
	yocto@yoctoproject.org
References: <557243CA.7000203@gmail.com>
MIME-Version: 1.0
In-Reply-To: <557243CA.7000203@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Recipe question
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
X-List-Received-Date: Mon, 08 Jun 2015 07:36:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Darren Breeze <darren.j.breeze@gmail.com> [150606 02:52]:
> the recipe file is :

> ---------

> DESCRIPTION = "Web Remote"
> SECTION = "utils"

> SRC_URI =
> "git://192.168.192.46/mygroup/web_remote.git;protocol=http;branch=master;"

> S = "${WORKDIR}/git"

> do_install() {
>         install -d ${D}opt/web_remote
>         cp -r ${S}/* ${D}opt/web_remote/.
> }

> ----------

> but I keep getting this error

> "error: Can't install packagegroup-core-boot-1.0-r17@rk3188: no package
> provides web-remote"

You have installed the files under /opt, though there's nothing that
tells the system in which package these files should be installed.

Add a line:

FILES_${PN} += "/opt/we_remote"

to your recipe. This should tell the packaging step that all files under
/opt/web_root should be included in the ${PN}-package.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

