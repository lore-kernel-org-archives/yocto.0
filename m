Return-Path: <brian@kurle.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB1D2E00ADF; Wed, 19 Apr 2017 15:54:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [50.43.125.100 listed in list.dnswl.org]
X-Greylist: delayed 253 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Apr 2017 15:54:37 PDT
Received: from natasha2.familycom.org (natasha2.familycom.org [50.43.125.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3E8E00AD0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 15:54:37 -0700 (PDT)
Received: from natasha2.familycom.org (localhost [127.0.0.1])
	by natasha2.familycom.org (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP
	id v3JMoJ6j021181
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 19 Apr 2017 15:50:20 -0700
Received: (from bkurle@localhost)
	by natasha2.familycom.org (8.14.4/8.14.4/Submit) id v3JMoJqu021179;
	Wed, 19 Apr 2017 15:50:19 -0700
X-Authentication-Warning: natasha2.familycom.org: bkurle set sender to
	brian@kurle.com using -f
Date: Wed, 19 Apr 2017 15:50:19 -0700
From: Brian Kurle <brian@kurle.com>
To: yocto@yoctoproject.org
Message-ID: <20170419225019.GA20421@natasha2.familycom.org>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: devtool and adding specific tag from repo
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
X-List-Received-Date: Wed, 19 Apr 2017 22:54:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm trying to get up to speed on devtool.

I've created a generic eSDK (poky and meta-openembedded) and installed it.

From there, I'm trying to create a new recipe, but I apparently am not
executing it correctly to pull the desired tag.

If I execute:

devtool add --version 2.4.2 mbedtls git@github.com:ARMmbed/mbedtls.git

or 

devtool add --version 2.4.2 mbedtls git@github.com:ARMmbed/mbedtls.git;tag=mbedtls-2.4.2

or 

devtool add --version mbedtls-2.4.2 mbedtls git@github.com:ARMmbed/mbedtls.git

It still manages to get the wrong hash (not even the right branch).

Is this a limitation of devtool, or is a better way to do this?
(E.g., just go to the sources directory, check it out and manually update the
recipe?)

My goal is to set up a stock recipe off of the mbedtls-2.4.2 tag,
where I'll then create a bbappend to add additional patches and configuration
specific for our platform.  I could do it manually, but it would be nice to
know how to do it "the right way" for the documentation I'll pass to others on
my team.

Guidance and correction would be most appreciated.

Thanks,

brian

