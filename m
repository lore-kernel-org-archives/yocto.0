Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2A6EE00D10; Sun, 15 May 2016 11:11:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA60BE00CFF
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:11:13 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id bt5so56511560pac.3
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=qU+YJ/+9vTSHTBNYGVI2JPf1R4boqj3ji6zD8nmGVYQ=;
	b=E8aMrHRdw2tkxJPcPMu5rXwglMwKp6m5EJAWvBUR95F/ResCZMTo2rlg8Bw2NalTdf
	yq5q9rbTBWPY9+tCztCMkdeMJSi2I4ehSmB2UzW/jyTW86R0Tbhh+p+5/BUe5mTvqBwT
	uHBPxVZnIB/lxcz4mHT9i9sdPXHIP8QrQH4PvbSKXIDssYRq4aOkwupH09ihmA0SN6UU
	DdP7QMLmfXVf059q908zWol9qjRGWP4IZTM2cTNTH4EIdEFI8LPb4zh7X9FAlw2UCaJC
	Xe0mCW2OSV4rqOoT3Ank207k0DTqwKm4RKkEdqLk7BcRDrHulqq2CrDyJtiqMLBSdsIm
	8mXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=qU+YJ/+9vTSHTBNYGVI2JPf1R4boqj3ji6zD8nmGVYQ=;
	b=Rli0sFKH0Gh1JuRzNstmAU4maZ73xSv8uhFaVaFCCQLvBRUlEZXS0axSkUqLqveZtY
	Py/GxxQJ2aIBE/Bvp2OCxCFaKthqzZ5UNqoeQGuHDBEWOModjZ7AQqqr0GJyePc63026
	vAqpOe39WEdv7IvaghC4EYOlzZtujKlDBDUbDIFNIScIZA2PJtlZtQSxN05k6tWjDw6z
	InJol2YDN1pTUBH6mqADxRcuLOLh7gp7kIT5mLG+t24JwmuRqWMzp3FObRrBrOokuvWh
	xoDF3Elb0vWb+0JwQsNijTQVtNXTa6xmOQHh7fM9yt3ZRX8EOWS+24rxeK4ycvTJodZ/
	qFSw==
X-Gm-Message-State: AOPr4FU0UeRE6Xt3WtcZ21/jZDNVmaTLRT7BAhOBFkOoUtZ71brkTbLwhK2ZCZaEt85Utw==
X-Received: by 10.66.132.103 with SMTP id ot7mr39347483pab.27.1463335872920;
	Sun, 15 May 2016 11:11:12 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:202:4000:1239:a10b:de98:ff76:b232])
	by smtp.googlemail.com with ESMTPSA id
	yv7sm11163634pab.31.2016.05.15.11.11.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 May 2016 11:11:11 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5738BBBD.3050407@gmail.com>
Date: Sun, 15 May 2016 11:11:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
Subject: Branch Maintenance process clarification
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
X-List-Received-Date: Sun, 15 May 2016 18:11:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

I am reviewing the stable branch maintenance for Yocto and would like
some clarification on a few steps.
https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

6. Split out any bitbake changes and send them to the bitbake-devel
mailing list (marking them with the appropriate stable version in the
subject line e.g. [1.20])

AK] I have not seen this being done in the past. Should we start doing
this or update the process ?

7. Split out OE-Core changes and create an openembedded-core-contrib
branch containing them; send the cover letter only (marking it as such
in the subject) to the openembedded-core mailing list.

AK] I don't have write access to do this, so this will be a problem.

8. Split out any meta-yocto changes and create a poky-contrib branch
containing them; send the cover letter only (marking it as such in the
subject) to the poky mailing list.

AK] Is this required?

I do agree that the downstream repos are where the changes should be
pushed first  then feed poky. This is not what I have seen happen in the
past nor did I do it for dizzy either.

regards,
Armin




