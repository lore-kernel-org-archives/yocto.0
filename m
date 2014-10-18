Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55BC9E0085F; Sat, 18 Oct 2014 02:19:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 350E4E00796
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 02:19:30 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XfQAb-00050J-3f
	for yocto@yoctoproject.org; Sat, 18 Oct 2014 11:19:29 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 11:19:29 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 11:19:29 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sat, 18 Oct 2014 11:19:14 +0200
Message-ID: <m1tbak$ko0$1@ger.gmane.org>
References: <m1qpbo$lsa$1@ger.gmane.org>	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>	<m1rb0r$ucm$1@ger.gmane.org>	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>	<m1rc1u$cvb$1@ger.gmane.org>
	<m1rf00$l0m$1@ger.gmane.org>	<m1t3rp$aj2$1@ger.gmane.org>
	<20141018084423.GB2437@jama>	<m1t9ml$43g$1@ger.gmane.org>
	<20141018091009.GD2437@jama>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
In-Reply-To: <20141018091009.GD2437@jama>
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 09:19:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 18.10.2014 um 11:10 schrieb Martin Jansa:
> On Sat, Oct 18, 2014 at 10:51:30AM +0200, Neuer User wrote:
>> Btw. do you know that the qt5 repo is currently incompatible with daisy?
>> There is a patch in fsl-arm that cannot be applied:
>>
>> ./meta-fsl-arm/qt5-layer/recipes-qt/qt5/qtmultimedia_%.bbappend
>>
>> This needs to be deleted, otherwise qtmultimedia cannot be generated.
> 
> Are you using meta-qt5/daisy or meta-qt5/master?
> 
Hmm, master. Didn't know there was a daisy branch. Did a diff between
the two branches now and do not see any difference though which could
solve the above problem (just seems to add some things such as
noqtwebkit option). I will try it though.

> Please report it to meta-fsl-arm maintainer, I'm not using that layer,
> but I think they should either provide separate .bbappends for _5.*.bb and
> *_git.bb or make sure it applies for both versions (there is 5.3.2 and
> 5.4-alpha in meta-qt5/master and many patches need to be slightly
> different).
> 

Ok. will send that to the maintainer.

Cheers

Michael


P.S.: My yocto install is still compiling but I already saw that the
error is still there. So I will now try to revert the two patches you
mentioned.



