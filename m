Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 070F3E00874; Sun, 28 Dec 2014 18:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5B58E00751
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:23:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sBT2Nnwf001680
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:23:49 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Sun, 28 Dec 2014 18:23:48 -0800
Message-ID: <54A0BB38.3000008@windriver.com>
Date: Mon, 29 Dec 2014 10:23:52 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CALb2248jSjqK9ALwTsNfgeLkhmF2Ka+mhe5s6N1U51emFEbJVQ@mail.gmail.com>
In-Reply-To: <CALb2248jSjqK9ALwTsNfgeLkhmF2Ka+mhe5s6N1U51emFEbJVQ@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Distro vs. Image
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
X-List-Received-Date: Mon, 29 Dec 2014 02:23:58 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Schwab,

What do you mean by "distro recipe"?

I can see your initial problem is that you want different config details 
for the same image recipe (maybe for different HW, I guess?).

Now we would like to create an "installer" image, i.e. a bootable
image whose job is to install a release(-candidate) image to the HW.
Naturally, some config details in the resulting image will be
different.

Can this be done via bbappend file in different layers?
Can this be done via different distro config files?

Regards,
Chen Qi


On 12/23/2014 11:09 AM, Leo Schwab wrote:
> Up to this point, all our builds for our prototypes have been "image"
> builds, i.e. we built an image recipe starting with
> packagegroup-core-boot, and it's accreted from there.  We write the
> resulting .sdcard image file to an SD card and boot from that.
>
> Now we would like to create an "installer" image, i.e. a bootable
> image whose job is to install a release(-candidate) image to the HW.
> Naturally, some config details in the resulting image will be
> different.  The more I read, it feels like this wants to be a
> "distro," rather than just another image recipe.  Recipes searching
> for files will automagically generate subdirectory search paths based
> on current distro name, which would allow us to substitute different
> config files based on what's being built.  (Extra Credit for this
> build would be to incorporate a copy of the release image into the
> installer image.)
>
> Trouble is, none of the docs I've read describe very clearly how to
> make the leap from cobbling image recipes together to creating a
> functionally equivalent distro recipe.  Could someone point out some
> resources and examples on how this is meant to be conceptualized and
> used?  Thanks in advance for all suggestions.
>
> Schwab


