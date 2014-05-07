Return-Path: <bob.feretich@rafresearch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41020E00975; Tue,  6 May 2014 19:49:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.39.63.111 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm23-vm4.access.bullet.mail.gq1.yahoo.com
	(nm23-vm4.access.bullet.mail.gq1.yahoo.com [216.39.63.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4072EE006C0
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 19:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1399430931; bh=/vaIuWefTt57HO0CokhTRLUlO9+02LIESUsUf5heZi4=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=BNU0VWUTFCfgu2p/ESOQaWTGqgumFbKPXiv4K6IVUr8L+QsxOFIEhNANswsbW4qMdCIoX5gIEERGbuQTGKi+l6tYAqu0Oh9nw2yug9mAUnG9e6h1ubkFiBYjZekHHIfUG3PTcr96Srqz+wFybf9vWM4IoaQorJMPMyUZ7Ir1dm/GbUVyJvv3zAWwIJ2nMw/EsZUU6A3Jn4IO2GITGPFZW+1zRxXDYnHTxcYht8+rvIVwoLUUIeULwwW+PnKr/0qHz4gNaI10bPGJLeOa9uuNE6yWN27UrSKbmpCjY7hC90nIVn+/Th1DD/d7iUUug2L4ewUTGfD5zwk7CjVeancwLA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=YPg31kC57/rldU1svlqthay/I6xLH8NY49r/khpuXUtd9LbaOQheGfxCyWO03GZRMSzDTMgjsJviqF2GYYMi287CcL9jW4dsjI6HbbpL/rUhLhZrfu/Q5YiJuGG24+bhQGe8DaBbPN44zqZ0jNbKAG9FXonwUL1Ea74T03WC7jc4h86nAvLhL4EYWEW+HTvAcmOmas2sIlRzc/gmv5C5KP+JHJIwUA0IrI4vwZFR8jJeUe5KQbpvPX/HxCgHKiccc1mDgC5uKP2eOf0Dwy1NU3pLdrYWqjr5hi8p9/h6n+87YTW4DFJQ5qTPPUGgFVqMY+EJmGmj0e6bQ4iVt/NViA==;
Received: from [216.39.60.168] by nm23.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 07 May 2014 02:48:51 -0000
Received: from [67.195.22.117] by tm4.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 07 May 2014 02:48:51 -0000
Received: from [127.0.0.1] by smtp112.sbc.mail.gq1.yahoo.com with NNFMP;
	07 May 2014 02:48:51 -0000
X-Yahoo-Newman-Id: 296991.33057.bm@smtp112.sbc.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: 6uSwXZUVM1lmy1_ImeZGii5YM6qxxHqgZw0CsD5tGsY4jsb
	7bUQZL6rakgHUEBTa_mgH.YA60KaqW6vvXWe.UzUjm5lW3JVSguPCA5WZhMI
	Z.Ihd9xJj_YVYUIgPhsmn4eXaSiFEd1P.6sFHkskn0GQYSP.zWMAd3SdvM.R
	PKHhqBJbCup61nl8CbcyuUVYWCa..DIUgl89q2bSqEOnVito5XTg3AD2hc_5
	kGBRwVlgyS7qVBW19PScfo8cPUb66p247Zt0tY6b3QHesRfmIjE9L9WwahbH
	RNi_gYfbPj4Wpaxf8xBXa2QDkK18M.iBKBTYTddUeuNUrnetbHUZhPv0Oh1t
	lekVNuWgceZG2301iYr2bMo6.Dv_EEQSh.GulT7d4us1Pv0c5RBgzBJotsju
	a9W87.t_KGyE6ziDOZHbRDasAvPAj1ZxJYqjMriK1i1bb7VzSL8M5S.JKgWE
	8mUPKaNwGvoiVWtn0B29bKKsYcsrAd2POhXT.pQgSRfvJZiesF56uVYft_TQ
	Y5RK1UexLZkNde4Zo5fgIlYLXdlc.FgaXGx4qNUyYBBN3GwNu2cOk10cPKKd
	oDOeJzx6iWw.nnXt_LLsKT1BDmEO.ywoQUXAjcTSa6U.l0Kc5soPMsno_zx2
	TY8d7EzfAxQKwXki9lGgEyjONEWFo2O8hBVttiFC3D30HKfrLpBw_3WFSAcI
	ETr0oDOeamdfFn0BVv9ilUJHVwHTM64T6Pb8v3oi9qhOKJz6SM9xMfXCdRm_
	8CTbv_HtbF0o0gpCJDO5Utgm.fKo9xH.49VlTDfzMvUVlkfESySzoPfRyXTs
	5QXEUmyaARThgtkR8tIiHMiduD1rPO4xSCRxx
X-Yahoo-SMTP: jHZ71LyswBA8vPppSFebFmPnYvk1gIPKrFjcBqA_GiVlfXPeew--
X-Rocket-Received: from [192.168.1.101] (bob.feretich@71.131.8.66 with plain
	[67.195.15.5]) by smtp112.sbc.mail.gq1.yahoo.com with SMTP;
	06 May 2014 19:48:51 -0700 PDT
Message-ID: <53699F12.5010400@rafresearch.com>
Date: Tue, 06 May 2014 19:48:50 -0700
From: Bob Feretich <bob.feretich@rafresearch.com>
User-Agent: Mozilla/5.0 (Windows NT 6.0;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <536962D8.1040007@rafresearch.com> <53696616.90502@mlbassoc.com>
In-Reply-To: <53696616.90502@mlbassoc.com>
Subject: Re: A simpler way of creating an using a local kernel repository - BeagleBone example
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
X-List-Received-Date: Wed, 07 May 2014 02:49:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 5/6/2014 3:45 PM, Gary Thomas wrote:
> On 2014-05-06 16:31, Bob Feretich wrote:
>> I have had problems getting good download performance when accessing 
>> the kernels at kernel.org. Since I expect to build the kernel several 
>> times, I decided to create a copy of the
>> kernel repository locally and use that for my builds.
>>
>> There are instructions on how to create a local repository in the 
>> Yocto manuals, but those are more complex than I needed. (I don't 
>> plan on checking anything into the repository.)
>>
>> The below is a simpler way of creating and using the repository.
>> I'm publishing this because my search though the Yocto/OE/Angstrom 
>> yielded only the more complicated or incomplete methods.
>>
>> // First set up local kernel repository
>> mkdir ~/ksrc3-8
>> cd ~/ksrc3-8
>> git clone --bare 
>> git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git 
>> stable-work-bare.git
>>
>> // Then modify the kernel recipe to use the local repository instead 
>> of the the one at kernel.org.
>> // The beaglebone recipe for the 3.8 kernel is at...
>> setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb 
>>
>>
>> // Replace the file's SRC_URI with one that points to your local 
>> repository.
>> #SRC_URI = 
>> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-3.8.y"
>> SRC_URI = 
>> "git:///home/Bob/ksrc3-8/stable-work-bare.git;branch=linux-3.8.y"
>
> IMO a much simpler (and certainly less invasive) way is to just
> use your own local source mirrors.  Add these lines to your local.conf:
>   SOURCE_MIRROR_URL = "file:///some-mirror-directory/"
>   INHERIT += "own-mirrors "
>   BB_GENERATE_MIRROR_TARBALLS ?= "1"
>
> Once the git repository has been downloaded, it will be packed up in a
> tarball, e.g.
> git2_git.kernel.org.pub.scm.linux.kernel.git.stable.linux-stable.git.tar.gz
> If you then put this file into your SOURCE_MIRROR, the next time 
> bitbake will
> fetch from there [first].  It's even smart enough that if you need a 
> revision
> which is not in the tarball, it will update the git repository and 
> rebuild the
> tarball, which you can then move to your mirror.
Better!
Questions:
Is     INHERIT += "own-mirrors "
coded as you state it, or am I supposed to substitute something for 
"own-mirrors " ?

Where does      BB_GENERATE_MIRROR_TARBALLS ?= "1"
put the tarball?

Does do_rm_work remove them?

Regards,
Bob

>
> Fast access, no messing with source recipes!
>


