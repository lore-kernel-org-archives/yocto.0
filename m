Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71674E00B53; Sun,  8 Nov 2015 15:41:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.222.38.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Sun, 08 Nov 2015 15:41:38 PST
Received: from gproxy5-pub.mail.unifiedlayer.com
	(gproxy5-pub.mail.unifiedlayer.com [67.222.38.55])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 45754E00B36
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 15:41:38 -0800 (PST)
Received: (qmail 28604 invoked by uid 0); 8 Nov 2015 23:34:57 -0000
Received: from unknown (HELO cmgw3) (10.0.90.84)
	by gproxy5.mail.unifiedlayer.com with SMTP; 8 Nov 2015 23:34:57 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw3 with 
	id fJap1r00P4Y0hd901JasFJ; Sun, 08 Nov 2015 23:34:55 -0700
X-Authority-Analysis: v=2.1 cv=Caqbutbl c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=IkcTkHD0fZMA:10 a=mHfT8ucao3sA:10
	a=JMHYQVG13d8A:10 a=qtqOOiqGOCEA:10 a=G4jqb0MDzV5pMKrH5wAA:9
	a=QEXdDO2ut3YA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=MIME-Version:Content-Type:In-Reply-To:References:Subject:Cc:To:From:Message-ID:Date;
	bh=jxOSZbvwCNPGwtHJv6JA6BQMY1b9j8rcfJ+hfkJ311A=; 
	b=urcGUOJJHZjcFLJIfv/8y36rdGOJoTyyrBjTmKl84pff9alisjKVOA7KF+pk3PLieE6hFeIW+bApiNvAXH8C02pKEF27IkOlrCqFd/lvRNYYp9gEgm7oEMid/Vns6K5h;
Received: from localhost ([127.0.0.1]:44982 helo=box410.bluehost.com)
	by box410.bluehost.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZvZU3-0005Kn-I3; Sun, 08 Nov 2015 16:34:51 -0700
Received: from 68.96.71.119 ([68.96.71.119]) by box410.bluehost.com (Horde
	Framework) with HTTP; Sun, 08 Nov 2015 23:34:49 +0000
Date: Sun, 08 Nov 2015 23:34:49 +0000
Message-ID: <20151108233449.Horde.afJsxCWg85rRIxvV7BOTrg1@box410.bluehost.com>
From: allen.curtis@curtisembedded.com
To: Martin Jansa <martin.jansa@gmail.com>
References: <20151107015237.Horde.ATpewpTEwwDHYfMHj0c_6w1@box410.bluehost.com>
	<20151108120301.GA2546@jama>
In-Reply-To: <20151108120301.GA2546@jama>
User-Agent: Internet Messaging Program (IMP) H5 (6.1.4)
MIME-Version: 1.0
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 127.0.0.1 authed with
	allen.curtis@curtisembedded.com}
Cc: yocto@yoctoproject.org
Subject: Re: SVN based AUTOREV detection?
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
X-List-Received-Date: Sun, 08 Nov 2015 23:41:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed; DelSp=Yes
Content-Disposition: inline

>> Is there a way to use the feature during development when you are
>> working off trunk/HEAD?
>>
>> This doesn't work (obviously). Is it possible to pull the HEAD version
>> in the recipe?
>>
>> -------------------
>> PR = "r0"
>> PV = "0.1+svn${SRCPV}"
>>
>> SRCREV = "${AUTOREV}"
>>
>> SRC_URI =
>> "svn://project/trunk;module=libproject;protocol=svn+ssh;rev=HEAD;subdir=svn"
>
> try to drop rev=HEAD, setting SRCREV should be enough.
>

Thanks Martin,

That was too easy. I was under the impression that you had to specify  
the revision in the SRC_URI.




