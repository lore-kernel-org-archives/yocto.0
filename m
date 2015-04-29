Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7716E0095D; Wed, 29 Apr 2015 12:22:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD6FAE007B9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 12:22:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3TJMaFS019884
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Apr 2015 12:22:37 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 29 Apr 2015 12:22:36 -0700
Message-ID: <55412F7C.8050700@windriver.com>
Date: Wed, 29 Apr 2015 15:22:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <9F136EE5FB53D64397ED1089A0E760E0162CD671@SJEXCHMB12.corp.ad.broadcom.com>
	<55411A50.3030304@windriver.com>
	<9F136EE5FB53D64397ED1089A0E760E0162CD6BD@SJEXCHMB12.corp.ad.broadcom.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162CD6BD@SJEXCHMB12.corp.ad.broadcom.com>
Subject: Re: Kernel customized do_fetch issue
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
X-List-Received-Date: Wed, 29 Apr 2015 19:22:46 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-29 02:08 PM, Joel (Xi Zhou) Zhou wrote:
>> But the question has to be asked. Why exactly are you manually fetching
>> the kernel ? The fetcher can take care of most everything.
>
> The whole story is starting at the url of our git repo. We have a git URL like:
> 	ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk
>
> So the SRC_URI like this, but the fetcher try to apply "scp" over it.
> 	KBRANCH= 3.14_common_dev
> 	SRC_URI = "ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=1;branch=${KBRANCH}"
> Error:
> 	ERROR: Fetcher failure: Fetch command failed with exit code 1, output:
> 	FATAL: unknown git/gitolite command: 'scp -r -f linux-lsk'
>
> Then I change it  according the suggestion in this mailing list:
> 	SRC_URI = "git://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=1;branch=${KBRANCH};protocol=ssh"
>
> This time "bitbake linux-lsk -c fetch" return no error, but the source folder in working directory is empty.
> 	In log.do_fetch
> 	DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
> 	http://downloads.yoctoproject.org/mirror/sources/git2_git-ccxsw.rtp. inhouse.com. linux-lsk.tar.gz:
> 	2015-04-29 12:49:36 ERROR 404: Not Found.

I'd expect that it part of the log, since obviously the mirrors aren't
going to have a copy of your kernel.

You really aren't seeing anything land in the build/downloads/git2/
directory structure ? ssh fetches seem to work here.

You'd be better of working through the issues and getting the right
SRC_URI specification for the fetcher, since taking the fetch into a
custom routine is going to short circuit parts of the build .. and you'll
have to take care of them yourself.

Cheers,

Bruce

>
> Thanks,
> Joel
>


