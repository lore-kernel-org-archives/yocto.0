Return-Path: <brian@kurle.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B98ADE0095F; Thu, 20 Apr 2017 08:36:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [50.43.125.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from natasha2.familycom.org (natasha2.familycom.org [50.43.125.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60174E0083D
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 08:36:08 -0700 (PDT)
Received: from natasha2.familycom.org (localhost [127.0.0.1])
	by natasha2.familycom.org (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP
	id v3KFa2OZ006688
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 20 Apr 2017 08:36:03 -0700
Received: (from bkurle@localhost)
	by natasha2.familycom.org (8.14.4/8.14.4/Submit) id v3KFa2CY006687;
	Thu, 20 Apr 2017 08:36:02 -0700
X-Authentication-Warning: natasha2.familycom.org: bkurle set sender to
	brian@kurle.com using -f
Date: Thu, 20 Apr 2017 08:36:02 -0700
From: Brian Kurle <brian@kurle.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20170420153601.GB20421@natasha2.familycom.org>
Mail-Followup-To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto@yoctoproject.org
References: <20170419225019.GA20421@natasha2.familycom.org>
	<2716874.smAeZZESSB@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <2716874.smAeZZESSB@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: devtool and adding specific tag from repo
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
X-List-Received-Date: Thu, 20 Apr 2017 15:36:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 04:20:14PM +1200, Paul Eggleton wrote:
> > ...
> > My goal is to set up a stock recipe off of the mbedtls-2.4.2 tag,
> > where I'll then create a bbappend to add additional patches and
> > configuration specific for our platform.  I could do it manually, but it
> > would be nice to know how to do it "the right way" for the documentation
> > I'll pass to others on my team.
> > 
> > Guidance and correction would be most appreciated.
> 
> For everyone's benefit, FYI Brian and I have talked offline, but there
> are several bugs and opportunities for improvement here as it turns out.
> I have filed the following bugs:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11389
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11390
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11391
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11393
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11392
> 
> The current workaround for this particular example is to use this:
> 
> devtool add --version 2.4.2 mbedtls "git://github.com/ARMmbed/mbedtls;branch=mbedtls-2.4;rev=mbedtls-2.4.2"
> ...

Paul,

Again, thanks for the assistance on this.

brian

> Cheers,
> Paul
> 
> -- 
> 
> Paul Eggleton
> Intel Open Source Technology Centre
> 

