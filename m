Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A20BE00A7D; Fri,  6 Nov 2015 17:59:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.222.33.93 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0192]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Nov 2015 17:59:26 PST
Received: from gproxy8-pub.mail.unifiedlayer.com
	(gproxy8-pub.mail.unifiedlayer.com [67.222.33.93])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 30FF1E00A26
	for <yocto@yoctoproject.org>; Fri,  6 Nov 2015 17:59:26 -0800 (PST)
Received: (qmail 14589 invoked by uid 0); 7 Nov 2015 01:52:45 -0000
Received: from unknown (HELO cmgw2) (10.0.90.83)
	by gproxy8.mail.unifiedlayer.com with SMTP; 7 Nov 2015 01:52:45 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw2 with 
	id eRse1r0094Y0hd901Rshx4; Fri, 06 Nov 2015 18:52:43 -0700
X-Authority-Analysis: v=2.1 cv=Jv9i8qIC c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=IkcTkHD0fZMA:10 a=mHfT8ucao3sA:10
	a=JMHYQVG13d8A:10 a=qtqOOiqGOCEA:10 a=Fvjhkfs3G1oWO5YTLN0A:9
	a=QEXdDO2ut3YA:10 a=jYDJMkRIVzsA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=MIME-Version:Content-Type:Subject:To:From:Message-ID:Date;
	bh=WMz9ki2/h6agGGVf/aFBkfn7ZxBJOSnNgvp4nSNkSs4=; 
	b=BRdOAK2BeGpTeAGXn2RTyJYwnLO1RzF/itpx2ZkIZt2zbmqogbxx8/MGzaUVwbXWWMBHPfxY5bQ2E0CFI0BeEpAVVNLeNlxHP+ytXDMUwJIJiS749cpBUAQJGg+x/nRw;
Received: from localhost ([127.0.0.1]:48032 helo=box410.bluehost.com)
	by box410.bluehost.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZusgJ-00005n-UT
	for yocto@yoctoproject.org; Fri, 06 Nov 2015 18:52:39 -0700
Received: from 68.96.71.119 ([68.96.71.119]) by box410.bluehost.com (Horde
	Framework) with HTTP; Sat, 07 Nov 2015 01:52:37 +0000
Date: Sat, 07 Nov 2015 01:52:37 +0000
Message-ID: <20151107015237.Horde.ATpewpTEwwDHYfMHj0c_6w1@box410.bluehost.com>
From: allen.curtis@curtisembedded.com
To: yocto@yoctoproject.org
User-Agent: Internet Messaging Program (IMP) H5 (6.1.4)
MIME-Version: 1.0
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 127.0.0.1 authed with
	allen.curtis@curtisembedded.com}
Subject: SVN based AUTOREV detection?
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
X-List-Received-Date: Sat, 07 Nov 2015 01:59:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed; DelSp=Yes
Content-Disposition: inline


Hello,

Is there a way to use the feature during development when you are  
working off trunk/HEAD?

This doesn't work (obviously). Is it possible to pull the HEAD version  
in the recipe?

-------------------
PR = "r0"
PV = "0.1+svn${SRCPV}"

SRCREV = "${AUTOREV}"

SRC_URI =  
"svn://project/trunk;module=libproject;protocol=svn+ssh;rev=HEAD;subdir=svn"

-------------------

TIA


