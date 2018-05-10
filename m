Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11326E00DFE; Wed,  9 May 2018 22:32:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53167E00D1C
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 22:32:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w4A5Wijc003439
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 9 May 2018 22:32:44 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 9 May 2018 22:32:43 -0700
To: <yocto@yoctoproject.org>
References: <44454e21-7c6f-8337-f7e3-caf4674052f4@phoenixcontact.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <b5ac251e-075e-e07a-eab0-272b5433bb03@windriver.com>
Date: Thu, 10 May 2018 13:34:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <44454e21-7c6f-8337-f7e3-caf4674052f4@phoenixcontact.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Excluding ptest packages from image build
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
X-List-Received-Date: Thu, 10 May 2018 05:32:46 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I just checked the codes. I think the ref manual might be a little 
misleading.
"Prevents specific packages from being installed when you are installing 
complementary packages. "
might better be changed to:
"Prevents specific packages to install their complementary packages. 
Items specified by this variable are considered as regular expression."
Maybe an example should follow.

So specifying value 'acl' for PACKAGE_EXCLUDE_COMPLEMENTARY should be 
valid and its complementary packages should not be installed. Specifying 
'acl.*' should have the same effect, but 'acl.' should not.

Anyway, I think you should file a bug with steps to reproduce the problem.

Also, I found that we currently don't have a mechanism to exclude some 
specific complementary package (e.g. acl-ptest in your case). We might 
need to reconsider what PACKAGE_EXCLUDE should mean.
More specifically, if a user requires *-ptest packages in general, but 
wants to exclude acl-ptest package, there's no easy way to do so.

Best Regards,
Chen Qi

On 05/09/2018 11:30 PM, Erik Nellessen wrote:
> I would like to exclude some ptest packages from an image build.
>
> To include ptest packages in general, my image recipe contains the 
> following line:
> IMAGE_FEATURES_append = " ptest-pkgs"
>
> As a first step, I tried to exclude the acl-ptest package. To do so, I 
> added the following to my image recipe:
> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl-ptest"
>
> I thought that this would exclude the acl-ptest package as described 
> in the project reference: 
> https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE_COMPLEMENTARY
> "Prevents specific packages from being installed when you are 
> installing complementary packages.
>
> You might find that you want to prevent installing certain packages 
> when you are installing complementary packages. For example, if you 
> are using IMAGE_FEATURES to install dev-pkgs, you might not want to 
> install all packages from a particular multilib. If you find yourself 
> in this situation, you can use the PACKAGE_EXCLUDE_COMPLEMENTARY 
> variable to specify regular expressions to match the packages you want 
> to exclude."
>
> Anyhow this did not result in an image without the acl-ptest package, 
> as I could validate by having a look at the image's manifest file.
>
> When I changed the image recipe to contain the regular expression 
> "acl", i.e
> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl"
> all three acl packages (acl, acl-lic, acl-ptest) were excluded from 
> the image.
>
> And to really start the confusion, when changed the regular expression 
> to "acl.", i.e.
> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl."
> all three packages were also excluded.
>
> Now I am really confused. My expectation was that "acl-ptest" and 
> "acl" would match the acl-ptest package name and "acl." would not 
> match the acl package name.
>
> Does anybody see what I am missing here?
>
> Thanks in advance,
> Erik
>
>
>


