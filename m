Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A228E009EA; Fri,  2 Aug 2019 10:05:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DE0E008E3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 10:05:10 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 460YSN2J5mz4M;
	Fri,  2 Aug 2019 19:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1564765509;
	bh=Nxf4/4zFIu3e+9cr8ZsGM++frd7+/Ueu+JTUuywTjbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UyTCP9HqvUJ3KkhP8CgCtfFfPf/13cYt0eH0LwimsrtNN82WwHa7qEYfrz3oEhF4t
	Q9ryePkrx6SoanzeLKXf+bGK5kqdCL+AfI9FVvoPQ/m3gvE5Bs9AfeQvK2MsINkfNn
	a+S9fsuc6kdohJC1nMgLPfqHdj3HKZIHWqkQGMKiRB3sPtkYZ9gku/c4T/DhXaThee
	g34k9aiy5dhvVMtWX02dW1BMchcHmSrVaXdMplcqPKLw7kk56tP7Pq2JyjuT2rSRFj
	ChBi+/elLxCNqd1ak12ttxS43Z2Zo3/nVsIyRcaeJMITtf/gaANqL6curEHISSy95k
	hKKwZ2rw19JyH4HvFovhk/urJdtkbnSbLUJlX8AxhHxeRAJwt3+MTIzdcZc+NXghuW
	9PoqL7ZzCMMzZQK7IXp2cTTjQVqMIhkzd7/1+gmSLvrK92F+v/zBJMy+tBXqiM0HJi
	wzswyH5dPZNp8MUm5MmOmEk9yEmAqT8wLmnN46YDTRVo0Xh7Zr+6jQ5Z24Hl7ZRDt/
	NMXuzVAWcQu+eUFQuKSmOijDukD1MTRGrB2juNden7Tn0uN+lYLXhx2jQshOIGVdq7
	1E5jEh+bzFTMm6qZfjzPeNtJG55rnWDr7S8IBDYFFFbMHBkXBbuVvrXwKavlBPxILt
	duEyUD63bVNZ0ktbHU2h0Gww=
Date: Fri, 2 Aug 2019 20:05:06 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <20190802170506.GB30586@localhost>
References: <20190504161955.GF11633@localhost>
	<4a5099d9-81b2-c45d-c9a8-cd0fe0943665@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <4a5099d9-81b2-c45d-c9a8-cd0fe0943665@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: git.yoctoproject.org TLS certificate expired
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
X-List-Received-Date: Fri, 02 Aug 2019 17:05:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat, May 04, 2019 at 10:59:34AM -0700, Michael Halstead wrote:
> On 5/4/19 9:19 AM, Adrian Bunk wrote:
> > $ git pull
> > fatal: unable to access 'https://git.yoctoproject.org/git/poky/': server 
> > certificate verification failed. CAfile: none CRLfile: none
> > $
> >
> >
> > Firefox says:
> > git.yoctoproject.org uses an invalid security certificate. The 
> > certificate expired on May 4, 2019, 7:53 AM. The current time is May 4, 
> > 2019, 7:16 PM.
> >
> >
> > cu
> > Adrian
> 
> I've renewed the certificate manually for now.
> 
> I will review the automated process and monitoring to make sure this
> doesn't happen again.

90 days later the new certificate now expired.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


